?	qr?CQ@@qr?CQ@@!qr?CQ@@	OB???@OB???@!OB???@"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9qr?CQ@@ 	?v??1??@ ???A'??@js?IXƆn?@Y.=??????r0*	?C?l??T@2E
Iterator::RootKO?\??!      Y@)L?K?1???1ǅ??[?I@:Preprocessing2O
Iterator::Root::PrefetchK?R??%??!:z{)??H@)K?R??%??1:z{)??H@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 4.7% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?71.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9OB???@I賵?yR@Q?߄j?6@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	 	?v?? 	?v??! 	?v??      ??!       "	??@ ?????@ ???!??@ ???*      ??!       2	'??@js?'??@js?!'??@js?:	XƆn?@XƆn?@!XƆn?@B      ??!       J	.=??????.=??????!.=??????R      ??!       Z	.=??????.=??????!.=??????b      ??!       JGPUYOB???@b q賵?yR@y?߄j?6@?"=
sequential/output_tensor/MatMulMatMul??oLR??!??oLR??0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?w?3??!??U;???"m
Agradient_tape/sequential/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterg^9???!F?X????0"<
sequential/input_tensor/Conv2DConv2D?????5??!6???,???0"[
:gradient_tape/sequential/max_pooling2d/MaxPool/MaxPoolGradMaxPoolGradqC??h??!X??C???"K
-gradient_tape/sequential/output_tensor/MatMulMatMul????ת?!w??E????0"K
/gradient_tape/sequential/output_tensor/MatMul_1MatMulz??T???!_??:;??"Z
9gradient_tape/sequential/input_tensor/BiasAdd/BiasAddGradBiasAddGrad???2|???!?h?G??"<
sequential/input_tensor/BiasAddBiasAdd!^O#???!??yN???"J
,gradient_tape/sequential/activation/ReluGradReluGradb??g???!? ?+̫??Q      Y@YUUUUUU2@a?????jT@q????J!:@y??O????"?
device?Your program is NOT input-bound because only 4.7% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?71.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?26.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Pascal)(: B 