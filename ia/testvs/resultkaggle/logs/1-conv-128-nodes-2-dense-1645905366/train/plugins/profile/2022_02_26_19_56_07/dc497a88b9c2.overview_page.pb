?	?p=
??$@?p=
??$@!?p=
??$@	l.|_??l.|_??!l.|_??"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9?p=
??$@T???\7??1????E@At&m????I?QcB?@Y?E??????r0*	;?O?ӌ?@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator!?J"P@!????1?X@)!?J"P@1????1?X@:Preprocessing2O
Iterator::Root::Prefetchb??4?8??!???Ql??)b??4?8??1???Ql??:Preprocessing2E
Iterator::Roott'?????!??U?Y̼?)[??????1??M?|???:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap?: ??"P@!??????X@)?%?<y?1???e??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 13.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?43.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9l.|_??I$m??Z?L@Q|J???D@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	T???\7??T???\7??!T???\7??      ??!       "	????E@????E@!????E@*      ??!       2	t&m????t&m????!t&m????:	?QcB?@?QcB?@!?QcB?@B      ??!       J	?E???????E??????!?E??????R      ??!       Z	?E???????E??????!?E??????b      ??!       JGPUYl.|_??b q$m??Z?L@y|J???D@?";
sequential_30/dense_24/MatMulMatMul2??]????!2??]????0"I
-gradient_tape/sequential_30/dense_24/MatMul_1MatMul?~??d??!u?`oQ>??"_
-SGD/SGD/update_2/ResourceApplyGradientDescentResourceApplyGradientDescent?o???/??!p??IQ???"I
+gradient_tape/sequential_30/dense_24/MatMulMatMul&ǣب7??!UkeF???0"a
@gradient_tape/sequential_30/max_pooling2d_60/MaxPool/MaxPoolGradMaxPoolGrad?? %"o??!?wW?8R??"p
Dgradient_tape/sequential_30/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?U????!>i??S???0"?
!sequential_30/input_tensor/Conv2DConv2D,I??@"??!??w???0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??p?????!??@????"?
"sequential_30/input_tensor/BiasAddBiasAdd?M?𿫑?!0?????"P
2gradient_tape/sequential_30/activation_84/ReluGradReluGrad?d!?? ??!T??#U??Q      Y@Y?????H1@a?E??ӭT@q&wVdl??y??ˆ	N??"?

both?Your program is POTENTIALLY input-bound because 13.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?43.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 