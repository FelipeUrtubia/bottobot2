?	????*@????*@!????*@	?,??????,?????!?,?????"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9????*@>[{??1h?,{:%@A?fI-t?I'??0?F??Y2"QhY???r0*	??????@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator2t???0@!??]???X@)2t???0@1??]???X@:Preprocessing2O
Iterator::Root::Prefetch`??9z??!??+?E??)`??9z??1??+?E??:Preprocessing2E
Iterator::Root$B#ظ???!???U???)??B????1?
@F???:Preprocessing2X
!Iterator::Root::Prefetch::FlatMapI???@0@!#??U1?X@)?LN?S{?1'?Kݤ?:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 5.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?11.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?,?????I?R?I(?0@Q,?"?dT@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	>[{??>[{??!>[{??      ??!       "	h?,{:%@h?,{:%@!h?,{:%@*      ??!       2	?fI-t??fI-t?!?fI-t?:	'??0?F??'??0?F??!'??0?F??B      ??!       J	2"QhY???2"QhY???!2"QhY???R      ??!       Z	2"QhY???2"QhY???!2"QhY???b      ??!       JGPUY?,?????b q?R?I(?0@y,?"?dT@?"m
Agradient_tape/sequential_11/conv2d_10/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter1??
k???!1??
k???0"B
 sequential_11/activation_22/Relu_FusedConv2D=?i`????!?C?5????"k
@gradient_tape/sequential_11/conv2d_10/Conv2D/Conv2DBackpropInputConv2DBackpropInput?}???J??!B??F????0"k
@gradient_tape/sequential_11/conv2d_11/Conv2D/Conv2DBackpropInputConv2DBackpropInput?L??N??!?*e~+??0"B
 sequential_11/activation_23/Relu_FusedConv2Df????5??!??@?3???"m
Agradient_tape/sequential_11/conv2d_11/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter??1????!??f??)??0"a
@gradient_tape/sequential_11/max_pooling2d_21/MaxPool/MaxPoolGradMaxPoolGrad?\(?a%??!?T?(\??"@
"sequential_11/output_tensor/MatMulMatMulWߟ????!?R?u|??0"p
Dgradient_tape/sequential_11/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?܊????!I8j??+??0"?
"sequential_11/input_tensor/BiasAddBiasAdd6??????!!?q???Q      Y@Y?????H1@a?E??ӭT@q ?L1?P@yrP7]??"?

both?Your program is POTENTIALLY input-bound because 5.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?11.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 