import tensorflow as tf

def load_graph(model_dir):
    with tf.gfile.GFile(model_dir, "rb") as f: #读取模型数据
        graph_def = tf.GraphDef()
        graph_def.ParseFromString(f.read()) #得到模型中的计算图和数据

        with tf.Graph().as_default() as graph: #这里的Graph()要有括号，不然会报TypeError
            tf.import_graph_def(graph_def, name="michael") #导入模型中的图到现在这个新的计算图中，不指定名字的话默认是 import
            return graph


if __name__  == "__main__":
    graph = load_graph("model/pb/frozen_model.pb") #这里传入的是完整的路径包括pb的名字，不然会报FailedPreconditionError

    for op in graph.get_operations(): #打印出图中的节点信息
        print (op.name, op.values())

    x = graph.get_tensor_by_name('michael/input_holder:0') #得到输入节点tensor的名字，记得跟上导入图时指定的name
    y = graph.get_tensor_by_name('michael/predictions:0') #得到输出节点tensor的名字

    with tf.Session(graph=graph) as sess: #创建会话运行计算
        y_out = sess.run(y, feed_dict={x: [10.0]})
        print(y_out)
    print ("finish")
