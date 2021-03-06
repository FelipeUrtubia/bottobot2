?	??i߄+@??i߄+@!??i߄+@	r?#?? ??r?#?? ??!r?#?? ??"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9??i߄+@?I(}!???1 ???Q?&@A=???}?I!=E???Y?G??[??r0*	V-<?@2f
/Iterator::Root::Prefetch::FlatMap[0]::GeneratorI+????(@!J6?ֽ?X@)I+????(@1J6?ֽ?X@:Preprocessing2O
Iterator::Root::Prefetch??W?2ġ?!q??p????)??W?2ġ?1q??p????:Preprocessing2E
Iterator::Root?W??V???!????%"??)?`obHN??1y?7d?x??:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap)? ??(@!GS]???X@)r?&"?p?1???? ??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 4.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?12.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9r?#?? ??I<??r?0@Q?|????T@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?I(}!????I(}!???!?I(}!???      ??!       "	 ???Q?&@ ???Q?&@! ???Q?&@*      ??!       2	=???}?=???}?!=???}?:	!=E???!=E???!!=E???B      ??!       J	?G??[???G??[??!?G??[??R      ??!       Z	?G??[???G??[??!?G??[??b      ??!       JGPUYr?#?? ??b q<??r?0@y?|????T@?":
sequential_21/dense_9/MatMulMatMulYH??=???!YH??=???0"_
-SGD/SGD/update_2/ResourceApplyGradientDescentResourceApplyGradientDescent7?;m??!?7J?????"H
*gradient_tape/sequential_21/dense_9/MatMulMatMul???S???!\	?&????0"H
,gradient_tape/sequential_21/dense_9/MatMul_1MatMulD*??<??!??ƽU??"a
@gradient_tape/sequential_21/max_pooling2d_42/MaxPool/MaxPoolGradMaxPoolGrad?PXoݪ??!?/?kp??"p
Dgradient_tape/sequential_21/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter{KG?o??!Uj5}???0"P
2gradient_tape/sequential_21/activation_51/ReluGradReluGradw?Xz???!?~?fz??"?
"sequential_21/input_tensor/BiasAddBiasAdd???,???!??????"?
!sequential_21/input_tensor/Conv2DConv2D}[?4????!???W0=??0":
 sequential_21/activation_51/ReluReluV@x?!???!?۔߼???Q      Y@Y?q?q3@a9??8?#T@q?`??2=@y ??%@??"?

both?Your program is POTENTIALLY input-bound because 4.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?12.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 