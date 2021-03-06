?	?mO??@?mO??@!?mO??@	?????@?????@!?????@"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0?mO??@?@gҦ?^?1??ʾ+B??I?5?Z@Yp???$??r0*	??C?a?@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator??Cl?'@!#????X@)??Cl?'@1#????X@:Preprocessing2O
Iterator::Root::Prefetchqs* ??!H??J????)qs* ??1H??J????:Preprocessing2E
Iterator::Root?:M???!|qJI6??)?E???1a?ē?A??:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap$???E?'@!?km??X@)w?????m?1mX?m???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 5.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?73.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?????@I}?QIVR@QĪSr8?5@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?@gҦ?^??@gҦ?^?!?@gҦ?^?      ??!       "	??ʾ+B????ʾ+B??!??ʾ+B??*      ??!       2      ??!       :	?5?Z@?5?Z@!?5?Z@B      ??!       J	p???$??p???$??!p???$??R      ??!       Z	p???$??p???$??!p???$??b      ??!       JGPUY?????@b q}?QIVR@yĪSr8?5@?"B
 sequential_14/activation_30/Relu_FusedConv2Di?6|??!i?6|??"k
@gradient_tape/sequential_14/conv2d_13/Conv2D/Conv2DBackpropInputConv2DBackpropInput????
??!.?NQ????0"m
Agradient_tape/sequential_14/conv2d_13/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterzr???2??!?`??9???0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?cjW`R??!????????"k
@gradient_tape/sequential_14/conv2d_14/Conv2D/Conv2DBackpropInputConv2DBackpropInputL?Mέ?!?l?Ot??0"p
Dgradient_tape/sequential_14/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?1???M??!?z0H???0"B
 sequential_14/activation_31/Relu_FusedConv2DΏ??k??!??y????":
sequential_14/dense_2/MatMulMatMula@?#?t??!???;???0"?
!sequential_14/input_tensor/Conv2DConv2D??|Ծ??!???O(3??0"m
Agradient_tape/sequential_14/conv2d_14/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?rS?
a??!"?5?8Y??0Q      Y@Y?q?q/@a?q?qU@q`??EKY@y?4`Qrq??"?

device?Your program is NOT input-bound because only 5.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?73.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 