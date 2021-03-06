?	???W@???W@!???W@	?
F7m?@?
F7m?@!?
F7m?@"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9???W@?q?
??1?D??@A/?r?]?t?I6??D.8??Yu?????r0*	?n??z?@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator???4)?%@!??;?X@)???4)?%@1??;?X@:Preprocessing2O
Iterator::Root::Prefetch?N>=?e??!P>Y_???)?N>=?e??1P>Y_???:Preprocessing2E
Iterator::Root?E{????!?!?ȋ???)?y??Q??1?)08????:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap	N} y?%@!??n???X@))???^r?1W-^????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 5.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?21.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?
F7m?@I`?LS:@Q|??	?[Q@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?q?
???q?
??!?q?
??      ??!       "	?D??@?D??@!?D??@*      ??!       2	/?r?]?t?/?r?]?t?!/?r?]?t?:	6??D.8??6??D.8??!6??D.8??B      ??!       J	u?????u?????!u?????R      ??!       Z	u?????u?????!u?????b      ??!       JGPUY?
F7m?@b q`?LS:@y|??	?[Q@?"?
!sequential_9/output_tensor/MatMulMatMul?????!?????0"`
?gradient_tape/sequential_9/max_pooling2d_18/MaxPool/MaxPoolGradMaxPoolGrad?ݏ޲?!ޝ?Шc??"M
/gradient_tape/sequential_9/output_tensor/MatMulMatMul?pcM????!??ʥ#??0"M
1gradient_tape/sequential_9/output_tensor/MatMul_1MatMul??=????!8$?????"o
Cgradient_tape/sequential_9/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?;c?ȥ?!?W?˫??0">
!sequential_9/input_tensor/BiasAddBiasAdd?7?G4???!???me???"O
1gradient_tape/sequential_9/activation_18/ReluGradReluGrad?įSr???!?_l q???">
 sequential_9/input_tensor/Conv2DConv2D߁b?ՙ?!?n?S???0"9
sequential_9/activation_18/ReluRelu???OԻ??!@c ??!??"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits:?S?x??!????µ??Q      Y@Y??8??86@a?q?qS@q` ~??@ye?̏F??"?

both?Your program is POTENTIALLY input-bound because 5.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?21.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 