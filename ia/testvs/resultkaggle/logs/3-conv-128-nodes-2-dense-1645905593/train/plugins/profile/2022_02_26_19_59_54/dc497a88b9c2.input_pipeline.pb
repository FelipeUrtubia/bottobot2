	?3?c?? @?3?c?? @!?3?c?? @	h???6"@h???6"@!h???6"@"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9?3?c?? @?G?z??1?r/0+@AvOjM??I)?^?X@Y$?P29???r0*	??(\???@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator??n?^D@!a?????X@)??n?^D@1a?????X@:Preprocessing2E
Iterator::Rootb???X???!???Wv???)]6:??8??1ΐ$??L??:Preprocessing2O
Iterator::Root::Prefetch
??a???!???s??)
??a???1???s??:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap???_D@!Ff??|?X@)Xr?߄?1IN?΋??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 9.1% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?32.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9g???6"@ItA??>jA@Q2
T?=L@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?G?z???G?z??!?G?z??      ??!       "	?r/0+@?r/0+@!?r/0+@*      ??!       2	vOjM??vOjM??!vOjM??:	)?^?X@)?^?X@!)?^?X@B      ??!       J	$?P29???$?P29???!$?P29???R      ??!       Z	$?P29???$?P29???!$?P29???b      ??!       JGPUYg???6"@b qtA??>jA@y2
T?=L@