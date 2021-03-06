?	?+???,'@?+???,'@!?+???,'@	p??n>???p??n>???!p??n>???"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0?+???,'@?'?_[??1L?
F%?!@I,???4 @Y???%?2??r0*	NbX?!?@2f
/Iterator::Root::Prefetch::FlatMap[0]::GeneratorlMK??A@!???l	?X@)lMK??A@1???l	?X@:Preprocessing2O
Iterator::Root::Prefetch?!??I??!??BSN??)?!??I??1??BSN??:Preprocessing2E
Iterator::Root?\???ʳ?!?̙??3??)0e?????1ze?7M˵?:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap;?G?A@!???X@)9?yYs?1dJ$?Ȓ??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 4.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?17.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9o??n>???I<?m?6)6@Q%)P9S@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?'?_[???'?_[??!?'?_[??      ??!       "	L?
F%?!@L?
F%?!@!L?
F%?!@*      ??!       2      ??!       :	,???4 @,???4 @!,???4 @B      ??!       J	???%?2?????%?2??!???%?2??R      ??!       Z	???%?2?????%?2??!???%?2??b      ??!       JGPUYo??n>???b q<?m?6)6@y%)P9S@?"m
Agradient_tape/sequential_34/conv2d_33/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter1?,S*2??!1?,S*2??0"C
!sequential_34/activation_100/Relu_FusedConv2Dg?>U%???!L?5ԧ??"k
@gradient_tape/sequential_34/conv2d_33/Conv2D/Conv2DBackpropInputConv2DBackpropInput???_Ѷ??!J?B?s??0";
sequential_34/dense_32/MatMulMatMul??Y?5'??!???n???0"_
-SGD/SGD/update_4/ResourceApplyGradientDescentResourceApplyGradientDescent????B??!??Ҕ???"a
@gradient_tape/sequential_34/max_pooling2d_67/MaxPool/MaxPoolGradMaxPoolGrad??RF뵥?!?8I?w??"I
+gradient_tape/sequential_34/dense_32/MatMulMatMul0?`f???!??8|N??0"p
Dgradient_tape/sequential_34/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?~`?Ҙ?!??9O???0"I
-gradient_tape/sequential_34/dense_32/MatMul_1MatMul:Y?????!|??K???"P
2gradient_tape/sequential_34/activation_99/ReluGradReluGradz?;??!L?*($??Q      Y@Y?q?q/@a?q?qU@ql??j??@y?fOo???"?

both?Your program is POTENTIALLY input-bound because 4.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?17.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 