	p@KW?4@p@KW?4@!p@KW?4@	?ʳZ?<!@?ʳZ?<!@!?ʳZ?<!@"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0p@KW?4@l#f@12˞6?@I???E??#@Y??1 {???r0*	?Q?l?@2f
/Iterator::Root::Prefetch::FlatMap[0]::GeneratorA??? ?5@!???4?X@)A??? ?5@1???4?X@:Preprocessing2O
Iterator::Root::Prefetch???l亩?!?p?v?R??)???l亩?1?p?v?R??:Preprocessing2E
Iterator::Root5??a0??!?J?????)̳?V|C??1?$
?Ƭ??:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap????#?5@!?Q'??X@)?);??.r?1???ø??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 8.6% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?49.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*high2t29.1 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9?ʳZ?<!@I@*ai?S@Q?BZ??)@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	l#f@l#f@!l#f@      ??!       "	2˞6?@2˞6?@!2˞6?@*      ??!       2      ??!       :	???E??#@???E??#@!???E??#@B      ??!       J	??1 {?????1 {???!??1 {???R      ??!       Z	??1 {?????1 {???!??1 {???b      ??!       JGPUY?ʳZ?<!@b q@*ai?S@y?BZ??)@