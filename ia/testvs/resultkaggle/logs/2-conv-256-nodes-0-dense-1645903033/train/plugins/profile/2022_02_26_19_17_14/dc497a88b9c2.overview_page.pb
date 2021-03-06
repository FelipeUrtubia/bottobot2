?	%???#@%???#@!%???#@	7?ƾ???7?ƾ???!7?ƾ???"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9%???#@????/??1ù?
@AZ??m?s?IE?????Y??;????r0*	S㥛h|?@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generatorc???J?B@!9?y??X@)c???J?B@19?y??X@:Preprocessing2O
Iterator::Root::Prefetch?|гY???!??G?????)?|гY???1??G?????:Preprocessing2E
Iterator::Root?ן??N??!?;]????)|eު?P??1^??!?[??:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap?k???B@!b|Q$;?X@)?zM
Jq?1T1MbՆ?:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 6.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?15.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no97?ƾ???Ip̥?/?5@Q?p[?8S@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????/??????/??!????/??      ??!       "	ù?
@ù?
@!ù?
@*      ??!       2	Z??m?s?Z??m?s?!Z??m?s?:	E?????E?????!E?????B      ??!       J	??;??????;????!??;????R      ??!       Z	??;??????;????!??;????b      ??!       JGPUY7?ƾ???b qp̥?/?5@y?p[?8S@?"l
@gradient_tape/sequential_10/conv2d_9/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter>("????!>("????0"B
 sequential_10/activation_20/Relu_FusedConv2D????y???!ۛi????"j
?gradient_tape/sequential_10/conv2d_9/Conv2D/Conv2DBackpropInputConv2DBackpropInput??Оq??!??<\???0"a
@gradient_tape/sequential_10/max_pooling2d_19/MaxPool/MaxPoolGradMaxPoolGrad'??F???!A?X?????"@
"sequential_10/output_tensor/MatMulMatMulu?,"V??!hj{,C???0"p
Dgradient_tape/sequential_10/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter??jhq??!ע?o????0"P
2gradient_tape/sequential_10/activation_19/ReluGradReluGrad?Q+d?=??!g??r?i??"?
"sequential_10/input_tensor/BiasAddBiasAdd?	Rs?V??!????r???"?
!sequential_10/input_tensor/Conv2DConv2D??}SxI??!?|)?????0":
 sequential_10/activation_19/ReluRelu?"܊?!F???.???Q      Y@Y?q?q3@a9??8?#T@q??????y?N???Х?"?

both?Your program is POTENTIALLY input-bound because 6.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?15.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 