?	2?m??&@2?m??&@!2?m??&@	??]t|J@??]t|J@!??]t|J@"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails02?m??&@??*Q????1Zd;??@I?`????Yȳ˷>???r0*	?????N@2E
Iterator::Root?:pΈҮ?!      Y@)yy:W???1?\??8QM@:Preprocessing2O
Iterator::Root::Prefetch?k????!L?@ǮD@)?k????1L?@ǮD@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 10.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?33.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9ߒ]t|J@Ir?4F@Q?#??jJ@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??*Q??????*Q????!??*Q????      ??!       "	Zd;??@Zd;??@!Zd;??@*      ??!       2      ??!       :	?`?????`????!?`????B      ??!       J	ȳ˷>???ȳ˷>???!ȳ˷>???R      ??!       Z	ȳ˷>???ȳ˷>???!ȳ˷>???b      ??!       JGPUYߒ]t|J@b qr?4F@y?#??jJ@?"g
;gradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterS5z\|???!S5z\|???0">
sequential/activation_1/Relu_FusedConv2D??23???!??V??>??"e
:gradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropInputConv2DBackpropInputO??%??! ???D??0"=
sequential/output_tensor/MatMulMatMul?w,[Vn??!<|P????0"g
<gradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropInputConv2DBackpropInput?)?n???!??&O׺??0">
sequential/activation_2/Relu_FusedConv2D??O???!H??@?c??"i
=gradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter???Y??!Hc??1???0"m
Agradient_tape/sequential/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?zC?:???!????@??0"[
:gradient_tape/sequential/max_pooling2d/MaxPool/MaxPoolGradMaxPoolGrad???<??!?l@SY???"<
sequential/input_tensor/Conv2DConv2DFQS??u??!¡%n????0Q      Y@YH?4H?4,@a?o??oyU@q4Y?/??K@y?MNH????"?
both?Your program is POTENTIALLY input-bound because 10.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?33.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?55.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Pascal)(: B 