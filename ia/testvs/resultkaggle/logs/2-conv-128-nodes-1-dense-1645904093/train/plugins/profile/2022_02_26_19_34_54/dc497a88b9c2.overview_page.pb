?	?bg
!@?bg
!@!?bg
!@	?;F????;F???!?;F???"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9?bg
!@???_????1	R)v4@A\qqTn?v?I {?\&@Y???$?۽?r0*	??C??P@2O
Iterator::Root::Prefetchi??I??!??Pmm?L@)i??I??1??Pmm?L@:Preprocessing2E
Iterator::Root??6p???!      Y@)?T?]??1Vs???}E@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 4.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?47.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?;F???IZ?z??I@Q޲?˹?G@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???_???????_????!???_????      ??!       "		R)v4@	R)v4@!	R)v4@*      ??!       2	\qqTn?v?\qqTn?v?!\qqTn?v?:	 {?\&@ {?\&@! {?\&@B      ??!       J	???$?۽????$?۽?!???$?۽?R      ??!       Z	???$?۽????$?۽?!???$?۽?b      ??!       JGPUY?;F???b qZ?z??I@y޲?˹?G@?"B
 sequential_19/activation_45/Relu_FusedConv2Drx"I???!rx"I???"k
@gradient_tape/sequential_19/conv2d_18/Conv2D/Conv2DBackpropInputConv2DBackpropInput%+IM????!̜??????0"m
Agradient_tape/sequential_19/conv2d_18/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?u?f??!?̍??
??0":
sequential_19/dense_7/MatMulMatMulrz>????!	tu8ѹ??0"a
@gradient_tape/sequential_19/max_pooling2d_37/MaxPool/MaxPoolGradMaxPoolGrad???9??!???b]??"p
Dgradient_tape/sequential_19/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?F??	2??!k??b????0"?
!sequential_19/input_tensor/Conv2DConv2D2?w!??!ܚ???0"H
,gradient_tape/sequential_19/dense_7/MatMul_1MatMulE?ť-???!?????"_
-SGD/SGD/update_4/ResourceApplyGradientDescentResourceApplyGradientDescentlu??z!??!??ȍ????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?&?^?՘?!???8?Z??Q      Y@YH?4H?4,@a?o??oyU@q?:d]?S@yg???^??"?
both?Your program is POTENTIALLY input-bound because 4.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?47.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?76.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Pascal)(: B 