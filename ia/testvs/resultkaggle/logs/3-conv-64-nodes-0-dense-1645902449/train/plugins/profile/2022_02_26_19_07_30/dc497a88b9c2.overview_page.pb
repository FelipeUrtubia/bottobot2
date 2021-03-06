?	????˝@????˝@!????˝@	c"5'??@c"5'??@!c"5'??@"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0????˝@?@?vh?1???L?@I]P?2@Ym??}???r0*	?MbX?P@2O
Iterator::Root::Prefetch??	h"??!?J?G?,M@)??	h"??1?J?G?,M@:Preprocessing2E
Iterator::Root_????@??!      Y@)L3?뤾??1$??N?D@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 2.3% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"?60.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9b"5'??@I!/?O?!N@Q?~????B@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?@?vh??@?vh?!?@?vh?      ??!       "	???L?@???L?@!???L?@*      ??!       2      ??!       :	]P?2@]P?2@!]P?2@B      ??!       J	m??}???m??}???!m??}???R      ??!       Z	m??}???m??}???!m??}???b      ??!       JGPUYb"5'??@b q!/?O?!N@y?~????B@?"k
?gradient_tape/sequential_5/conv2d_4/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?8??????!?8??????0"A
sequential_5/activation_10/Relu_FusedConv2DaV%6???!????????"i
>gradient_tape/sequential_5/conv2d_4/Conv2D/Conv2DBackpropInputConv2DBackpropInputϔ0??!?S`d&???0"?
!sequential_5/output_tensor/MatMulMatMul,{?????!?"??Y???0"k
?gradient_tape/sequential_5/conv2d_5/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?:?v&??!,eN????0"i
>gradient_tape/sequential_5/conv2d_5/Conv2D/Conv2DBackpropInputConv2DBackpropInput@	[6???!-?ógO??0"A
sequential_5/activation_11/Relu_FusedConv2D?????!5z\u????"o
Cgradient_tape/sequential_5/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter3? ?Ϧ?!f-j??g??0"_
>gradient_tape/sequential_5/max_pooling2d_9/MaxPool/MaxPoolGradMaxPoolGradMؒF ??!?ZӹT???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits!bH?5???!?'H??Q      Y@YH?4H?4,@a?o??oyU@q??)k?eS@y/?|H??"?
device?Your program is NOT input-bound because only 2.3% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?60.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?77.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Pascal)(: B 