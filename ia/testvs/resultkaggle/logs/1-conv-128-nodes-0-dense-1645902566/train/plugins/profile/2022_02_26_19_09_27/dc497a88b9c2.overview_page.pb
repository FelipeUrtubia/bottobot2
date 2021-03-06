?	%??W??@%??W??@!%??W??@	?ʸ?/@?ʸ?/@!?ʸ?/@"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0%??W??@??TN{???1'?ei?@I???????Y?=]ݱ???r0*	ʡE??}R@2E
Iterator::Root?U?????!      Y@)hz??L???1g??=>dK@:Preprocessing2O
Iterator::Root::Prefetch31]????!?%???F@)31]????1?%???F@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 10.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?39.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?ʸ?/@I?&I??%I@Qv**ZG@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??TN{?????TN{???!??TN{???      ??!       "	'?ei?@'?ei?@!'?ei?@*      ??!       2      ??!       :	??????????????!???????B      ??!       J	?=]ݱ????=]ݱ???!?=]ݱ???R      ??!       Z	?=]ݱ????=]ݱ???!?=]ݱ???b      ??!       JGPUY?ʸ?/@b q?&I??%I@yv**ZG@?"?
!sequential_6/output_tensor/MatMulMatMul? ??????!? ??????0"`
?gradient_tape/sequential_6/max_pooling2d_12/MaxPool/MaxPoolGradMaxPoolGrad????\??! ?}?????"o
Cgradient_tape/sequential_6/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterkV??-??!???s????0"M
/gradient_tape/sequential_6/output_tensor/MatMulMatMula?D
{ư?!y`$?}???0"M
1gradient_tape/sequential_6/output_tensor/MatMul_1MatMul?Ll8??!???B????">
 sequential_6/input_tensor/Conv2DConv2D?/bHd???!?4?????0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?W??H???!?#{??"O
1gradient_tape/sequential_6/activation_12/ReluGradReluGrad?Z`????!<=)?$??">
!sequential_6/input_tensor/BiasAddBiasAdd???ޠ?!?-??2??"9
sequential_6/activation_12/ReluRelu???Pv.??!2}=w???Q      Y@YUUUUUU2@a?????jT@ql???KS@y?
??D??"?
both?Your program is POTENTIALLY input-bound because 10.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?39.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?76.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Pascal)(: B 