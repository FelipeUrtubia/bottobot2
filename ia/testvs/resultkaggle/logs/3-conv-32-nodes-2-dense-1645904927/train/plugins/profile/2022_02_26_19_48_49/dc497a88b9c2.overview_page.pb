?	62;??'@62;??'@!62;??'@      ??!       "h
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails'62;??'@????Ç?1?r?I??I??bc^7$@r0*	??|????@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator????=S@!??.?u?X@)????=S@1??.?u?X@:Preprocessing2O
Iterator::Root::Prefetch	l??3???!y?Y????)	l??3???1y?Y????:Preprocessing2E
Iterator::Root(}!?????!O?7?Ŵ?)>"?D???1%rN???:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap??"?>S@!2????X@)?% ??*q?1_??O?Hv?:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?85.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?.?
?U@Q͉n???+@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????Ç?????Ç?!????Ç?      ??!       "	?r?I???r?I??!?r?I??*      ??!       2      ??!       :	??bc^7$@??bc^7$@!??bc^7$@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?.?
?U@y͉n???+@?"B
 sequential_26/activation_68/Relu_FusedConv2D¾???!¾???"k
@gradient_tape/sequential_26/conv2d_25/Conv2D/Conv2DBackpropInputConv2DBackpropInput̪]??4??!4???$??0"m
Agradient_tape/sequential_26/conv2d_25/Conv2D/Conv2DBackpropFilterConv2DBackpropFiltery >2??!z??????0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits*
??!\ΒX+???"k
@gradient_tape/sequential_26/conv2d_26/Conv2D/Conv2DBackpropInputConv2DBackpropInputqE????!
״?e???0"p
Dgradient_tape/sequential_26/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?9?????!!?cr,??0"B
 sequential_26/activation_69/Relu_FusedConv2Dl?T????!?+??????";
sequential_26/dense_16/MatMulMatMul?wΤ??!
Fo24??0"?
!sequential_26/input_tensor/Conv2DConv2DI????E??!??*????0"m
Agradient_tape/sequential_26/conv2d_26/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?M&{????!?T?????0Q      Y@Y?!1ogH,@a???vU@q?1???_??y4B??>???"?

device?Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?85.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 