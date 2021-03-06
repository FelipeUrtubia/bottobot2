?	?N??)@?N??)@!?N??)@	?):???@?):???@!?):???@"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9?N??)@?2?}ƅ??1)H4????A??O?t?I?]?zk?@Y˅ʿ?W??r0*	ףp=
WS@2O
Iterator::Root::Prefetch?????@??!??0?(?O@)?????@??1??0?(?O@:Preprocessing2E
Iterator::RootY?n?ͳ?!      Y@)?Oqx???1?~?B@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 11.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?51.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?):???@IbBH.O@Q ?L?eA@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?2?}ƅ???2?}ƅ??!?2?}ƅ??      ??!       "	)H4????)H4????!)H4????*      ??!       2	??O?t???O?t?!??O?t?:	?]?zk?@?]?zk?@!?]?zk?@B      ??!       J	˅ʿ?W??˅ʿ?W??!˅ʿ?W??R      ??!       Z	˅ʿ?W??˅ʿ?W??!˅ʿ?W??b      ??!       JGPUY?):???@b qbBH.O@y ?L?eA@?":
sequential_15/dense_3/MatMulMatMul??:?r??!??:?r??0"H
,gradient_tape/sequential_15/dense_3/MatMul_1MatMul?h???v??!29???"_
-SGD/SGD/update_2/ResourceApplyGradientDescentResourceApplyGradientDescent?]D?. ??!?1??D_??"p
Dgradient_tape/sequential_15/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter????{Ӳ?!z???#??0"a
@gradient_tape/sequential_15/max_pooling2d_30/MaxPool/MaxPoolGradMaxPoolGrad+u?:0??!??Y,P??"H
*gradient_tape/sequential_15/dense_3/MatMulMatMul??sp???!"??:G???0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??-?S???!t>;?ѣ??"?
!sequential_15/input_tensor/Conv2DConv2D|0t???!5=??}??0"?
"sequential_15/input_tensor/BiasAddBiasAddڔ??L???!ܪZT?S??"P
2gradient_tape/sequential_15/activation_33/ReluGradReluGrad?)???!5Ӫ????Q      Y@Y}F??Q?/@a0?̵U@qQ|j???S@yk*??????"?
both?Your program is POTENTIALLY input-bound because 11.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?51.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?78.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Pascal)(: B 