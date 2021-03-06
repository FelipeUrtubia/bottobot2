?	n?(?#@n?(?#@!n?(?#@      ??!       "h
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails'n?(?#@?y?):???1?
?r@I?9?!C@r0*	?C?l?H?@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator??T?G?1@!?Y@?H?X@)??T?G?1@1?Y@?H?X@:Preprocessing2O
Iterator::Root::Prefetch9?)9'???!??y@)???)9?)9'???1??y@)???:Preprocessing2E
Iterator::Rootb?k_@??!???$??)???dp???1??? /??:Preprocessing2X
!Iterator::Root::Prefetch::FlatMapx??q?1@!?tU???X@)c????r?1?1?QqQ??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?73.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIB?2?|?R@Q??4?9@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?y?):????y?):???!?y?):???      ??!       "	?
?r@?
?r@!?
?r@*      ??!       2      ??!       :	?9?!C@?9?!C@!?9?!C@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qB?2?|?R@y??4?9@?";
sequential_28/dense_20/MatMulMatMulÔ=i???!Ô=i???0"m
Agradient_tape/sequential_28/conv2d_27/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?v?<???!ʅ?R???0"B
 sequential_28/activation_76/Relu_FusedConv2D?????n??!(???x???"k
@gradient_tape/sequential_28/conv2d_27/Conv2D/Conv2DBackpropInputConv2DBackpropInput_?O6???!?<?dkr??0"p
Dgradient_tape/sequential_28/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?##?@??!?n?u???0"a
@gradient_tape/sequential_28/max_pooling2d_55/MaxPool/MaxPoolGradMaxPoolGrad}?^????!?Z\70??"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits]?D?ki??!Ӧ ??f??"?
!sequential_28/input_tensor/Conv2DConv2D?T?EK??!??MZ{??0"?
"sequential_28/input_tensor/BiasAddBiasAdd??Z?z??!?RsaD???"P
2gradient_tape/sequential_28/activation_75/ReluGradReluGrad????b,??!?????q??Q      Y@Y?q?q/@a?q?qU@q?@??@yuϻ?v???"?

device?Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?73.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 