	?bg
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
	???_???????_????!???_????      ??!       "		R)v4@	R)v4@!	R)v4@*      ??!       2	\qqTn?v?\qqTn?v?!\qqTn?v?:	 {?\&@ {?\&@! {?\&@B      ??!       J	???$?۽????$?۽?!???$?۽?R      ??!       Z	???$?۽????$?۽?!???$?۽?b      ??!       JGPUY?;F???b qZ?z??I@y޲?˹?G@