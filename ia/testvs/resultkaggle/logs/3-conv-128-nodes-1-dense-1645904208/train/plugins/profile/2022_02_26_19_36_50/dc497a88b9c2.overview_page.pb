?	???W?#@???W?#@!???W?#@	?@~???@?@~???@!?@~???@"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0???W?#@)&o?????1??;Mf?@I(b??@Y?`?????r0*	0?$???@2f
/Iterator::Root::Prefetch::FlatMap[0]::GeneratorZI+??:H@!34???X@)ZI+??:H@134???X@:Preprocessing2E
Iterator::Root?Z??K???!'A?]ܜ??)?֤????1?U6u??:Preprocessing2O
Iterator::Root::Prefetchzލ?A??!jd??ı?)zލ?A??1jd??ı?:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap?º??<H@!?'ё1?X@)9)?{?i??1?d??????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 2.6% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?49.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?@~???@I?e7?c'I@Q?? 8??G@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	)&o?????)&o?????!)&o?????      ??!       "	??;Mf?@??;Mf?@!??;Mf?@*      ??!       2      ??!       :	(b??@(b??@!(b??@B      ??!       J	?`??????`?????!?`?????R      ??!       Z	?`??????`?????!?`?????b      ??!       JGPUY?@~???@b q?e7?c'I@y?? 8??G@?"B
 sequential_20/activation_48/Relu_FusedConv2DY?? )??!Y?? )??"k
@gradient_tape/sequential_20/conv2d_19/Conv2D/Conv2DBackpropInputConv2DBackpropInput??%?*???!????0"m
Agradient_tape/sequential_20/conv2d_19/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter[=$??u??!?&w?j&??0"k
@gradient_tape/sequential_20/conv2d_20/Conv2D/Conv2DBackpropInputConv2DBackpropInput??%ۚ=??!>M ?????0"B
 sequential_20/activation_49/Relu_FusedConv2Dޏ_?˜??!<F?p????"m
Agradient_tape/sequential_20/conv2d_20/Conv2D/Conv2DBackpropFilterConv2DBackpropFiltery?A???!t?ǀ?`??0"a
@gradient_tape/sequential_20/max_pooling2d_39/MaxPool/MaxPoolGradMaxPoolGrad???j???!a?r'[???":
sequential_20/dense_8/MatMulMatMul???S????!p???))??0"p
Dgradient_tape/sequential_20/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter(z???h??!?@5????0"?
!sequential_20/input_tensor/Conv2DConv2D??4???!???6?/??0Q      Y@Y?q?q/@a?q?qU@q????@ya?F???"?

device?Your program is NOT input-bound because only 2.6% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?49.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 