	n?(?#@n?(?#@!n?(?#@      ??!       "h
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails'n?(?#@?y?):???1?
?r@I?9?!C@r0*	?C?l?H?@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator??T?G?1@!?Y@?H?X@)??T?G?1@1?Y@?H?X@:Preprocessing2O
Iterator::Root::Prefetch9?)9'???!??y@)???)9?)9'???1??y@)???:Preprocessing2E
Iterator::Rootb?k_@??!???$??)???dp???1??? /??:Preprocessing2X
!Iterator::Root::Prefetch::FlatMapx??q?1@!?tU???X@)c????r?1?1?QqQ??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?73.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIB?2?|?R@Q??4?9@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?y?):????y?):???!?y?):???      ??!       "	?
?r@?
?r@!?
?r@*      ??!       2      ??!       :	?9?!C@?9?!C@!?9?!C@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qB?2?|?R@y??4?9@