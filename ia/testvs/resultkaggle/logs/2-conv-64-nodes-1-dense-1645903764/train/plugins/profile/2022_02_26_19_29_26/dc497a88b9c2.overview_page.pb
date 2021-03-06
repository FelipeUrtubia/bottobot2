?	?yq???@?yq???@!?yq???@	??P?s?@??P?s?@!??P?s?@"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0?yq???@??Za?^??1?*??L@I?+??f?@Y?@gҦ???r0*	P??n?Q@2O
Iterator::Root::Prefetch?-c}??!??uߪJ@)?-c}??1??uߪJ@:Preprocessing2E
Iterator::Root??[?d8??!      Y@)29?3Lm??1w? U?G@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 5.5% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?51.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??P?s?@I???J@Q{?5??5E@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??Za?^????Za?^??!??Za?^??      ??!       "	?*??L@?*??L@!?*??L@*      ??!       2      ??!       :	?+??f?@?+??f?@!?+??f?@B      ??!       J	?@gҦ????@gҦ???!?@gҦ???R      ??!       Z	?@gҦ????@gҦ???!?@gҦ???b      ??!       JGPUY??P?s?@b q???J@y{?5??5E@?":
sequential_16/dense_4/MatMulMatMul_????!_????0"m
Agradient_tape/sequential_16/conv2d_15/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter??#????!???????0"B
 sequential_16/activation_36/Relu_FusedConv2D?)????!?Lg?X^??"k
@gradient_tape/sequential_16/conv2d_15/Conv2D/Conv2DBackpropInputConv2DBackpropInputw|?GM??!#?T~???0"p
Dgradient_tape/sequential_16/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter???TW??!c4p??'??0"a
@gradient_tape/sequential_16/max_pooling2d_31/MaxPool/MaxPoolGradMaxPoolGradEv??z??!?k?Z???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??9????!??1?:???"?
!sequential_16/input_tensor/Conv2DConv2D?w?ۦ???! ?k???0"H
,gradient_tape/sequential_16/dense_4/MatMul_1MatMul/?Fpo??!?w??]??"?
"sequential_16/input_tensor/BiasAddBiasAdd?3&??!???????Q      Y@YH?4H?4,@a?o??oyU@q?{??,Q@y?)?I????"?
both?Your program is MODERATELY input-bound because 5.5% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?51.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?68.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Pascal)(: B 