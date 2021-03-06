?	?L???@?L???@!?L???@	?A??@?A??@!?A??@"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0?L???@???5???1ILP÷???I {??
@Y&r?????r0*	?I??@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator??e?2E@!?~??X@)??e?2E@1?~??X@:Preprocessing2O
Iterator::Root::Prefetch4-?2??!#1-#??)4-?2??1#1-#??:Preprocessing2E
Iterator::Root?+?PO??!`S??n??)????;j??1???G????:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap?|??3E@!P֡???X@)??A?Fs?1?~??Q???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 3.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?66.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?A??@I??c?/Q@Q?p;??J<@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???5??????5???!???5???      ??!       "	ILP÷???ILP÷???!ILP÷???*      ??!       2      ??!       :	 {??
@ {??
@! {??
@B      ??!       J	&r?????&r?????!&r?????R      ??!       Z	&r?????&r?????!&r?????b      ??!       JGPUY?A??@b q??c?/Q@y?p;??J<@?"@
sequential_1/activation_2/Relu_FusedConv2Dik^?g???!ik^?g???"?
!sequential_1/output_tensor/MatMulMatMuld?xNA??!??k??`??0"g
<gradient_tape/sequential_1/conv2d/Conv2D/Conv2DBackpropInputConv2DBackpropInput`ْ24??!???????0"i
=gradient_tape/sequential_1/conv2d/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?(M????!???5Kb??0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??UQʽ??!]?&????"o
Cgradient_tape/sequential_1/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterJHz???!&?o?????0">
 sequential_1/input_tensor/Conv2DConv2Dg,?;8??!?b?????0"_
>gradient_tape/sequential_1/max_pooling2d_1/MaxPool/MaxPoolGradMaxPoolGrad?C*q???!?V3??]??"\
;gradient_tape/sequential_1/input_tensor/BiasAdd/BiasAddGradBiasAddGrad؊?l???!,Ù???"M
/gradient_tape/sequential_1/output_tensor/MatMulMatMul?U5_h??!???uj??0Q      Y@Y?q?q3@a9??8?#T@qAx	:} @ye???N??"?

device?Your program is NOT input-bound because only 3.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?66.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 