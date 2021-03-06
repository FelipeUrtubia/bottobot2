?	?;?z@?;?z@!?;?z@	aV>>@aV>>@!aV>>@"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0?;?z@?W?\T[?1???5???I?m½2/@Y?$?????r0*	???(?U?@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator???:q?A@!qhw?g?X@)???:q?A@1qhw?g?X@:Preprocessing2O
Iterator::Root::Prefetch	4?ԡ?!E?w???)	4?ԡ?1E?w???:Preprocessing2E
Iterator::Root??*l???!
???????)??Hi6??1?ާ?????:Preprocessing2X
!Iterator::Root::Prefetch::FlatMapVG?t?A@!?&'':?X@)=E7?r?1(E??E??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 2.9% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?79.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9aV>>@IO%E??S@Q???#?2@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?W?\T[??W?\T[?!?W?\T[?      ??!       "	???5??????5???!???5???*      ??!       2      ??!       :	?m½2/@?m½2/@!?m½2/@B      ??!       J	?$??????$?????!?$?????R      ??!       Z	?$??????$?????!?$?????b      ??!       JGPUYaV>>@b qO%E??S@y???#?2@?";
sequential_24/dense_12/MatMulMatMul6?a?V??!6?a?V??0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?y??aH??!`a?a???"p
Dgradient_tape/sequential_24/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter???>???!?/f???0"?
!sequential_24/input_tensor/Conv2DConv2D:??é???!zw	?P]??0"a
@gradient_tape/sequential_24/max_pooling2d_48/MaxPool/MaxPoolGradMaxPoolGrad??^$)}??!?V??????"I
-gradient_tape/sequential_24/dense_12/MatMul_1MatMulH:?՚t??!쎧??M??"I
+gradient_tape/sequential_24/dense_12/MatMulMatMul?*??!$?H?,???0"_
-SGD/SGD/update_2/ResourceApplyGradientDescentResourceApplyGradientDescent?B?H??!R=??????"]
<gradient_tape/sequential_24/input_tensor/BiasAdd/BiasAddGradBiasAddGrad?b?a???!hXYy??"P
2gradient_tape/sequential_24/activation_60/ReluGradReluGrad&
?1????!?P?e???Q      Y@Y?????H1@a?E??ӭT@q8 ?/7???y'OHl???"?

device?Your program is NOT input-bound because only 2.9% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?79.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 