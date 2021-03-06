?	?????$@?????$@!?????$@	?+??????+?????!?+?????"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0?????$@1??PN???1֬3?/>@Im??o@Y%"???1??r0*	?n??I?@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator??P???@@!??}??X@)??P???@@1??}??X@:Preprocessing2O
Iterator::Root::Prefetch&?<Y???!???{q??)&?<Y???1???{q??:Preprocessing2E
Iterator::Root?mlv????!΋??7??)??_̖???1?????:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap??W??@@!??8d?X@)Έ???s?1??l?`???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 17.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?41.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?+?????Ix??D?uM@Q?Ԗ??C@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	1??PN???1??PN???!1??PN???      ??!       "	֬3?/>@֬3?/>@!֬3?/>@*      ??!       2      ??!       :	m??o@m??o@!m??o@B      ??!       J	%"???1??%"???1??!%"???1??R      ??!       Z	%"???1??%"???1??!%"???1??b      ??!       JGPUY?+?????b qx??D?uM@y?Ԗ??C@?"B
 sequential_31/activation_88/Relu_FusedConv2D?>ƵSG??!?>ƵSG??"k
@gradient_tape/sequential_31/conv2d_30/Conv2D/Conv2DBackpropInputConv2DBackpropInput0?@R(??![d?7??0"m
Agradient_tape/sequential_31/conv2d_30/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter~???%??!???9???0";
sequential_31/dense_26/MatMulMatMul???????!s??a???0"a
@gradient_tape/sequential_31/max_pooling2d_61/MaxPool/MaxPoolGradMaxPoolGradĕ???ө?!x?Ka?!??"p
Dgradient_tape/sequential_31/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?M?:??!@?@\Be??0"?
!sequential_31/input_tensor/Conv2DConv2Dm?o;???!???/bu??0"I
-gradient_tape/sequential_31/dense_26/MatMul_1MatMul}??Ce??!?Z?m??"_
-SGD/SGD/update_4/ResourceApplyGradientDescentResourceApplyGradientDescent./???Κ?!|??D??"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsK??QV??!?ԭ???Q      Y@Y?q?q/@a?q?qU@q??׹??ySK?d??"?

both?Your program is POTENTIALLY input-bound because 17.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?41.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 