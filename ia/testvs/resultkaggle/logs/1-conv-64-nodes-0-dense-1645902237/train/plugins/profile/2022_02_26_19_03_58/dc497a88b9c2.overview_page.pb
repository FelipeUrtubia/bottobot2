?	1?Z?@1?Z?@!1?Z?@	F???qV@F???qV@!F???qV@"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails91?Z?@I?H?]??1%Z?x???A?z6?>w?I?"R??@Y+??]????r0*	J+?FP@2O
Iterator::Root::Prefetch???????!Rd??fOM@)???????1Rd??fOM@:Preprocessing2E
Iterator::Root y?P????!      Y@)s???啛?1??d??D@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 4.3% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?67.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9G???qV@I???d8Q@Q?????;@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	I?H?]??I?H?]??!I?H?]??      ??!       "	%Z?x???%Z?x???!%Z?x???*      ??!       2	?z6?>w??z6?>w?!?z6?>w?:	?"R??@?"R??@!?"R??@B      ??!       J	+??]????+??]????!+??]????R      ??!       Z	+??]????+??]????!+??]????b      ??!       JGPUYG???qV@b q???d8Q@y?????;@?"?
!sequential_3/output_tensor/MatMulMatMul4cU?˘??!4cU?˘??0"o
Cgradient_tape/sequential_3/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?T???4??!p??Of??0"_
>gradient_tape/sequential_3/max_pooling2d_6/MaxPool/MaxPoolGradMaxPoolGrad?c? ???!`?????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits ??gwA??!T^??????">
 sequential_3/input_tensor/Conv2DConv2Df? ?t???!!oD?0??0"M
/gradient_tape/sequential_3/output_tensor/MatMulMatMul?Ab)???!T?od?C??0"M
1gradient_tape/sequential_3/output_tensor/MatMul_1MatMul?w?=ί?!?.pCm@??">
!sequential_3/input_tensor/BiasAddBiasAdd8Iܯv??!bC0A?G??"N
0gradient_tape/sequential_3/activation_6/ReluGradReluGradO??r??!'?^??H??"A
$sequential_3/max_pooling2d_6/MaxPoolMaxPool??VA)o??!.7iR??Q      Y@YUUUUUU2@a?????jT@q?j?ۣ?Q@ys?????"?
device?Your program is NOT input-bound because only 4.3% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?67.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?71.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Pascal)(: B 