	?;?z@?;?z@!?;?z@	aV>>@aV>>@!aV>>@"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0?;?z@?W?\T[?1???5???I?m½2/@Y?$?????r0*	???(?U?@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator???:q?A@!qhw?g?X@)???:q?A@1qhw?g?X@:Preprocessing2O
Iterator::Root::Prefetch	4?ԡ?!E?w???)	4?ԡ?1E?w???:Preprocessing2E
Iterator::Root??*l???!
???????)??Hi6??1?ާ?????:Preprocessing2X
!Iterator::Root::Prefetch::FlatMapVG?t?A@!?&'':?X@)=E7?r?1(E??E??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 2.9% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?79.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9aV>>@IO%E??S@Q???#?2@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?W?\T[??W?\T[?!?W?\T[?      ??!       "	???5??????5???!???5???*      ??!       2      ??!       :	?m½2/@?m½2/@!?m½2/@B      ??!       J	?$??????$?????!?$?????R      ??!       Z	?$??????$?????!?$?????b      ??!       JGPUYaV>>@b qO%E??S@y???#?2@