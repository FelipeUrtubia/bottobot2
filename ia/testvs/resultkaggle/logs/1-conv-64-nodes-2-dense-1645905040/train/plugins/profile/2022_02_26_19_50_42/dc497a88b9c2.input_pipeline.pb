	????@????@!????@	?P??_?@?P??_?@!?P??_?@"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9????@??????1
h"lx???A?[v??r?I?+?PO@Y?[?d8???r0*	?rh???@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator? x|{?F@!???#?X@)? x|{?F@1???#?X@:Preprocessing2O
Iterator::Root::Prefetch%=?Nΰ?!??m9???)%=?Nΰ?1??m9???:Preprocessing2E
Iterator::Root???????![???|??)?5=((E??1uu?}????:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap????@F@!??s???X@)R?????q?1ƯxuЃ?:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 2.6% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?64.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?P??_?@I@mK??*P@Qw0
?z^@@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????????????!??????      ??!       "	
h"lx???
h"lx???!
h"lx???*      ??!       2	?[v??r??[v??r?!?[v??r?:	?+?PO@?+?PO@!?+?PO@B      ??!       J	?[?d8????[?d8???!?[?d8???R      ??!       Z	?[?d8????[?d8???!?[?d8???b      ??!       JGPUY?P??_?@b q@mK??*P@yw0
?z^@@