?	뭁??@뭁??@!뭁??@	?x???`"@?x???`"@!?x???`"@"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0뭁??@ڏ?a??1??U?s@I8ӅX???YĲ?CR??r0*	rh??|?U@2E
Iterator::Root?l?<??!      Y@)[? ????1e'???M@:Preprocessing2O
Iterator::Root::Prefetch?)????!???9 D@)?)????1???9 D@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 9.2% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?26.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*moderate2s4.3 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9?x???`"@I"qP???>@QM?3??M@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	ڏ?a??ڏ?a??!ڏ?a??      ??!       "	??U?s@??U?s@!??U?s@*      ??!       2      ??!       :	8ӅX???8ӅX???!8ӅX???B      ??!       J	Ĳ?CR??Ĳ?CR??!Ĳ?CR??R      ??!       Z	Ĳ?CR??Ĳ?CR??!Ĳ?CR??b      ??!       JGPUY?x???`"@b q"qP???>@yM?3??M@?"i
>gradient_tape/sequential_7/conv2d_6/Conv2D/Conv2DBackpropInputConv2DBackpropInput?{?W???!?{?W???0"A
sequential_7/activation_14/Relu_FusedConv2DV?N޼???!?/?????"k
?gradient_tape/sequential_7/conv2d_6/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterNMb>?a??!??M.???0"`
?gradient_tape/sequential_7/max_pooling2d_13/MaxPool/MaxPoolGradMaxPoolGrad???		¬?!??>?N???"?
!sequential_7/output_tensor/MatMulMatMul?????q??!??Yk ??0"o
Cgradient_tape/sequential_7/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterVi'????!dvlڀ??0">
 sequential_7/input_tensor/Conv2DConv2DO?pȢ?!	m?[???0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??qg?N??!???Ї??">
!sequential_7/input_tensor/BiasAddBiasAddb^h??s??!??3l+??"O
1gradient_tape/sequential_7/activation_13/ReluGradReluGrad????+??!?Zqe???Q      Y@Y}F??Q?/@a0?̵U@q?????N@yK?????"?
both?Your program is MODERATELY input-bound because 9.2% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?26.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.moderate"s4.3 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?61.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Pascal)(: B 