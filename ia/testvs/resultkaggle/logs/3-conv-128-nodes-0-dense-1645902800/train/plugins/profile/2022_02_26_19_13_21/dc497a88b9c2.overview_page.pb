?	c?0??C @c?0??C @!c?0??C @	??\???@??\???@!??\???@"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9c?0??C @(5
I??1iV?y+@A?x?0DN?I(?8'P@Y?~?f+??r0*	? ?rh	W@2O
Iterator::Root::Prefetch?)x
???!F"?RL@)?)x
???1F"?RL@:Preprocessing2E
Iterator::RootҬl????!      Y@)S???t??1?????E@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 7.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?32.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??\???@IYBe|:SD@Q?4???K@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	(5
I??(5
I??!(5
I??      ??!       "	iV?y+@iV?y+@!iV?y+@*      ??!       2	?x?0DN??x?0DN?!?x?0DN?:	(?8'P@(?8'P@!(?8'P@B      ??!       J	?~?f+???~?f+??!?~?f+??R      ??!       Z	?~?f+???~?f+??!?~?f+??b      ??!       JGPUY??\???@b qYBe|:SD@y?4???K@?"A
sequential_8/activation_16/Relu_FusedConv2D??n?????!??n?????"i
>gradient_tape/sequential_8/conv2d_7/Conv2D/Conv2DBackpropInputConv2DBackpropInput@2n??c??!?t??????0"k
?gradient_tape/sequential_8/conv2d_7/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter'}?%^??!???o????0"i
>gradient_tape/sequential_8/conv2d_8/Conv2D/Conv2DBackpropInputConv2DBackpropInputwS4????!7?O????0"A
sequential_8/activation_17/Relu_FusedConv2D̜??1a??!?w?????"k
?gradient_tape/sequential_8/conv2d_8/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter???­?!?@\?!???0"`
?gradient_tape/sequential_8/max_pooling2d_15/MaxPool/MaxPoolGradMaxPoolGrad?	?f?4??!ZQƎpU??"?
!sequential_8/output_tensor/MatMulMatMul??'jBB??!t?h?????0"o
Cgradient_tape/sequential_8/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterJ|?(????!9r??????0">
 sequential_8/input_tensor/Conv2DConv2Db1n?z???!???^????0Q      Y@Y???7a.@ag *?3U@q窐n@y??~??"?

both?Your program is POTENTIALLY input-bound because 7.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?32.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 