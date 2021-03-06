?	f??S9?@f??S9?@!f??S9?@	?V?a{@?V?a{@!?V?a{@"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9f??S9?@uWv?????1????@A?+?????I?!??u@@Y3???U???r0*	?"??5?@2f
/Iterator::Root::Prefetch::FlatMap[0]::Generator?Y,?G@!?Ӓ??X@)?Y,?G@1?Ӓ??X@:Preprocessing2O
Iterator::Root::Prefetch???????!/ f?-???)???????1/ f?-???:Preprocessing2E
Iterator::Root?3??????!??o?m???)?l???1??4[k??:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap?\?&??G@!'HI??X@)l??g??r?1???0???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 2.4% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?56.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?V?a{@I<]?M@QzAK?+?C@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	uWv?????uWv?????!uWv?????      ??!       "	????@????@!????@*      ??!       2	?+??????+?????!?+?????:	?!??u@@?!??u@@!?!??u@@B      ??!       J	3???U???3???U???!3???U???R      ??!       Z	3???U???3???U???!3???U???b      ??!       JGPUY?V?a{@b q<]?M@yzAK?+?C@?"m
Agradient_tape/sequential_29/conv2d_28/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter7A??%??!7A??%??0"B
 sequential_29/activation_80/Relu_FusedConv2Di?7<ü??!?y?F???"k
@gradient_tape/sequential_29/conv2d_28/Conv2D/Conv2DBackpropInputConv2DBackpropInput????!${?
H??0";
sequential_29/dense_22/MatMulMatMulF}n?Q???!?J-<???0"m
Agradient_tape/sequential_29/conv2d_29/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterB??W???!f??>???0"k
@gradient_tape/sequential_29/conv2d_29/Conv2D/Conv2DBackpropInputConv2DBackpropInput?8?Uˑ??!?YP[c??0"B
 sequential_29/activation_81/Relu_FusedConv2D??Ps*??!bM?????"p
Dgradient_tape/sequential_29/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?[?H?,??!???[?W??0"a
@gradient_tape/sequential_29/max_pooling2d_57/MaxPool/MaxPoolGradMaxPoolGradWSd????!	!2????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits????U??!9?ّ*???Q      Y@Y?!1ogH,@a???vU@q?6?Kq??y?<?My??"?

device?Your program is NOT input-bound because only 2.4% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?56.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 