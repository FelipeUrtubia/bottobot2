?	???6?+@???6?+@!???6?+@	=N????=N????!=N????"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9???6?+@5?磌??1M?J??%@AHp#e??}?I?x?Jx @Y5_%???r0*	"??~??@2f
/Iterator::Root::Prefetch::FlatMap[0]::GeneratorAI?0?N@!~do@j?X@)AI?0?N@1~do@j?X@:Preprocessing2O
Iterator::Root::Prefetch??L?^???!?%4?[7??)??L?^???1?%4?[7??:Preprocessing2E
Iterator::Root?:???!???h}??)??/E??1	h??uã?:Preprocessing2X
!Iterator::Root::Prefetch::FlatMapy;?i??N@!?zͥ??X@)?G?,r?1w3??W?}?:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 6.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?14.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9>N????I?c?X[4@Q??W?E?S@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	5?磌??5?磌??!5?磌??      ??!       "	M?J??%@M?J??%@!M?J??%@*      ??!       2	Hp#e??}?Hp#e??}?!Hp#e??}?:	?x?Jx @?x?Jx @!?x?Jx @B      ??!       J	5_%???5_%???!5_%???R      ??!       Z	5_%???5_%???!5_%???b      ??!       JGPUY>N????b q?c?X[4@y??W?E?S@?"m
Agradient_tape/sequential_35/conv2d_34/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter ?ߒg???! ?ߒg???0"C
!sequential_35/activation_104/Relu_FusedConv2DU%?????!:l ~???"k
@gradient_tape/sequential_35/conv2d_34/Conv2D/Conv2DBackpropInputConv2DBackpropInput?!?^????!?>??n??0"k
@gradient_tape/sequential_35/conv2d_35/Conv2D/Conv2DBackpropInputConv2DBackpropInput???OL]??!??1???0"C
!sequential_35/activation_105/Relu_FusedConv2Dy???I???!vla??"m
Agradient_tape/sequential_35/conv2d_35/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?6A?c??!?1????0"a
@gradient_tape/sequential_35/max_pooling2d_69/MaxPool/MaxPoolGradMaxPoolGrad?e<????!V??e????";
sequential_35/dense_34/MatMulMatMul??ì=???!⾰@????0"p
Dgradient_tape/sequential_35/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter>?g'xV??!L??or??0"?
"sequential_35/input_tensor/BiasAddBiasAdd?K?w??!@*1N???Q      Y@Y?!1ogH,@a???vU@q??\??D@yGuƤ??"?

both?Your program is POTENTIALLY input-bound because 6.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?14.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 