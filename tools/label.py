class LabelWithIOU:
    def __init__(self):
        self._record = np.zeros((300000, 4))
        self._name_idx = 0
        self._thresh = 0.2
        self._names = {0: "N2018P676402", 1: "N2018P424150",
                       2: "N2018P750476", 3: "N2018P431157",
                       4: "N2018P687413", 5: "N2018P432158",
                       6: "N2018P482208", 7: "N2018P434160",
                       8: "N2018P753479", 9: "N2018P795521",
                       10: "N2018P818544", 11: "N2018P919645",
                       12: "N2018P810536", 13: "N2018P674400",
                       14: "N2018P672398"}
        self._seq_name = {}
        self._count = 0

    def _iou(self, bb):
        ixmin = np.maximum(self._record[:, 0], bb[0])
        iymin = np.maximum(self._record[:, 1], bb[1])
        ixmax = np.minimum(self._record[:, 2], bb[2])
        iymax = np.minimum(self._record[:, 3], bb[3])
        iw = np.maximum(ixmax - ixmin + 1., 0.)
        ih = np.maximum(iymax - iymin + 1., 0.)
        inters = iw * ih

        # union
        uni = ((bb[2] - bb[0] + 1.) * (bb[3] - bb[1] + 1.) +
               (self._record[:, 2] - self._record[:, 0] + 1.) *
               (self._record[:, 3] - self._record[:, 1] + 1.) - inters)

        overlaps = inters / uni
        ovmax = np.max(overlaps)
        jmax = np.argmax(overlaps)
        return ovmax, jmax

    def get_name(self, bb):
        iou, seq = self._iou(bb)
        # print(iou, idx)
        if iou > self._thresh:
            name = self._seq_name[seq]
        else:
            name = self._names[self._name_idx % 15]
            self._name_idx += 1
        self._record[self._count] = np.array(bb)
        self._seq_name[self._count] = name
        self._count += 1
        print(self._count)
        return name