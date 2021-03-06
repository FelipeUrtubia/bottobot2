?	Y?e0?&@Y?e0?&@!Y?e0?&@	te*d}??te*d}??!te*d}??"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9Y?e0?&@z?ަ?{??1?hE,z!@AT?^P??I????????Y?yT????r0*	?O????@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator?j??-Q@!??aT?X@)?j??-Q@1??aT?X@:Preprocessing2E
Iterator::Root+?򑔴?!????????)??2R賓?1m?Ot???:Preprocessing2O
Iterator::Root::Prefetchb???4??!yw5q?ʭ?)b???4??1yw5q?ʭ?:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap??1%.Q@![O????X@) ??cu?1muur??~?:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 6.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?14.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9te*d}??I?J?`M5@Q?h?9XS@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	z?ަ?{??z?ަ?{??!z?ަ?{??      ??!       "	?hE,z!@?hE,z!@!?hE,z!@*      ??!       2	T?^P??T?^P??!T?^P??:	????????????????!????????B      ??!       J	?yT?????yT????!?yT????R      ??!       Z	?yT?????yT????!?yT????b      ??!       JGPUYte*d}??b q?J?`M5@y?h?9XS@?"m
Agradient_tape/sequential_22/conv2d_21/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?ᔶ]??!?ᔶ]??0"B
 sequential_22/activation_54/Relu_FusedConv2D?{?pn7??!f?J??"k
@gradient_tape/sequential_22/conv2d_21/Conv2D/Conv2DBackpropInputConv2DBackpropInput?l???!b?mH????0";
sequential_22/dense_10/MatMulMatMul;?nhT???!	?{պ???0"_
-SGD/SGD/update_4/ResourceApplyGradientDescentResourceApplyGradientDescentv-??Ѓ??!?j???I??"a
@gradient_tape/sequential_22/max_pooling2d_43/MaxPool/MaxPoolGradMaxPoolGrad?@?W???!???[???"I
+gradient_tape/sequential_22/dense_10/MatMulMatMul??1?h??!??Se???0"p
Dgradient_tape/sequential_22/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter{O?4a???!a5?&?J??0"I
-gradient_tape/sequential_22/dense_10/MatMul_1MatMulʧ?????!??e?^???"P
2gradient_tape/sequential_22/activation_53/ReluGradReluGrad#?|!????!H?q0?^??Q      Y@Y?????H1@a?E??ӭT@qE2*)S???y????9???"?

both?Your program is POTENTIALLY input-bound because 6.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?14.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 