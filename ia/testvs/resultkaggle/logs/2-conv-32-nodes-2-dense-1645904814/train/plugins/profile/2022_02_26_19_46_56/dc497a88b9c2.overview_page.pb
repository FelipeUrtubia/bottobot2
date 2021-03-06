?	???S@???S@!???S@	?~??@?~??@!?~??@"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9???S@X9??v???1?)V??Al??F??t?I?ui?@Y??N^??r0*	???S?4?@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator?GQg??C@!?r?ݠ?X@)?GQg??C@1?r?ݠ?X@:Preprocessing2O
Iterator::Root::Prefetch?s???)??!(???R??)?s???)??1(???R??:Preprocessing2E
Iterator::Root?q6ܰ?!%a?w7n??)r?j????1!?hƳ?:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap+Q??r?C@!?D?H?X@)?,'???p?1?s(T? ??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 3.7% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?66.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?~??@I?&?Y?/Q@Qp?????;@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	X9??v???X9??v???!X9??v???      ??!       "	?)V???)V??!?)V??*      ??!       2	l??F??t?l??F??t?!l??F??t?:	?ui?@?ui?@!?ui?@B      ??!       J	??N^????N^??!??N^??R      ??!       Z	??N^????N^??!??N^??b      ??!       JGPUY?~??@b q?&?Y?/Q@yp?????;@?"B
 sequential_25/activation_64/Relu_FusedConv2D3?? ϻ??!3?? ϻ??";
sequential_25/dense_14/MatMulMatMulC?s????!){QJź??0"k
@gradient_tape/sequential_25/conv2d_24/Conv2D/Conv2DBackpropInputConv2DBackpropInputs????F??!bb;F^??0"m
Agradient_tape/sequential_25/conv2d_24/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?6C? ɵ?!0Lm`???0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?:?ǰ?!"??,??"p
Dgradient_tape/sequential_25/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterOX}???!???????0"?
!sequential_25/input_tensor/Conv2DConv2D?.O]???!???? Z??0"a
@gradient_tape/sequential_25/max_pooling2d_49/MaxPool/MaxPoolGradMaxPoolGrad?????l??!o?-?????"]
<gradient_tape/sequential_25/input_tensor/BiasAdd/BiasAddGradBiasAddGrad??:]Б?!N???l??"P
2gradient_tape/sequential_25/activation_63/ReluGradReluGrad??D	?-??!M?k$t??Q      Y@Y?q?q/@a?q?qU@q?܉????ye?,T????"?

device?Your program is NOT input-bound because only 3.7% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?66.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 