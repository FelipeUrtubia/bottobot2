?	?3?c?? @?3?c?? @!?3?c?? @	h???6"@h???6"@!h???6"@"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9?3?c?? @?G?z??1?r/0+@AvOjM??I)?^?X@Y$?P29???r0*	??(\???@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator??n?^D@!a?????X@)??n?^D@1a?????X@:Preprocessing2E
Iterator::Rootb???X???!???Wv???)]6:??8??1ΐ$??L??:Preprocessing2O
Iterator::Root::Prefetch
??a???!???s??)
??a???1???s??:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap???_D@!Ff??|?X@)Xr?߄?1IN?΋??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 9.1% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?32.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9g???6"@ItA??>jA@Q2
T?=L@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?G?z???G?z??!?G?z??      ??!       "	?r/0+@?r/0+@!?r/0+@*      ??!       2	vOjM??vOjM??!vOjM??:	)?^?X@)?^?X@!)?^?X@B      ??!       J	$?P29???$?P29???!$?P29???R      ??!       Z	$?P29???$?P29???!$?P29???b      ??!       JGPUYg???6"@b qtA??>jA@y2
T?=L@?"B
 sequential_32/activation_92/Relu_FusedConv2Dk??|????!k??|????"k
@gradient_tape/sequential_32/conv2d_31/Conv2D/Conv2DBackpropInputConv2DBackpropInputԷ\?????!?$?????0"m
Agradient_tape/sequential_32/conv2d_31/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?d??Ni??!W?rOh??0"B
 sequential_32/activation_93/Relu_FusedConv2Dvuʫ䨰?!9z?NDI??"k
@gradient_tape/sequential_32/conv2d_32/Conv2D/Conv2DBackpropInputConv2DBackpropInput?S?!???!?$?>Y??0"m
Agradient_tape/sequential_32/conv2d_32/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter!=n?J???!??z<?!??0"a
@gradient_tape/sequential_32/max_pooling2d_63/MaxPool/MaxPoolGradMaxPoolGrad?[?m7??!C?h????";
sequential_32/dense_28/MatMulMatMul??J@?K??!:m?????0"p
Dgradient_tape/sequential_32/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?_ ????!z@?!???0"?
!sequential_32/input_tensor/Conv2DConv2D??}y????!?-??????0Q      Y@Y?!1ogH,@a???vU@qO}??????y{??=?Ͳ?"?

both?Your program is MODERATELY input-bound because 9.1% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?32.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 