node {
  name: "Placeholder"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: -1
        }
        dim {
          size: -1
        }
        dim {
          size: 3
        }
      }
    }
  }
}
node {
  name: "Placeholder_1"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
      }
    }
  }
}
node {
  name: "Placeholder_2"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 5
        }
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0997509360313
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0997509360313
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform/max"
  input: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform/mul"
  input: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/weights/Assign"
  op: "Assign"
  input: "vgg_16/conv1/conv1_1/weights"
  input: "vgg_16/conv1/conv1_1/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/weights/read"
  op: "Identity"
  input: "vgg_16/conv1/conv1_1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/conv1/conv1_1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16/conv1/conv1_1/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16/conv1/conv1_1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/biases/Assign"
  op: "Assign"
  input: "vgg_16/conv1/conv1_1/biases"
  input: "vgg_16/conv1/conv1_1/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/biases/read"
  op: "Identity"
  input: "vgg_16/conv1/conv1_1/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/biases"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/convolution"
  op: "Conv2D"
  input: "Placeholder"
  input: "vgg_16/conv1/conv1_1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16/conv1/conv1_1/convolution"
  input: "vgg_16/conv1/conv1_1/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_1/Relu"
  op: "Relu"
  input: "vgg_16/conv1/conv1_1/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0721687823534
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0721687823534
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform/max"
  input: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform/mul"
  input: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/weights/Assign"
  op: "Assign"
  input: "vgg_16/conv1/conv1_2/weights"
  input: "vgg_16/conv1/conv1_2/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/weights/read"
  op: "Identity"
  input: "vgg_16/conv1/conv1_2/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/conv1/conv1_2/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16/conv1/conv1_2/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16/conv1/conv1_2/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/biases/Assign"
  op: "Assign"
  input: "vgg_16/conv1/conv1_2/biases"
  input: "vgg_16/conv1/conv1_2/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/biases/read"
  op: "Identity"
  input: "vgg_16/conv1/conv1_2/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/biases"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/convolution"
  op: "Conv2D"
  input: "vgg_16/conv1/conv1_1/Relu"
  input: "vgg_16/conv1/conv1_2/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16/conv1/conv1_2/convolution"
  input: "vgg_16/conv1/conv1_2/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16/conv1/conv1_2/Relu"
  op: "Relu"
  input: "vgg_16/conv1/conv1_2/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/pool1/MaxPool"
  op: "MaxPool"
  input: "vgg_16/conv1/conv1_2/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0589255653322
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0589255653322
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform/max"
  input: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform/mul"
  input: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/weights/Assign"
  op: "Assign"
  input: "vgg_16/conv2/conv2_1/weights"
  input: "vgg_16/conv2/conv2_1/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/weights/read"
  op: "Identity"
  input: "vgg_16/conv2/conv2_1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/conv2/conv2_1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16/conv2/conv2_1/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16/conv2/conv2_1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/biases/Assign"
  op: "Assign"
  input: "vgg_16/conv2/conv2_1/biases"
  input: "vgg_16/conv2/conv2_1/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/biases/read"
  op: "Identity"
  input: "vgg_16/conv2/conv2_1/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/biases"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/convolution"
  op: "Conv2D"
  input: "vgg_16/pool1/MaxPool"
  input: "vgg_16/conv2/conv2_1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16/conv2/conv2_1/convolution"
  input: "vgg_16/conv2/conv2_1/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_1/Relu"
  op: "Relu"
  input: "vgg_16/conv2/conv2_1/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\200\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0510310381651
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0510310381651
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform/max"
  input: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform/mul"
  input: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/weights/Assign"
  op: "Assign"
  input: "vgg_16/conv2/conv2_2/weights"
  input: "vgg_16/conv2/conv2_2/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/weights/read"
  op: "Identity"
  input: "vgg_16/conv2/conv2_2/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/conv2/conv2_2/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16/conv2/conv2_2/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16/conv2/conv2_2/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/biases/Assign"
  op: "Assign"
  input: "vgg_16/conv2/conv2_2/biases"
  input: "vgg_16/conv2/conv2_2/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/biases/read"
  op: "Identity"
  input: "vgg_16/conv2/conv2_2/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/biases"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\200\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/convolution"
  op: "Conv2D"
  input: "vgg_16/conv2/conv2_1/Relu"
  input: "vgg_16/conv2/conv2_2/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16/conv2/conv2_2/convolution"
  input: "vgg_16/conv2/conv2_2/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16/conv2/conv2_2/Relu"
  op: "Relu"
  input: "vgg_16/conv2/conv2_2/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/pool2/MaxPool"
  op: "MaxPool"
  input: "vgg_16/conv2/conv2_2/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\200\000\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0416666679084
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0416666679084
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform/max"
  input: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform/mul"
  input: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 128
        }
        dim {
          size: 256
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/weights/Assign"
  op: "Assign"
  input: "vgg_16/conv3/conv3_1/weights"
  input: "vgg_16/conv3/conv3_1/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/weights/read"
  op: "Identity"
  input: "vgg_16/conv3/conv3_1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/conv3/conv3_1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16/conv3/conv3_1/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16/conv3/conv3_1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 256
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 256
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/biases/Assign"
  op: "Assign"
  input: "vgg_16/conv3/conv3_1/biases"
  input: "vgg_16/conv3/conv3_1/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/biases/read"
  op: "Identity"
  input: "vgg_16/conv3/conv3_1/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/biases"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\200\000\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/convolution"
  op: "Conv2D"
  input: "vgg_16/pool2/MaxPool"
  input: "vgg_16/conv3/conv3_1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16/conv3/conv3_1/convolution"
  input: "vgg_16/conv3/conv3_1/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_1/Relu"
  op: "Relu"
  input: "vgg_16/conv3/conv3_1/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\001\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0360843911767
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0360843911767
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform/max"
  input: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform/mul"
  input: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 256
        }
        dim {
          size: 256
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/weights/Assign"
  op: "Assign"
  input: "vgg_16/conv3/conv3_2/weights"
  input: "vgg_16/conv3/conv3_2/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/weights/read"
  op: "Identity"
  input: "vgg_16/conv3/conv3_2/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/conv3/conv3_2/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16/conv3/conv3_2/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16/conv3/conv3_2/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 256
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 256
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/biases/Assign"
  op: "Assign"
  input: "vgg_16/conv3/conv3_2/biases"
  input: "vgg_16/conv3/conv3_2/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/biases/read"
  op: "Identity"
  input: "vgg_16/conv3/conv3_2/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/biases"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\001\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/convolution"
  op: "Conv2D"
  input: "vgg_16/conv3/conv3_1/Relu"
  input: "vgg_16/conv3/conv3_2/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16/conv3/conv3_2/convolution"
  input: "vgg_16/conv3/conv3_2/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_2/Relu"
  op: "Relu"
  input: "vgg_16/conv3/conv3_2/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\001\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0360843911767
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0360843911767
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform/max"
  input: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform/mul"
  input: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 256
        }
        dim {
          size: 256
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/weights/Assign"
  op: "Assign"
  input: "vgg_16/conv3/conv3_3/weights"
  input: "vgg_16/conv3/conv3_3/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/weights/read"
  op: "Identity"
  input: "vgg_16/conv3/conv3_3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/conv3/conv3_3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16/conv3/conv3_3/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16/conv3/conv3_3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 256
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 256
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/biases/Assign"
  op: "Assign"
  input: "vgg_16/conv3/conv3_3/biases"
  input: "vgg_16/conv3/conv3_3/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/biases/read"
  op: "Identity"
  input: "vgg_16/conv3/conv3_3/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/biases"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\001\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/convolution"
  op: "Conv2D"
  input: "vgg_16/conv3/conv3_2/Relu"
  input: "vgg_16/conv3/conv3_3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16/conv3/conv3_3/convolution"
  input: "vgg_16/conv3/conv3_3/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16/conv3/conv3_3/Relu"
  op: "Relu"
  input: "vgg_16/conv3/conv3_3/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/pool3/MaxPool"
  op: "MaxPool"
  input: "vgg_16/conv3/conv3_3/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\001\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0294627826661
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0294627826661
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform/max"
  input: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform/mul"
  input: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 256
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/weights/Assign"
  op: "Assign"
  input: "vgg_16/conv4/conv4_1/weights"
  input: "vgg_16/conv4/conv4_1/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/weights/read"
  op: "Identity"
  input: "vgg_16/conv4/conv4_1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/conv4/conv4_1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16/conv4/conv4_1/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16/conv4/conv4_1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/biases/Assign"
  op: "Assign"
  input: "vgg_16/conv4/conv4_1/biases"
  input: "vgg_16/conv4/conv4_1/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/biases/read"
  op: "Identity"
  input: "vgg_16/conv4/conv4_1/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/biases"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\001\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/convolution"
  op: "Conv2D"
  input: "vgg_16/pool3/MaxPool"
  input: "vgg_16/conv4/conv4_1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16/conv4/conv4_1/convolution"
  input: "vgg_16/conv4/conv4_1/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_1/Relu"
  op: "Relu"
  input: "vgg_16/conv4/conv4_1/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\002\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0255155190825
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0255155190825
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform/max"
  input: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform/mul"
  input: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 512
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/weights/Assign"
  op: "Assign"
  input: "vgg_16/conv4/conv4_2/weights"
  input: "vgg_16/conv4/conv4_2/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/weights/read"
  op: "Identity"
  input: "vgg_16/conv4/conv4_2/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/conv4/conv4_2/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16/conv4/conv4_2/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16/conv4/conv4_2/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/biases/Assign"
  op: "Assign"
  input: "vgg_16/conv4/conv4_2/biases"
  input: "vgg_16/conv4/conv4_2/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/biases/read"
  op: "Identity"
  input: "vgg_16/conv4/conv4_2/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/biases"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\002\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/convolution"
  op: "Conv2D"
  input: "vgg_16/conv4/conv4_1/Relu"
  input: "vgg_16/conv4/conv4_2/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16/conv4/conv4_2/convolution"
  input: "vgg_16/conv4/conv4_2/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_2/Relu"
  op: "Relu"
  input: "vgg_16/conv4/conv4_2/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\002\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0255155190825
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0255155190825
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform/max"
  input: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform/mul"
  input: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 512
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/weights/Assign"
  op: "Assign"
  input: "vgg_16/conv4/conv4_3/weights"
  input: "vgg_16/conv4/conv4_3/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/weights/read"
  op: "Identity"
  input: "vgg_16/conv4/conv4_3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/conv4/conv4_3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16/conv4/conv4_3/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16/conv4/conv4_3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/biases/Assign"
  op: "Assign"
  input: "vgg_16/conv4/conv4_3/biases"
  input: "vgg_16/conv4/conv4_3/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/biases/read"
  op: "Identity"
  input: "vgg_16/conv4/conv4_3/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/biases"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\002\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/convolution"
  op: "Conv2D"
  input: "vgg_16/conv4/conv4_2/Relu"
  input: "vgg_16/conv4/conv4_3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16/conv4/conv4_3/convolution"
  input: "vgg_16/conv4/conv4_3/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16/conv4/conv4_3/Relu"
  op: "Relu"
  input: "vgg_16/conv4/conv4_3/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/pool4/MaxPool"
  op: "MaxPool"
  input: "vgg_16/conv4/conv4_3/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\002\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0255155190825
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0255155190825
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform/max"
  input: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform/mul"
  input: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 512
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/weights/Assign"
  op: "Assign"
  input: "vgg_16/conv5/conv5_1/weights"
  input: "vgg_16/conv5/conv5_1/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/weights/read"
  op: "Identity"
  input: "vgg_16/conv5/conv5_1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/conv5/conv5_1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16/conv5/conv5_1/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16/conv5/conv5_1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/biases/Assign"
  op: "Assign"
  input: "vgg_16/conv5/conv5_1/biases"
  input: "vgg_16/conv5/conv5_1/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/biases/read"
  op: "Identity"
  input: "vgg_16/conv5/conv5_1/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/biases"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\002\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/convolution"
  op: "Conv2D"
  input: "vgg_16/pool4/MaxPool"
  input: "vgg_16/conv5/conv5_1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16/conv5/conv5_1/convolution"
  input: "vgg_16/conv5/conv5_1/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_1/Relu"
  op: "Relu"
  input: "vgg_16/conv5/conv5_1/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\002\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0255155190825
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0255155190825
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform/max"
  input: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform/mul"
  input: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 512
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/weights/Assign"
  op: "Assign"
  input: "vgg_16/conv5/conv5_2/weights"
  input: "vgg_16/conv5/conv5_2/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/weights/read"
  op: "Identity"
  input: "vgg_16/conv5/conv5_2/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/conv5/conv5_2/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16/conv5/conv5_2/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16/conv5/conv5_2/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/biases/Assign"
  op: "Assign"
  input: "vgg_16/conv5/conv5_2/biases"
  input: "vgg_16/conv5/conv5_2/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/biases/read"
  op: "Identity"
  input: "vgg_16/conv5/conv5_2/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/biases"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\002\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/convolution"
  op: "Conv2D"
  input: "vgg_16/conv5/conv5_1/Relu"
  input: "vgg_16/conv5/conv5_2/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16/conv5/conv5_2/convolution"
  input: "vgg_16/conv5/conv5_2/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_2/Relu"
  op: "Relu"
  input: "vgg_16/conv5/conv5_2/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\002\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0255155190825
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0255155190825
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform/max"
  input: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform/mul"
  input: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 512
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/weights/Assign"
  op: "Assign"
  input: "vgg_16/conv5/conv5_3/weights"
  input: "vgg_16/conv5/conv5_3/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/weights/read"
  op: "Identity"
  input: "vgg_16/conv5/conv5_3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/conv5/conv5_3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16/conv5/conv5_3/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16/conv5/conv5_3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/biases/Assign"
  op: "Assign"
  input: "vgg_16/conv5/conv5_3/biases"
  input: "vgg_16/conv5/conv5_3/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/biases/read"
  op: "Identity"
  input: "vgg_16/conv5/conv5_3/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/biases"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\002\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/convolution"
  op: "Conv2D"
  input: "vgg_16/conv5/conv5_2/Relu"
  input: "vgg_16/conv5/conv5_3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16/conv5/conv5_3/convolution"
  input: "vgg_16/conv5/conv5_3/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16/conv5/conv5_3/Relu"
  op: "Relu"
  input: "vgg_16/conv5/conv5_3/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/strided_slice/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/strided_slice/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/strided_slice/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/strided_slice"
  op: "StridedSlice"
  input: "Placeholder_1"
  input: "vgg_16_1/ANCHOR_default/strided_slice/stack"
  input: "vgg_16_1/ANCHOR_default/strided_slice/stack_1"
  input: "vgg_16_1/ANCHOR_default/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/truediv/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 16.0
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/truediv"
  op: "RealDiv"
  input: "vgg_16_1/ANCHOR_default/strided_slice"
  input: "vgg_16_1/ANCHOR_default/truediv/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Ceil"
  op: "Ceil"
  input: "vgg_16_1/ANCHOR_default/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/ToInt32"
  op: "Cast"
  input: "vgg_16_1/ANCHOR_default/Ceil"
  attr {
    key: "DstT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/strided_slice_1/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/strided_slice_1/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/strided_slice_1/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/strided_slice_1"
  op: "StridedSlice"
  input: "Placeholder_1"
  input: "vgg_16_1/ANCHOR_default/strided_slice_1/stack"
  input: "vgg_16_1/ANCHOR_default/strided_slice_1/stack_1"
  input: "vgg_16_1/ANCHOR_default/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/truediv_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 16.0
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/truediv_1"
  op: "RealDiv"
  input: "vgg_16_1/ANCHOR_default/strided_slice_1"
  input: "vgg_16_1/ANCHOR_default/truediv_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Ceil_1"
  op: "Ceil"
  input: "vgg_16_1/ANCHOR_default/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/ToInt32_1"
  op: "Cast"
  input: "vgg_16_1/ANCHOR_default/Ceil_1"
  attr {
    key: "DstT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/range/start"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/range/delta"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/range"
  op: "Range"
  input: "vgg_16_1/ANCHOR_default/range/start"
  input: "vgg_16_1/ANCHOR_default/ToInt32_1"
  input: "vgg_16_1/ANCHOR_default/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/mul/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 16
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/mul"
  op: "Mul"
  input: "vgg_16_1/ANCHOR_default/range"
  input: "vgg_16_1/ANCHOR_default/mul/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/range_1/start"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/range_1/delta"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/range_1"
  op: "Range"
  input: "vgg_16_1/ANCHOR_default/range_1/start"
  input: "vgg_16_1/ANCHOR_default/ToInt32"
  input: "vgg_16_1/ANCHOR_default/range_1/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/mul_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 16
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/mul_1"
  op: "Mul"
  input: "vgg_16_1/ANCHOR_default/range_1"
  input: "vgg_16_1/ANCHOR_default/mul_1/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/Reshape"
  op: "Reshape"
  input: "vgg_16_1/ANCHOR_default/mul"
  input: "vgg_16_1/ANCHOR_default/meshgrid/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/Reshape_1/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\377\377\377\377"
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/Reshape_1"
  op: "Reshape"
  input: "vgg_16_1/ANCHOR_default/mul_1"
  input: "vgg_16_1/ANCHOR_default/meshgrid/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/Size"
  op: "Size"
  input: "vgg_16_1/ANCHOR_default/mul"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/Size_1"
  op: "Size"
  input: "vgg_16_1/ANCHOR_default/mul_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/Reshape_2/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\377\377\377\377"
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/Reshape_2"
  op: "Reshape"
  input: "vgg_16_1/ANCHOR_default/meshgrid/Reshape"
  input: "vgg_16_1/ANCHOR_default/meshgrid/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/Reshape_3/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/Reshape_3"
  op: "Reshape"
  input: "vgg_16_1/ANCHOR_default/meshgrid/Reshape_1"
  input: "vgg_16_1/ANCHOR_default/meshgrid/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/ones/shape"
  op: "Pack"
  input: "vgg_16_1/ANCHOR_default/meshgrid/Size_1"
  input: "vgg_16_1/ANCHOR_default/meshgrid/Size"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/ones/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/ones"
  op: "Fill"
  input: "vgg_16_1/ANCHOR_default/meshgrid/ones/shape"
  input: "vgg_16_1/ANCHOR_default/meshgrid/ones/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/mul"
  op: "Mul"
  input: "vgg_16_1/ANCHOR_default/meshgrid/Reshape_2"
  input: "vgg_16_1/ANCHOR_default/meshgrid/ones"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/meshgrid/mul_1"
  op: "Mul"
  input: "vgg_16_1/ANCHOR_default/meshgrid/Reshape_3"
  input: "vgg_16_1/ANCHOR_default/meshgrid/ones"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Reshape"
  op: "Reshape"
  input: "vgg_16_1/ANCHOR_default/meshgrid/mul"
  input: "vgg_16_1/ANCHOR_default/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Reshape_1/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Reshape_1"
  op: "Reshape"
  input: "vgg_16_1/ANCHOR_default/meshgrid/mul_1"
  input: "vgg_16_1/ANCHOR_default/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/stack"
  op: "Pack"
  input: "vgg_16_1/ANCHOR_default/Reshape"
  input: "vgg_16_1/ANCHOR_default/Reshape_1"
  input: "vgg_16_1/ANCHOR_default/Reshape"
  input: "vgg_16_1/ANCHOR_default/Reshape_1"
  attr {
    key: "N"
    value {
      i: 4
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/transpose/Rank"
  op: "Rank"
  input: "vgg_16_1/ANCHOR_default/stack"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/transpose/sub/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/transpose/sub"
  op: "Sub"
  input: "vgg_16_1/ANCHOR_default/transpose/Rank"
  input: "vgg_16_1/ANCHOR_default/transpose/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/transpose/Range/start"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/transpose/Range/delta"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/transpose/Range"
  op: "Range"
  input: "vgg_16_1/ANCHOR_default/transpose/Range/start"
  input: "vgg_16_1/ANCHOR_default/transpose/Rank"
  input: "vgg_16_1/ANCHOR_default/transpose/Range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/transpose/sub_1"
  op: "Sub"
  input: "vgg_16_1/ANCHOR_default/transpose/sub"
  input: "vgg_16_1/ANCHOR_default/transpose/Range"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/transpose"
  op: "Transpose"
  input: "vgg_16_1/ANCHOR_default/stack"
  input: "vgg_16_1/ANCHOR_default/transpose/sub_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Mul"
  op: "Mul"
  input: "vgg_16_1/ANCHOR_default/ToInt32_1"
  input: "vgg_16_1/ANCHOR_default/ToInt32"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Reshape_2/shape/0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Reshape_2/shape/2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 4
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Reshape_2/shape"
  op: "Pack"
  input: "vgg_16_1/ANCHOR_default/Reshape_2/shape/0"
  input: "vgg_16_1/ANCHOR_default/Mul"
  input: "vgg_16_1/ANCHOR_default/Reshape_2/shape/2"
  attr {
    key: "N"
    value {
      i: 3
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Reshape_2"
  op: "Reshape"
  input: "vgg_16_1/ANCHOR_default/transpose"
  input: "vgg_16_1/ANCHOR_default/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/transpose_1/perm"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 3
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/transpose_1"
  op: "Transpose"
  input: "vgg_16_1/ANCHOR_default/Reshape_2"
  input: "vgg_16_1/ANCHOR_default/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
          dim {
            size: 9
          }
          dim {
            size: 4
          }
        }
        tensor_content: "\254\377\377\377\330\377\377\377c\000\000\0007\000\000\000P\377\377\377\250\377\377\377\277\000\000\000g\000\000\000\230\376\377\377H\377\377\377w\001\000\000\307\000\000\000\310\377\377\377\310\377\377\377G\000\000\000G\000\000\000\210\377\377\377\210\377\377\377\207\000\000\000\207\000\000\000\010\377\377\377\010\377\377\377\007\001\000\000\007\001\000\000\334\377\377\377\260\377\377\3773\000\000\000_\000\000\000\260\377\377\377X\377\377\377_\000\000\000\267\000\000\000X\377\377\377\250\376\377\377\267\000\000\000g\001\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/mul_2/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 9
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/mul_2"
  op: "Mul"
  input: "vgg_16_1/ANCHOR_default/Mul"
  input: "vgg_16_1/ANCHOR_default/mul_2/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Add"
  op: "Add"
  input: "vgg_16_1/ANCHOR_default/Const"
  input: "vgg_16_1/ANCHOR_default/transpose_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Reshape_3/shape/1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 4
      }
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Reshape_3/shape"
  op: "Pack"
  input: "vgg_16_1/ANCHOR_default/mul_2"
  input: "vgg_16_1/ANCHOR_default/Reshape_3/shape/1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Reshape_3"
  op: "Reshape"
  input: "vgg_16_1/ANCHOR_default/Add"
  input: "vgg_16_1/ANCHOR_default/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/ANCHOR_default/Cast"
  op: "Cast"
  input: "vgg_16_1/ANCHOR_default/Reshape_3"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16/rpn_conv/3x3/weights/Initializer/random_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\002\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/rpn_conv/3x3/weights/Initializer/random_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/rpn_conv/3x3/weights/Initializer/random_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.00999999977648
      }
    }
  }
}
node {
  name: "vgg_16/rpn_conv/3x3/weights/Initializer/random_normal/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "vgg_16/rpn_conv/3x3/weights/Initializer/random_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/rpn_conv/3x3/weights/Initializer/random_normal/mul"
  op: "Mul"
  input: "vgg_16/rpn_conv/3x3/weights/Initializer/random_normal/RandomStandardNormal"
  input: "vgg_16/rpn_conv/3x3/weights/Initializer/random_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/rpn_conv/3x3/weights/Initializer/random_normal"
  op: "Add"
  input: "vgg_16/rpn_conv/3x3/weights/Initializer/random_normal/mul"
  input: "vgg_16/rpn_conv/3x3/weights/Initializer/random_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/rpn_conv/3x3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 512
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/rpn_conv/3x3/weights/Assign"
  op: "Assign"
  input: "vgg_16/rpn_conv/3x3/weights"
  input: "vgg_16/rpn_conv/3x3/weights/Initializer/random_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/rpn_conv/3x3/weights/read"
  op: "Identity"
  input: "vgg_16/rpn_conv/3x3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_conv/3x3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_conv/3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/rpn_conv/3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_conv/3x3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16_1/rpn_conv/3x3/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16_1/rpn_conv/3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
}
node {
  name: "vgg_16/rpn_conv/3x3/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/rpn_conv/3x3/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/rpn_conv/3x3/biases/Assign"
  op: "Assign"
  input: "vgg_16/rpn_conv/3x3/biases"
  input: "vgg_16/rpn_conv/3x3/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/rpn_conv/3x3/biases/read"
  op: "Identity"
  input: "vgg_16/rpn_conv/3x3/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/biases"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_conv/3x3/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\002\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_conv/3x3/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_conv/3x3/convolution"
  op: "Conv2D"
  input: "vgg_16/conv5/conv5_3/Relu"
  input: "vgg_16/rpn_conv/3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16_1/rpn_conv/3x3/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16_1/rpn_conv/3x3/convolution"
  input: "vgg_16/rpn_conv/3x3/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16_1/rpn_conv/3x3/Relu"
  op: "Relu"
  input: "vgg_16_1/rpn_conv/3x3/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/rpn_cls_score/weights/Initializer/random_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\002\000\000\022\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/rpn_cls_score/weights/Initializer/random_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/rpn_cls_score/weights/Initializer/random_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.00999999977648
      }
    }
  }
}
node {
  name: "vgg_16/rpn_cls_score/weights/Initializer/random_normal/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "vgg_16/rpn_cls_score/weights/Initializer/random_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/rpn_cls_score/weights/Initializer/random_normal/mul"
  op: "Mul"
  input: "vgg_16/rpn_cls_score/weights/Initializer/random_normal/RandomStandardNormal"
  input: "vgg_16/rpn_cls_score/weights/Initializer/random_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/weights"
      }
    }
  }
}
node {
  name: "vgg_16/rpn_cls_score/weights/Initializer/random_normal"
  op: "Add"
  input: "vgg_16/rpn_cls_score/weights/Initializer/random_normal/mul"
  input: "vgg_16/rpn_cls_score/weights/Initializer/random_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/weights"
      }
    }
  }
}
node {
  name: "vgg_16/rpn_cls_score/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 512
        }
        dim {
          size: 18
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/rpn_cls_score/weights/Assign"
  op: "Assign"
  input: "vgg_16/rpn_cls_score/weights"
  input: "vgg_16/rpn_cls_score/weights/Initializer/random_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/rpn_cls_score/weights/read"
  op: "Identity"
  input: "vgg_16/rpn_cls_score/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/weights"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/rpn_cls_score/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/weights"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16_1/rpn_cls_score/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16_1/rpn_cls_score/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/weights"
      }
    }
  }
}
node {
  name: "vgg_16/rpn_cls_score/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 18
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/rpn_cls_score/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 18
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/rpn_cls_score/biases/Assign"
  op: "Assign"
  input: "vgg_16/rpn_cls_score/biases"
  input: "vgg_16/rpn_cls_score/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/rpn_cls_score/biases/read"
  op: "Identity"
  input: "vgg_16/rpn_cls_score/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/biases"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\002\000\000\022\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score/convolution"
  op: "Conv2D"
  input: "vgg_16_1/rpn_conv/3x3/Relu"
  input: "vgg_16/rpn_cls_score/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16_1/rpn_cls_score/convolution"
  input: "vgg_16/rpn_cls_score/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16_1/Shape"
  op: "Shape"
  input: "vgg_16_1/rpn_cls_score/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score_reshape/transpose/perm"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\000\000\000\000\003\000\000\000\001\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score_reshape/transpose"
  op: "Transpose"
  input: "vgg_16_1/rpn_cls_score/BiasAdd"
  input: "vgg_16_1/rpn_cls_score_reshape/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score_reshape/strided_slice/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score_reshape/strided_slice/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score_reshape/strided_slice/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score_reshape/strided_slice"
  op: "StridedSlice"
  input: "vgg_16_1/Shape"
  input: "vgg_16_1/rpn_cls_score_reshape/strided_slice/stack"
  input: "vgg_16_1/rpn_cls_score_reshape/strided_slice/stack_1"
  input: "vgg_16_1/rpn_cls_score_reshape/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score_reshape/concat/values_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 3
          }
        }
        tensor_content: "\001\000\000\000\002\000\000\000\377\377\377\377"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score_reshape/concat/values_1"
  op: "Pack"
  input: "vgg_16_1/rpn_cls_score_reshape/strided_slice"
  attr {
    key: "N"
    value {
      i: 1
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score_reshape/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score_reshape/concat"
  op: "ConcatV2"
  input: "vgg_16_1/rpn_cls_score_reshape/concat/values_0"
  input: "vgg_16_1/rpn_cls_score_reshape/concat/values_1"
  input: "vgg_16_1/rpn_cls_score_reshape/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score_reshape/Reshape"
  op: "Reshape"
  input: "vgg_16_1/rpn_cls_score_reshape/transpose"
  input: "vgg_16_1/rpn_cls_score_reshape/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score_reshape/transpose_1/perm"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_score_reshape/transpose_1"
  op: "Transpose"
  input: "vgg_16_1/rpn_cls_score_reshape/Reshape"
  input: "vgg_16_1/rpn_cls_score_reshape/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/Shape_1"
  op: "Shape"
  input: "vgg_16_1/rpn_cls_score_reshape/transpose_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/strided_slice/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "vgg_16_1/strided_slice/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_1/strided_slice/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/strided_slice"
  op: "StridedSlice"
  input: "vgg_16_1/Shape_1"
  input: "vgg_16_1/strided_slice/stack"
  input: "vgg_16_1/strided_slice/stack_1"
  input: "vgg_16_1/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/Reshape/shape/0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "vgg_16_1/Reshape/shape"
  op: "Pack"
  input: "vgg_16_1/Reshape/shape/0"
  input: "vgg_16_1/strided_slice"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16_1/Reshape"
  op: "Reshape"
  input: "vgg_16_1/rpn_cls_score_reshape/transpose_1"
  input: "vgg_16_1/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob_reshape"
  op: "Softmax"
  input: "vgg_16_1/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/Reshape_1"
  op: "Reshape"
  input: "vgg_16_1/rpn_cls_prob_reshape"
  input: "vgg_16_1/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/Reshape_2/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\002\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/Reshape_2"
  op: "Reshape"
  input: "vgg_16_1/rpn_cls_score_reshape/transpose_1"
  input: "vgg_16_1/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_pred/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_pred"
  op: "ArgMax"
  input: "vgg_16_1/Reshape_2"
  input: "vgg_16_1/rpn_cls_pred/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/Shape_2"
  op: "Shape"
  input: "vgg_16_1/Reshape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob/transpose/perm"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\000\000\000\000\003\000\000\000\001\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob/transpose"
  op: "Transpose"
  input: "vgg_16_1/Reshape_1"
  input: "vgg_16_1/rpn_cls_prob/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob/strided_slice/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob/strided_slice/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob/strided_slice/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob/strided_slice"
  op: "StridedSlice"
  input: "vgg_16_1/Shape_2"
  input: "vgg_16_1/rpn_cls_prob/strided_slice/stack"
  input: "vgg_16_1/rpn_cls_prob/strided_slice/stack_1"
  input: "vgg_16_1/rpn_cls_prob/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob/concat/values_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 3
          }
        }
        tensor_content: "\001\000\000\000\022\000\000\000\377\377\377\377"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob/concat/values_1"
  op: "Pack"
  input: "vgg_16_1/rpn_cls_prob/strided_slice"
  attr {
    key: "N"
    value {
      i: 1
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob/concat"
  op: "ConcatV2"
  input: "vgg_16_1/rpn_cls_prob/concat/values_0"
  input: "vgg_16_1/rpn_cls_prob/concat/values_1"
  input: "vgg_16_1/rpn_cls_prob/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob/Reshape"
  op: "Reshape"
  input: "vgg_16_1/rpn_cls_prob/transpose"
  input: "vgg_16_1/rpn_cls_prob/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob/transpose_1/perm"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_cls_prob/transpose_1"
  op: "Transpose"
  input: "vgg_16_1/rpn_cls_prob/Reshape"
  input: "vgg_16_1/rpn_cls_prob/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16/rpn_bbox_pred/weights/Initializer/random_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\002\000\000$\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/rpn_bbox_pred/weights/Initializer/random_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/rpn_bbox_pred/weights/Initializer/random_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.00999999977648
      }
    }
  }
}
node {
  name: "vgg_16/rpn_bbox_pred/weights/Initializer/random_normal/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "vgg_16/rpn_bbox_pred/weights/Initializer/random_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/rpn_bbox_pred/weights/Initializer/random_normal/mul"
  op: "Mul"
  input: "vgg_16/rpn_bbox_pred/weights/Initializer/random_normal/RandomStandardNormal"
  input: "vgg_16/rpn_bbox_pred/weights/Initializer/random_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
}
node {
  name: "vgg_16/rpn_bbox_pred/weights/Initializer/random_normal"
  op: "Add"
  input: "vgg_16/rpn_bbox_pred/weights/Initializer/random_normal/mul"
  input: "vgg_16/rpn_bbox_pred/weights/Initializer/random_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
}
node {
  name: "vgg_16/rpn_bbox_pred/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 512
        }
        dim {
          size: 36
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/rpn_bbox_pred/weights/Assign"
  op: "Assign"
  input: "vgg_16/rpn_bbox_pred/weights"
  input: "vgg_16/rpn_bbox_pred/weights/Initializer/random_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/rpn_bbox_pred/weights/read"
  op: "Identity"
  input: "vgg_16/rpn_bbox_pred/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_bbox_pred/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_bbox_pred/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/rpn_bbox_pred/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_bbox_pred/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16_1/rpn_bbox_pred/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16_1/rpn_bbox_pred/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
}
node {
  name: "vgg_16/rpn_bbox_pred/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 36
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/rpn_bbox_pred/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 36
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/rpn_bbox_pred/biases/Assign"
  op: "Assign"
  input: "vgg_16/rpn_bbox_pred/biases"
  input: "vgg_16/rpn_bbox_pred/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/rpn_bbox_pred/biases/read"
  op: "Identity"
  input: "vgg_16/rpn_bbox_pred/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/biases"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_bbox_pred/convolution/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\002\000\000$\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_bbox_pred/convolution/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rpn_bbox_pred/convolution"
  op: "Conv2D"
  input: "vgg_16_1/rpn_conv/3x3/Relu"
  input: "vgg_16/rpn_bbox_pred/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16_1/rpn_bbox_pred/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16_1/rpn_bbox_pred/convolution"
  input: "vgg_16/rpn_bbox_pred/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\t\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice"
  op: "StridedSlice"
  input: "vgg_16_1/rpn_cls_prob/transpose_1"
  input: "vgg_16_1/rois/strided_slice/stack"
  input: "vgg_16_1/rois/strided_slice/stack_1"
  input: "vgg_16_1/rois/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 7
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 15
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16_1/rois/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/Reshape"
  op: "Reshape"
  input: "vgg_16_1/rois/strided_slice"
  input: "vgg_16_1/rois/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rois/Reshape_1/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\004\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/Reshape_1"
  op: "Reshape"
  input: "vgg_16_1/rpn_bbox_pred/BiasAdd"
  input: "vgg_16_1/rois/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_1/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_1/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_1/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_1"
  op: "StridedSlice"
  input: "vgg_16_1/ANCHOR_default/Cast"
  input: "vgg_16_1/rois/strided_slice_1/stack"
  input: "vgg_16_1/rois/strided_slice_1/stack_1"
  input: "vgg_16_1/rois/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_2/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_2/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_2/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_2"
  op: "StridedSlice"
  input: "vgg_16_1/ANCHOR_default/Cast"
  input: "vgg_16_1/rois/strided_slice_2/stack"
  input: "vgg_16_1/rois/strided_slice_2/stack_1"
  input: "vgg_16_1/rois/strided_slice_2/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/Sub"
  op: "Sub"
  input: "vgg_16_1/rois/strided_slice_1"
  input: "vgg_16_1/rois/strided_slice_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/add/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/add"
  op: "Add"
  input: "vgg_16_1/rois/Sub"
  input: "vgg_16_1/rois/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_3/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_3/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_3/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_3"
  op: "StridedSlice"
  input: "vgg_16_1/ANCHOR_default/Cast"
  input: "vgg_16_1/rois/strided_slice_3/stack"
  input: "vgg_16_1/rois/strided_slice_3/stack_1"
  input: "vgg_16_1/rois/strided_slice_3/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_4/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_4/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_4/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_4"
  op: "StridedSlice"
  input: "vgg_16_1/ANCHOR_default/Cast"
  input: "vgg_16_1/rois/strided_slice_4/stack"
  input: "vgg_16_1/rois/strided_slice_4/stack_1"
  input: "vgg_16_1/rois/strided_slice_4/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/Sub_1"
  op: "Sub"
  input: "vgg_16_1/rois/strided_slice_3"
  input: "vgg_16_1/rois/strided_slice_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/add_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/add_1"
  op: "Add"
  input: "vgg_16_1/rois/Sub_1"
  input: "vgg_16_1/rois/add_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_5/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_5/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_5/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_5"
  op: "StridedSlice"
  input: "vgg_16_1/ANCHOR_default/Cast"
  input: "vgg_16_1/rois/strided_slice_5/stack"
  input: "vgg_16_1/rois/strided_slice_5/stack_1"
  input: "vgg_16_1/rois/strided_slice_5/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/mul/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.5
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/mul"
  op: "Mul"
  input: "vgg_16_1/rois/add"
  input: "vgg_16_1/rois/mul/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Add"
  op: "Add"
  input: "vgg_16_1/rois/strided_slice_5"
  input: "vgg_16_1/rois/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_6/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_6/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_6/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_6"
  op: "StridedSlice"
  input: "vgg_16_1/ANCHOR_default/Cast"
  input: "vgg_16_1/rois/strided_slice_6/stack"
  input: "vgg_16_1/rois/strided_slice_6/stack_1"
  input: "vgg_16_1/rois/strided_slice_6/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/mul_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.5
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/mul_1"
  op: "Mul"
  input: "vgg_16_1/rois/add_1"
  input: "vgg_16_1/rois/mul_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Add_1"
  op: "Add"
  input: "vgg_16_1/rois/strided_slice_6"
  input: "vgg_16_1/rois/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_7/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_7/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_7/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_7"
  op: "StridedSlice"
  input: "vgg_16_1/rois/Reshape_1"
  input: "vgg_16_1/rois/strided_slice_7/stack"
  input: "vgg_16_1/rois/strided_slice_7/stack_1"
  input: "vgg_16_1/rois/strided_slice_7/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_8/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_8/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_8/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_8"
  op: "StridedSlice"
  input: "vgg_16_1/rois/Reshape_1"
  input: "vgg_16_1/rois/strided_slice_8/stack"
  input: "vgg_16_1/rois/strided_slice_8/stack_1"
  input: "vgg_16_1/rois/strided_slice_8/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_9/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_9/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_9/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_9"
  op: "StridedSlice"
  input: "vgg_16_1/rois/Reshape_1"
  input: "vgg_16_1/rois/strided_slice_9/stack"
  input: "vgg_16_1/rois/strided_slice_9/stack_1"
  input: "vgg_16_1/rois/strided_slice_9/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_10/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_10/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_10/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_10"
  op: "StridedSlice"
  input: "vgg_16_1/rois/Reshape_1"
  input: "vgg_16_1/rois/strided_slice_10/stack"
  input: "vgg_16_1/rois/strided_slice_10/stack_1"
  input: "vgg_16_1/rois/strided_slice_10/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/Mul"
  op: "Mul"
  input: "vgg_16_1/rois/strided_slice_7"
  input: "vgg_16_1/rois/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Add_2"
  op: "Add"
  input: "vgg_16_1/rois/Mul"
  input: "vgg_16_1/rois/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Mul_1"
  op: "Mul"
  input: "vgg_16_1/rois/strided_slice_8"
  input: "vgg_16_1/rois/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Add_3"
  op: "Add"
  input: "vgg_16_1/rois/Mul_1"
  input: "vgg_16_1/rois/Add_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Exp"
  op: "Exp"
  input: "vgg_16_1/rois/strided_slice_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Mul_2"
  op: "Mul"
  input: "vgg_16_1/rois/Exp"
  input: "vgg_16_1/rois/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Exp_1"
  op: "Exp"
  input: "vgg_16_1/rois/strided_slice_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Mul_3"
  op: "Mul"
  input: "vgg_16_1/rois/Exp_1"
  input: "vgg_16_1/rois/add_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/mul_2/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.5
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/mul_2"
  op: "Mul"
  input: "vgg_16_1/rois/Mul_2"
  input: "vgg_16_1/rois/mul_2/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Sub_2"
  op: "Sub"
  input: "vgg_16_1/rois/Add_2"
  input: "vgg_16_1/rois/mul_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/mul_3/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.5
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/mul_3"
  op: "Mul"
  input: "vgg_16_1/rois/Mul_3"
  input: "vgg_16_1/rois/mul_3/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Sub_3"
  op: "Sub"
  input: "vgg_16_1/rois/Add_3"
  input: "vgg_16_1/rois/mul_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/mul_4/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.5
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/mul_4"
  op: "Mul"
  input: "vgg_16_1/rois/Mul_2"
  input: "vgg_16_1/rois/mul_4/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Add_4"
  op: "Add"
  input: "vgg_16_1/rois/Add_2"
  input: "vgg_16_1/rois/mul_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/mul_5/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.5
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/mul_5"
  op: "Mul"
  input: "vgg_16_1/rois/Mul_3"
  input: "vgg_16_1/rois/mul_5/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Add_5"
  op: "Add"
  input: "vgg_16_1/rois/Add_3"
  input: "vgg_16_1/rois/mul_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/stack"
  op: "Pack"
  input: "vgg_16_1/rois/Sub_2"
  input: "vgg_16_1/rois/Sub_3"
  input: "vgg_16_1/rois/Add_4"
  input: "vgg_16_1/rois/Add_5"
  attr {
    key: "N"
    value {
      i: 4
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "axis"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_11/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_11/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_11/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_11"
  op: "StridedSlice"
  input: "Placeholder_1"
  input: "vgg_16_1/rois/strided_slice_11/stack"
  input: "vgg_16_1/rois/strided_slice_11/stack_1"
  input: "vgg_16_1/rois/strided_slice_11/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_12/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_12/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_12/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_12"
  op: "StridedSlice"
  input: "vgg_16_1/rois/stack"
  input: "vgg_16_1/rois/strided_slice_12/stack"
  input: "vgg_16_1/rois/strided_slice_12/stack_1"
  input: "vgg_16_1/rois/strided_slice_12/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_13/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_13/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_13/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_13"
  op: "StridedSlice"
  input: "vgg_16_1/rois/strided_slice_11"
  input: "vgg_16_1/rois/strided_slice_13/stack"
  input: "vgg_16_1/rois/strided_slice_13/stack_1"
  input: "vgg_16_1/rois/strided_slice_13/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/rois/sub/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/sub"
  op: "Sub"
  input: "vgg_16_1/rois/strided_slice_13"
  input: "vgg_16_1/rois/sub/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Minimum"
  op: "Minimum"
  input: "vgg_16_1/rois/strided_slice_12"
  input: "vgg_16_1/rois/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Maximum/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/Maximum"
  op: "Maximum"
  input: "vgg_16_1/rois/Minimum"
  input: "vgg_16_1/rois/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_14/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_14/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_14/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_14"
  op: "StridedSlice"
  input: "vgg_16_1/rois/stack"
  input: "vgg_16_1/rois/strided_slice_14/stack"
  input: "vgg_16_1/rois/strided_slice_14/stack_1"
  input: "vgg_16_1/rois/strided_slice_14/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_15/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_15/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_15/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_15"
  op: "StridedSlice"
  input: "vgg_16_1/rois/strided_slice_11"
  input: "vgg_16_1/rois/strided_slice_15/stack"
  input: "vgg_16_1/rois/strided_slice_15/stack_1"
  input: "vgg_16_1/rois/strided_slice_15/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/rois/sub_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/sub_1"
  op: "Sub"
  input: "vgg_16_1/rois/strided_slice_15"
  input: "vgg_16_1/rois/sub_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Minimum_1"
  op: "Minimum"
  input: "vgg_16_1/rois/strided_slice_14"
  input: "vgg_16_1/rois/sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Maximum_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/Maximum_1"
  op: "Maximum"
  input: "vgg_16_1/rois/Minimum_1"
  input: "vgg_16_1/rois/Maximum_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_16/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_16/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_16/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_16"
  op: "StridedSlice"
  input: "vgg_16_1/rois/stack"
  input: "vgg_16_1/rois/strided_slice_16/stack"
  input: "vgg_16_1/rois/strided_slice_16/stack_1"
  input: "vgg_16_1/rois/strided_slice_16/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_17/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_17/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_17/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_17"
  op: "StridedSlice"
  input: "vgg_16_1/rois/strided_slice_11"
  input: "vgg_16_1/rois/strided_slice_17/stack"
  input: "vgg_16_1/rois/strided_slice_17/stack_1"
  input: "vgg_16_1/rois/strided_slice_17/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/rois/sub_2/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/sub_2"
  op: "Sub"
  input: "vgg_16_1/rois/strided_slice_17"
  input: "vgg_16_1/rois/sub_2/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Minimum_2"
  op: "Minimum"
  input: "vgg_16_1/rois/strided_slice_16"
  input: "vgg_16_1/rois/sub_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Maximum_2/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/Maximum_2"
  op: "Maximum"
  input: "vgg_16_1/rois/Minimum_2"
  input: "vgg_16_1/rois/Maximum_2/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_18/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_18/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_18/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_18"
  op: "StridedSlice"
  input: "vgg_16_1/rois/stack"
  input: "vgg_16_1/rois/strided_slice_18/stack"
  input: "vgg_16_1/rois/strided_slice_18/stack_1"
  input: "vgg_16_1/rois/strided_slice_18/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 2
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_19/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_19/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_19/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_19"
  op: "StridedSlice"
  input: "vgg_16_1/rois/strided_slice_11"
  input: "vgg_16_1/rois/strided_slice_19/stack"
  input: "vgg_16_1/rois/strided_slice_19/stack_1"
  input: "vgg_16_1/rois/strided_slice_19/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/rois/sub_3/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/sub_3"
  op: "Sub"
  input: "vgg_16_1/rois/strided_slice_19"
  input: "vgg_16_1/rois/sub_3/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Minimum_3"
  op: "Minimum"
  input: "vgg_16_1/rois/strided_slice_18"
  input: "vgg_16_1/rois/sub_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/Maximum_3/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/Maximum_3"
  op: "Maximum"
  input: "vgg_16_1/rois/Minimum_3"
  input: "vgg_16_1/rois/Maximum_3/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/stack_1"
  op: "Pack"
  input: "vgg_16_1/rois/Maximum"
  input: "vgg_16_1/rois/Maximum_1"
  input: "vgg_16_1/rois/Maximum_2"
  input: "vgg_16_1/rois/Maximum_3"
  attr {
    key: "N"
    value {
      i: 4
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "axis"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/rois/NonMaxSuppression/max_output_size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 300
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/NonMaxSuppression"
  op: "NonMaxSuppression"
  input: "vgg_16_1/rois/stack_1"
  input: "vgg_16_1/rois/Reshape"
  input: "vgg_16_1/rois/NonMaxSuppression/max_output_size"
  attr {
    key: "iou_threshold"
    value {
      f: 0.699999988079
    }
  }
}
node {
  name: "vgg_16_1/rois/Gather"
  op: "Gather"
  input: "vgg_16_1/rois/stack_1"
  input: "vgg_16_1/rois/NonMaxSuppression"
  attr {
    key: "Tindices"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tparams"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "validate_indices"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16_1/rois/Gather_1"
  op: "Gather"
  input: "vgg_16_1/rois/Reshape"
  input: "vgg_16_1/rois/NonMaxSuppression"
  attr {
    key: "Tindices"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tparams"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "validate_indices"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16_1/rois/Reshape_2/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/Reshape_2"
  op: "Reshape"
  input: "vgg_16_1/rois/Gather_1"
  input: "vgg_16_1/rois/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rois/Shape"
  op: "Shape"
  input: "vgg_16_1/rois/NonMaxSuppression"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_20/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_20/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_20/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/strided_slice_20"
  op: "StridedSlice"
  input: "vgg_16_1/rois/Shape"
  input: "vgg_16_1/rois/strided_slice_20/stack"
  input: "vgg_16_1/rois/strided_slice_20/stack_1"
  input: "vgg_16_1/rois/strided_slice_20/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/rois/zeros/shape/1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/zeros/shape"
  op: "Pack"
  input: "vgg_16_1/rois/strided_slice_20"
  input: "vgg_16_1/rois/zeros/shape/1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16_1/rois/zeros/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/zeros"
  op: "Fill"
  input: "vgg_16_1/rois/zeros/shape"
  input: "vgg_16_1/rois/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/rois/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/rois/concat"
  op: "ConcatV2"
  input: "vgg_16_1/rois/zeros"
  input: "vgg_16_1/rois/Gather"
  input: "vgg_16_1/rois/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/pool5/batch_id/begin"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/batch_id/size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/batch_id"
  op: "Slice"
  input: "vgg_16_1/rois/concat"
  input: "vgg_16_1/pool5/batch_id/begin"
  input: "vgg_16_1/pool5/batch_id/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/Squeeze"
  op: "Squeeze"
  input: "vgg_16_1/pool5/batch_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "squeeze_dims"
    value {
      list {
        i: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/Shape"
  op: "Shape"
  input: "vgg_16/conv5/conv5_3/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/pool5/strided_slice/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/strided_slice/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/strided_slice/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/strided_slice"
  op: "StridedSlice"
  input: "vgg_16_1/pool5/Shape"
  input: "vgg_16_1/pool5/strided_slice/stack"
  input: "vgg_16_1/pool5/strided_slice/stack_1"
  input: "vgg_16_1/pool5/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/pool5/ToFloat"
  op: "Cast"
  input: "vgg_16_1/pool5/strided_slice"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/pool5/sub/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/sub"
  op: "Sub"
  input: "vgg_16_1/pool5/ToFloat"
  input: "vgg_16_1/pool5/sub/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/mul/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 16.0
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/mul"
  op: "Mul"
  input: "vgg_16_1/pool5/sub"
  input: "vgg_16_1/pool5/mul/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/strided_slice_1/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/strided_slice_1/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/strided_slice_1/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/strided_slice_1"
  op: "StridedSlice"
  input: "vgg_16_1/pool5/Shape"
  input: "vgg_16_1/pool5/strided_slice_1/stack"
  input: "vgg_16_1/pool5/strided_slice_1/stack_1"
  input: "vgg_16_1/pool5/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "vgg_16_1/pool5/ToFloat_1"
  op: "Cast"
  input: "vgg_16_1/pool5/strided_slice_1"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/pool5/sub_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/sub_1"
  op: "Sub"
  input: "vgg_16_1/pool5/ToFloat_1"
  input: "vgg_16_1/pool5/sub_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/mul_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 16.0
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/mul_1"
  op: "Mul"
  input: "vgg_16_1/pool5/sub_1"
  input: "vgg_16_1/pool5/mul_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/x1/begin"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/x1/size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/x1"
  op: "Slice"
  input: "vgg_16_1/rois/concat"
  input: "vgg_16_1/pool5/x1/begin"
  input: "vgg_16_1/pool5/x1/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/truediv"
  op: "RealDiv"
  input: "vgg_16_1/pool5/x1"
  input: "vgg_16_1/pool5/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/y1/begin"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/y1/size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/y1"
  op: "Slice"
  input: "vgg_16_1/rois/concat"
  input: "vgg_16_1/pool5/y1/begin"
  input: "vgg_16_1/pool5/y1/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/truediv_1"
  op: "RealDiv"
  input: "vgg_16_1/pool5/y1"
  input: "vgg_16_1/pool5/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/x2/begin"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/x2/size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/x2"
  op: "Slice"
  input: "vgg_16_1/rois/concat"
  input: "vgg_16_1/pool5/x2/begin"
  input: "vgg_16_1/pool5/x2/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/truediv_2"
  op: "RealDiv"
  input: "vgg_16_1/pool5/x2"
  input: "vgg_16_1/pool5/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/y2/begin"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/y2/size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\001\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/y2"
  op: "Slice"
  input: "vgg_16_1/rois/concat"
  input: "vgg_16_1/pool5/y2/begin"
  input: "vgg_16_1/pool5/y2/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/truediv_3"
  op: "RealDiv"
  input: "vgg_16_1/pool5/y2"
  input: "vgg_16_1/pool5/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/concat"
  op: "ConcatV2"
  input: "vgg_16_1/pool5/truediv_1"
  input: "vgg_16_1/pool5/truediv"
  input: "vgg_16_1/pool5/truediv_3"
  input: "vgg_16_1/pool5/truediv_2"
  input: "vgg_16_1/pool5/concat/axis"
  attr {
    key: "N"
    value {
      i: 4
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_1/pool5/StopGradient"
  op: "StopGradient"
  input: "vgg_16_1/pool5/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/ToInt32"
  op: "Cast"
  input: "vgg_16_1/pool5/Squeeze"
  attr {
    key: "DstT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_1/pool5/crops/crop_size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\016\000\000\000\016\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16_1/pool5/crops"
  op: "CropAndResize"
  input: "vgg_16/conv5/conv5_3/Relu"
  input: "vgg_16_1/pool5/StopGradient"
  input: "vgg_16_1/pool5/ToInt32"
  input: "vgg_16_1/pool5/crops/crop_size"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "extrapolation_value"
    value {
      f: 0.0
    }
  }
  attr {
    key: "method"
    value {
      s: "bilinear"
    }
  }
}
node {
  name: "vgg_16_1/MaxPool2D/MaxPool"
  op: "MaxPool"
  input: "vgg_16_1/pool5/crops"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "vgg_16_2/flatten/Shape"
  op: "Shape"
  input: "vgg_16_1/MaxPool2D/MaxPool"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_2/flatten/Slice/begin"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_2/flatten/Slice/size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_2/flatten/Slice"
  op: "Slice"
  input: "vgg_16_2/flatten/Shape"
  input: "vgg_16_2/flatten/Slice/begin"
  input: "vgg_16_2/flatten/Slice/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_2/flatten/Slice_1/begin"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_2/flatten/Slice_1/size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "vgg_16_2/flatten/Slice_1"
  op: "Slice"
  input: "vgg_16_2/flatten/Shape"
  input: "vgg_16_2/flatten/Slice_1/begin"
  input: "vgg_16_2/flatten/Slice_1/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_2/flatten/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_2/flatten/Prod"
  op: "Prod"
  input: "vgg_16_2/flatten/Slice_1"
  input: "vgg_16_2/flatten/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "vgg_16_2/flatten/ExpandDims/dim"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_2/flatten/ExpandDims"
  op: "ExpandDims"
  input: "vgg_16_2/flatten/Prod"
  input: "vgg_16_2/flatten/ExpandDims/dim"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tdim"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_2/flatten/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "vgg_16_2/flatten/concat"
  op: "ConcatV2"
  input: "vgg_16_2/flatten/Slice"
  input: "vgg_16_2/flatten/ExpandDims"
  input: "vgg_16_2/flatten/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16_2/flatten/Reshape"
  op: "Reshape"
  input: "vgg_16_1/MaxPool2D/MaxPool"
  input: "vgg_16_2/flatten/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16/fc6/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000b\000\000\000\020\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/fc6/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0143384831026
      }
    }
  }
}
node {
  name: "vgg_16/fc6/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0143384831026
      }
    }
  }
}
node {
  name: "vgg_16/fc6/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/fc6/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/fc6/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/fc6/weights/Initializer/random_uniform/max"
  input: "vgg_16/fc6/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
}
node {
  name: "vgg_16/fc6/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/fc6/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/fc6/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
}
node {
  name: "vgg_16/fc6/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/fc6/weights/Initializer/random_uniform/mul"
  input: "vgg_16/fc6/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
}
node {
  name: "vgg_16/fc6/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 25088
        }
        dim {
          size: 4096
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/fc6/weights/Assign"
  op: "Assign"
  input: "vgg_16/fc6/weights"
  input: "vgg_16/fc6/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/fc6/weights/read"
  op: "Identity"
  input: "vgg_16/fc6/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
}
node {
  name: "vgg_16_2/fc6/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16_2/fc6/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/fc6/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
}
node {
  name: "vgg_16_2/fc6/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16_2/fc6/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16_2/fc6/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
}
node {
  name: "vgg_16/fc6/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 4096
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/fc6/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4096
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/fc6/biases/Assign"
  op: "Assign"
  input: "vgg_16/fc6/biases"
  input: "vgg_16/fc6/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/fc6/biases/read"
  op: "Identity"
  input: "vgg_16/fc6/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/biases"
      }
    }
  }
}
node {
  name: "vgg_16_2/fc6/MatMul"
  op: "MatMul"
  input: "vgg_16_2/flatten/Reshape"
  input: "vgg_16/fc6/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "vgg_16_2/fc6/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16_2/fc6/MatMul"
  input: "vgg_16/fc6/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16_2/fc6/Relu"
  op: "Relu"
  input: "vgg_16_2/fc6/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/fc7/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\020\000\000\000\020\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/fc7/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0270632933825
      }
    }
  }
}
node {
  name: "vgg_16/fc7/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0270632933825
      }
    }
  }
}
node {
  name: "vgg_16/fc7/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "vgg_16/fc7/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/fc7/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "vgg_16/fc7/weights/Initializer/random_uniform/max"
  input: "vgg_16/fc7/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
}
node {
  name: "vgg_16/fc7/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "vgg_16/fc7/weights/Initializer/random_uniform/RandomUniform"
  input: "vgg_16/fc7/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
}
node {
  name: "vgg_16/fc7/weights/Initializer/random_uniform"
  op: "Add"
  input: "vgg_16/fc7/weights/Initializer/random_uniform/mul"
  input: "vgg_16/fc7/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
}
node {
  name: "vgg_16/fc7/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4096
        }
        dim {
          size: 4096
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/fc7/weights/Assign"
  op: "Assign"
  input: "vgg_16/fc7/weights"
  input: "vgg_16/fc7/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/fc7/weights/read"
  op: "Identity"
  input: "vgg_16/fc7/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
}
node {
  name: "vgg_16_2/fc7/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16_2/fc7/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/fc7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
}
node {
  name: "vgg_16_2/fc7/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16_2/fc7/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16_2/fc7/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
}
node {
  name: "vgg_16/fc7/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 4096
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/fc7/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4096
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/fc7/biases/Assign"
  op: "Assign"
  input: "vgg_16/fc7/biases"
  input: "vgg_16/fc7/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/fc7/biases/read"
  op: "Identity"
  input: "vgg_16/fc7/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/biases"
      }
    }
  }
}
node {
  name: "vgg_16_2/fc7/MatMul"
  op: "MatMul"
  input: "vgg_16_2/fc6/Relu"
  input: "vgg_16/fc7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "vgg_16_2/fc7/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16_2/fc7/MatMul"
  input: "vgg_16/fc7/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16_2/fc7/Relu"
  op: "Relu"
  input: "vgg_16_2/fc7/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16/cls_score/weights/Initializer/random_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\020\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/cls_score/weights/Initializer/random_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/cls_score/weights/Initializer/random_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.00999999977648
      }
    }
  }
}
node {
  name: "vgg_16/cls_score/weights/Initializer/random_normal/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "vgg_16/cls_score/weights/Initializer/random_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/cls_score/weights/Initializer/random_normal/mul"
  op: "Mul"
  input: "vgg_16/cls_score/weights/Initializer/random_normal/RandomStandardNormal"
  input: "vgg_16/cls_score/weights/Initializer/random_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/weights"
      }
    }
  }
}
node {
  name: "vgg_16/cls_score/weights/Initializer/random_normal"
  op: "Add"
  input: "vgg_16/cls_score/weights/Initializer/random_normal/mul"
  input: "vgg_16/cls_score/weights/Initializer/random_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/weights"
      }
    }
  }
}
node {
  name: "vgg_16/cls_score/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4096
        }
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/cls_score/weights/Assign"
  op: "Assign"
  input: "vgg_16/cls_score/weights"
  input: "vgg_16/cls_score/weights/Initializer/random_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/cls_score/weights/read"
  op: "Identity"
  input: "vgg_16/cls_score/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/weights"
      }
    }
  }
}
node {
  name: "vgg_16_3/cls_score/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16_3/cls_score/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/cls_score/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/weights"
      }
    }
  }
}
node {
  name: "vgg_16_3/cls_score/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16_3/cls_score/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16_3/cls_score/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/weights"
      }
    }
  }
}
node {
  name: "vgg_16/cls_score/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 2
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/cls_score/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/cls_score/biases/Assign"
  op: "Assign"
  input: "vgg_16/cls_score/biases"
  input: "vgg_16/cls_score/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/cls_score/biases/read"
  op: "Identity"
  input: "vgg_16/cls_score/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/biases"
      }
    }
  }
}
node {
  name: "vgg_16_3/cls_score/MatMul"
  op: "MatMul"
  input: "vgg_16_2/fc7/Relu"
  input: "vgg_16/cls_score/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "vgg_16_3/cls_score/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16_3/cls_score/MatMul"
  input: "vgg_16/cls_score/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "vgg_16_3/cls_prob"
  op: "Softmax"
  input: "vgg_16_3/cls_score/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "vgg_16_3/cls_pred/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "vgg_16_3/cls_pred"
  op: "ArgMax"
  input: "vgg_16_3/cls_score/BiasAdd"
  input: "vgg_16_3/cls_pred/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "vgg_16/bbox_pred/weights/Initializer/random_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\020\000\000\010\000\000\000"
      }
    }
  }
}
node {
  name: "vgg_16/bbox_pred/weights/Initializer/random_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/bbox_pred/weights/Initializer/random_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0010000000475
      }
    }
  }
}
node {
  name: "vgg_16/bbox_pred/weights/Initializer/random_normal/RandomStandardNormal"
  op: "RandomStandardNormal"
  input: "vgg_16/bbox_pred/weights/Initializer/random_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "vgg_16/bbox_pred/weights/Initializer/random_normal/mul"
  op: "Mul"
  input: "vgg_16/bbox_pred/weights/Initializer/random_normal/RandomStandardNormal"
  input: "vgg_16/bbox_pred/weights/Initializer/random_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/weights"
      }
    }
  }
}
node {
  name: "vgg_16/bbox_pred/weights/Initializer/random_normal"
  op: "Add"
  input: "vgg_16/bbox_pred/weights/Initializer/random_normal/mul"
  input: "vgg_16/bbox_pred/weights/Initializer/random_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/weights"
      }
    }
  }
}
node {
  name: "vgg_16/bbox_pred/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4096
        }
        dim {
          size: 8
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/bbox_pred/weights/Assign"
  op: "Assign"
  input: "vgg_16/bbox_pred/weights"
  input: "vgg_16/bbox_pred/weights/Initializer/random_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/bbox_pred/weights/read"
  op: "Identity"
  input: "vgg_16/bbox_pred/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/weights"
      }
    }
  }
}
node {
  name: "vgg_16_3/bbox_pred/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999974738e-05
      }
    }
  }
}
node {
  name: "vgg_16_3/bbox_pred/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "vgg_16/bbox_pred/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/weights"
      }
    }
  }
}
node {
  name: "vgg_16_3/bbox_pred/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "vgg_16_3/bbox_pred/kernel/Regularizer/l2_regularizer/scale"
  input: "vgg_16_3/bbox_pred/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/weights"
      }
    }
  }
}
node {
  name: "vgg_16/bbox_pred/biases/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 8
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "vgg_16/bbox_pred/biases"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 8
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "vgg_16/bbox_pred/biases/Assign"
  op: "Assign"
  input: "vgg_16/bbox_pred/biases"
  input: "vgg_16/bbox_pred/biases/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "vgg_16/bbox_pred/biases/read"
  op: "Identity"
  input: "vgg_16/bbox_pred/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/biases"
      }
    }
  }
}
node {
  name: "vgg_16_3/bbox_pred/MatMul"
  op: "MatMul"
  input: "vgg_16_2/fc7/Relu"
  input: "vgg_16/bbox_pred/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "vgg_16_3/bbox_pred/BiasAdd"
  op: "BiasAdd"
  input: "vgg_16_3/bbox_pred/MatMul"
  input: "vgg_16/bbox_pred/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "mul/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 8
          }
        }
        tensor_content: "\315\314\314=\315\314\314=\315\314L>\315\314L>\315\314\314=\315\314\314=\315\314L>\315\314L>"
      }
    }
  }
}
node {
  name: "mul"
  op: "Mul"
  input: "vgg_16_3/bbox_pred/BiasAdd"
  input: "mul/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "add/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 8
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "add"
  op: "Add"
  input: "mul"
  input: "add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save/SaveV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 40
          }
        }
        string_val: "vgg_16/bbox_pred/biases"
        string_val: "vgg_16/bbox_pred/weights"
        string_val: "vgg_16/cls_score/biases"
        string_val: "vgg_16/cls_score/weights"
        string_val: "vgg_16/conv1/conv1_1/biases"
        string_val: "vgg_16/conv1/conv1_1/weights"
        string_val: "vgg_16/conv1/conv1_2/biases"
        string_val: "vgg_16/conv1/conv1_2/weights"
        string_val: "vgg_16/conv2/conv2_1/biases"
        string_val: "vgg_16/conv2/conv2_1/weights"
        string_val: "vgg_16/conv2/conv2_2/biases"
        string_val: "vgg_16/conv2/conv2_2/weights"
        string_val: "vgg_16/conv3/conv3_1/biases"
        string_val: "vgg_16/conv3/conv3_1/weights"
        string_val: "vgg_16/conv3/conv3_2/biases"
        string_val: "vgg_16/conv3/conv3_2/weights"
        string_val: "vgg_16/conv3/conv3_3/biases"
        string_val: "vgg_16/conv3/conv3_3/weights"
        string_val: "vgg_16/conv4/conv4_1/biases"
        string_val: "vgg_16/conv4/conv4_1/weights"
        string_val: "vgg_16/conv4/conv4_2/biases"
        string_val: "vgg_16/conv4/conv4_2/weights"
        string_val: "vgg_16/conv4/conv4_3/biases"
        string_val: "vgg_16/conv4/conv4_3/weights"
        string_val: "vgg_16/conv5/conv5_1/biases"
        string_val: "vgg_16/conv5/conv5_1/weights"
        string_val: "vgg_16/conv5/conv5_2/biases"
        string_val: "vgg_16/conv5/conv5_2/weights"
        string_val: "vgg_16/conv5/conv5_3/biases"
        string_val: "vgg_16/conv5/conv5_3/weights"
        string_val: "vgg_16/fc6/biases"
        string_val: "vgg_16/fc6/weights"
        string_val: "vgg_16/fc7/biases"
        string_val: "vgg_16/fc7/weights"
        string_val: "vgg_16/rpn_bbox_pred/biases"
        string_val: "vgg_16/rpn_bbox_pred/weights"
        string_val: "vgg_16/rpn_cls_score/biases"
        string_val: "vgg_16/rpn_cls_score/weights"
        string_val: "vgg_16/rpn_conv/3x3/biases"
        string_val: "vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
}
node {
  name: "save/SaveV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 40
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save/SaveV2"
  op: "SaveV2"
  input: "save/Const"
  input: "save/SaveV2/tensor_names"
  input: "save/SaveV2/shape_and_slices"
  input: "vgg_16/bbox_pred/biases"
  input: "vgg_16/bbox_pred/weights"
  input: "vgg_16/cls_score/biases"
  input: "vgg_16/cls_score/weights"
  input: "vgg_16/conv1/conv1_1/biases"
  input: "vgg_16/conv1/conv1_1/weights"
  input: "vgg_16/conv1/conv1_2/biases"
  input: "vgg_16/conv1/conv1_2/weights"
  input: "vgg_16/conv2/conv2_1/biases"
  input: "vgg_16/conv2/conv2_1/weights"
  input: "vgg_16/conv2/conv2_2/biases"
  input: "vgg_16/conv2/conv2_2/weights"
  input: "vgg_16/conv3/conv3_1/biases"
  input: "vgg_16/conv3/conv3_1/weights"
  input: "vgg_16/conv3/conv3_2/biases"
  input: "vgg_16/conv3/conv3_2/weights"
  input: "vgg_16/conv3/conv3_3/biases"
  input: "vgg_16/conv3/conv3_3/weights"
  input: "vgg_16/conv4/conv4_1/biases"
  input: "vgg_16/conv4/conv4_1/weights"
  input: "vgg_16/conv4/conv4_2/biases"
  input: "vgg_16/conv4/conv4_2/weights"
  input: "vgg_16/conv4/conv4_3/biases"
  input: "vgg_16/conv4/conv4_3/weights"
  input: "vgg_16/conv5/conv5_1/biases"
  input: "vgg_16/conv5/conv5_1/weights"
  input: "vgg_16/conv5/conv5_2/biases"
  input: "vgg_16/conv5/conv5_2/weights"
  input: "vgg_16/conv5/conv5_3/biases"
  input: "vgg_16/conv5/conv5_3/weights"
  input: "vgg_16/fc6/biases"
  input: "vgg_16/fc6/weights"
  input: "vgg_16/fc7/biases"
  input: "vgg_16/fc7/weights"
  input: "vgg_16/rpn_bbox_pred/biases"
  input: "vgg_16/rpn_bbox_pred/weights"
  input: "vgg_16/rpn_cls_score/biases"
  input: "vgg_16/rpn_cls_score/weights"
  input: "vgg_16/rpn_conv/3x3/biases"
  input: "vgg_16/rpn_conv/3x3/weights"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/control_dependency"
  op: "Identity"
  input: "save/Const"
  input: "^save/SaveV2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save/Const"
      }
    }
  }
}
node {
  name: "save/RestoreV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/bbox_pred/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2/tensor_names"
  input: "save/RestoreV2/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign"
  op: "Assign"
  input: "vgg_16/bbox_pred/biases"
  input: "save/RestoreV2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_1/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/bbox_pred/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_1/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_1"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_1/tensor_names"
  input: "save/RestoreV2_1/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_1"
  op: "Assign"
  input: "vgg_16/bbox_pred/weights"
  input: "save/RestoreV2_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/bbox_pred/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/cls_score/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_2"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_2/tensor_names"
  input: "save/RestoreV2_2/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_2"
  op: "Assign"
  input: "vgg_16/cls_score/biases"
  input: "save/RestoreV2_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_3/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/cls_score/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_3/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_3"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_3/tensor_names"
  input: "save/RestoreV2_3/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_3"
  op: "Assign"
  input: "vgg_16/cls_score/weights"
  input: "save/RestoreV2_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/cls_score/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_4/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv1/conv1_1/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_4/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_4"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_4/tensor_names"
  input: "save/RestoreV2_4/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_4"
  op: "Assign"
  input: "vgg_16/conv1/conv1_1/biases"
  input: "save/RestoreV2_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_5/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv1/conv1_1/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_5/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_5"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_5/tensor_names"
  input: "save/RestoreV2_5/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_5"
  op: "Assign"
  input: "vgg_16/conv1/conv1_1/weights"
  input: "save/RestoreV2_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_6/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv1/conv1_2/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_6/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_6"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_6/tensor_names"
  input: "save/RestoreV2_6/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_6"
  op: "Assign"
  input: "vgg_16/conv1/conv1_2/biases"
  input: "save/RestoreV2_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_7/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv1/conv1_2/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_7/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_7"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_7/tensor_names"
  input: "save/RestoreV2_7/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_7"
  op: "Assign"
  input: "vgg_16/conv1/conv1_2/weights"
  input: "save/RestoreV2_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv1/conv1_2/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_8/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv2/conv2_1/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_8/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_8"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_8/tensor_names"
  input: "save/RestoreV2_8/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_8"
  op: "Assign"
  input: "vgg_16/conv2/conv2_1/biases"
  input: "save/RestoreV2_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_9/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv2/conv2_1/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_9/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_9"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_9/tensor_names"
  input: "save/RestoreV2_9/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_9"
  op: "Assign"
  input: "vgg_16/conv2/conv2_1/weights"
  input: "save/RestoreV2_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_10/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv2/conv2_2/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_10/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_10"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_10/tensor_names"
  input: "save/RestoreV2_10/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_10"
  op: "Assign"
  input: "vgg_16/conv2/conv2_2/biases"
  input: "save/RestoreV2_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_11/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv2/conv2_2/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_11/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_11"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_11/tensor_names"
  input: "save/RestoreV2_11/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_11"
  op: "Assign"
  input: "vgg_16/conv2/conv2_2/weights"
  input: "save/RestoreV2_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv2/conv2_2/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_12/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv3/conv3_1/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_12/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_12"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_12/tensor_names"
  input: "save/RestoreV2_12/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_12"
  op: "Assign"
  input: "vgg_16/conv3/conv3_1/biases"
  input: "save/RestoreV2_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_13/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv3/conv3_1/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_13/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_13"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_13/tensor_names"
  input: "save/RestoreV2_13/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_13"
  op: "Assign"
  input: "vgg_16/conv3/conv3_1/weights"
  input: "save/RestoreV2_13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_14/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv3/conv3_2/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_14/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_14"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_14/tensor_names"
  input: "save/RestoreV2_14/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_14"
  op: "Assign"
  input: "vgg_16/conv3/conv3_2/biases"
  input: "save/RestoreV2_14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_15/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv3/conv3_2/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_15/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_15"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_15/tensor_names"
  input: "save/RestoreV2_15/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_15"
  op: "Assign"
  input: "vgg_16/conv3/conv3_2/weights"
  input: "save/RestoreV2_15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_2/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_16/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv3/conv3_3/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_16/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_16"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_16/tensor_names"
  input: "save/RestoreV2_16/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_16"
  op: "Assign"
  input: "vgg_16/conv3/conv3_3/biases"
  input: "save/RestoreV2_16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_17/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv3/conv3_3/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_17/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_17"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_17/tensor_names"
  input: "save/RestoreV2_17/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_17"
  op: "Assign"
  input: "vgg_16/conv3/conv3_3/weights"
  input: "save/RestoreV2_17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv3/conv3_3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_18/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv4/conv4_1/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_18/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_18"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_18/tensor_names"
  input: "save/RestoreV2_18/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_18"
  op: "Assign"
  input: "vgg_16/conv4/conv4_1/biases"
  input: "save/RestoreV2_18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_19/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv4/conv4_1/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_19/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_19"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_19/tensor_names"
  input: "save/RestoreV2_19/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_19"
  op: "Assign"
  input: "vgg_16/conv4/conv4_1/weights"
  input: "save/RestoreV2_19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_20/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv4/conv4_2/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_20/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_20"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_20/tensor_names"
  input: "save/RestoreV2_20/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_20"
  op: "Assign"
  input: "vgg_16/conv4/conv4_2/biases"
  input: "save/RestoreV2_20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_21/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv4/conv4_2/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_21/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_21"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_21/tensor_names"
  input: "save/RestoreV2_21/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_21"
  op: "Assign"
  input: "vgg_16/conv4/conv4_2/weights"
  input: "save/RestoreV2_21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_2/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_22/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv4/conv4_3/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_22/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_22"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_22/tensor_names"
  input: "save/RestoreV2_22/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_22"
  op: "Assign"
  input: "vgg_16/conv4/conv4_3/biases"
  input: "save/RestoreV2_22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_23/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv4/conv4_3/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_23/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_23"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_23/tensor_names"
  input: "save/RestoreV2_23/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_23"
  op: "Assign"
  input: "vgg_16/conv4/conv4_3/weights"
  input: "save/RestoreV2_23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv4/conv4_3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_24/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv5/conv5_1/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_24/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_24"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_24/tensor_names"
  input: "save/RestoreV2_24/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_24"
  op: "Assign"
  input: "vgg_16/conv5/conv5_1/biases"
  input: "save/RestoreV2_24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_25/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv5/conv5_1/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_25/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_25"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_25/tensor_names"
  input: "save/RestoreV2_25/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_25"
  op: "Assign"
  input: "vgg_16/conv5/conv5_1/weights"
  input: "save/RestoreV2_25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_26/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv5/conv5_2/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_26/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_26"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_26/tensor_names"
  input: "save/RestoreV2_26/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_26"
  op: "Assign"
  input: "vgg_16/conv5/conv5_2/biases"
  input: "save/RestoreV2_26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_27/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv5/conv5_2/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_27/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_27"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_27/tensor_names"
  input: "save/RestoreV2_27/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_27"
  op: "Assign"
  input: "vgg_16/conv5/conv5_2/weights"
  input: "save/RestoreV2_27"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_2/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_28/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv5/conv5_3/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_28/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_28"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_28/tensor_names"
  input: "save/RestoreV2_28/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_28"
  op: "Assign"
  input: "vgg_16/conv5/conv5_3/biases"
  input: "save/RestoreV2_28"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_29/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/conv5/conv5_3/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_29/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_29"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_29/tensor_names"
  input: "save/RestoreV2_29/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_29"
  op: "Assign"
  input: "vgg_16/conv5/conv5_3/weights"
  input: "save/RestoreV2_29"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/conv5/conv5_3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_30/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/fc6/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_30/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_30"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_30/tensor_names"
  input: "save/RestoreV2_30/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_30"
  op: "Assign"
  input: "vgg_16/fc6/biases"
  input: "save/RestoreV2_30"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_31/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/fc6/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_31/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_31"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_31/tensor_names"
  input: "save/RestoreV2_31/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_31"
  op: "Assign"
  input: "vgg_16/fc6/weights"
  input: "save/RestoreV2_31"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc6/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_32/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/fc7/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_32/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_32"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_32/tensor_names"
  input: "save/RestoreV2_32/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_32"
  op: "Assign"
  input: "vgg_16/fc7/biases"
  input: "save/RestoreV2_32"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_33/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/fc7/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_33/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_33"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_33/tensor_names"
  input: "save/RestoreV2_33/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_33"
  op: "Assign"
  input: "vgg_16/fc7/weights"
  input: "save/RestoreV2_33"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/fc7/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_34/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/rpn_bbox_pred/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_34/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_34"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_34/tensor_names"
  input: "save/RestoreV2_34/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_34"
  op: "Assign"
  input: "vgg_16/rpn_bbox_pred/biases"
  input: "save/RestoreV2_34"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_35/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_35/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_35"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_35/tensor_names"
  input: "save/RestoreV2_35/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_35"
  op: "Assign"
  input: "vgg_16/rpn_bbox_pred/weights"
  input: "save/RestoreV2_35"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_bbox_pred/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_36/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/rpn_cls_score/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_36/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_36"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_36/tensor_names"
  input: "save/RestoreV2_36/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_36"
  op: "Assign"
  input: "vgg_16/rpn_cls_score/biases"
  input: "save/RestoreV2_36"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_37/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/rpn_cls_score/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_37/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_37"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_37/tensor_names"
  input: "save/RestoreV2_37/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_37"
  op: "Assign"
  input: "vgg_16/rpn_cls_score/weights"
  input: "save/RestoreV2_37"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_cls_score/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_38/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/rpn_conv/3x3/biases"
      }
    }
  }
}
node {
  name: "save/RestoreV2_38/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_38"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_38/tensor_names"
  input: "save/RestoreV2_38/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_38"
  op: "Assign"
  input: "vgg_16/rpn_conv/3x3/biases"
  input: "save/RestoreV2_38"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/RestoreV2_39/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: "vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
}
node {
  name: "save/RestoreV2_39/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 1
          }
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2_39"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2_39/tensor_names"
  input: "save/RestoreV2_39/shape_and_slices"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign_39"
  op: "Assign"
  input: "vgg_16/rpn_conv/3x3/weights"
  input: "save/RestoreV2_39"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@vgg_16/rpn_conv/3x3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_all"
  op: "NoOp"
  input: "^save/Assign"
  input: "^save/Assign_1"
  input: "^save/Assign_2"
  input: "^save/Assign_3"
  input: "^save/Assign_4"
  input: "^save/Assign_5"
  input: "^save/Assign_6"
  input: "^save/Assign_7"
  input: "^save/Assign_8"
  input: "^save/Assign_9"
  input: "^save/Assign_10"
  input: "^save/Assign_11"
  input: "^save/Assign_12"
  input: "^save/Assign_13"
  input: "^save/Assign_14"
  input: "^save/Assign_15"
  input: "^save/Assign_16"
  input: "^save/Assign_17"
  input: "^save/Assign_18"
  input: "^save/Assign_19"
  input: "^save/Assign_20"
  input: "^save/Assign_21"
  input: "^save/Assign_22"
  input: "^save/Assign_23"
  input: "^save/Assign_24"
  input: "^save/Assign_25"
  input: "^save/Assign_26"
  input: "^save/Assign_27"
  input: "^save/Assign_28"
  input: "^save/Assign_29"
  input: "^save/Assign_30"
  input: "^save/Assign_31"
  input: "^save/Assign_32"
  input: "^save/Assign_33"
  input: "^save/Assign_34"
  input: "^save/Assign_35"
  input: "^save/Assign_36"
  input: "^save/Assign_37"
  input: "^save/Assign_38"
  input: "^save/Assign_39"
}
versions {
  producer: 22
}
