	???W@???W@!???W@	?
F7m?@?
F7m?@!?
F7m?@"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9???W@?q?
??1?D??@A/?r?]?t?I6??D.8??Yu?????r0*	?n??z?@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator???4)?%@!??;?X@)???4)?%@1??;?X@:Preprocessing2O
Iterator::Root::Prefetch?N>=?e??!P>Y_???)?N>=?e??1P>Y_???:Preprocessing2E
Iterator::Root?E{????!?!?ȋ???)?y??Q??1?)08????:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap	N} y?%@!??n???X@))???^r?1W-^????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 5.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?21.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?
F7m?@I`?LS:@Q|??	?[Q@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?q?
???q?
??!?q?
??      ??!       "	?D??@?D??@!?D??@*      ??!       2	/?r?]?t?/?r?]?t?!/?r?]?t?:	6??D.8??6??D.8??!6??D.8??B      ??!       J	u?????u?????!u?????R      ??!       Z	u?????u?????!u?????b      ??!       JGPUY?
F7m?@b q`?LS:@y|??	?[Q@