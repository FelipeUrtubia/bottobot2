?	?$??W<@?$??W<@!?$??W<@	???D@???D@!???D@"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0?$??W<@?o+?6[?1J???nI??I?????e	@Y¡?xx???r0*	?MbX?N@2O
Iterator::Root::Prefetch???N?z??!?	ªK@)???N?z??1?	ªK@:Preprocessing2E
Iterator::RootuXᖯ?!      Y@)?*8??1X???=UF@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 4.3% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?73.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???D@IA????mR@Q??5@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?o+?6[??o+?6[?!?o+?6[?      ??!       "	J???nI??J???nI??!J???nI??*      ??!       2      ??!       :	?????e	@?????e	@!?????e	@B      ??!       J	¡?xx???¡?xx???!¡?xx???R      ??!       Z	¡?xx???¡?xx???!¡?xx???b      ??!       JGPUY???D@b qA????mR@y??5@?"8
sequential_12/dense/MatMulMatMul^DU????!^DU????0"p
Dgradient_tape/sequential_12/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter曃?z??!(??????0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsF?H?%o??!??]'????"?
!sequential_12/input_tensor/Conv2DConv2D?D??0??!8??Ϫ0??0"a
@gradient_tape/sequential_12/max_pooling2d_24/MaxPool/MaxPoolGradMaxPoolGradZ?걆~??!????=???"F
(gradient_tape/sequential_12/dense/MatMulMatMulJ??o?v??!7??i?w??0"F
*gradient_tape/sequential_12/dense/MatMul_1MatMul|?????!??5?r???"_
-SGD/SGD/update_2/ResourceApplyGradientDescentResourceApplyGradientDescent?nR@???!б:?????"]
<gradient_tape/sequential_12/input_tensor/BiasAdd/BiasAddGradBiasAddGrad???`???!? "?????"?
"sequential_12/input_tensor/BiasAddBiasAdd?kK?|???!|L?????Q      Y@Y}F??Q?/@a0?̵U@qv???$S@y?w?E???"?
device?Your program is NOT input-bound because only 4.3% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?73.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?76.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Pascal)(: B 