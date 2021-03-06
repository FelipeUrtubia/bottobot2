?	}?ݮ??@}?ݮ??@!}?ݮ??@	7??@?=@7??@?=@!7??@?=@"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0}?ݮ??@???????17+1??@I'"?*??Y??4}v??r0*	+?A??@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generatoryx??kD@!_?????X@)yx??kD@1_?????X@:Preprocessing2O
Iterator::Root::Prefetch???????!??>G???)???????1??>G???:Preprocessing2E
Iterator::Root??a?1??!y????).?l?IF??1?<]????:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap??;MflD@!?u?~?X@)h?o}Xot?1?-???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 10.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?23.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no97??@?=@I?+????@@Q??gK7?O@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??????????????!???????      ??!       "	7+1??@7+1??@!7+1??@*      ??!       2      ??!       :	'"?*??'"?*??!'"?*??B      ??!       J	??4}v????4}v??!??4}v??R      ??!       Z	??4}v????4}v??!??4}v??b      ??!       JGPUY7??@?=@b q?+????@@y??gK7?O@?":
sequential_18/dense_6/MatMulMatMul??Y?1???!??Y?1???0"H
,gradient_tape/sequential_18/dense_6/MatMul_1MatMul?f(m??!%?9?????"_
-SGD/SGD/update_2/ResourceApplyGradientDescentResourceApplyGradientDescent?x??ĺ?!<T9??"H
*gradient_tape/sequential_18/dense_6/MatMulMatMul?N?n????!~?u??0"a
@gradient_tape/sequential_18/max_pooling2d_36/MaxPool/MaxPoolGradMaxPoolGradPQ?J	??!'C??^??"p
Dgradient_tape/sequential_18/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter??_dX??!?!???:??0"?
!sequential_18/input_tensor/Conv2DConv2DV?& mR??!????@??0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???e??!??c?5???"?
"sequential_18/input_tensor/BiasAddBiasAdd???C+???!
.?	????"P
2gradient_tape/sequential_18/activation_42/ReluGradReluGrad?JS	???!a?<R???Q      Y@Y?q?q3@a9??8?#T@q??9?h???y??o:???"?

both?Your program is POTENTIALLY input-bound because 10.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?23.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 