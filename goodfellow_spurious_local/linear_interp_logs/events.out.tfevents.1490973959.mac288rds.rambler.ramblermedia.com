       �K"	  �A�7�Abrain.Event:2�^���'     A���	��A�7�A"��
^
PlaceholderPlaceholder*
dtype0*(
_output_shapes
:����������*
shape: 
_
Placeholder_1Placeholder*
dtype0*'
_output_shapes
:���������
*
shape: 
o
-preparing_variables/global_step/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
�
preparing_variables/global_stepVariable*
dtype0*
_output_shapes
: *
	container *
shared_name *
shape: 
�
&preparing_variables/global_step/AssignAssignpreparing_variables/global_step-preparing_variables/global_step/initial_value*2
_class(
&$loc:@preparing_variables/global_step*
T0*
_output_shapes
: *
use_locking(*
validate_shape(
�
$preparing_variables/global_step/readIdentitypreparing_variables/global_step*2
_class(
&$loc:@preparing_variables/global_step*
T0*
_output_shapes
: 
�
preparing_variables/hidden_1/wVariable*
dtype0* 
_output_shapes
:
��*
	container *
shared_name *
shape:
��
�
Apreparing_variables/hidden_1/w/Initializer/truncated_normal/shapeConst*1
_class'
%#loc:@preparing_variables/hidden_1/w*
dtype0*
valueB"     *
_output_shapes
:
�
@preparing_variables/hidden_1/w/Initializer/truncated_normal/meanConst*1
_class'
%#loc:@preparing_variables/hidden_1/w*
dtype0*
valueB
 *    *
_output_shapes
: 
�
Bpreparing_variables/hidden_1/w/Initializer/truncated_normal/stddevConst*1
_class'
%#loc:@preparing_variables/hidden_1/w*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
Kpreparing_variables/hidden_1/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_1/w/Initializer/truncated_normal/shape*1
_class'
%#loc:@preparing_variables/hidden_1/w*
dtype0*

seed *
seed2 *
T0* 
_output_shapes
:
��
�
?preparing_variables/hidden_1/w/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_1/w/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_1/w/Initializer/truncated_normal/stddev*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0* 
_output_shapes
:
��
�
;preparing_variables/hidden_1/w/Initializer/truncated_normalAdd?preparing_variables/hidden_1/w/Initializer/truncated_normal/mul@preparing_variables/hidden_1/w/Initializer/truncated_normal/mean*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0* 
_output_shapes
:
��
�
%preparing_variables/hidden_1/w/AssignAssignpreparing_variables/hidden_1/w;preparing_variables/hidden_1/w/Initializer/truncated_normal*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0* 
_output_shapes
:
��*
use_locking(*
validate_shape(
�
#preparing_variables/hidden_1/w/readIdentitypreparing_variables/hidden_1/w*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0* 
_output_shapes
:
��
�
preparing_variables/hidden_1/bVariable*
dtype0*
_output_shapes	
:�*
	container *
shared_name *
shape:�
�
Apreparing_variables/hidden_1/b/Initializer/truncated_normal/shapeConst*1
_class'
%#loc:@preparing_variables/hidden_1/b*
dtype0*
valueB:�*
_output_shapes
:
�
@preparing_variables/hidden_1/b/Initializer/truncated_normal/meanConst*1
_class'
%#loc:@preparing_variables/hidden_1/b*
dtype0*
valueB
 *    *
_output_shapes
: 
�
Bpreparing_variables/hidden_1/b/Initializer/truncated_normal/stddevConst*1
_class'
%#loc:@preparing_variables/hidden_1/b*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
Kpreparing_variables/hidden_1/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_1/b/Initializer/truncated_normal/shape*1
_class'
%#loc:@preparing_variables/hidden_1/b*
dtype0*

seed *
seed2 *
T0*
_output_shapes	
:�
�
?preparing_variables/hidden_1/b/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_1/b/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_1/b/Initializer/truncated_normal/stddev*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
_output_shapes	
:�
�
;preparing_variables/hidden_1/b/Initializer/truncated_normalAdd?preparing_variables/hidden_1/b/Initializer/truncated_normal/mul@preparing_variables/hidden_1/b/Initializer/truncated_normal/mean*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
_output_shapes	
:�
�
%preparing_variables/hidden_1/b/AssignAssignpreparing_variables/hidden_1/b;preparing_variables/hidden_1/b/Initializer/truncated_normal*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(
�
#preparing_variables/hidden_1/b/readIdentitypreparing_variables/hidden_1/b*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
_output_shapes	
:�
�
#preparing_variables/hidden_1/MatMulMatMulPlaceholder#preparing_variables/hidden_1/w/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
�
 preparing_variables/hidden_1/addAdd#preparing_variables/hidden_1/MatMul#preparing_variables/hidden_1/b/read*
T0*(
_output_shapes
:����������
~
!preparing_variables/hidden_1/ReluRelu preparing_variables/hidden_1/add*
T0*(
_output_shapes
:����������
�
preparing_variables/hidden_2/wVariable*
dtype0* 
_output_shapes
:
��*
	container *
shared_name *
shape:
��
�
Apreparing_variables/hidden_2/w/Initializer/truncated_normal/shapeConst*1
_class'
%#loc:@preparing_variables/hidden_2/w*
dtype0*
valueB"      *
_output_shapes
:
�
@preparing_variables/hidden_2/w/Initializer/truncated_normal/meanConst*1
_class'
%#loc:@preparing_variables/hidden_2/w*
dtype0*
valueB
 *    *
_output_shapes
: 
�
Bpreparing_variables/hidden_2/w/Initializer/truncated_normal/stddevConst*1
_class'
%#loc:@preparing_variables/hidden_2/w*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
Kpreparing_variables/hidden_2/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_2/w/Initializer/truncated_normal/shape*1
_class'
%#loc:@preparing_variables/hidden_2/w*
dtype0*

seed *
seed2 *
T0* 
_output_shapes
:
��
�
?preparing_variables/hidden_2/w/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_2/w/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_2/w/Initializer/truncated_normal/stddev*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0* 
_output_shapes
:
��
�
;preparing_variables/hidden_2/w/Initializer/truncated_normalAdd?preparing_variables/hidden_2/w/Initializer/truncated_normal/mul@preparing_variables/hidden_2/w/Initializer/truncated_normal/mean*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0* 
_output_shapes
:
��
�
%preparing_variables/hidden_2/w/AssignAssignpreparing_variables/hidden_2/w;preparing_variables/hidden_2/w/Initializer/truncated_normal*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0* 
_output_shapes
:
��*
use_locking(*
validate_shape(
�
#preparing_variables/hidden_2/w/readIdentitypreparing_variables/hidden_2/w*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0* 
_output_shapes
:
��
�
preparing_variables/hidden_2/bVariable*
dtype0*
_output_shapes	
:�*
	container *
shared_name *
shape:�
�
Apreparing_variables/hidden_2/b/Initializer/truncated_normal/shapeConst*1
_class'
%#loc:@preparing_variables/hidden_2/b*
dtype0*
valueB:�*
_output_shapes
:
�
@preparing_variables/hidden_2/b/Initializer/truncated_normal/meanConst*1
_class'
%#loc:@preparing_variables/hidden_2/b*
dtype0*
valueB
 *    *
_output_shapes
: 
�
Bpreparing_variables/hidden_2/b/Initializer/truncated_normal/stddevConst*1
_class'
%#loc:@preparing_variables/hidden_2/b*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
Kpreparing_variables/hidden_2/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_2/b/Initializer/truncated_normal/shape*1
_class'
%#loc:@preparing_variables/hidden_2/b*
dtype0*

seed *
seed2 *
T0*
_output_shapes	
:�
�
?preparing_variables/hidden_2/b/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_2/b/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_2/b/Initializer/truncated_normal/stddev*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
_output_shapes	
:�
�
;preparing_variables/hidden_2/b/Initializer/truncated_normalAdd?preparing_variables/hidden_2/b/Initializer/truncated_normal/mul@preparing_variables/hidden_2/b/Initializer/truncated_normal/mean*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
_output_shapes	
:�
�
%preparing_variables/hidden_2/b/AssignAssignpreparing_variables/hidden_2/b;preparing_variables/hidden_2/b/Initializer/truncated_normal*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(
�
#preparing_variables/hidden_2/b/readIdentitypreparing_variables/hidden_2/b*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
_output_shapes	
:�
�
#preparing_variables/hidden_2/MatMulMatMul!preparing_variables/hidden_1/Relu#preparing_variables/hidden_2/w/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
�
 preparing_variables/hidden_2/addAdd#preparing_variables/hidden_2/MatMul#preparing_variables/hidden_2/b/read*
T0*(
_output_shapes
:����������
~
!preparing_variables/hidden_2/ReluRelu preparing_variables/hidden_2/add*
T0*(
_output_shapes
:����������
�
preparing_variables/output/wVariable*
dtype0*
_output_shapes
:	�
*
	container *
shared_name *
shape:	�

�
?preparing_variables/output/w/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@preparing_variables/output/w*
dtype0*
valueB"   
   *
_output_shapes
:
�
>preparing_variables/output/w/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@preparing_variables/output/w*
dtype0*
valueB
 *    *
_output_shapes
: 
�
@preparing_variables/output/w/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@preparing_variables/output/w*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
Ipreparing_variables/output/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?preparing_variables/output/w/Initializer/truncated_normal/shape*/
_class%
#!loc:@preparing_variables/output/w*
dtype0*

seed *
seed2 *
T0*
_output_shapes
:	�

�
=preparing_variables/output/w/Initializer/truncated_normal/mulMulIpreparing_variables/output/w/Initializer/truncated_normal/TruncatedNormal@preparing_variables/output/w/Initializer/truncated_normal/stddev*/
_class%
#!loc:@preparing_variables/output/w*
T0*
_output_shapes
:	�

�
9preparing_variables/output/w/Initializer/truncated_normalAdd=preparing_variables/output/w/Initializer/truncated_normal/mul>preparing_variables/output/w/Initializer/truncated_normal/mean*/
_class%
#!loc:@preparing_variables/output/w*
T0*
_output_shapes
:	�

�
#preparing_variables/output/w/AssignAssignpreparing_variables/output/w9preparing_variables/output/w/Initializer/truncated_normal*/
_class%
#!loc:@preparing_variables/output/w*
T0*
_output_shapes
:	�
*
use_locking(*
validate_shape(
�
!preparing_variables/output/w/readIdentitypreparing_variables/output/w*/
_class%
#!loc:@preparing_variables/output/w*
T0*
_output_shapes
:	�

�
preparing_variables/output/bVariable*
dtype0*
_output_shapes
:
*
	container *
shared_name *
shape:

�
?preparing_variables/output/b/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@preparing_variables/output/b*
dtype0*
valueB:
*
_output_shapes
:
�
>preparing_variables/output/b/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@preparing_variables/output/b*
dtype0*
valueB
 *    *
_output_shapes
: 
�
@preparing_variables/output/b/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@preparing_variables/output/b*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
Ipreparing_variables/output/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?preparing_variables/output/b/Initializer/truncated_normal/shape*/
_class%
#!loc:@preparing_variables/output/b*
dtype0*

seed *
seed2 *
T0*
_output_shapes
:

�
=preparing_variables/output/b/Initializer/truncated_normal/mulMulIpreparing_variables/output/b/Initializer/truncated_normal/TruncatedNormal@preparing_variables/output/b/Initializer/truncated_normal/stddev*/
_class%
#!loc:@preparing_variables/output/b*
T0*
_output_shapes
:

�
9preparing_variables/output/b/Initializer/truncated_normalAdd=preparing_variables/output/b/Initializer/truncated_normal/mul>preparing_variables/output/b/Initializer/truncated_normal/mean*/
_class%
#!loc:@preparing_variables/output/b*
T0*
_output_shapes
:

�
#preparing_variables/output/b/AssignAssignpreparing_variables/output/b9preparing_variables/output/b/Initializer/truncated_normal*/
_class%
#!loc:@preparing_variables/output/b*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(
�
!preparing_variables/output/b/readIdentitypreparing_variables/output/b*/
_class%
#!loc:@preparing_variables/output/b*
T0*
_output_shapes
:

�
!preparing_variables/output/MatMulMatMul!preparing_variables/hidden_2/Relu!preparing_variables/output/w/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������

�
preparing_variables/output/addAdd!preparing_variables/output/MatMul!preparing_variables/output/b/read*
T0*'
_output_shapes
:���������

y
preparing_variables/output/ReluRelupreparing_variables/output/add*
T0*'
_output_shapes
:���������

Z
preparing_variables/RankConst*
dtype0*
value	B :*
_output_shapes
: 
x
preparing_variables/ShapeShapepreparing_variables/output/Relu*
_output_shapes
:*
T0*
out_type0
\
preparing_variables/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
z
preparing_variables/Shape_1Shapepreparing_variables/output/Relu*
_output_shapes
:*
T0*
out_type0
[
preparing_variables/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
v
preparing_variables/SubSubpreparing_variables/Rank_1preparing_variables/Sub/y*
T0*
_output_shapes
: 
z
preparing_variables/Slice/beginPackpreparing_variables/Sub*
T0*

axis *
N*
_output_shapes
:
h
preparing_variables/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
preparing_variables/SliceSlicepreparing_variables/Shape_1preparing_variables/Slice/beginpreparing_variables/Slice/size*
Index0*
T0*
_output_shapes
:
g
%preparing_variables/concat/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
v
#preparing_variables/concat/values_0Const*
dtype0*
valueB:
���������*
_output_shapes
:
�
preparing_variables/concatConcat%preparing_variables/concat/concat_dim#preparing_variables/concat/values_0preparing_variables/Slice*
T0*
N*
_output_shapes
:
�
preparing_variables/ReshapeReshapepreparing_variables/output/Relupreparing_variables/concat*0
_output_shapes
:������������������*
T0*
Tshape0
\
preparing_variables/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
h
preparing_variables/Shape_2ShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
]
preparing_variables/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
z
preparing_variables/Sub_1Subpreparing_variables/Rank_2preparing_variables/Sub_1/y*
T0*
_output_shapes
: 
~
!preparing_variables/Slice_1/beginPackpreparing_variables/Sub_1*
T0*

axis *
N*
_output_shapes
:
j
 preparing_variables/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
preparing_variables/Slice_1Slicepreparing_variables/Shape_2!preparing_variables/Slice_1/begin preparing_variables/Slice_1/size*
Index0*
T0*
_output_shapes
:
i
'preparing_variables/concat_1/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
x
%preparing_variables/concat_1/values_0Const*
dtype0*
valueB:
���������*
_output_shapes
:
�
preparing_variables/concat_1Concat'preparing_variables/concat_1/concat_dim%preparing_variables/concat_1/values_0preparing_variables/Slice_1*
T0*
N*
_output_shapes
:
�
preparing_variables/Reshape_1ReshapePlaceholder_1preparing_variables/concat_1*0
_output_shapes
:������������������*
T0*
Tshape0
�
1preparing_variables/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitspreparing_variables/Reshapepreparing_variables/Reshape_1*
T0*?
_output_shapes-
+:���������:������������������
]
preparing_variables/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 
x
preparing_variables/Sub_2Subpreparing_variables/Rankpreparing_variables/Sub_2/y*
T0*
_output_shapes
: 
k
!preparing_variables/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:
}
 preparing_variables/Slice_2/sizePackpreparing_variables/Sub_2*
T0*

axis *
N*
_output_shapes
:
�
preparing_variables/Slice_2Slicepreparing_variables/Shape!preparing_variables/Slice_2/begin preparing_variables/Slice_2/size*
Index0*
T0*#
_output_shapes
:���������
�
preparing_variables/Reshape_2Reshape1preparing_variables/SoftmaxCrossEntropyWithLogitspreparing_variables/Slice_2*#
_output_shapes
:���������*
T0*
Tshape0
c
preparing_variables/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
preparing_variables/MeanMeanpreparing_variables/Reshape_2preparing_variables/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
v
preparing_variables/loss/tagsConst*
dtype0*)
value B Bpreparing_variables/loss*
_output_shapes
: 
�
preparing_variables/lossScalarSummarypreparing_variables/loss/tagspreparing_variables/Mean*
T0*
_output_shapes
: 
f
#preparing_variables/gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
h
#preparing_variables/gradients/ConstConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
"preparing_variables/gradients/FillFill#preparing_variables/gradients/Shape#preparing_variables/gradients/Const*
T0*
_output_shapes
: 
�
Ipreparing_variables/gradients/preparing_variables/Mean_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/ReshapeReshape"preparing_variables/gradients/FillIpreparing_variables/gradients/preparing_variables/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
�
Apreparing_variables/gradients/preparing_variables/Mean_grad/ShapeShapepreparing_variables/Reshape_2*
_output_shapes
:*
T0*
out_type0
�
@preparing_variables/gradients/preparing_variables/Mean_grad/TileTileCpreparing_variables/gradients/preparing_variables/Mean_grad/ReshapeApreparing_variables/gradients/preparing_variables/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_1Shapepreparing_variables/Reshape_2*
_output_shapes
:*
T0*
out_type0
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 
�
Apreparing_variables/gradients/preparing_variables/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
@preparing_variables/gradients/preparing_variables/Mean_grad/ProdProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_1Apreparing_variables/gradients/preparing_variables/Mean_grad/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
�
Bpreparing_variables/gradients/preparing_variables/Mean_grad/Prod_1ProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_2Cpreparing_variables/gradients/preparing_variables/Mean_grad/Const_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
Epreparing_variables/gradients/preparing_variables/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/MaximumMaximumBpreparing_variables/gradients/preparing_variables/Mean_grad/Prod_1Epreparing_variables/gradients/preparing_variables/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
Dpreparing_variables/gradients/preparing_variables/Mean_grad/floordivDiv@preparing_variables/gradients/preparing_variables/Mean_grad/ProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Maximum*
T0*
_output_shapes
: 
�
@preparing_variables/gradients/preparing_variables/Mean_grad/CastCastDpreparing_variables/gradients/preparing_variables/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/truedivDiv@preparing_variables/gradients/preparing_variables/Mean_grad/Tile@preparing_variables/gradients/preparing_variables/Mean_grad/Cast*
T0*#
_output_shapes
:���������
�
Fpreparing_variables/gradients/preparing_variables/Reshape_2_grad/ShapeShape1preparing_variables/SoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0
�
Hpreparing_variables/gradients/preparing_variables/Reshape_2_grad/ReshapeReshapeCpreparing_variables/gradients/preparing_variables/Mean_grad/truedivFpreparing_variables/gradients/preparing_variables/Reshape_2_grad/Shape*#
_output_shapes
:���������*
T0*
Tshape0
�
(preparing_variables/gradients/zeros_like	ZerosLike3preparing_variables/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:������������������
�
cpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�
_preparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsHpreparing_variables/gradients/preparing_variables/Reshape_2_grad/Reshapecpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:���������
�
Xpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/mulMul_preparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims3preparing_variables/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:������������������
�
Dpreparing_variables/gradients/preparing_variables/Reshape_grad/ShapeShapepreparing_variables/output/Relu*
_output_shapes
:*
T0*
out_type0
�
Fpreparing_variables/gradients/preparing_variables/Reshape_grad/ReshapeReshapeXpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/mulDpreparing_variables/gradients/preparing_variables/Reshape_grad/Shape*'
_output_shapes
:���������
*
T0*
Tshape0
�
Kpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradReluGradFpreparing_variables/gradients/preparing_variables/Reshape_grad/Reshapepreparing_variables/output/Relu*
T0*'
_output_shapes
:���������

�
Gpreparing_variables/gradients/preparing_variables/output/add_grad/ShapeShape!preparing_variables/output/MatMul*
_output_shapes
:*
T0*
out_type0
�
Ipreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1Const*
dtype0*
valueB:
*
_output_shapes
:
�
Wpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgsBroadcastGradientArgsGpreparing_variables/gradients/preparing_variables/output/add_grad/ShapeIpreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Epreparing_variables/gradients/preparing_variables/output/add_grad/SumSumKpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradWpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Ipreparing_variables/gradients/preparing_variables/output/add_grad/ReshapeReshapeEpreparing_variables/gradients/preparing_variables/output/add_grad/SumGpreparing_variables/gradients/preparing_variables/output/add_grad/Shape*'
_output_shapes
:���������
*
T0*
Tshape0
�
Gpreparing_variables/gradients/preparing_variables/output/add_grad/Sum_1SumKpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Kpreparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1ReshapeGpreparing_variables/gradients/preparing_variables/output/add_grad/Sum_1Ipreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1*
_output_shapes
:
*
T0*
Tshape0
�
Rpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_depsNoOpJ^preparing_variables/gradients/preparing_variables/output/add_grad/ReshapeL^preparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1
�
Zpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependencyIdentityIpreparing_variables/gradients/preparing_variables/output/add_grad/ReshapeS^preparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_deps*\
_classR
PNloc:@preparing_variables/gradients/preparing_variables/output/add_grad/Reshape*
T0*'
_output_shapes
:���������

�
\preparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency_1IdentityKpreparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1S^preparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_deps*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1*
T0*
_output_shapes
:

�
Kpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulMatMulZpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency!preparing_variables/output/w/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:����������
�
Mpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1MatMul!preparing_variables/hidden_2/ReluZpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	�

�
Upreparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulN^preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1
�
]preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulV^preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_deps*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul*
T0*(
_output_shapes
:����������
�
_preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1V^preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�

�
Mpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGradReluGrad]preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency!preparing_variables/hidden_2/Relu*
T0*(
_output_shapes
:����������
�
Ipreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ShapeShape#preparing_variables/hidden_2/MatMul*
_output_shapes
:*
T0*
out_type0
�
Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1Const*
dtype0*
valueB:�*
_output_shapes
:
�
Ypreparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgsBroadcastGradientArgsIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ShapeKpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Gpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/SumSumMpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeReshapeGpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/SumIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape*(
_output_shapes
:����������*
T0*
Tshape0
�
Ipreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Sum_1SumMpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGrad[preparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Mpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1ReshapeIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Sum_1Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1*
_output_shapes	
:�*
T0*
Tshape0
�
Tpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeN^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1
�
\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeU^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_deps*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape*
T0*(
_output_shapes
:����������
�
^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1U^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1*
T0*
_output_shapes	
:�
�
Mpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulMatMul\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency#preparing_variables/hidden_2/w/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:����������
�
Opreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1MatMul!preparing_variables/hidden_1/Relu\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
��
�
Wpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_depsNoOpN^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulP^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1
�
_preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependencyIdentityMpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulX^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul*
T0*(
_output_shapes
:����������
�
apreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency_1IdentityOpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1X^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_deps*b
_classX
VTloc:@preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
�
Mpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGradReluGrad_preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency!preparing_variables/hidden_1/Relu*
T0*(
_output_shapes
:����������
�
Ipreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ShapeShape#preparing_variables/hidden_1/MatMul*
_output_shapes
:*
T0*
out_type0
�
Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1Const*
dtype0*
valueB:�*
_output_shapes
:
�
Ypreparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgsBroadcastGradientArgsIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ShapeKpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Gpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/SumSumMpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeReshapeGpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/SumIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape*(
_output_shapes
:����������*
T0*
Tshape0
�
Ipreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Sum_1SumMpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGrad[preparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Mpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1ReshapeIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Sum_1Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1*
_output_shapes	
:�*
T0*
Tshape0
�
Tpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeN^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1
�
\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeU^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_deps*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape*
T0*(
_output_shapes
:����������
�
^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1U^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1*
T0*
_output_shapes	
:�
�
Mpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulMatMul\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency#preparing_variables/hidden_1/w/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:����������
�
Opreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1MatMulPlaceholder\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
��
�
Wpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_depsNoOpN^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulP^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1
�
_preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependencyIdentityMpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulX^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul*
T0*(
_output_shapes
:����������
�
apreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependency_1IdentityOpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1X^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_deps*b
_classX
VTloc:@preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
v
1preparing_variables/GradientDescent/learning_rateConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_1/w1preparing_variables/GradientDescent/learning_rateapreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependency_1*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0*
use_locking( * 
_output_shapes
:
��
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_1/b1preparing_variables/GradientDescent/learning_rate^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency_1*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
use_locking( *
_output_shapes	
:�
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_2/w1preparing_variables/GradientDescent/learning_rateapreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency_1*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0*
use_locking( * 
_output_shapes
:
��
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_2/b1preparing_variables/GradientDescent/learning_rate^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency_1*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
use_locking( *
_output_shapes	
:�
�
\preparing_variables/GradientDescent/update_preparing_variables/output/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/output/w1preparing_variables/GradientDescent/learning_rate_preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency_1*/
_class%
#!loc:@preparing_variables/output/w*
T0*
use_locking( *
_output_shapes
:	�

�
\preparing_variables/GradientDescent/update_preparing_variables/output/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/output/b1preparing_variables/GradientDescent/learning_rate\preparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency_1*/
_class%
#!loc:@preparing_variables/output/b*
T0*
use_locking( *
_output_shapes
:

�
*preparing_variables/GradientDescent/updateNoOp_^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/w/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/b/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/w/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/b/ApplyGradientDescent]^preparing_variables/GradientDescent/update_preparing_variables/output/w/ApplyGradientDescent]^preparing_variables/GradientDescent/update_preparing_variables/output/b/ApplyGradientDescent
�
)preparing_variables/GradientDescent/valueConst+^preparing_variables/GradientDescent/update*2
_class(
&$loc:@preparing_variables/global_step*
dtype0*
value	B :*
_output_shapes
: 
�
#preparing_variables/GradientDescent	AssignAddpreparing_variables/global_step)preparing_variables/GradientDescent/value*2
_class(
&$loc:@preparing_variables/global_step*
T0*
use_locking( *
_output_shapes
: 
f
$preparing_variables/ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
�
preparing_variables/ArgMaxArgMaxPlaceholder_1$preparing_variables/ArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:���������
h
&preparing_variables/ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
�
preparing_variables/ArgMax_1ArgMaxpreparing_variables/output/Relu&preparing_variables/ArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:���������
�
preparing_variables/EqualEqualpreparing_variables/ArgMaxpreparing_variables/ArgMax_1*
T0	*#
_output_shapes
:���������
z
preparing_variables/Cast_1Castpreparing_variables/Equal*

SrcT0
*

DstT0*#
_output_shapes
:���������
e
preparing_variables/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
�
preparing_variables/Mean_1Meanpreparing_variables/Cast_1preparing_variables/Const_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
^
preparing_variables/sub/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
v
preparing_variables/subSubpreparing_variables/sub/xpreparing_variables/Mean_1*
T0*
_output_shapes
: 
�
)preparing_variables/validation_error/tagsConst*
dtype0*5
value,B* B$preparing_variables/validation_error*
_output_shapes
: 
�
$preparing_variables/validation_errorScalarSummary)preparing_variables/validation_error/tagspreparing_variables/sub*
T0*
_output_shapes
: 
�
preparing_variables/initNoOp'^preparing_variables/global_step/Assign&^preparing_variables/hidden_1/w/Assign&^preparing_variables/hidden_1/b/Assign&^preparing_variables/hidden_2/w/Assign&^preparing_variables/hidden_2/b/Assign$^preparing_variables/output/w/Assign$^preparing_variables/output/b/Assign
�
&preparing_variables/Merge/MergeSummaryMergeSummarypreparing_variables/loss$preparing_variables/validation_error*
N*
_output_shapes
: 
d
preparing_variables/save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�
,preparing_variables/save/SaveV2/tensor_namesConst*
dtype0*�
value�B�Bpreparing_variables/global_stepBpreparing_variables/hidden_1/bBpreparing_variables/hidden_1/wBpreparing_variables/hidden_2/bBpreparing_variables/hidden_2/wBpreparing_variables/output/bBpreparing_variables/output/w*
_output_shapes
:
�
0preparing_variables/save/SaveV2/shape_and_slicesConst*
dtype0*!
valueBB B B B B B B *
_output_shapes
:
�
preparing_variables/save/SaveV2SaveV2preparing_variables/save/Const,preparing_variables/save/SaveV2/tensor_names0preparing_variables/save/SaveV2/shape_and_slicespreparing_variables/global_steppreparing_variables/hidden_1/bpreparing_variables/hidden_1/wpreparing_variables/hidden_2/bpreparing_variables/hidden_2/wpreparing_variables/output/bpreparing_variables/output/w*
dtypes
	2
�
+preparing_variables/save/control_dependencyIdentitypreparing_variables/save/Const ^preparing_variables/save/SaveV2*1
_class'
%#loc:@preparing_variables/save/Const*
T0*
_output_shapes
: 
�
/preparing_variables/save/RestoreV2/tensor_namesConst*
dtype0*4
value+B)Bpreparing_variables/global_step*
_output_shapes
:
|
3preparing_variables/save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
"preparing_variables/save/RestoreV2	RestoreV2preparing_variables/save/Const/preparing_variables/save/RestoreV2/tensor_names3preparing_variables/save/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
preparing_variables/save/AssignAssignpreparing_variables/global_step"preparing_variables/save/RestoreV2*2
_class(
&$loc:@preparing_variables/global_step*
T0*
_output_shapes
: *
use_locking(*
validate_shape(
�
1preparing_variables/save/RestoreV2_1/tensor_namesConst*
dtype0*3
value*B(Bpreparing_variables/hidden_1/b*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
$preparing_variables/save/RestoreV2_1	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_1/tensor_names5preparing_variables/save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
!preparing_variables/save/Assign_1Assignpreparing_variables/hidden_1/b$preparing_variables/save/RestoreV2_1*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(
�
1preparing_variables/save/RestoreV2_2/tensor_namesConst*
dtype0*3
value*B(Bpreparing_variables/hidden_1/w*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
$preparing_variables/save/RestoreV2_2	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_2/tensor_names5preparing_variables/save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
!preparing_variables/save/Assign_2Assignpreparing_variables/hidden_1/w$preparing_variables/save/RestoreV2_2*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0* 
_output_shapes
:
��*
use_locking(*
validate_shape(
�
1preparing_variables/save/RestoreV2_3/tensor_namesConst*
dtype0*3
value*B(Bpreparing_variables/hidden_2/b*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
$preparing_variables/save/RestoreV2_3	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_3/tensor_names5preparing_variables/save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
!preparing_variables/save/Assign_3Assignpreparing_variables/hidden_2/b$preparing_variables/save/RestoreV2_3*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(
�
1preparing_variables/save/RestoreV2_4/tensor_namesConst*
dtype0*3
value*B(Bpreparing_variables/hidden_2/w*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
$preparing_variables/save/RestoreV2_4	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_4/tensor_names5preparing_variables/save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
!preparing_variables/save/Assign_4Assignpreparing_variables/hidden_2/w$preparing_variables/save/RestoreV2_4*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0* 
_output_shapes
:
��*
use_locking(*
validate_shape(
�
1preparing_variables/save/RestoreV2_5/tensor_namesConst*
dtype0*1
value(B&Bpreparing_variables/output/b*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
$preparing_variables/save/RestoreV2_5	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_5/tensor_names5preparing_variables/save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
!preparing_variables/save/Assign_5Assignpreparing_variables/output/b$preparing_variables/save/RestoreV2_5*/
_class%
#!loc:@preparing_variables/output/b*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(
�
1preparing_variables/save/RestoreV2_6/tensor_namesConst*
dtype0*1
value(B&Bpreparing_variables/output/w*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
$preparing_variables/save/RestoreV2_6	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_6/tensor_names5preparing_variables/save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
!preparing_variables/save/Assign_6Assignpreparing_variables/output/w$preparing_variables/save/RestoreV2_6*/
_class%
#!loc:@preparing_variables/output/w*
T0*
_output_shapes
:	�
*
use_locking(*
validate_shape(
�
$preparing_variables/save/restore_allNoOp ^preparing_variables/save/Assign"^preparing_variables/save/Assign_1"^preparing_variables/save/Assign_2"^preparing_variables/save/Assign_3"^preparing_variables/save/Assign_4"^preparing_variables/save/Assign_5"^preparing_variables/save/Assign_6
�
mlp_init/hidden_1/wVariable*
dtype0* 
_output_shapes
:
��*
	container *
shared_name *
shape:
��
�
6mlp_init/hidden_1/w/Initializer/truncated_normal/shapeConst*&
_class
loc:@mlp_init/hidden_1/w*
dtype0*
valueB"     *
_output_shapes
:
�
5mlp_init/hidden_1/w/Initializer/truncated_normal/meanConst*&
_class
loc:@mlp_init/hidden_1/w*
dtype0*
valueB
 *    *
_output_shapes
: 
�
7mlp_init/hidden_1/w/Initializer/truncated_normal/stddevConst*&
_class
loc:@mlp_init/hidden_1/w*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
@mlp_init/hidden_1/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_1/w/Initializer/truncated_normal/shape*&
_class
loc:@mlp_init/hidden_1/w*
dtype0*

seed *
seed2 *
T0* 
_output_shapes
:
��
�
4mlp_init/hidden_1/w/Initializer/truncated_normal/mulMul@mlp_init/hidden_1/w/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_1/w/Initializer/truncated_normal/stddev*&
_class
loc:@mlp_init/hidden_1/w*
T0* 
_output_shapes
:
��
�
0mlp_init/hidden_1/w/Initializer/truncated_normalAdd4mlp_init/hidden_1/w/Initializer/truncated_normal/mul5mlp_init/hidden_1/w/Initializer/truncated_normal/mean*&
_class
loc:@mlp_init/hidden_1/w*
T0* 
_output_shapes
:
��
�
mlp_init/hidden_1/w/AssignAssignmlp_init/hidden_1/w0mlp_init/hidden_1/w/Initializer/truncated_normal*&
_class
loc:@mlp_init/hidden_1/w*
T0* 
_output_shapes
:
��*
use_locking(*
validate_shape(
�
mlp_init/hidden_1/w/readIdentitymlp_init/hidden_1/w*&
_class
loc:@mlp_init/hidden_1/w*
T0* 
_output_shapes
:
��

mlp_init/hidden_1/bVariable*
dtype0*
_output_shapes	
:�*
	container *
shared_name *
shape:�
�
6mlp_init/hidden_1/b/Initializer/truncated_normal/shapeConst*&
_class
loc:@mlp_init/hidden_1/b*
dtype0*
valueB:�*
_output_shapes
:
�
5mlp_init/hidden_1/b/Initializer/truncated_normal/meanConst*&
_class
loc:@mlp_init/hidden_1/b*
dtype0*
valueB
 *    *
_output_shapes
: 
�
7mlp_init/hidden_1/b/Initializer/truncated_normal/stddevConst*&
_class
loc:@mlp_init/hidden_1/b*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
@mlp_init/hidden_1/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_1/b/Initializer/truncated_normal/shape*&
_class
loc:@mlp_init/hidden_1/b*
dtype0*

seed *
seed2 *
T0*
_output_shapes	
:�
�
4mlp_init/hidden_1/b/Initializer/truncated_normal/mulMul@mlp_init/hidden_1/b/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_1/b/Initializer/truncated_normal/stddev*&
_class
loc:@mlp_init/hidden_1/b*
T0*
_output_shapes	
:�
�
0mlp_init/hidden_1/b/Initializer/truncated_normalAdd4mlp_init/hidden_1/b/Initializer/truncated_normal/mul5mlp_init/hidden_1/b/Initializer/truncated_normal/mean*&
_class
loc:@mlp_init/hidden_1/b*
T0*
_output_shapes	
:�
�
mlp_init/hidden_1/b/AssignAssignmlp_init/hidden_1/b0mlp_init/hidden_1/b/Initializer/truncated_normal*&
_class
loc:@mlp_init/hidden_1/b*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(
�
mlp_init/hidden_1/b/readIdentitymlp_init/hidden_1/b*&
_class
loc:@mlp_init/hidden_1/b*
T0*
_output_shapes	
:�
�
mlp_init/hidden_1/MatMulMatMulPlaceholdermlp_init/hidden_1/w/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
�
mlp_init/hidden_1/addAddmlp_init/hidden_1/MatMulmlp_init/hidden_1/b/read*
T0*(
_output_shapes
:����������
h
mlp_init/hidden_1/ReluRelumlp_init/hidden_1/add*
T0*(
_output_shapes
:����������
�
mlp_init/hidden_2/wVariable*
dtype0* 
_output_shapes
:
��*
	container *
shared_name *
shape:
��
�
6mlp_init/hidden_2/w/Initializer/truncated_normal/shapeConst*&
_class
loc:@mlp_init/hidden_2/w*
dtype0*
valueB"      *
_output_shapes
:
�
5mlp_init/hidden_2/w/Initializer/truncated_normal/meanConst*&
_class
loc:@mlp_init/hidden_2/w*
dtype0*
valueB
 *    *
_output_shapes
: 
�
7mlp_init/hidden_2/w/Initializer/truncated_normal/stddevConst*&
_class
loc:@mlp_init/hidden_2/w*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
@mlp_init/hidden_2/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_2/w/Initializer/truncated_normal/shape*&
_class
loc:@mlp_init/hidden_2/w*
dtype0*

seed *
seed2 *
T0* 
_output_shapes
:
��
�
4mlp_init/hidden_2/w/Initializer/truncated_normal/mulMul@mlp_init/hidden_2/w/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_2/w/Initializer/truncated_normal/stddev*&
_class
loc:@mlp_init/hidden_2/w*
T0* 
_output_shapes
:
��
�
0mlp_init/hidden_2/w/Initializer/truncated_normalAdd4mlp_init/hidden_2/w/Initializer/truncated_normal/mul5mlp_init/hidden_2/w/Initializer/truncated_normal/mean*&
_class
loc:@mlp_init/hidden_2/w*
T0* 
_output_shapes
:
��
�
mlp_init/hidden_2/w/AssignAssignmlp_init/hidden_2/w0mlp_init/hidden_2/w/Initializer/truncated_normal*&
_class
loc:@mlp_init/hidden_2/w*
T0* 
_output_shapes
:
��*
use_locking(*
validate_shape(
�
mlp_init/hidden_2/w/readIdentitymlp_init/hidden_2/w*&
_class
loc:@mlp_init/hidden_2/w*
T0* 
_output_shapes
:
��

mlp_init/hidden_2/bVariable*
dtype0*
_output_shapes	
:�*
	container *
shared_name *
shape:�
�
6mlp_init/hidden_2/b/Initializer/truncated_normal/shapeConst*&
_class
loc:@mlp_init/hidden_2/b*
dtype0*
valueB:�*
_output_shapes
:
�
5mlp_init/hidden_2/b/Initializer/truncated_normal/meanConst*&
_class
loc:@mlp_init/hidden_2/b*
dtype0*
valueB
 *    *
_output_shapes
: 
�
7mlp_init/hidden_2/b/Initializer/truncated_normal/stddevConst*&
_class
loc:@mlp_init/hidden_2/b*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
@mlp_init/hidden_2/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_2/b/Initializer/truncated_normal/shape*&
_class
loc:@mlp_init/hidden_2/b*
dtype0*

seed *
seed2 *
T0*
_output_shapes	
:�
�
4mlp_init/hidden_2/b/Initializer/truncated_normal/mulMul@mlp_init/hidden_2/b/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_2/b/Initializer/truncated_normal/stddev*&
_class
loc:@mlp_init/hidden_2/b*
T0*
_output_shapes	
:�
�
0mlp_init/hidden_2/b/Initializer/truncated_normalAdd4mlp_init/hidden_2/b/Initializer/truncated_normal/mul5mlp_init/hidden_2/b/Initializer/truncated_normal/mean*&
_class
loc:@mlp_init/hidden_2/b*
T0*
_output_shapes	
:�
�
mlp_init/hidden_2/b/AssignAssignmlp_init/hidden_2/b0mlp_init/hidden_2/b/Initializer/truncated_normal*&
_class
loc:@mlp_init/hidden_2/b*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(
�
mlp_init/hidden_2/b/readIdentitymlp_init/hidden_2/b*&
_class
loc:@mlp_init/hidden_2/b*
T0*
_output_shapes	
:�
�
mlp_init/hidden_2/MatMulMatMulmlp_init/hidden_1/Relumlp_init/hidden_2/w/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
�
mlp_init/hidden_2/addAddmlp_init/hidden_2/MatMulmlp_init/hidden_2/b/read*
T0*(
_output_shapes
:����������
h
mlp_init/hidden_2/ReluRelumlp_init/hidden_2/add*
T0*(
_output_shapes
:����������
�
mlp_init/output/wVariable*
dtype0*
_output_shapes
:	�
*
	container *
shared_name *
shape:	�

�
4mlp_init/output/w/Initializer/truncated_normal/shapeConst*$
_class
loc:@mlp_init/output/w*
dtype0*
valueB"   
   *
_output_shapes
:
�
3mlp_init/output/w/Initializer/truncated_normal/meanConst*$
_class
loc:@mlp_init/output/w*
dtype0*
valueB
 *    *
_output_shapes
: 
�
5mlp_init/output/w/Initializer/truncated_normal/stddevConst*$
_class
loc:@mlp_init/output/w*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
>mlp_init/output/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4mlp_init/output/w/Initializer/truncated_normal/shape*$
_class
loc:@mlp_init/output/w*
dtype0*

seed *
seed2 *
T0*
_output_shapes
:	�

�
2mlp_init/output/w/Initializer/truncated_normal/mulMul>mlp_init/output/w/Initializer/truncated_normal/TruncatedNormal5mlp_init/output/w/Initializer/truncated_normal/stddev*$
_class
loc:@mlp_init/output/w*
T0*
_output_shapes
:	�

�
.mlp_init/output/w/Initializer/truncated_normalAdd2mlp_init/output/w/Initializer/truncated_normal/mul3mlp_init/output/w/Initializer/truncated_normal/mean*$
_class
loc:@mlp_init/output/w*
T0*
_output_shapes
:	�

�
mlp_init/output/w/AssignAssignmlp_init/output/w.mlp_init/output/w/Initializer/truncated_normal*$
_class
loc:@mlp_init/output/w*
T0*
_output_shapes
:	�
*
use_locking(*
validate_shape(
�
mlp_init/output/w/readIdentitymlp_init/output/w*$
_class
loc:@mlp_init/output/w*
T0*
_output_shapes
:	�

{
mlp_init/output/bVariable*
dtype0*
_output_shapes
:
*
	container *
shared_name *
shape:

�
4mlp_init/output/b/Initializer/truncated_normal/shapeConst*$
_class
loc:@mlp_init/output/b*
dtype0*
valueB:
*
_output_shapes
:
�
3mlp_init/output/b/Initializer/truncated_normal/meanConst*$
_class
loc:@mlp_init/output/b*
dtype0*
valueB
 *    *
_output_shapes
: 
�
5mlp_init/output/b/Initializer/truncated_normal/stddevConst*$
_class
loc:@mlp_init/output/b*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
>mlp_init/output/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4mlp_init/output/b/Initializer/truncated_normal/shape*$
_class
loc:@mlp_init/output/b*
dtype0*

seed *
seed2 *
T0*
_output_shapes
:

�
2mlp_init/output/b/Initializer/truncated_normal/mulMul>mlp_init/output/b/Initializer/truncated_normal/TruncatedNormal5mlp_init/output/b/Initializer/truncated_normal/stddev*$
_class
loc:@mlp_init/output/b*
T0*
_output_shapes
:

�
.mlp_init/output/b/Initializer/truncated_normalAdd2mlp_init/output/b/Initializer/truncated_normal/mul3mlp_init/output/b/Initializer/truncated_normal/mean*$
_class
loc:@mlp_init/output/b*
T0*
_output_shapes
:

�
mlp_init/output/b/AssignAssignmlp_init/output/b.mlp_init/output/b/Initializer/truncated_normal*$
_class
loc:@mlp_init/output/b*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(
�
mlp_init/output/b/readIdentitymlp_init/output/b*$
_class
loc:@mlp_init/output/b*
T0*
_output_shapes
:

�
mlp_init/output/MatMulMatMulmlp_init/hidden_2/Relumlp_init/output/w/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������

|
mlp_init/output/addAddmlp_init/output/MatMulmlp_init/output/b/read*
T0*'
_output_shapes
:���������

c
mlp_init/output/ReluRelumlp_init/output/add*
T0*'
_output_shapes
:���������

O
mlp_init/RankConst*
dtype0*
value	B :*
_output_shapes
: 
b
mlp_init/ShapeShapemlp_init/output/Relu*
_output_shapes
:*
T0*
out_type0
Q
mlp_init/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
d
mlp_init/Shape_1Shapemlp_init/output/Relu*
_output_shapes
:*
T0*
out_type0
P
mlp_init/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
U
mlp_init/SubSubmlp_init/Rank_1mlp_init/Sub/y*
T0*
_output_shapes
: 
d
mlp_init/Slice/beginPackmlp_init/Sub*
T0*

axis *
N*
_output_shapes
:
]
mlp_init/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
mlp_init/SliceSlicemlp_init/Shape_1mlp_init/Slice/beginmlp_init/Slice/size*
Index0*
T0*
_output_shapes
:
\
mlp_init/concat/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
k
mlp_init/concat/values_0Const*
dtype0*
valueB:
���������*
_output_shapes
:
�
mlp_init/concatConcatmlp_init/concat/concat_dimmlp_init/concat/values_0mlp_init/Slice*
T0*
N*
_output_shapes
:
�
mlp_init/ReshapeReshapemlp_init/output/Relumlp_init/concat*0
_output_shapes
:������������������*
T0*
Tshape0
Q
mlp_init/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
]
mlp_init/Shape_2ShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
R
mlp_init/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
Y
mlp_init/Sub_1Submlp_init/Rank_2mlp_init/Sub_1/y*
T0*
_output_shapes
: 
h
mlp_init/Slice_1/beginPackmlp_init/Sub_1*
T0*

axis *
N*
_output_shapes
:
_
mlp_init/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
mlp_init/Slice_1Slicemlp_init/Shape_2mlp_init/Slice_1/beginmlp_init/Slice_1/size*
Index0*
T0*
_output_shapes
:
^
mlp_init/concat_1/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
m
mlp_init/concat_1/values_0Const*
dtype0*
valueB:
���������*
_output_shapes
:
�
mlp_init/concat_1Concatmlp_init/concat_1/concat_dimmlp_init/concat_1/values_0mlp_init/Slice_1*
T0*
N*
_output_shapes
:
�
mlp_init/Reshape_1ReshapePlaceholder_1mlp_init/concat_1*0
_output_shapes
:������������������*
T0*
Tshape0
�
&mlp_init/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsmlp_init/Reshapemlp_init/Reshape_1*
T0*?
_output_shapes-
+:���������:������������������
R
mlp_init/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 
W
mlp_init/Sub_2Submlp_init/Rankmlp_init/Sub_2/y*
T0*
_output_shapes
: 
`
mlp_init/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:
g
mlp_init/Slice_2/sizePackmlp_init/Sub_2*
T0*

axis *
N*
_output_shapes
:
�
mlp_init/Slice_2Slicemlp_init/Shapemlp_init/Slice_2/beginmlp_init/Slice_2/size*
Index0*
T0*#
_output_shapes
:���������
�
mlp_init/Reshape_2Reshape&mlp_init/SoftmaxCrossEntropyWithLogitsmlp_init/Slice_2*#
_output_shapes
:���������*
T0*
Tshape0
X
mlp_init/ConstConst*
dtype0*
valueB: *
_output_shapes
:
w
mlp_init/MeanMeanmlp_init/Reshape_2mlp_init/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
mlp_init/initNoOp^mlp_init/hidden_1/w/Assign^mlp_init/hidden_1/b/Assign^mlp_init/hidden_2/w/Assign^mlp_init/hidden_2/b/Assign^mlp_init/output/w/Assign^mlp_init/output/b/Assign
f
mlp_inter/PlaceholderPlaceholder*
dtype0*
_output_shapes

:*
shape
:
T
mlp_inter/sub/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
e
mlp_inter/subSubmlp_inter/sub/xmlp_inter/Placeholder*
T0*
_output_shapes

:
s
mlp_inter/mulMul#preparing_variables/hidden_1/w/readmlp_inter/sub*
T0* 
_output_shapes
:
��
r
mlp_inter/mul_1Mulmlp_init/hidden_1/w/readmlp_inter/Placeholder*
T0* 
_output_shapes
:
��
_
mlp_inter/addAddmlp_inter/mulmlp_inter/mul_1*
T0* 
_output_shapes
:
��
V
mlp_inter/sub_1/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
i
mlp_inter/sub_1Submlp_inter/sub_1/xmlp_inter/Placeholder*
T0*
_output_shapes

:
v
mlp_inter/mul_2Mul#preparing_variables/hidden_1/b/readmlp_inter/sub_1*
T0*
_output_shapes
:	�
q
mlp_inter/mul_3Mulmlp_init/hidden_1/b/readmlp_inter/Placeholder*
T0*
_output_shapes
:	�
b
mlp_inter/add_1Addmlp_inter/mul_2mlp_inter/mul_3*
T0*
_output_shapes
:	�
V
mlp_inter/sub_2/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
i
mlp_inter/sub_2Submlp_inter/sub_2/xmlp_inter/Placeholder*
T0*
_output_shapes

:
w
mlp_inter/mul_4Mul#preparing_variables/hidden_2/w/readmlp_inter/sub_2*
T0* 
_output_shapes
:
��
r
mlp_inter/mul_5Mulmlp_init/hidden_2/w/readmlp_inter/Placeholder*
T0* 
_output_shapes
:
��
c
mlp_inter/add_2Addmlp_inter/mul_4mlp_inter/mul_5*
T0* 
_output_shapes
:
��
V
mlp_inter/sub_3/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
i
mlp_inter/sub_3Submlp_inter/sub_3/xmlp_inter/Placeholder*
T0*
_output_shapes

:
v
mlp_inter/mul_6Mul#preparing_variables/hidden_2/b/readmlp_inter/sub_3*
T0*
_output_shapes
:	�
q
mlp_inter/mul_7Mulmlp_init/hidden_2/b/readmlp_inter/Placeholder*
T0*
_output_shapes
:	�
b
mlp_inter/add_3Addmlp_inter/mul_6mlp_inter/mul_7*
T0*
_output_shapes
:	�
V
mlp_inter/sub_4/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
i
mlp_inter/sub_4Submlp_inter/sub_4/xmlp_inter/Placeholder*
T0*
_output_shapes

:
t
mlp_inter/mul_8Mul!preparing_variables/output/w/readmlp_inter/sub_4*
T0*
_output_shapes
:	�

o
mlp_inter/mul_9Mulmlp_init/output/w/readmlp_inter/Placeholder*
T0*
_output_shapes
:	�

b
mlp_inter/add_4Addmlp_inter/mul_8mlp_inter/mul_9*
T0*
_output_shapes
:	�

V
mlp_inter/sub_5/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
i
mlp_inter/sub_5Submlp_inter/sub_5/xmlp_inter/Placeholder*
T0*
_output_shapes

:
t
mlp_inter/mul_10Mul!preparing_variables/output/b/readmlp_inter/sub_5*
T0*
_output_shapes

:

o
mlp_inter/mul_11Mulmlp_init/output/b/readmlp_inter/Placeholder*
T0*
_output_shapes

:

c
mlp_inter/add_5Addmlp_inter/mul_10mlp_inter/mul_11*
T0*
_output_shapes

:

�
mlp_inter/MatMulMatMulPlaceholdermlp_inter/add*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
l
mlp_inter/add_6Addmlp_inter/MatMulmlp_inter/add_1*
T0*(
_output_shapes
:����������
Z
mlp_inter/ReluRelumlp_inter/add_6*
T0*(
_output_shapes
:����������
�
mlp_inter/MatMul_1MatMulmlp_inter/Relumlp_inter/add_2*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
n
mlp_inter/add_7Addmlp_inter/MatMul_1mlp_inter/add_3*
T0*(
_output_shapes
:����������
\
mlp_inter/Relu_1Relumlp_inter/add_7*
T0*(
_output_shapes
:����������
�
mlp_inter/MatMul_2MatMulmlp_inter/Relu_1mlp_inter/add_4*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������

m
mlp_inter/add_8Addmlp_inter/MatMul_2mlp_inter/add_5*
T0*'
_output_shapes
:���������

[
mlp_inter/Relu_2Relumlp_inter/add_8*
T0*'
_output_shapes
:���������

P
mlp_inter/RankConst*
dtype0*
value	B :*
_output_shapes
: 
\
mlp_inter/ShapeShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
R
mlp_inter/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
^
mlp_inter/Shape_1ShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
Q
mlp_inter/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
X
mlp_inter/SubSubmlp_inter/Rank_1mlp_inter/Sub/y*
T0*
_output_shapes
: 
f
mlp_inter/Slice/beginPackmlp_inter/Sub*
T0*

axis *
N*
_output_shapes
:
^
mlp_inter/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
mlp_inter/SliceSlicemlp_inter/Shape_1mlp_inter/Slice/beginmlp_inter/Slice/size*
Index0*
T0*
_output_shapes
:
]
mlp_inter/concat/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
l
mlp_inter/concat/values_0Const*
dtype0*
valueB:
���������*
_output_shapes
:
�
mlp_inter/concatConcatmlp_inter/concat/concat_dimmlp_inter/concat/values_0mlp_inter/Slice*
T0*
N*
_output_shapes
:
�
mlp_inter/ReshapeReshapePlaceholder_1mlp_inter/concat*0
_output_shapes
:������������������*
T0*
Tshape0
R
mlp_inter/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
a
mlp_inter/Shape_2Shapemlp_inter/Relu_2*
_output_shapes
:*
T0*
out_type0
S
mlp_inter/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
\
mlp_inter/Sub_1Submlp_inter/Rank_2mlp_inter/Sub_1/y*
T0*
_output_shapes
: 
j
mlp_inter/Slice_1/beginPackmlp_inter/Sub_1*
T0*

axis *
N*
_output_shapes
:
`
mlp_inter/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
mlp_inter/Slice_1Slicemlp_inter/Shape_2mlp_inter/Slice_1/beginmlp_inter/Slice_1/size*
Index0*
T0*
_output_shapes
:
_
mlp_inter/concat_1/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
n
mlp_inter/concat_1/values_0Const*
dtype0*
valueB:
���������*
_output_shapes
:
�
mlp_inter/concat_1Concatmlp_inter/concat_1/concat_dimmlp_inter/concat_1/values_0mlp_inter/Slice_1*
T0*
N*
_output_shapes
:
�
mlp_inter/Reshape_1Reshapemlp_inter/Relu_2mlp_inter/concat_1*0
_output_shapes
:������������������*
T0*
Tshape0
�
'mlp_inter/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsmlp_inter/Reshapemlp_inter/Reshape_1*
T0*?
_output_shapes-
+:���������:������������������
S
mlp_inter/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 
Z
mlp_inter/Sub_2Submlp_inter/Rankmlp_inter/Sub_2/y*
T0*
_output_shapes
: 
a
mlp_inter/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:
i
mlp_inter/Slice_2/sizePackmlp_inter/Sub_2*
T0*

axis *
N*
_output_shapes
:
�
mlp_inter/Slice_2Slicemlp_inter/Shapemlp_inter/Slice_2/beginmlp_inter/Slice_2/size*
Index0*
T0*#
_output_shapes
:���������
�
mlp_inter/Reshape_2Reshape'mlp_inter/SoftmaxCrossEntropyWithLogitsmlp_inter/Slice_2*#
_output_shapes
:���������*
T0*
Tshape0
Y
mlp_inter/ConstConst*
dtype0*
valueB: *
_output_shapes
:
z
mlp_inter/MeanMeanmlp_inter/Reshape_2mlp_inter/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
n
mlp_inter/ScalarSummary/tagsConst*
dtype0*"
valueB Binterpolated_cost*
_output_shapes
: 
w
mlp_inter/ScalarSummaryScalarSummarymlp_inter/ScalarSummary/tagsmlp_inter/Mean*
T0*
_output_shapes
: "S��*?     ��A�	+�B�7�AJ��
��
9
Add
x"T
y"T
z"T"
Ttype:
2	
�
ApplyGradientDescent
var"T�

alpha"T

delta"T
out"T�"
Ttype:
2	"
use_lockingbool( 
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
p
	AssignAdd
ref"T�

value"T

output_ref"T�"
Ttype:
2	"
use_lockingbool( 
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
N
Concat

concat_dim
values"T*N
output"T"
Nint(0"	
Ttype
8
Const
output"dtype"
valuetensor"
dtypetype
9
Div
x"T
y"T
z"T"
Ttype:
2	
A
Equal
x"T
y"T
z
"
Ttype:
2	
�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
.
Identity

input"T
output"T"	
Ttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
<
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
i
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
q
Variable
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype*0.12.12v0.12.0-10-g4d924e7-dirty��
^
PlaceholderPlaceholder*
dtype0*
shape: *(
_output_shapes
:����������
_
Placeholder_1Placeholder*
dtype0*
shape: *'
_output_shapes
:���������

o
-preparing_variables/global_step/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
�
preparing_variables/global_stepVariable*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
�
&preparing_variables/global_step/AssignAssignpreparing_variables/global_step-preparing_variables/global_step/initial_value*2
_class(
&$loc:@preparing_variables/global_step*
use_locking(*
validate_shape(*
T0*
_output_shapes
: 
�
$preparing_variables/global_step/readIdentitypreparing_variables/global_step*2
_class(
&$loc:@preparing_variables/global_step*
T0*
_output_shapes
: 
�
preparing_variables/hidden_1/wVariable*
dtype0*
shape:
��*
shared_name *
	container * 
_output_shapes
:
��
�
Apreparing_variables/hidden_1/w/Initializer/truncated_normal/shapeConst*1
_class'
%#loc:@preparing_variables/hidden_1/w*
dtype0*
valueB"     *
_output_shapes
:
�
@preparing_variables/hidden_1/w/Initializer/truncated_normal/meanConst*1
_class'
%#loc:@preparing_variables/hidden_1/w*
dtype0*
valueB
 *    *
_output_shapes
: 
�
Bpreparing_variables/hidden_1/w/Initializer/truncated_normal/stddevConst*1
_class'
%#loc:@preparing_variables/hidden_1/w*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
Kpreparing_variables/hidden_1/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_1/w/Initializer/truncated_normal/shape*1
_class'
%#loc:@preparing_variables/hidden_1/w*
dtype0*

seed *
seed2 *
T0* 
_output_shapes
:
��
�
?preparing_variables/hidden_1/w/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_1/w/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_1/w/Initializer/truncated_normal/stddev*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0* 
_output_shapes
:
��
�
;preparing_variables/hidden_1/w/Initializer/truncated_normalAdd?preparing_variables/hidden_1/w/Initializer/truncated_normal/mul@preparing_variables/hidden_1/w/Initializer/truncated_normal/mean*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0* 
_output_shapes
:
��
�
%preparing_variables/hidden_1/w/AssignAssignpreparing_variables/hidden_1/w;preparing_variables/hidden_1/w/Initializer/truncated_normal*1
_class'
%#loc:@preparing_variables/hidden_1/w*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
��
�
#preparing_variables/hidden_1/w/readIdentitypreparing_variables/hidden_1/w*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0* 
_output_shapes
:
��
�
preparing_variables/hidden_1/bVariable*
dtype0*
shape:�*
shared_name *
	container *
_output_shapes	
:�
�
Apreparing_variables/hidden_1/b/Initializer/truncated_normal/shapeConst*1
_class'
%#loc:@preparing_variables/hidden_1/b*
dtype0*
valueB:�*
_output_shapes
:
�
@preparing_variables/hidden_1/b/Initializer/truncated_normal/meanConst*1
_class'
%#loc:@preparing_variables/hidden_1/b*
dtype0*
valueB
 *    *
_output_shapes
: 
�
Bpreparing_variables/hidden_1/b/Initializer/truncated_normal/stddevConst*1
_class'
%#loc:@preparing_variables/hidden_1/b*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
Kpreparing_variables/hidden_1/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_1/b/Initializer/truncated_normal/shape*1
_class'
%#loc:@preparing_variables/hidden_1/b*
dtype0*

seed *
seed2 *
T0*
_output_shapes	
:�
�
?preparing_variables/hidden_1/b/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_1/b/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_1/b/Initializer/truncated_normal/stddev*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
_output_shapes	
:�
�
;preparing_variables/hidden_1/b/Initializer/truncated_normalAdd?preparing_variables/hidden_1/b/Initializer/truncated_normal/mul@preparing_variables/hidden_1/b/Initializer/truncated_normal/mean*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
_output_shapes	
:�
�
%preparing_variables/hidden_1/b/AssignAssignpreparing_variables/hidden_1/b;preparing_variables/hidden_1/b/Initializer/truncated_normal*1
_class'
%#loc:@preparing_variables/hidden_1/b*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�
�
#preparing_variables/hidden_1/b/readIdentitypreparing_variables/hidden_1/b*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
_output_shapes	
:�
�
#preparing_variables/hidden_1/MatMulMatMulPlaceholder#preparing_variables/hidden_1/w/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
�
 preparing_variables/hidden_1/addAdd#preparing_variables/hidden_1/MatMul#preparing_variables/hidden_1/b/read*
T0*(
_output_shapes
:����������
~
!preparing_variables/hidden_1/ReluRelu preparing_variables/hidden_1/add*
T0*(
_output_shapes
:����������
�
preparing_variables/hidden_2/wVariable*
dtype0*
shape:
��*
shared_name *
	container * 
_output_shapes
:
��
�
Apreparing_variables/hidden_2/w/Initializer/truncated_normal/shapeConst*1
_class'
%#loc:@preparing_variables/hidden_2/w*
dtype0*
valueB"      *
_output_shapes
:
�
@preparing_variables/hidden_2/w/Initializer/truncated_normal/meanConst*1
_class'
%#loc:@preparing_variables/hidden_2/w*
dtype0*
valueB
 *    *
_output_shapes
: 
�
Bpreparing_variables/hidden_2/w/Initializer/truncated_normal/stddevConst*1
_class'
%#loc:@preparing_variables/hidden_2/w*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
Kpreparing_variables/hidden_2/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_2/w/Initializer/truncated_normal/shape*1
_class'
%#loc:@preparing_variables/hidden_2/w*
dtype0*

seed *
seed2 *
T0* 
_output_shapes
:
��
�
?preparing_variables/hidden_2/w/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_2/w/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_2/w/Initializer/truncated_normal/stddev*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0* 
_output_shapes
:
��
�
;preparing_variables/hidden_2/w/Initializer/truncated_normalAdd?preparing_variables/hidden_2/w/Initializer/truncated_normal/mul@preparing_variables/hidden_2/w/Initializer/truncated_normal/mean*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0* 
_output_shapes
:
��
�
%preparing_variables/hidden_2/w/AssignAssignpreparing_variables/hidden_2/w;preparing_variables/hidden_2/w/Initializer/truncated_normal*1
_class'
%#loc:@preparing_variables/hidden_2/w*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
��
�
#preparing_variables/hidden_2/w/readIdentitypreparing_variables/hidden_2/w*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0* 
_output_shapes
:
��
�
preparing_variables/hidden_2/bVariable*
dtype0*
shape:�*
shared_name *
	container *
_output_shapes	
:�
�
Apreparing_variables/hidden_2/b/Initializer/truncated_normal/shapeConst*1
_class'
%#loc:@preparing_variables/hidden_2/b*
dtype0*
valueB:�*
_output_shapes
:
�
@preparing_variables/hidden_2/b/Initializer/truncated_normal/meanConst*1
_class'
%#loc:@preparing_variables/hidden_2/b*
dtype0*
valueB
 *    *
_output_shapes
: 
�
Bpreparing_variables/hidden_2/b/Initializer/truncated_normal/stddevConst*1
_class'
%#loc:@preparing_variables/hidden_2/b*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
Kpreparing_variables/hidden_2/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_2/b/Initializer/truncated_normal/shape*1
_class'
%#loc:@preparing_variables/hidden_2/b*
dtype0*

seed *
seed2 *
T0*
_output_shapes	
:�
�
?preparing_variables/hidden_2/b/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_2/b/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_2/b/Initializer/truncated_normal/stddev*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
_output_shapes	
:�
�
;preparing_variables/hidden_2/b/Initializer/truncated_normalAdd?preparing_variables/hidden_2/b/Initializer/truncated_normal/mul@preparing_variables/hidden_2/b/Initializer/truncated_normal/mean*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
_output_shapes	
:�
�
%preparing_variables/hidden_2/b/AssignAssignpreparing_variables/hidden_2/b;preparing_variables/hidden_2/b/Initializer/truncated_normal*1
_class'
%#loc:@preparing_variables/hidden_2/b*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�
�
#preparing_variables/hidden_2/b/readIdentitypreparing_variables/hidden_2/b*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
_output_shapes	
:�
�
#preparing_variables/hidden_2/MatMulMatMul!preparing_variables/hidden_1/Relu#preparing_variables/hidden_2/w/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
�
 preparing_variables/hidden_2/addAdd#preparing_variables/hidden_2/MatMul#preparing_variables/hidden_2/b/read*
T0*(
_output_shapes
:����������
~
!preparing_variables/hidden_2/ReluRelu preparing_variables/hidden_2/add*
T0*(
_output_shapes
:����������
�
preparing_variables/output/wVariable*
dtype0*
shape:	�
*
shared_name *
	container *
_output_shapes
:	�

�
?preparing_variables/output/w/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@preparing_variables/output/w*
dtype0*
valueB"   
   *
_output_shapes
:
�
>preparing_variables/output/w/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@preparing_variables/output/w*
dtype0*
valueB
 *    *
_output_shapes
: 
�
@preparing_variables/output/w/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@preparing_variables/output/w*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
Ipreparing_variables/output/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?preparing_variables/output/w/Initializer/truncated_normal/shape*/
_class%
#!loc:@preparing_variables/output/w*
dtype0*

seed *
seed2 *
T0*
_output_shapes
:	�

�
=preparing_variables/output/w/Initializer/truncated_normal/mulMulIpreparing_variables/output/w/Initializer/truncated_normal/TruncatedNormal@preparing_variables/output/w/Initializer/truncated_normal/stddev*/
_class%
#!loc:@preparing_variables/output/w*
T0*
_output_shapes
:	�

�
9preparing_variables/output/w/Initializer/truncated_normalAdd=preparing_variables/output/w/Initializer/truncated_normal/mul>preparing_variables/output/w/Initializer/truncated_normal/mean*/
_class%
#!loc:@preparing_variables/output/w*
T0*
_output_shapes
:	�

�
#preparing_variables/output/w/AssignAssignpreparing_variables/output/w9preparing_variables/output/w/Initializer/truncated_normal*/
_class%
#!loc:@preparing_variables/output/w*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�

�
!preparing_variables/output/w/readIdentitypreparing_variables/output/w*/
_class%
#!loc:@preparing_variables/output/w*
T0*
_output_shapes
:	�

�
preparing_variables/output/bVariable*
dtype0*
shape:
*
shared_name *
	container *
_output_shapes
:

�
?preparing_variables/output/b/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@preparing_variables/output/b*
dtype0*
valueB:
*
_output_shapes
:
�
>preparing_variables/output/b/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@preparing_variables/output/b*
dtype0*
valueB
 *    *
_output_shapes
: 
�
@preparing_variables/output/b/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@preparing_variables/output/b*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
Ipreparing_variables/output/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?preparing_variables/output/b/Initializer/truncated_normal/shape*/
_class%
#!loc:@preparing_variables/output/b*
dtype0*

seed *
seed2 *
T0*
_output_shapes
:

�
=preparing_variables/output/b/Initializer/truncated_normal/mulMulIpreparing_variables/output/b/Initializer/truncated_normal/TruncatedNormal@preparing_variables/output/b/Initializer/truncated_normal/stddev*/
_class%
#!loc:@preparing_variables/output/b*
T0*
_output_shapes
:

�
9preparing_variables/output/b/Initializer/truncated_normalAdd=preparing_variables/output/b/Initializer/truncated_normal/mul>preparing_variables/output/b/Initializer/truncated_normal/mean*/
_class%
#!loc:@preparing_variables/output/b*
T0*
_output_shapes
:

�
#preparing_variables/output/b/AssignAssignpreparing_variables/output/b9preparing_variables/output/b/Initializer/truncated_normal*/
_class%
#!loc:@preparing_variables/output/b*
use_locking(*
validate_shape(*
T0*
_output_shapes
:

�
!preparing_variables/output/b/readIdentitypreparing_variables/output/b*/
_class%
#!loc:@preparing_variables/output/b*
T0*
_output_shapes
:

�
!preparing_variables/output/MatMulMatMul!preparing_variables/hidden_2/Relu!preparing_variables/output/w/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������

�
preparing_variables/output/addAdd!preparing_variables/output/MatMul!preparing_variables/output/b/read*
T0*'
_output_shapes
:���������

y
preparing_variables/output/ReluRelupreparing_variables/output/add*
T0*'
_output_shapes
:���������

Z
preparing_variables/RankConst*
dtype0*
value	B :*
_output_shapes
: 
x
preparing_variables/ShapeShapepreparing_variables/output/Relu*
out_type0*
T0*
_output_shapes
:
\
preparing_variables/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
z
preparing_variables/Shape_1Shapepreparing_variables/output/Relu*
out_type0*
T0*
_output_shapes
:
[
preparing_variables/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
v
preparing_variables/SubSubpreparing_variables/Rank_1preparing_variables/Sub/y*
T0*
_output_shapes
: 
z
preparing_variables/Slice/beginPackpreparing_variables/Sub*
T0*

axis *
N*
_output_shapes
:
h
preparing_variables/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
preparing_variables/SliceSlicepreparing_variables/Shape_1preparing_variables/Slice/beginpreparing_variables/Slice/size*
Index0*
T0*
_output_shapes
:
g
%preparing_variables/concat/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
v
#preparing_variables/concat/values_0Const*
dtype0*
valueB:
���������*
_output_shapes
:
�
preparing_variables/concatConcat%preparing_variables/concat/concat_dim#preparing_variables/concat/values_0preparing_variables/Slice*
T0*
N*
_output_shapes
:
�
preparing_variables/ReshapeReshapepreparing_variables/output/Relupreparing_variables/concat*
Tshape0*
T0*0
_output_shapes
:������������������
\
preparing_variables/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
h
preparing_variables/Shape_2ShapePlaceholder_1*
out_type0*
T0*
_output_shapes
:
]
preparing_variables/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
z
preparing_variables/Sub_1Subpreparing_variables/Rank_2preparing_variables/Sub_1/y*
T0*
_output_shapes
: 
~
!preparing_variables/Slice_1/beginPackpreparing_variables/Sub_1*
T0*

axis *
N*
_output_shapes
:
j
 preparing_variables/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
preparing_variables/Slice_1Slicepreparing_variables/Shape_2!preparing_variables/Slice_1/begin preparing_variables/Slice_1/size*
Index0*
T0*
_output_shapes
:
i
'preparing_variables/concat_1/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
x
%preparing_variables/concat_1/values_0Const*
dtype0*
valueB:
���������*
_output_shapes
:
�
preparing_variables/concat_1Concat'preparing_variables/concat_1/concat_dim%preparing_variables/concat_1/values_0preparing_variables/Slice_1*
T0*
N*
_output_shapes
:
�
preparing_variables/Reshape_1ReshapePlaceholder_1preparing_variables/concat_1*
Tshape0*
T0*0
_output_shapes
:������������������
�
1preparing_variables/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitspreparing_variables/Reshapepreparing_variables/Reshape_1*
T0*?
_output_shapes-
+:���������:������������������
]
preparing_variables/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 
x
preparing_variables/Sub_2Subpreparing_variables/Rankpreparing_variables/Sub_2/y*
T0*
_output_shapes
: 
k
!preparing_variables/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:
}
 preparing_variables/Slice_2/sizePackpreparing_variables/Sub_2*
T0*

axis *
N*
_output_shapes
:
�
preparing_variables/Slice_2Slicepreparing_variables/Shape!preparing_variables/Slice_2/begin preparing_variables/Slice_2/size*
Index0*
T0*#
_output_shapes
:���������
�
preparing_variables/Reshape_2Reshape1preparing_variables/SoftmaxCrossEntropyWithLogitspreparing_variables/Slice_2*
Tshape0*
T0*#
_output_shapes
:���������
c
preparing_variables/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
preparing_variables/MeanMeanpreparing_variables/Reshape_2preparing_variables/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
v
preparing_variables/loss/tagsConst*
dtype0*)
value B Bpreparing_variables/loss*
_output_shapes
: 
�
preparing_variables/lossScalarSummarypreparing_variables/loss/tagspreparing_variables/Mean*
T0*
_output_shapes
: 
f
#preparing_variables/gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
h
#preparing_variables/gradients/ConstConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
"preparing_variables/gradients/FillFill#preparing_variables/gradients/Shape#preparing_variables/gradients/Const*
T0*
_output_shapes
: 
�
Ipreparing_variables/gradients/preparing_variables/Mean_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/ReshapeReshape"preparing_variables/gradients/FillIpreparing_variables/gradients/preparing_variables/Mean_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
�
Apreparing_variables/gradients/preparing_variables/Mean_grad/ShapeShapepreparing_variables/Reshape_2*
out_type0*
T0*
_output_shapes
:
�
@preparing_variables/gradients/preparing_variables/Mean_grad/TileTileCpreparing_variables/gradients/preparing_variables/Mean_grad/ReshapeApreparing_variables/gradients/preparing_variables/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_1Shapepreparing_variables/Reshape_2*
out_type0*
T0*
_output_shapes
:
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 
�
Apreparing_variables/gradients/preparing_variables/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
@preparing_variables/gradients/preparing_variables/Mean_grad/ProdProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_1Apreparing_variables/gradients/preparing_variables/Mean_grad/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
�
Bpreparing_variables/gradients/preparing_variables/Mean_grad/Prod_1ProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_2Cpreparing_variables/gradients/preparing_variables/Mean_grad/Const_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
Epreparing_variables/gradients/preparing_variables/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/MaximumMaximumBpreparing_variables/gradients/preparing_variables/Mean_grad/Prod_1Epreparing_variables/gradients/preparing_variables/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
Dpreparing_variables/gradients/preparing_variables/Mean_grad/floordivDiv@preparing_variables/gradients/preparing_variables/Mean_grad/ProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Maximum*
T0*
_output_shapes
: 
�
@preparing_variables/gradients/preparing_variables/Mean_grad/CastCastDpreparing_variables/gradients/preparing_variables/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/truedivDiv@preparing_variables/gradients/preparing_variables/Mean_grad/Tile@preparing_variables/gradients/preparing_variables/Mean_grad/Cast*
T0*#
_output_shapes
:���������
�
Fpreparing_variables/gradients/preparing_variables/Reshape_2_grad/ShapeShape1preparing_variables/SoftmaxCrossEntropyWithLogits*
out_type0*
T0*
_output_shapes
:
�
Hpreparing_variables/gradients/preparing_variables/Reshape_2_grad/ReshapeReshapeCpreparing_variables/gradients/preparing_variables/Mean_grad/truedivFpreparing_variables/gradients/preparing_variables/Reshape_2_grad/Shape*
Tshape0*
T0*#
_output_shapes
:���������
�
(preparing_variables/gradients/zeros_like	ZerosLike3preparing_variables/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:������������������
�
cpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�
_preparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsHpreparing_variables/gradients/preparing_variables/Reshape_2_grad/Reshapecpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:���������
�
Xpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/mulMul_preparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims3preparing_variables/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:������������������
�
Dpreparing_variables/gradients/preparing_variables/Reshape_grad/ShapeShapepreparing_variables/output/Relu*
out_type0*
T0*
_output_shapes
:
�
Fpreparing_variables/gradients/preparing_variables/Reshape_grad/ReshapeReshapeXpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/mulDpreparing_variables/gradients/preparing_variables/Reshape_grad/Shape*
Tshape0*
T0*'
_output_shapes
:���������

�
Kpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradReluGradFpreparing_variables/gradients/preparing_variables/Reshape_grad/Reshapepreparing_variables/output/Relu*
T0*'
_output_shapes
:���������

�
Gpreparing_variables/gradients/preparing_variables/output/add_grad/ShapeShape!preparing_variables/output/MatMul*
out_type0*
T0*
_output_shapes
:
�
Ipreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1Const*
dtype0*
valueB:
*
_output_shapes
:
�
Wpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgsBroadcastGradientArgsGpreparing_variables/gradients/preparing_variables/output/add_grad/ShapeIpreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Epreparing_variables/gradients/preparing_variables/output/add_grad/SumSumKpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradWpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Ipreparing_variables/gradients/preparing_variables/output/add_grad/ReshapeReshapeEpreparing_variables/gradients/preparing_variables/output/add_grad/SumGpreparing_variables/gradients/preparing_variables/output/add_grad/Shape*
Tshape0*
T0*'
_output_shapes
:���������

�
Gpreparing_variables/gradients/preparing_variables/output/add_grad/Sum_1SumKpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Kpreparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1ReshapeGpreparing_variables/gradients/preparing_variables/output/add_grad/Sum_1Ipreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

�
Rpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_depsNoOpJ^preparing_variables/gradients/preparing_variables/output/add_grad/ReshapeL^preparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1
�
Zpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependencyIdentityIpreparing_variables/gradients/preparing_variables/output/add_grad/ReshapeS^preparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_deps*\
_classR
PNloc:@preparing_variables/gradients/preparing_variables/output/add_grad/Reshape*
T0*'
_output_shapes
:���������

�
\preparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency_1IdentityKpreparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1S^preparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_deps*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1*
T0*
_output_shapes
:

�
Kpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulMatMulZpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency!preparing_variables/output/w/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:����������
�
Mpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1MatMul!preparing_variables/hidden_2/ReluZpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	�

�
Upreparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulN^preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1
�
]preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulV^preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_deps*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul*
T0*(
_output_shapes
:����������
�
_preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1V^preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�

�
Mpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGradReluGrad]preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency!preparing_variables/hidden_2/Relu*
T0*(
_output_shapes
:����������
�
Ipreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ShapeShape#preparing_variables/hidden_2/MatMul*
out_type0*
T0*
_output_shapes
:
�
Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1Const*
dtype0*
valueB:�*
_output_shapes
:
�
Ypreparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgsBroadcastGradientArgsIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ShapeKpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Gpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/SumSumMpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeReshapeGpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/SumIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape*
Tshape0*
T0*(
_output_shapes
:����������
�
Ipreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Sum_1SumMpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGrad[preparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Mpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1ReshapeIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Sum_1Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes	
:�
�
Tpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeN^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1
�
\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeU^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_deps*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape*
T0*(
_output_shapes
:����������
�
^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1U^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1*
T0*
_output_shapes	
:�
�
Mpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulMatMul\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency#preparing_variables/hidden_2/w/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:����������
�
Opreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1MatMul!preparing_variables/hidden_1/Relu\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
��
�
Wpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_depsNoOpN^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulP^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1
�
_preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependencyIdentityMpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulX^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul*
T0*(
_output_shapes
:����������
�
apreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency_1IdentityOpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1X^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_deps*b
_classX
VTloc:@preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
�
Mpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGradReluGrad_preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency!preparing_variables/hidden_1/Relu*
T0*(
_output_shapes
:����������
�
Ipreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ShapeShape#preparing_variables/hidden_1/MatMul*
out_type0*
T0*
_output_shapes
:
�
Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1Const*
dtype0*
valueB:�*
_output_shapes
:
�
Ypreparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgsBroadcastGradientArgsIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ShapeKpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Gpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/SumSumMpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeReshapeGpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/SumIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape*
Tshape0*
T0*(
_output_shapes
:����������
�
Ipreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Sum_1SumMpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGrad[preparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
Mpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1ReshapeIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Sum_1Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes	
:�
�
Tpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeN^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1
�
\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeU^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_deps*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape*
T0*(
_output_shapes
:����������
�
^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1U^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1*
T0*
_output_shapes	
:�
�
Mpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulMatMul\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency#preparing_variables/hidden_1/w/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:����������
�
Opreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1MatMulPlaceholder\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
��
�
Wpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_depsNoOpN^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulP^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1
�
_preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependencyIdentityMpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulX^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul*
T0*(
_output_shapes
:����������
�
apreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependency_1IdentityOpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1X^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_deps*b
_classX
VTloc:@preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
v
1preparing_variables/GradientDescent/learning_rateConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_1/w1preparing_variables/GradientDescent/learning_rateapreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependency_1*1
_class'
%#loc:@preparing_variables/hidden_1/w*
use_locking( *
T0* 
_output_shapes
:
��
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_1/b1preparing_variables/GradientDescent/learning_rate^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency_1*1
_class'
%#loc:@preparing_variables/hidden_1/b*
use_locking( *
T0*
_output_shapes	
:�
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_2/w1preparing_variables/GradientDescent/learning_rateapreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency_1*1
_class'
%#loc:@preparing_variables/hidden_2/w*
use_locking( *
T0* 
_output_shapes
:
��
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_2/b1preparing_variables/GradientDescent/learning_rate^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency_1*1
_class'
%#loc:@preparing_variables/hidden_2/b*
use_locking( *
T0*
_output_shapes	
:�
�
\preparing_variables/GradientDescent/update_preparing_variables/output/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/output/w1preparing_variables/GradientDescent/learning_rate_preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency_1*/
_class%
#!loc:@preparing_variables/output/w*
use_locking( *
T0*
_output_shapes
:	�

�
\preparing_variables/GradientDescent/update_preparing_variables/output/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/output/b1preparing_variables/GradientDescent/learning_rate\preparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency_1*/
_class%
#!loc:@preparing_variables/output/b*
use_locking( *
T0*
_output_shapes
:

�
*preparing_variables/GradientDescent/updateNoOp_^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/w/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/b/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/w/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/b/ApplyGradientDescent]^preparing_variables/GradientDescent/update_preparing_variables/output/w/ApplyGradientDescent]^preparing_variables/GradientDescent/update_preparing_variables/output/b/ApplyGradientDescent
�
)preparing_variables/GradientDescent/valueConst+^preparing_variables/GradientDescent/update*2
_class(
&$loc:@preparing_variables/global_step*
dtype0*
value	B :*
_output_shapes
: 
�
#preparing_variables/GradientDescent	AssignAddpreparing_variables/global_step)preparing_variables/GradientDescent/value*2
_class(
&$loc:@preparing_variables/global_step*
use_locking( *
T0*
_output_shapes
: 
f
$preparing_variables/ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
�
preparing_variables/ArgMaxArgMaxPlaceholder_1$preparing_variables/ArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:���������
h
&preparing_variables/ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
�
preparing_variables/ArgMax_1ArgMaxpreparing_variables/output/Relu&preparing_variables/ArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:���������
�
preparing_variables/EqualEqualpreparing_variables/ArgMaxpreparing_variables/ArgMax_1*
T0	*#
_output_shapes
:���������
z
preparing_variables/Cast_1Castpreparing_variables/Equal*

SrcT0
*

DstT0*#
_output_shapes
:���������
e
preparing_variables/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
�
preparing_variables/Mean_1Meanpreparing_variables/Cast_1preparing_variables/Const_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
^
preparing_variables/sub/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
v
preparing_variables/subSubpreparing_variables/sub/xpreparing_variables/Mean_1*
T0*
_output_shapes
: 
�
)preparing_variables/validation_error/tagsConst*
dtype0*5
value,B* B$preparing_variables/validation_error*
_output_shapes
: 
�
$preparing_variables/validation_errorScalarSummary)preparing_variables/validation_error/tagspreparing_variables/sub*
T0*
_output_shapes
: 
�
preparing_variables/initNoOp'^preparing_variables/global_step/Assign&^preparing_variables/hidden_1/w/Assign&^preparing_variables/hidden_1/b/Assign&^preparing_variables/hidden_2/w/Assign&^preparing_variables/hidden_2/b/Assign$^preparing_variables/output/w/Assign$^preparing_variables/output/b/Assign
�
&preparing_variables/Merge/MergeSummaryMergeSummarypreparing_variables/loss$preparing_variables/validation_error*
N*
_output_shapes
: 
d
preparing_variables/save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�
,preparing_variables/save/SaveV2/tensor_namesConst*
dtype0*�
value�B�Bpreparing_variables/global_stepBpreparing_variables/hidden_1/bBpreparing_variables/hidden_1/wBpreparing_variables/hidden_2/bBpreparing_variables/hidden_2/wBpreparing_variables/output/bBpreparing_variables/output/w*
_output_shapes
:
�
0preparing_variables/save/SaveV2/shape_and_slicesConst*
dtype0*!
valueBB B B B B B B *
_output_shapes
:
�
preparing_variables/save/SaveV2SaveV2preparing_variables/save/Const,preparing_variables/save/SaveV2/tensor_names0preparing_variables/save/SaveV2/shape_and_slicespreparing_variables/global_steppreparing_variables/hidden_1/bpreparing_variables/hidden_1/wpreparing_variables/hidden_2/bpreparing_variables/hidden_2/wpreparing_variables/output/bpreparing_variables/output/w*
dtypes
	2
�
+preparing_variables/save/control_dependencyIdentitypreparing_variables/save/Const ^preparing_variables/save/SaveV2*1
_class'
%#loc:@preparing_variables/save/Const*
T0*
_output_shapes
: 
�
/preparing_variables/save/RestoreV2/tensor_namesConst*
dtype0*4
value+B)Bpreparing_variables/global_step*
_output_shapes
:
|
3preparing_variables/save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
"preparing_variables/save/RestoreV2	RestoreV2preparing_variables/save/Const/preparing_variables/save/RestoreV2/tensor_names3preparing_variables/save/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
preparing_variables/save/AssignAssignpreparing_variables/global_step"preparing_variables/save/RestoreV2*2
_class(
&$loc:@preparing_variables/global_step*
use_locking(*
validate_shape(*
T0*
_output_shapes
: 
�
1preparing_variables/save/RestoreV2_1/tensor_namesConst*
dtype0*3
value*B(Bpreparing_variables/hidden_1/b*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
$preparing_variables/save/RestoreV2_1	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_1/tensor_names5preparing_variables/save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
!preparing_variables/save/Assign_1Assignpreparing_variables/hidden_1/b$preparing_variables/save/RestoreV2_1*1
_class'
%#loc:@preparing_variables/hidden_1/b*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�
�
1preparing_variables/save/RestoreV2_2/tensor_namesConst*
dtype0*3
value*B(Bpreparing_variables/hidden_1/w*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
$preparing_variables/save/RestoreV2_2	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_2/tensor_names5preparing_variables/save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
!preparing_variables/save/Assign_2Assignpreparing_variables/hidden_1/w$preparing_variables/save/RestoreV2_2*1
_class'
%#loc:@preparing_variables/hidden_1/w*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
��
�
1preparing_variables/save/RestoreV2_3/tensor_namesConst*
dtype0*3
value*B(Bpreparing_variables/hidden_2/b*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
$preparing_variables/save/RestoreV2_3	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_3/tensor_names5preparing_variables/save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
!preparing_variables/save/Assign_3Assignpreparing_variables/hidden_2/b$preparing_variables/save/RestoreV2_3*1
_class'
%#loc:@preparing_variables/hidden_2/b*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�
�
1preparing_variables/save/RestoreV2_4/tensor_namesConst*
dtype0*3
value*B(Bpreparing_variables/hidden_2/w*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
$preparing_variables/save/RestoreV2_4	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_4/tensor_names5preparing_variables/save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
!preparing_variables/save/Assign_4Assignpreparing_variables/hidden_2/w$preparing_variables/save/RestoreV2_4*1
_class'
%#loc:@preparing_variables/hidden_2/w*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
��
�
1preparing_variables/save/RestoreV2_5/tensor_namesConst*
dtype0*1
value(B&Bpreparing_variables/output/b*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
$preparing_variables/save/RestoreV2_5	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_5/tensor_names5preparing_variables/save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
!preparing_variables/save/Assign_5Assignpreparing_variables/output/b$preparing_variables/save/RestoreV2_5*/
_class%
#!loc:@preparing_variables/output/b*
use_locking(*
validate_shape(*
T0*
_output_shapes
:

�
1preparing_variables/save/RestoreV2_6/tensor_namesConst*
dtype0*1
value(B&Bpreparing_variables/output/w*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
$preparing_variables/save/RestoreV2_6	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_6/tensor_names5preparing_variables/save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
!preparing_variables/save/Assign_6Assignpreparing_variables/output/w$preparing_variables/save/RestoreV2_6*/
_class%
#!loc:@preparing_variables/output/w*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�

�
$preparing_variables/save/restore_allNoOp ^preparing_variables/save/Assign"^preparing_variables/save/Assign_1"^preparing_variables/save/Assign_2"^preparing_variables/save/Assign_3"^preparing_variables/save/Assign_4"^preparing_variables/save/Assign_5"^preparing_variables/save/Assign_6
�
mlp_init/hidden_1/wVariable*
dtype0*
shape:
��*
shared_name *
	container * 
_output_shapes
:
��
�
6mlp_init/hidden_1/w/Initializer/truncated_normal/shapeConst*&
_class
loc:@mlp_init/hidden_1/w*
dtype0*
valueB"     *
_output_shapes
:
�
5mlp_init/hidden_1/w/Initializer/truncated_normal/meanConst*&
_class
loc:@mlp_init/hidden_1/w*
dtype0*
valueB
 *    *
_output_shapes
: 
�
7mlp_init/hidden_1/w/Initializer/truncated_normal/stddevConst*&
_class
loc:@mlp_init/hidden_1/w*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
@mlp_init/hidden_1/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_1/w/Initializer/truncated_normal/shape*&
_class
loc:@mlp_init/hidden_1/w*
dtype0*

seed *
seed2 *
T0* 
_output_shapes
:
��
�
4mlp_init/hidden_1/w/Initializer/truncated_normal/mulMul@mlp_init/hidden_1/w/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_1/w/Initializer/truncated_normal/stddev*&
_class
loc:@mlp_init/hidden_1/w*
T0* 
_output_shapes
:
��
�
0mlp_init/hidden_1/w/Initializer/truncated_normalAdd4mlp_init/hidden_1/w/Initializer/truncated_normal/mul5mlp_init/hidden_1/w/Initializer/truncated_normal/mean*&
_class
loc:@mlp_init/hidden_1/w*
T0* 
_output_shapes
:
��
�
mlp_init/hidden_1/w/AssignAssignmlp_init/hidden_1/w0mlp_init/hidden_1/w/Initializer/truncated_normal*&
_class
loc:@mlp_init/hidden_1/w*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
��
�
mlp_init/hidden_1/w/readIdentitymlp_init/hidden_1/w*&
_class
loc:@mlp_init/hidden_1/w*
T0* 
_output_shapes
:
��

mlp_init/hidden_1/bVariable*
dtype0*
shape:�*
shared_name *
	container *
_output_shapes	
:�
�
6mlp_init/hidden_1/b/Initializer/truncated_normal/shapeConst*&
_class
loc:@mlp_init/hidden_1/b*
dtype0*
valueB:�*
_output_shapes
:
�
5mlp_init/hidden_1/b/Initializer/truncated_normal/meanConst*&
_class
loc:@mlp_init/hidden_1/b*
dtype0*
valueB
 *    *
_output_shapes
: 
�
7mlp_init/hidden_1/b/Initializer/truncated_normal/stddevConst*&
_class
loc:@mlp_init/hidden_1/b*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
@mlp_init/hidden_1/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_1/b/Initializer/truncated_normal/shape*&
_class
loc:@mlp_init/hidden_1/b*
dtype0*

seed *
seed2 *
T0*
_output_shapes	
:�
�
4mlp_init/hidden_1/b/Initializer/truncated_normal/mulMul@mlp_init/hidden_1/b/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_1/b/Initializer/truncated_normal/stddev*&
_class
loc:@mlp_init/hidden_1/b*
T0*
_output_shapes	
:�
�
0mlp_init/hidden_1/b/Initializer/truncated_normalAdd4mlp_init/hidden_1/b/Initializer/truncated_normal/mul5mlp_init/hidden_1/b/Initializer/truncated_normal/mean*&
_class
loc:@mlp_init/hidden_1/b*
T0*
_output_shapes	
:�
�
mlp_init/hidden_1/b/AssignAssignmlp_init/hidden_1/b0mlp_init/hidden_1/b/Initializer/truncated_normal*&
_class
loc:@mlp_init/hidden_1/b*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�
�
mlp_init/hidden_1/b/readIdentitymlp_init/hidden_1/b*&
_class
loc:@mlp_init/hidden_1/b*
T0*
_output_shapes	
:�
�
mlp_init/hidden_1/MatMulMatMulPlaceholdermlp_init/hidden_1/w/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
�
mlp_init/hidden_1/addAddmlp_init/hidden_1/MatMulmlp_init/hidden_1/b/read*
T0*(
_output_shapes
:����������
h
mlp_init/hidden_1/ReluRelumlp_init/hidden_1/add*
T0*(
_output_shapes
:����������
�
mlp_init/hidden_2/wVariable*
dtype0*
shape:
��*
shared_name *
	container * 
_output_shapes
:
��
�
6mlp_init/hidden_2/w/Initializer/truncated_normal/shapeConst*&
_class
loc:@mlp_init/hidden_2/w*
dtype0*
valueB"      *
_output_shapes
:
�
5mlp_init/hidden_2/w/Initializer/truncated_normal/meanConst*&
_class
loc:@mlp_init/hidden_2/w*
dtype0*
valueB
 *    *
_output_shapes
: 
�
7mlp_init/hidden_2/w/Initializer/truncated_normal/stddevConst*&
_class
loc:@mlp_init/hidden_2/w*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
@mlp_init/hidden_2/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_2/w/Initializer/truncated_normal/shape*&
_class
loc:@mlp_init/hidden_2/w*
dtype0*

seed *
seed2 *
T0* 
_output_shapes
:
��
�
4mlp_init/hidden_2/w/Initializer/truncated_normal/mulMul@mlp_init/hidden_2/w/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_2/w/Initializer/truncated_normal/stddev*&
_class
loc:@mlp_init/hidden_2/w*
T0* 
_output_shapes
:
��
�
0mlp_init/hidden_2/w/Initializer/truncated_normalAdd4mlp_init/hidden_2/w/Initializer/truncated_normal/mul5mlp_init/hidden_2/w/Initializer/truncated_normal/mean*&
_class
loc:@mlp_init/hidden_2/w*
T0* 
_output_shapes
:
��
�
mlp_init/hidden_2/w/AssignAssignmlp_init/hidden_2/w0mlp_init/hidden_2/w/Initializer/truncated_normal*&
_class
loc:@mlp_init/hidden_2/w*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
��
�
mlp_init/hidden_2/w/readIdentitymlp_init/hidden_2/w*&
_class
loc:@mlp_init/hidden_2/w*
T0* 
_output_shapes
:
��

mlp_init/hidden_2/bVariable*
dtype0*
shape:�*
shared_name *
	container *
_output_shapes	
:�
�
6mlp_init/hidden_2/b/Initializer/truncated_normal/shapeConst*&
_class
loc:@mlp_init/hidden_2/b*
dtype0*
valueB:�*
_output_shapes
:
�
5mlp_init/hidden_2/b/Initializer/truncated_normal/meanConst*&
_class
loc:@mlp_init/hidden_2/b*
dtype0*
valueB
 *    *
_output_shapes
: 
�
7mlp_init/hidden_2/b/Initializer/truncated_normal/stddevConst*&
_class
loc:@mlp_init/hidden_2/b*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
@mlp_init/hidden_2/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_2/b/Initializer/truncated_normal/shape*&
_class
loc:@mlp_init/hidden_2/b*
dtype0*

seed *
seed2 *
T0*
_output_shapes	
:�
�
4mlp_init/hidden_2/b/Initializer/truncated_normal/mulMul@mlp_init/hidden_2/b/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_2/b/Initializer/truncated_normal/stddev*&
_class
loc:@mlp_init/hidden_2/b*
T0*
_output_shapes	
:�
�
0mlp_init/hidden_2/b/Initializer/truncated_normalAdd4mlp_init/hidden_2/b/Initializer/truncated_normal/mul5mlp_init/hidden_2/b/Initializer/truncated_normal/mean*&
_class
loc:@mlp_init/hidden_2/b*
T0*
_output_shapes	
:�
�
mlp_init/hidden_2/b/AssignAssignmlp_init/hidden_2/b0mlp_init/hidden_2/b/Initializer/truncated_normal*&
_class
loc:@mlp_init/hidden_2/b*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�
�
mlp_init/hidden_2/b/readIdentitymlp_init/hidden_2/b*&
_class
loc:@mlp_init/hidden_2/b*
T0*
_output_shapes	
:�
�
mlp_init/hidden_2/MatMulMatMulmlp_init/hidden_1/Relumlp_init/hidden_2/w/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
�
mlp_init/hidden_2/addAddmlp_init/hidden_2/MatMulmlp_init/hidden_2/b/read*
T0*(
_output_shapes
:����������
h
mlp_init/hidden_2/ReluRelumlp_init/hidden_2/add*
T0*(
_output_shapes
:����������
�
mlp_init/output/wVariable*
dtype0*
shape:	�
*
shared_name *
	container *
_output_shapes
:	�

�
4mlp_init/output/w/Initializer/truncated_normal/shapeConst*$
_class
loc:@mlp_init/output/w*
dtype0*
valueB"   
   *
_output_shapes
:
�
3mlp_init/output/w/Initializer/truncated_normal/meanConst*$
_class
loc:@mlp_init/output/w*
dtype0*
valueB
 *    *
_output_shapes
: 
�
5mlp_init/output/w/Initializer/truncated_normal/stddevConst*$
_class
loc:@mlp_init/output/w*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
>mlp_init/output/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4mlp_init/output/w/Initializer/truncated_normal/shape*$
_class
loc:@mlp_init/output/w*
dtype0*

seed *
seed2 *
T0*
_output_shapes
:	�

�
2mlp_init/output/w/Initializer/truncated_normal/mulMul>mlp_init/output/w/Initializer/truncated_normal/TruncatedNormal5mlp_init/output/w/Initializer/truncated_normal/stddev*$
_class
loc:@mlp_init/output/w*
T0*
_output_shapes
:	�

�
.mlp_init/output/w/Initializer/truncated_normalAdd2mlp_init/output/w/Initializer/truncated_normal/mul3mlp_init/output/w/Initializer/truncated_normal/mean*$
_class
loc:@mlp_init/output/w*
T0*
_output_shapes
:	�

�
mlp_init/output/w/AssignAssignmlp_init/output/w.mlp_init/output/w/Initializer/truncated_normal*$
_class
loc:@mlp_init/output/w*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�

�
mlp_init/output/w/readIdentitymlp_init/output/w*$
_class
loc:@mlp_init/output/w*
T0*
_output_shapes
:	�

{
mlp_init/output/bVariable*
dtype0*
shape:
*
shared_name *
	container *
_output_shapes
:

�
4mlp_init/output/b/Initializer/truncated_normal/shapeConst*$
_class
loc:@mlp_init/output/b*
dtype0*
valueB:
*
_output_shapes
:
�
3mlp_init/output/b/Initializer/truncated_normal/meanConst*$
_class
loc:@mlp_init/output/b*
dtype0*
valueB
 *    *
_output_shapes
: 
�
5mlp_init/output/b/Initializer/truncated_normal/stddevConst*$
_class
loc:@mlp_init/output/b*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
>mlp_init/output/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4mlp_init/output/b/Initializer/truncated_normal/shape*$
_class
loc:@mlp_init/output/b*
dtype0*

seed *
seed2 *
T0*
_output_shapes
:

�
2mlp_init/output/b/Initializer/truncated_normal/mulMul>mlp_init/output/b/Initializer/truncated_normal/TruncatedNormal5mlp_init/output/b/Initializer/truncated_normal/stddev*$
_class
loc:@mlp_init/output/b*
T0*
_output_shapes
:

�
.mlp_init/output/b/Initializer/truncated_normalAdd2mlp_init/output/b/Initializer/truncated_normal/mul3mlp_init/output/b/Initializer/truncated_normal/mean*$
_class
loc:@mlp_init/output/b*
T0*
_output_shapes
:

�
mlp_init/output/b/AssignAssignmlp_init/output/b.mlp_init/output/b/Initializer/truncated_normal*$
_class
loc:@mlp_init/output/b*
use_locking(*
validate_shape(*
T0*
_output_shapes
:

�
mlp_init/output/b/readIdentitymlp_init/output/b*$
_class
loc:@mlp_init/output/b*
T0*
_output_shapes
:

�
mlp_init/output/MatMulMatMulmlp_init/hidden_2/Relumlp_init/output/w/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������

|
mlp_init/output/addAddmlp_init/output/MatMulmlp_init/output/b/read*
T0*'
_output_shapes
:���������

c
mlp_init/output/ReluRelumlp_init/output/add*
T0*'
_output_shapes
:���������

O
mlp_init/RankConst*
dtype0*
value	B :*
_output_shapes
: 
b
mlp_init/ShapeShapemlp_init/output/Relu*
out_type0*
T0*
_output_shapes
:
Q
mlp_init/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
d
mlp_init/Shape_1Shapemlp_init/output/Relu*
out_type0*
T0*
_output_shapes
:
P
mlp_init/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
U
mlp_init/SubSubmlp_init/Rank_1mlp_init/Sub/y*
T0*
_output_shapes
: 
d
mlp_init/Slice/beginPackmlp_init/Sub*
T0*

axis *
N*
_output_shapes
:
]
mlp_init/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
mlp_init/SliceSlicemlp_init/Shape_1mlp_init/Slice/beginmlp_init/Slice/size*
Index0*
T0*
_output_shapes
:
\
mlp_init/concat/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
k
mlp_init/concat/values_0Const*
dtype0*
valueB:
���������*
_output_shapes
:
�
mlp_init/concatConcatmlp_init/concat/concat_dimmlp_init/concat/values_0mlp_init/Slice*
T0*
N*
_output_shapes
:
�
mlp_init/ReshapeReshapemlp_init/output/Relumlp_init/concat*
Tshape0*
T0*0
_output_shapes
:������������������
Q
mlp_init/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
]
mlp_init/Shape_2ShapePlaceholder_1*
out_type0*
T0*
_output_shapes
:
R
mlp_init/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
Y
mlp_init/Sub_1Submlp_init/Rank_2mlp_init/Sub_1/y*
T0*
_output_shapes
: 
h
mlp_init/Slice_1/beginPackmlp_init/Sub_1*
T0*

axis *
N*
_output_shapes
:
_
mlp_init/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
mlp_init/Slice_1Slicemlp_init/Shape_2mlp_init/Slice_1/beginmlp_init/Slice_1/size*
Index0*
T0*
_output_shapes
:
^
mlp_init/concat_1/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
m
mlp_init/concat_1/values_0Const*
dtype0*
valueB:
���������*
_output_shapes
:
�
mlp_init/concat_1Concatmlp_init/concat_1/concat_dimmlp_init/concat_1/values_0mlp_init/Slice_1*
T0*
N*
_output_shapes
:
�
mlp_init/Reshape_1ReshapePlaceholder_1mlp_init/concat_1*
Tshape0*
T0*0
_output_shapes
:������������������
�
&mlp_init/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsmlp_init/Reshapemlp_init/Reshape_1*
T0*?
_output_shapes-
+:���������:������������������
R
mlp_init/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 
W
mlp_init/Sub_2Submlp_init/Rankmlp_init/Sub_2/y*
T0*
_output_shapes
: 
`
mlp_init/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:
g
mlp_init/Slice_2/sizePackmlp_init/Sub_2*
T0*

axis *
N*
_output_shapes
:
�
mlp_init/Slice_2Slicemlp_init/Shapemlp_init/Slice_2/beginmlp_init/Slice_2/size*
Index0*
T0*#
_output_shapes
:���������
�
mlp_init/Reshape_2Reshape&mlp_init/SoftmaxCrossEntropyWithLogitsmlp_init/Slice_2*
Tshape0*
T0*#
_output_shapes
:���������
X
mlp_init/ConstConst*
dtype0*
valueB: *
_output_shapes
:
w
mlp_init/MeanMeanmlp_init/Reshape_2mlp_init/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
mlp_init/initNoOp^mlp_init/hidden_1/w/Assign^mlp_init/hidden_1/b/Assign^mlp_init/hidden_2/w/Assign^mlp_init/hidden_2/b/Assign^mlp_init/output/w/Assign^mlp_init/output/b/Assign
f
mlp_inter/PlaceholderPlaceholder*
dtype0*
shape
:*
_output_shapes

:
T
mlp_inter/sub/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
e
mlp_inter/subSubmlp_inter/sub/xmlp_inter/Placeholder*
T0*
_output_shapes

:
s
mlp_inter/mulMul#preparing_variables/hidden_1/w/readmlp_inter/sub*
T0* 
_output_shapes
:
��
r
mlp_inter/mul_1Mulmlp_init/hidden_1/w/readmlp_inter/Placeholder*
T0* 
_output_shapes
:
��
_
mlp_inter/addAddmlp_inter/mulmlp_inter/mul_1*
T0* 
_output_shapes
:
��
V
mlp_inter/sub_1/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
i
mlp_inter/sub_1Submlp_inter/sub_1/xmlp_inter/Placeholder*
T0*
_output_shapes

:
v
mlp_inter/mul_2Mul#preparing_variables/hidden_1/b/readmlp_inter/sub_1*
T0*
_output_shapes
:	�
q
mlp_inter/mul_3Mulmlp_init/hidden_1/b/readmlp_inter/Placeholder*
T0*
_output_shapes
:	�
b
mlp_inter/add_1Addmlp_inter/mul_2mlp_inter/mul_3*
T0*
_output_shapes
:	�
V
mlp_inter/sub_2/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
i
mlp_inter/sub_2Submlp_inter/sub_2/xmlp_inter/Placeholder*
T0*
_output_shapes

:
w
mlp_inter/mul_4Mul#preparing_variables/hidden_2/w/readmlp_inter/sub_2*
T0* 
_output_shapes
:
��
r
mlp_inter/mul_5Mulmlp_init/hidden_2/w/readmlp_inter/Placeholder*
T0* 
_output_shapes
:
��
c
mlp_inter/add_2Addmlp_inter/mul_4mlp_inter/mul_5*
T0* 
_output_shapes
:
��
V
mlp_inter/sub_3/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
i
mlp_inter/sub_3Submlp_inter/sub_3/xmlp_inter/Placeholder*
T0*
_output_shapes

:
v
mlp_inter/mul_6Mul#preparing_variables/hidden_2/b/readmlp_inter/sub_3*
T0*
_output_shapes
:	�
q
mlp_inter/mul_7Mulmlp_init/hidden_2/b/readmlp_inter/Placeholder*
T0*
_output_shapes
:	�
b
mlp_inter/add_3Addmlp_inter/mul_6mlp_inter/mul_7*
T0*
_output_shapes
:	�
V
mlp_inter/sub_4/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
i
mlp_inter/sub_4Submlp_inter/sub_4/xmlp_inter/Placeholder*
T0*
_output_shapes

:
t
mlp_inter/mul_8Mul!preparing_variables/output/w/readmlp_inter/sub_4*
T0*
_output_shapes
:	�

o
mlp_inter/mul_9Mulmlp_init/output/w/readmlp_inter/Placeholder*
T0*
_output_shapes
:	�

b
mlp_inter/add_4Addmlp_inter/mul_8mlp_inter/mul_9*
T0*
_output_shapes
:	�

V
mlp_inter/sub_5/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
i
mlp_inter/sub_5Submlp_inter/sub_5/xmlp_inter/Placeholder*
T0*
_output_shapes

:
t
mlp_inter/mul_10Mul!preparing_variables/output/b/readmlp_inter/sub_5*
T0*
_output_shapes

:

o
mlp_inter/mul_11Mulmlp_init/output/b/readmlp_inter/Placeholder*
T0*
_output_shapes

:

c
mlp_inter/add_5Addmlp_inter/mul_10mlp_inter/mul_11*
T0*
_output_shapes

:

�
mlp_inter/MatMulMatMulPlaceholdermlp_inter/add*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
l
mlp_inter/add_6Addmlp_inter/MatMulmlp_inter/add_1*
T0*(
_output_shapes
:����������
Z
mlp_inter/ReluRelumlp_inter/add_6*
T0*(
_output_shapes
:����������
�
mlp_inter/MatMul_1MatMulmlp_inter/Relumlp_inter/add_2*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
n
mlp_inter/add_7Addmlp_inter/MatMul_1mlp_inter/add_3*
T0*(
_output_shapes
:����������
\
mlp_inter/Relu_1Relumlp_inter/add_7*
T0*(
_output_shapes
:����������
�
mlp_inter/MatMul_2MatMulmlp_inter/Relu_1mlp_inter/add_4*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������

m
mlp_inter/add_8Addmlp_inter/MatMul_2mlp_inter/add_5*
T0*'
_output_shapes
:���������

[
mlp_inter/Relu_2Relumlp_inter/add_8*
T0*'
_output_shapes
:���������

P
mlp_inter/RankConst*
dtype0*
value	B :*
_output_shapes
: 
\
mlp_inter/ShapeShapePlaceholder_1*
out_type0*
T0*
_output_shapes
:
R
mlp_inter/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
^
mlp_inter/Shape_1ShapePlaceholder_1*
out_type0*
T0*
_output_shapes
:
Q
mlp_inter/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
X
mlp_inter/SubSubmlp_inter/Rank_1mlp_inter/Sub/y*
T0*
_output_shapes
: 
f
mlp_inter/Slice/beginPackmlp_inter/Sub*
T0*

axis *
N*
_output_shapes
:
^
mlp_inter/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
mlp_inter/SliceSlicemlp_inter/Shape_1mlp_inter/Slice/beginmlp_inter/Slice/size*
Index0*
T0*
_output_shapes
:
]
mlp_inter/concat/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
l
mlp_inter/concat/values_0Const*
dtype0*
valueB:
���������*
_output_shapes
:
�
mlp_inter/concatConcatmlp_inter/concat/concat_dimmlp_inter/concat/values_0mlp_inter/Slice*
T0*
N*
_output_shapes
:
�
mlp_inter/ReshapeReshapePlaceholder_1mlp_inter/concat*
Tshape0*
T0*0
_output_shapes
:������������������
R
mlp_inter/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
a
mlp_inter/Shape_2Shapemlp_inter/Relu_2*
out_type0*
T0*
_output_shapes
:
S
mlp_inter/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
\
mlp_inter/Sub_1Submlp_inter/Rank_2mlp_inter/Sub_1/y*
T0*
_output_shapes
: 
j
mlp_inter/Slice_1/beginPackmlp_inter/Sub_1*
T0*

axis *
N*
_output_shapes
:
`
mlp_inter/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
mlp_inter/Slice_1Slicemlp_inter/Shape_2mlp_inter/Slice_1/beginmlp_inter/Slice_1/size*
Index0*
T0*
_output_shapes
:
_
mlp_inter/concat_1/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
n
mlp_inter/concat_1/values_0Const*
dtype0*
valueB:
���������*
_output_shapes
:
�
mlp_inter/concat_1Concatmlp_inter/concat_1/concat_dimmlp_inter/concat_1/values_0mlp_inter/Slice_1*
T0*
N*
_output_shapes
:
�
mlp_inter/Reshape_1Reshapemlp_inter/Relu_2mlp_inter/concat_1*
Tshape0*
T0*0
_output_shapes
:������������������
�
'mlp_inter/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsmlp_inter/Reshapemlp_inter/Reshape_1*
T0*?
_output_shapes-
+:���������:������������������
S
mlp_inter/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 
Z
mlp_inter/Sub_2Submlp_inter/Rankmlp_inter/Sub_2/y*
T0*
_output_shapes
: 
a
mlp_inter/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:
i
mlp_inter/Slice_2/sizePackmlp_inter/Sub_2*
T0*

axis *
N*
_output_shapes
:
�
mlp_inter/Slice_2Slicemlp_inter/Shapemlp_inter/Slice_2/beginmlp_inter/Slice_2/size*
Index0*
T0*#
_output_shapes
:���������
�
mlp_inter/Reshape_2Reshape'mlp_inter/SoftmaxCrossEntropyWithLogitsmlp_inter/Slice_2*
Tshape0*
T0*#
_output_shapes
:���������
Y
mlp_inter/ConstConst*
dtype0*
valueB: *
_output_shapes
:
z
mlp_inter/MeanMeanmlp_inter/Reshape_2mlp_inter/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
n
mlp_inter/ScalarSummary/tagsConst*
dtype0*"
valueB Binterpolated_cost*
_output_shapes
: 
w
mlp_inter/ScalarSummaryScalarSummarymlp_inter/ScalarSummary/tagsmlp_inter/Mean*
T0*
_output_shapes
: ""�

	variables�	�	
s
!preparing_variables/global_step:0&preparing_variables/global_step/Assign&preparing_variables/global_step/read:0
p
 preparing_variables/hidden_1/w:0%preparing_variables/hidden_1/w/Assign%preparing_variables/hidden_1/w/read:0
p
 preparing_variables/hidden_1/b:0%preparing_variables/hidden_1/b/Assign%preparing_variables/hidden_1/b/read:0
p
 preparing_variables/hidden_2/w:0%preparing_variables/hidden_2/w/Assign%preparing_variables/hidden_2/w/read:0
p
 preparing_variables/hidden_2/b:0%preparing_variables/hidden_2/b/Assign%preparing_variables/hidden_2/b/read:0
j
preparing_variables/output/w:0#preparing_variables/output/w/Assign#preparing_variables/output/w/read:0
j
preparing_variables/output/b:0#preparing_variables/output/b/Assign#preparing_variables/output/b/read:0
O
mlp_init/hidden_1/w:0mlp_init/hidden_1/w/Assignmlp_init/hidden_1/w/read:0
O
mlp_init/hidden_1/b:0mlp_init/hidden_1/b/Assignmlp_init/hidden_1/b/read:0
O
mlp_init/hidden_2/w:0mlp_init/hidden_2/w/Assignmlp_init/hidden_2/w/read:0
O
mlp_init/hidden_2/b:0mlp_init/hidden_2/b/Assignmlp_init/hidden_2/b/read:0
I
mlp_init/output/w:0mlp_init/output/w/Assignmlp_init/output/w/read:0
I
mlp_init/output/b:0mlp_init/output/b/Assignmlp_init/output/b/read:0"�	
trainable_variables��
p
 preparing_variables/hidden_1/w:0%preparing_variables/hidden_1/w/Assign%preparing_variables/hidden_1/w/read:0
p
 preparing_variables/hidden_1/b:0%preparing_variables/hidden_1/b/Assign%preparing_variables/hidden_1/b/read:0
p
 preparing_variables/hidden_2/w:0%preparing_variables/hidden_2/w/Assign%preparing_variables/hidden_2/w/read:0
p
 preparing_variables/hidden_2/b:0%preparing_variables/hidden_2/b/Assign%preparing_variables/hidden_2/b/read:0
j
preparing_variables/output/w:0#preparing_variables/output/w/Assign#preparing_variables/output/w/read:0
j
preparing_variables/output/b:0#preparing_variables/output/b/Assign#preparing_variables/output/b/read:0
O
mlp_init/hidden_1/w:0mlp_init/hidden_1/w/Assignmlp_init/hidden_1/w/read:0
O
mlp_init/hidden_1/b:0mlp_init/hidden_1/b/Assignmlp_init/hidden_1/b/read:0
O
mlp_init/hidden_2/w:0mlp_init/hidden_2/w/Assignmlp_init/hidden_2/w/read:0
O
mlp_init/hidden_2/b:0mlp_init/hidden_2/b/Assignmlp_init/hidden_2/b/read:0
I
mlp_init/output/w:0mlp_init/output/w/Assignmlp_init/output/w/read:0
I
mlp_init/output/b:0mlp_init/output/b/Assignmlp_init/output/b/read:0"3
train_op'
%
#preparing_variables/GradientDescent"n
	summariesa
_
preparing_variables/loss:0
&preparing_variables/validation_error:0
mlp_inter/ScalarSummary:0�\��s       s|�	oHQB�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costMXD�=�u       ��Ax	;�sB�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costs�TD��u�u       ��Ax	��B�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�aQDU�W�u       ��Ax	`x�B�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost ND�m��u       ��Ax	E��B�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costr�JDXO��u       ��Ax	΍�B�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�GD7*L#u       ��Ax	�7�B�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costp_DD�v�Uu       ��Ax	&�C�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�2AD�D"�u       ��Ax	y1C�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costY>D{Z�[u       ��Ax	_�LC�7�A	*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��:D;פu       ��Ax	�~gC�7�A
*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��7D/K�u       ��Ax	i�C�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�4D�m%�u       ��Ax	L��C�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��1D��O�u       ��Ax	M��C�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costx�.DE��!u       ��Ax	�K�C�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��+D��܎u       ��Ax	���C�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��(Dx:�iu       ��Ax	�vD�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costp&D��YFu       ��Ax	.D�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�$#D��u       ��Ax	O\JD�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�M D��:~u       ��Ax	?fD�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost~Ds���u       ��Ax	ĕ�D�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost3�D{x�u       ��Ax	�D�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost �DYc�u       ��Ax	.�D�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost3=D�YfCu       ��Ax	%[�D�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costՋDS��u       ��Ax	.�D�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��D�|bzu       ��Ax	کE�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost?D7G��u       ��Ax	��+E�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost`�
D�T?�u       ��Ax	��GE�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costD�E�Uu       ��Ax	�aeE�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��Dq�Ԛu       ��Ax	.;�E�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�
D0`�u       ��Ax	��E�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost
� D*k,�u       ��Ax	��E�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost]8�C��Uu       ��Ax	��E�7�A *h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costn^�CRau       ��Ax	���E�7�A!*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���CsȻu       ��Ax	��F�7�A"*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���C:���u       ��Ax	�6F�7�A#*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costh$�C� u       ��Ax	�tTF�7�A$*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��C��ku       ��Ax	P�wF�7�A%*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��Cj�W�u       ��Ax	� �F�7�A&*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�e�C`8��u       ��Ax	$
�F�7�A'*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���CY��eu       ��Ax	?��F�7�A(*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��C�]�u       ��Ax	�o�F�7�A)*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costx �C�r,u       ��Ax	~nG�7�A**h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���Co|�
u       ��Ax	~V5G�7�A+*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost'��C��u       ��Ax	XSG�7�A,*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�R�C?@A�u       ��Ax	0�pG�7�A-*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costE(�C[�~�u       ��Ax	�E�G�7�A.*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�
�C�|��u       ��Ax	6 �G�7�A/*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��C�i.u       ��Ax	��G�7�A0*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��C�X�eu       ��Ax	~��G�7�A1*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costb5�C����u       ��Ax	�H�7�A2*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costR^�C�A�u       ��Ax	�*H�7�A3*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costt��C�S7u       ��Ax	��LH�7�A4*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�ԡC�s6�u       ��Ax	CXkH�7�A5*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost)#�C<Z��u       ��Ax		��H�7�A6*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost	��C!�4Nu       ��Ax	�H�7�A7*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��Cv4u       ��Ax	�i�H�7�A8*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost|`�C��u       ��Ax	�I�H�7�A9*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost7�C��X�u       ��Ax		� I�7�A:*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���C���Ku       ��Ax	�^!I�7�A;*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costp/�C� R u       ��Ax	�JBI�7�A<*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costv�C#t�u       ��Ax	/�_I�7�A=*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costΠ�C�K�u       ��Ax	��}I�7�A>*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��~C���u       ��Ax	@��I�7�A?*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�}xC2��u       ��Ax	���I�7�A@*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�<rC��;Vu       ��Ax	��I�7�AA*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costlCH}�u       ��Ax	8�J�7�AB*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��eC�Y�u       ��Ax	�%J�7�AC*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costR�_C%�Bu       ��Ax	��DJ�7�AD*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�ZC��ڗu       ��Ax	,�dJ�7�AE*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost4BTC\�,�u       ��Ax	�J�7�AF*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�NCW*�*u       ��Ax	
j�J�7�AG*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��HC�j1u       ��Ax	���J�7�AH*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�LCC����u       ��Ax	�1�J�7�AI*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costO�=CGĵNu       ��Ax	SXK�7�AJ*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�f8C[
�u       ��Ax	�t'K�7�AK*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costG3CH0�u       ��Ax	�IK�7�AL*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costF�-C�R"u       ��Ax	ӡlK�7�AM*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costæ(C��g�u       ��Ax	+/�K�7�AN*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�#CG&��u       ��Ax	�,�K�7�AO*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costk�C�޹8u       ��Ax	L�K�7�AP*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��CL�=�u       ��Ax	�o�K�7�AQ*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costq�C��i�u       ��Ax	jgL�7�AR*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��C�kWu       ��Ax	j-L�7�AS*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�AC�u       ��Ax	��ML�7�AT*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�C�<iu       ��Ax	�HvL�7�AU*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�C#�u       ��Ax	%�L�7�AV*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costr'�B8��yu       ��Ax	�p�L�7�AW*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costkW�B�?��u       ��Ax	)��L�7�AX*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���B^n"Du       ��Ax	� M�7�AY*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�(�Bx�=�u       ��Ax	�%'M�7�AZ*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���BS)�du       ��Ax	�BGM�7�A[*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costm��B�0�u       ��Ax	�dM�7�A\*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costav�B�	*u       ��Ax	�(�M�7�A]*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���B߮��u       ��Ax	�t�M�7�A^*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costq��B�DRu       ��Ax	��M�7�A_*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost �B+9%u       ��Ax	�=�M�7�A`*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���B�@Լu       ��Ax	��M�7�Aa*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�O�B��5zu       ��Ax	��N�7�Ab*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost}�BL��u       ��Ax	J�5N�7�Ac*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costf	�B�� u       ��Ax	�TN�7�Ad*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��B��1u       ��Ax	�rN�7�Ae*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost'J�B{��au       ��Ax	�i�N�7�Af*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost69B��nUu       ��Ax	_�N�7�Ag*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_coste rB��Xu       ��Ax	���N�7�Ah*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costIeBkE�u       ��Ax	���N�7�Ai*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costֲXBmH�1u       ��Ax	��O�7�Aj*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�\LBE���u       ��Ax	mT&O�7�Ak*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costG@B���u       ��Ax	
HEO�7�Al*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costSp4B���u       ��Ax	�bO�7�Am*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��(B^\I�u       ��Ax	 ��O�7�An*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�B���u       ��Ax	rk�O�7�Ao*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost<dB�YC=u       ��Ax	)w�O�7�Ap*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costrB8�8du       ��Ax	��O�7�Aq*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��A.�Pu       ��Ax	�{P�7�Ar*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costg��A�T��u       ��Ax	�C'P�7�As*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costb�AVa�u       ��Ax	�fGP�7�At*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���Ag��u       ��Ax	��lP�7�Au*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�h�AJO��u       ��Ax	�x�P�7�Av*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���A���Pu       ��Ax	ϨP�7�Aw*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costt�A��4uu       ��Ax	�q�P�7�Ax*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�,xA����u       ��Ax	���P�7�Ay*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costf�VA�J5u       ��Ax	CTQ�7�Az*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost=�2A�_�u       ��Ax	H3 Q�7�A{*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�*Ar��u       ��Ax	�&=Q�7�A|*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���@Z�U�u       ��Ax	��ZQ�7�A}*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costV%�@���au       ��Ax	��vQ�7�A~*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost:�@��E�u       ��Ax	ۈ�Q�7�A*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �"�v       NC�}	�įQ�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ���v       NC�}	m �Q�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost     v       NC�}	.�Q�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ����v       NC�}	-�
R�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �L>av       NC�}	�+R�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    y\�v       NC�}	=IR�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��Dv       NC�}	^�fR�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��<v       NC�}	�z�R�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    +�!�v       NC�}	��R�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ���0v       NC�}	���R�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �Xk�v       NC�}	���R�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��\6v       NC�}	h��R�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    =��v       NC�}	�S�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    d�av       NC�}	��8S�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��� v       NC�}	jMUS�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    h�P�v       NC�}	�sS�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �Bf?v       NC�}	��S�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �xg�v       NC�}	��S�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ssOv       NC�}	��S�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    #��v       NC�}	���S�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �b�v       NC�}	��T�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ����v       NC�}	��+T�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    PrE�v       NC�}	�sMT�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ���v       NC�}	�mT�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��Iv       NC�}	1^�T�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��,�v       NC�}	��T�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ���v       NC�}	��T�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    2��v       NC�}	���T�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ;\�v       NC�}	2<U�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    Dk��v       NC�}	(!U�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��{,v       NC�}	�?U�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    "(
v       NC�}	c%\U�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��, v       NC�}	�xU�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �6�v       NC�}	a8�U�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��)v       NC�}	��U�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ���7v       NC�}	��U�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��tv       NC�}	�]�U�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �.?.v       NC�}	��V�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �R,�v       NC�}	i�%V�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    /٧}v       NC�}	4�BV�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    U�O�v       NC�}	UMaV�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �bu+v       NC�}	ûV�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �>Z)v       NC�}	�țV�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �h��v       NC�}	�ַV�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��v       NC�}	*��V�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �D/�v       NC�}	aQ�V�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    r��v       NC�}	�W�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��&v       NC�}	g�&W�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    X�hcv       NC�}	mBW�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    2%�v       NC�}	�]W�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��v       NC�}	�zW�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ����v       NC�}	A��W�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��b�v       NC�}	�0�W�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �̮�v       NC�}	�a�W�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    p�l=v       NC�}	��W�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ֈ��v       NC�}	�wX�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��rv       NC�}	x� X�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    y��9v       NC�}	;o<X�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    2k�v       NC�}	��WX�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��5iv       NC�}	k)sX�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ofuv       NC�}	�|�X�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �g�ev       NC�}	�t�X�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ����v       NC�}	�v�X�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��v       NC�}	c��X�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �cٍv       NC�}	`��X�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    FOLv       NC�}	t�Y�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �H�v       NC�}	px2Y�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    Z1Ywv       NC�}	�NY�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �Dv       NC�}	�4jY�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �b�4v       NC�}	*U�Y�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �m~}v       NC�}	�ҠY�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �?v       NC�}	�ͽY�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �v       NC�}	�+�Y�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    UC�v       NC�}	���Y�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ؛��v       NC�}	�Z�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    0}��v       NC�}	�-Z�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    S�Ðv       NC�}	8gIZ�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �Y�v       NC�}	ȴdZ�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �	�Xv       NC�}	�j�Z�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costY��Br���v       NC�}	D��Z�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costS=�B��|v       NC�}	���Z�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost%�A���Uv       NC�}	^��Z�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    0��v       NC�}	�K�Z�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    @H��v       NC�}	�W[�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��nv       NC�}	�3[�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    w���v       NC�}	��S[�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    o�_v       NC�}	>#z[�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��j�v       NC�}	��[�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    V>�v       NC�}	�R�[�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �gyWv       NC�}	A*�[�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    Cu9�v       NC�}	ly\�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ����v       NC�}	3\�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �[ߞv       NC�}	NGS\�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    q�,v       NC�}	�\t\�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �1&�v       NC�}	�=�\�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �M8v       NC�}	�z�\�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ^^>Dv       NC�}	1��\�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    Ǐ۾v       NC�}	���\�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ��v       NC�}	o� ]�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    ���v       NC�}	�]�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �4��v       NC�}	��<]�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost    �W�Fv       NC�}	tDY]�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost
A���v       NC�}	��w]�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�6~?v`G�v       NC�}	U�]�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost	�B�g��v       NC�}	!�]�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��Ay]1.v       NC�}	#2�]�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��ZAwK�Fv       NC�}	"6�]�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���A_�m�v       NC�}	�^�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�+nBפd5v       NC�}	��6^�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costlBA�!v       NC�}	u�\^�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�wB��>Bv       NC�}	s��^�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost[�BB���9v       NC�}	�#�^�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costS�Bo.�v       NC�}	d\�^�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�}B���Xv       NC�}	���^�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�#B��uv       NC�}	�_�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�*B��A{v       NC�}	��$_�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�t�B	H)�v       NC�}	�C_�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costv'�Bl��mv       NC�}	ޯb_�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��)B�k�Xv       NC�}	m�_�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost䛍C|`�v       NC�}	�9�_�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costNG?DyZ�v       NC�}	�_�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��D�ӄ)v       NC�}	��_�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��Ed���v       NC�}	��_�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�fhE��m.v       NC�}	9C`�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�5�E��5<v       NC�}	��3`�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costq��E�_2�v       NC�}	�O`�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�� Fq
��v       NC�}	6p`�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��3F�hk]v       NC�}	�`�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost_�=FM�`v       NC�}	ө`�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�{YF�^�v       NC�}	���`�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�(nFM���v       NC�}	{��`�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���F�}�Mv       NC�}	Sa�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost9�F��9�v       NC�}	dx-a�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost,V�FJ�Ͱv       NC�}	��Na�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costm �Fod�v       NC�}	�>ka�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�fFS��v       NC�}	T��a�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costk��F���qv       NC�}	���a�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��~F�^�v       NC�}	c��a�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costM"�Fyɠv       NC�}	�P�a�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�2�F��"v       NC�}	K��a�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�r�Fs�-v       NC�}	@�b�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costP��F��;Iv       NC�}	�b8b�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costK�Fq���v       NC�}	ѱSb�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costC�F��v       NC�}	�$qb�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���F}u�v       NC�}	]�b�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���F��]v       NC�}	��b�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costg��F�C��v       NC�}	$B�b�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�ֵF����v       NC�}	0��b�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�YfF���?v       NC�}	�	c�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�^]F�߬�v       NC�}	�&c�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�_�Fk'�v       NC�}	ϟBc�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�mG�L�v       NC�}	 a`c�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost+�OG��{v       NC�}	�d}c�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costY�sG)�9tv       NC�}	UQ�c�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��wGo:�Pv       NC�}	4i�c�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost+ӍG����v       NC�}	���c�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost(˘G�O��v       NC�}	��c�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�W�Gb��v       NC�}	�Fd�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost� �G�q�v       NC�}	j,d�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��Gߋ��v       NC�}	��Id�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��G��O�v       NC�}	S!ed�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costj��G�E��v       NC�}	A��d�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�z�GQ��Zv       NC�}	H��d�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costh]�G>��v       NC�}	V�d�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost^��Gp���v       NC�}	7��d�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost+��G�u�`v       NC�}	�6�d�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��G5��v       NC�}	d�e�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�|�G��Glv       NC�}	�0e�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costK-�G�ʔ�v       NC�}	�Ne�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costo��G�?v       NC�}	�:le�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costa�G�1�v       NC�}	�s�e�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost;�H�"A[v       NC�}	�m�e�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�vH̷�lv       NC�}	��e�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost6��IB�;Gv       NC�}	���e�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost?G�Wc�v       NC�}	�Zf�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costVJY����v       NC�}	7#f�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost+��YQ��v       NC�}	�??f�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost|N�Z{?�yv       NC�}	g�Zf�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���Z:\vv       NC�}	�yf�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��[[۫�v       NC�}	�f�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost⚮[��v       NC�}	E��f�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�Q\�3��v       NC�}	�A�f�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��9\3�vQv       NC�}	�\�f�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��~\�Yi�v       NC�}	�=g�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�d�\gy1Uv       NC�}	!-g�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���\�S:Sv       NC�}	=�Ig�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�]�vyv       NC�}	jgg�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost5�.]�L�qv       NC�}	��g�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��V]K�lv       NC�}	�}�g�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost@S�]��v       NC�}	@l�g�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costR�]��m)v       NC�}	 z�g�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costˏ�]��� v       NC�}	���g�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costR=�]�*9�v       NC�}	|h�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costQ��]��av       NC�}	�01h�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costmU^��^�v       NC�}	��Lh�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost_f)^R~��v       NC�}	�lh�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�A^^T��v       NC�}	�h�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost|�[^�#��v       NC�}	2�h�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��x^���v       NC�}	�i�h�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costOϋ^��ev       NC�}	0-�h�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�^�7�v       NC�}	'��h�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���^����v       NC�}	�i�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costA�^&u|�v       NC�}	DP5i�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costM��^���v       NC�}	�Ri�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���^J�yv       NC�}	B�ni�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost+T_���v       NC�}	io�i�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��_K�hv       NC�}	t�i�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost&S_��[v       NC�}	Ԃ�i�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�*_.Ii�v       NC�}	D�i�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��9_:�_Fv       NC�}	<��i�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�vI_ڞ�v       NC�}	�Bj�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost|>Z_�|�jv       NC�}	a2j�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costt�k_,�Iv       NC�}	��Lj�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��~_��Ǥv       NC�}	��gj�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��_#�lav       NC�}	(Ԃj�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost+V�_}p?�v       NC�}	�G�j�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost �_���v       NC�}	1�j�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost5g�_�'t9v       NC�}		��j�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�7�_����v       NC�}	��j�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costɑ�_��yv       NC�}	R�k�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost`x�_.��v       NC�}	'(k�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costt��_�"#v       NC�}	�GCk�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost:��_{i�cv       NC�}	��]k�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���_|���v       NC�}	کyk�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costb�`��;�v       NC�}	�n�k�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��`�n�v       NC�}	�7�k�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�`;��pv       NC�}	n�k�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��`�"�v       NC�}	�6�k�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�n%`
R�v       NC�}	�d
l�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costA�.`/�yPv       NC�}	�%l�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost%8`���v       NC�}	i�@l�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costB`��nBv       NC�}	��[l�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost}7L`ј�v       NC�}	��vl�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost&�V`�z�v       NC�}	9	�l�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost_�a`�+�v       NC�}	P��l�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��l`y	^Mv       NC�}	���l�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�x`���fv       NC�}	���l�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�T�`TNhv       NC�}	1@ m�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost*��`r\��v       NC�}	� m�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costY�`��cv       NC�}	W�=m�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost釕`�K-�v       NC�}	��Xm�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�S�`S�G}v       NC�}	�6xm�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costLS�`X�-v       NC�}	X�m�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���`2��v       NC�}	8۶m�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costy�`�Q v       NC�}	 �m�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���`�lܸv       NC�}	�k�m�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�h�`'���v       NC�}	�n�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost[w�`��Ov       NC�}	��,n�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���`ݬ�v       NC�}	�VMn�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost0?�`�lV,v       NC�}	40jn�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost���`�e$v       NC�}	m��n�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost5��`�.�_v       NC�}	]��n�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost4 �`�42v       NC�}	���n�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costl��`�\v       NC�}	)��n�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�a���Nv       NC�}	�>�n�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost
	a�J��v       NC�}	�>
o�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�#aN�Dhv       NC�}	q%o�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�Vas���v       NC�}	��?o�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost٩a=��v       NC�}	I[o�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�a��#v       NC�}	�vo�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��#aNX6dv       NC�}	�h�o�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�g)atf�v       NC�}	���o�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�>/a���Ev       NC�}	x��o�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costP85a ��v       NC�}	p\�o�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�S;a�A�+v       NC�}	�p�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costX�Aa֒ptv       NC�}	��!p�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��Ga5���v       NC�}	5@?p�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�xNaW�jv       NC�}	t�Yp�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�!Ua�yiv       NC�}	�up�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost!�[a34K�v       NC�}	;�p�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost�bak���v       NC�}	u��p�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_cost��iaH�N�v       NC�}	2�p�7�A�*h

preparing_variables/loss_@
+
$preparing_variables/validation_error��f?

interpolated_costL4qas���