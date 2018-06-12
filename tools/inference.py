from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import tensorflow as tf
import os
from tensorflow.python.framework import graph_util
import numpy as np
import cv2
try:
  import cPickle as pickle
except ImportError:
  import pickle
import os
import math

from utils.timer import Timer
from utils.blob import im_list_to_blob

from model.config import cfg, get_output_dir
from model.bbox_transform import clip_boxes, bbox_transform_inv
from model.nms_wrapper import nms

pb_file_path = "/home/chenxingli/dengtaAI/testSaver/frozen_model.pb"
test_file_path = "/home/chenxingli/dengtaAI/dataset/testimages/input/443048211133329708.jpg"
CLASSES = ('__background__',
           '1')
def inference_faster(im_file):
    #change the image to blob
    im = cv2.imread(im_file)
    blobs, im_scales = _get_blobs(im)
    assert len(im_scales) == 1, "Only single-image batch implemented"
    im_blob = blobs['data']
    blobs['im_info'] = np.array([im_blob.shape[1], im_blob.shape[2], im_scales[0]], dtype=np.float32)

    sess = tf.Session()

    with gfile.FastGFile(pb_file_path, 'rb') as f:
        graph_def = tf.GraphDef()
        graph_def.ParseFromString(f.read())
        sess.graph.as_default()
        tf.import_graph_def(graph_def, name='')



    sess.run(tf.global_variables_initializer())


    print(sess.run(':0'))


    image = sess.graph.get_tensor_by_name('Placeholder:0')
    image_info = sess.graph.get_tensor_by_name('Placeholder_1:0')

    score = sess.graph.get_tensor_by_name('SCORE/vgg_16_3/cls_prob/cls_prob/scores:0')
    bbox = sess.graph.get_tensor_by_name('SCORE/vgg_16_3/bbox_pred/BiasAdd/bbox_pred/scores:0')

    _, scores, bbox_pred, rois = sess.run([score,bbox],  feed_dict={image: blobs["data"], image_info: blobs["im_info"]})
    #print(ret)

    boxes = rois[:, 1:5] / im_scales[0]
    scores = np.reshape(scores, [scores.shape[0], -1])
    bbox_pred = np.reshape(bbox_pred, [bbox_pred.shape[0], -1])
    # Apply bounding-box regression deltas
    box_deltas = bbox_pred
    pred_boxes = bbox_transform_inv(boxes, box_deltas)
    pred_boxes = _clip_boxes(pred_boxes, im.shape)

    return scores, pred_boxes

def vis_detections(im, class_name, dets, thresh=0.5):
    """Draw detected bounding boxes."""
    inds = np.where(dets[:, -1] >= thresh)[0]
    if len(inds) == 0:
        return
    mask = im
    im = im[:, :, (2, 1, 0)]
    #print(im.shape())
    fig, ax = plt.subplots(figsize=(12, 12))
    ax.imshow(im, aspect='equal')
    #mask = im#.transpose((1, 2, 0)).astype(np.uint8).copy()  #np.zeros_like(im, dtype=np.uint8).copy()

    for i in inds:
        bbox = dets[i, :4]
        score = dets[i, -1]
        #'''
        cv2.rectangle(mask, (bbox[0], bbox[1]), (bbox[2], bbox[3]), (0, 255, 0), 4)
        font = cv2.FONT_HERSHEY_COMPLEX_SMALL
        text = '{:s}\{:.3f}'.format(class_name, score)
        cv2.putText(mask, text, (int(bbox[0]), int(bbox[1] - 2)), font, 2, (0, 0, 255), 1)
        #'''
        ax.add_patch(
            plt.Rectangle((bbox[0], bbox[1]),
                          bbox[2] - bbox[0],
                          bbox[3] - bbox[1], fill=False,
                          edgecolor='red', linewidth=3.5)
            )
        ax.text(bbox[0], bbox[1] - 2,
                '{:s} {:.3f}'.format(class_name, score),
                bbox=dict(facecolor='blue', alpha=0.5),
                fontsize=14, color='white')

    ax.set_title(('{} detections with '
                  'p({} | box) >= {:.1f}').format(class_name, class_name,
                                                  thresh),
                  fontsize=14)
    plt.axis('off')
    plt.tight_layout()
    plt.draw()
    return mask

def vis(scores, boxes):
    CONF_THRESH = 0.8
    NMS_THRESH = 0.3
    for cls_ind, cls in enumerate(CLASSES[1:]):
        cls_ind += 1  # because we skipped background
        cls_boxes = boxes[:, 4 * cls_ind:4 * (cls_ind + 1)]
        cls_scores = scores[:, cls_ind]
        dets = np.hstack((cls_boxes,
                          cls_scores[:, np.newaxis])).astype(np.float32)
        keep = nms(dets, NMS_THRESH)
        dets = dets[keep, :]
        img = vis_detections(im, cls, dets, thresh=CONF_THRESH)
    return img

if __name__ == '__main__':
    scores, boxes=inference_faster(test_file_path)
    im = vis(scores,boxes)
    cv2.imwrite("/home/chenxingli/dengtaAI/dataset/testimages/output/"+os.path.split(test_file_path)[1], im)
    plt.show()
