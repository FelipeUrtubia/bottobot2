?	?6??@?6??@!?6??@	???!?@???!?@!???!?@"z
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails9?6??@y????N??1??r?Ψ??AZ??/-?s?I+l? ?@Y1}?!8.??r0*	?ZdR@2O
Iterator::Root::Prefetch2?w???!?䆪?M@)2?w???1?䆪?M@:Preprocessing2E
Iterator::Root?$??r??!      Y@)2=a????1,?yUD@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?59.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???!?@I??G??R@Q?.?]>6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	y????N??y????N??!y????N??      ??!       "	??r?Ψ????r?Ψ??!??r?Ψ??*      ??!       2	Z??/-?s?Z??/-?s?!Z??/-?s?:	+l? ?@+l? ?@!+l? ?@B      ??!       J	1}?!8.??1}?!8.??!1}?!8.??R      ??!       Z	1}?!8.??1}?!8.??!1}?!8.??b      ??!       JGPUY???!?@b q??G??R@y?.?]>6@?"@
sequential_2/activation_4/Relu_FusedConv2D?n?&???!?n?&???"i
>gradient_tape/sequential_2/conv2d_1/Conv2D/Conv2DBackpropInputConv2DBackpropInput[E2tњ??!?#?'?,??0"k
?gradient_tape/sequential_2/conv2d_1/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter1?BA???!?PQx?\??0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits:;?WQn??!?_J?`x??"i
>gradient_tape/sequential_2/conv2d_2/Conv2D/Conv2DBackpropInputConv2DBackpropInput ??l??!??1??~??0"o
Cgradient_tape/sequential_2/input_tensor/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter????խ?!|b?H???0"@
sequential_2/activation_5/Relu_FusedConv2D?+????!8E?\????"?
!sequential_2/output_tensor/MatMulMatMul??ɅG©?!?սj??0">
 sequential_2/input_tensor/Conv2DConv2D??>????!?k	Y????0"k
?gradient_tape/sequential_2/conv2d_2/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter???Ց???!P[fv????0Q      Y@YH?4H?4,@a?o??oyU@q+x??xP@y/¢V?X??"?
both?Your program is POTENTIALLY input-bound because 15.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?59.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?65.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Pascal)(: B 