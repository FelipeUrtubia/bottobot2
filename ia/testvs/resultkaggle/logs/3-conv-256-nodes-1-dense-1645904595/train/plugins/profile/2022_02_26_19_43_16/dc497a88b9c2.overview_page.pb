?	??*ø;+@??*ø;+@!??*ø;+@	?Bw??>???Bw??>??!?Bw??>??"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9??*ø;+@?T????1[rP¬%@A?#???Er?I??~? @Ym???B???r0*	p=
?30?@2f
/Iterator::Root::Prefetch::FlatMap[0]::GeneratorI?0e?+@!X??X@)I?0e?+@1X??X@:Preprocessing2E
Iterator::Root??,`??!?a??+???)\X7???1??*>&??:Preprocessing2O
Iterator::Root::Prefetchk-?B;???!??!3???)k-?B;???1??!3???:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap?"??~?+@!<?D???X@)%=?N?p?17??Ȟ.??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 4.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?14.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?Bw??>??I?I"(U3@Q??р??S@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?T?????T????!?T????      ??!       "	[rP¬%@[rP¬%@![rP¬%@*      ??!       2	?#???Er??#???Er?!?#???Er?:	??~? @??~? @!??~? @B      ??!       J	m???B???m???B???!m???B???R      ??!       Z	m???B???m???B???!m???B???b      ??!       JGPUY?Bw??>??b q?I"(U3@y??р??S@?"m
Agradient_tape/sequential_23/conv2d_22/Conv2D/Conv2DBackpropFilterConv2DBackpropFilteruk?؂/??!uk?؂/??0"B
 sequential_23/activation_57/Relu_FusedConv2DnÓ??!r?]?L%??"k
@gradient_tape/sequential_23/conv2d_22/Conv2D/Conv2DBackpropInputConv2DBackpropInput???{???!+?!:+H??0"k
@gradient_tape/sequential_23/conv2d_23/Conv2D/Conv2DBackpropInputConv2DBackpropInput,???߳?!?4 ????0"B
 sequential_23/activation_58/Relu_FusedConv2D?+?"lĳ?!F:x??<??"m
Agradient_tape/sequential_23/conv2d_23/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter??5?W*??!Z?^|????0"a
@gradient_tape/sequential_23/max_pooling2d_45/MaxPool/MaxPoolGradMaxPoolGrad?w?up???!?m??;???";
sequential_23/dense_11/MatMulMatMul??t_)??!???y????0"p
Dgradient_tape/sequential_23/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter\?-?????!J&??????0"P
2gradient_tape/sequential_23/activation_56/ReluGradReluGrad?H??͔??!n?q????Q      Y@Y?q?q/@a?q?qU@q??D[J@yE?>0?.??"?

both?Your program is POTENTIALLY input-bound because 4.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?14.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 