?	??z?VX-@??z?VX-@!??z?VX-@	??Se?`@??Se?`@!??Se?`@"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9??z?VX-@o??%??1^????'@AW?????t?I????????Y??*???r0*	%??3??@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator?P??>(@!OU??k?X@)?P??>(@1OU??k?X@:Preprocessing2O
Iterator::Root::Prefetch?\S ????!k¡!??)?\S ????1k¡!??:Preprocessing2E
Iterator::Rootv6??į?!^?ԯ?I??)??!?? ??1???????:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap?B?@(@!?V? l?X@)쉮?8o?1 ?H??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 3.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?12.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??Se?`@I???0?R0@Q?(?x=PT@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	o??%??o??%??!o??%??      ??!       "	^????'@^????'@!^????'@*      ??!       2	W?????t?W?????t?!W?????t?:	????????????????!????????B      ??!       J	??*?????*???!??*???R      ??!       Z	??*?????*???!??*???b      ??!       JGPUY??Se?`@b q???0?R0@y?(?x=PT@?";
sequential_33/dense_30/MatMulMatMul????(??!????(??0"_
-SGD/SGD/update_2/ResourceApplyGradientDescentResourceApplyGradientDescentgs63???!hv?g7???"I
+gradient_tape/sequential_33/dense_30/MatMulMatMul:??"{"??!?-̆???0"I
-gradient_tape/sequential_33/dense_30/MatMul_1MatMul??V?v??!???;?S??"a
@gradient_tape/sequential_33/max_pooling2d_66/MaxPool/MaxPoolGradMaxPoolGradqI? ???!#??˗e??"p
Dgradient_tape/sequential_33/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?!?˰??!2??+??0"?
"sequential_33/input_tensor/BiasAddBiasAdd^M????!???pXe??"P
2gradient_tape/sequential_33/activation_96/ReluGradReluGrad֘?_/H??!q.y???"?
!sequential_33/input_tensor/Conv2DConv2D?	??YӇ?!4 ???%??0":
 sequential_33/activation_96/ReluRelu%?EW???!7??si??Q      Y@Y?????H1@a?E??ӭT@q????ϲ!@y ??U?$??"?

both?Your program is POTENTIALLY input-bound because 3.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?12.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 