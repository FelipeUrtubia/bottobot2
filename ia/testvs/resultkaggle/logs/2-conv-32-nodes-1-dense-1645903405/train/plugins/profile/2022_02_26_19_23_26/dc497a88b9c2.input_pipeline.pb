	IddY?@IddY?@!IddY?@	?,?24F???,?24F??!?,?24F??"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9IddY?@??? ????1???w??A???׺t?I???
?@Y?p<????r0*	ˡE?c<?@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator<?.?B@!??????X@)<?.?B@1??????X@:Preprocessing2O
Iterator::Root::Prefetch?T? ???!?8?z???)?T? ???1?8?z???:Preprocessing2E
Iterator::Root 8???L??!??$)??)jg??R??1?䶫9̶?:Preprocessing2X
!Iterator::Root::Prefetch::FlatMappz?ǣB@!8p?mk?X@)}?:s?1??tz????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 30.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?44.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?,?24F??I?[??O?R@Q9ݜ?]?7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??? ??????? ????!??? ????      ??!       "	???w?????w??!???w??*      ??!       2	???׺t????׺t?!???׺t?:	???
?@???
?@!???
?@B      ??!       J	?p<?????p<????!?p<????R      ??!       Z	?p<?????p<????!?p<????b      ??!       JGPUY?,?24F??b q?[??O?R@y9ݜ?]?7@