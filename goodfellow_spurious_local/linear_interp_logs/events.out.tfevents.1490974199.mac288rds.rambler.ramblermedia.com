       �K"	  �}�7�Abrain.Event:2R��A�'     A���	H��}�7�A"��
^
PlaceholderPlaceholder*
shape: *
dtype0*(
_output_shapes
:����������
_
Placeholder_1Placeholder*
shape: *
dtype0*'
_output_shapes
:���������

o
-preparing_variables/global_step/initial_valueConst*
value	B : *
dtype0*
_output_shapes
: 
�
preparing_variables/global_stepVariable*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
�
&preparing_variables/global_step/AssignAssignpreparing_variables/global_step-preparing_variables/global_step/initial_value*
use_locking(*
_output_shapes
: *2
_class(
&$loc:@preparing_variables/global_step*
T0*
validate_shape(
�
$preparing_variables/global_step/readIdentitypreparing_variables/global_step*
_output_shapes
: *2
_class(
&$loc:@preparing_variables/global_step*
T0
�
preparing_variables/hidden_1/wVariable*
shape:
��*
dtype0*
	container *
shared_name * 
_output_shapes
:
��
�
Apreparing_variables/hidden_1/w/Initializer/truncated_normal/shapeConst*
valueB"     *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
_output_shapes
:
�
@preparing_variables/hidden_1/w/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
_output_shapes
: 
�
Bpreparing_variables/hidden_1/w/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
_output_shapes
: 
�
Kpreparing_variables/hidden_1/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_1/w/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
��*

seed *
seed2 *1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0
�
?preparing_variables/hidden_1/w/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_1/w/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_1/w/Initializer/truncated_normal/stddev* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0
�
;preparing_variables/hidden_1/w/Initializer/truncated_normalAdd?preparing_variables/hidden_1/w/Initializer/truncated_normal/mul@preparing_variables/hidden_1/w/Initializer/truncated_normal/mean* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0
�
%preparing_variables/hidden_1/w/AssignAssignpreparing_variables/hidden_1/w;preparing_variables/hidden_1/w/Initializer/truncated_normal*
use_locking(* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0*
validate_shape(
�
#preparing_variables/hidden_1/w/readIdentitypreparing_variables/hidden_1/w* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0
�
preparing_variables/hidden_1/bVariable*
shape:�*
dtype0*
	container *
shared_name *
_output_shapes	
:�
�
Apreparing_variables/hidden_1/b/Initializer/truncated_normal/shapeConst*
valueB:�*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
_output_shapes
:
�
@preparing_variables/hidden_1/b/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
_output_shapes
: 
�
Bpreparing_variables/hidden_1/b/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
_output_shapes
: 
�
Kpreparing_variables/hidden_1/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_1/b/Initializer/truncated_normal/shape*
dtype0*
_output_shapes	
:�*

seed *
seed2 *1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0
�
?preparing_variables/hidden_1/b/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_1/b/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_1/b/Initializer/truncated_normal/stddev*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0
�
;preparing_variables/hidden_1/b/Initializer/truncated_normalAdd?preparing_variables/hidden_1/b/Initializer/truncated_normal/mul@preparing_variables/hidden_1/b/Initializer/truncated_normal/mean*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0
�
%preparing_variables/hidden_1/b/AssignAssignpreparing_variables/hidden_1/b;preparing_variables/hidden_1/b/Initializer/truncated_normal*
use_locking(*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
validate_shape(
�
#preparing_variables/hidden_1/b/readIdentitypreparing_variables/hidden_1/b*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0
�
#preparing_variables/hidden_1/MatMulMatMulPlaceholder#preparing_variables/hidden_1/w/read*
transpose_a( *(
_output_shapes
:����������*
transpose_b( *
T0
�
 preparing_variables/hidden_1/addAdd#preparing_variables/hidden_1/MatMul#preparing_variables/hidden_1/b/read*(
_output_shapes
:����������*
T0
~
!preparing_variables/hidden_1/ReluRelu preparing_variables/hidden_1/add*(
_output_shapes
:����������*
T0
�
preparing_variables/hidden_2/wVariable*
shape:
��*
dtype0*
	container *
shared_name * 
_output_shapes
:
��
�
Apreparing_variables/hidden_2/w/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
_output_shapes
:
�
@preparing_variables/hidden_2/w/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
_output_shapes
: 
�
Bpreparing_variables/hidden_2/w/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
_output_shapes
: 
�
Kpreparing_variables/hidden_2/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_2/w/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
��*

seed *
seed2 *1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0
�
?preparing_variables/hidden_2/w/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_2/w/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_2/w/Initializer/truncated_normal/stddev* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0
�
;preparing_variables/hidden_2/w/Initializer/truncated_normalAdd?preparing_variables/hidden_2/w/Initializer/truncated_normal/mul@preparing_variables/hidden_2/w/Initializer/truncated_normal/mean* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0
�
%preparing_variables/hidden_2/w/AssignAssignpreparing_variables/hidden_2/w;preparing_variables/hidden_2/w/Initializer/truncated_normal*
use_locking(* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0*
validate_shape(
�
#preparing_variables/hidden_2/w/readIdentitypreparing_variables/hidden_2/w* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0
�
preparing_variables/hidden_2/bVariable*
shape:�*
dtype0*
	container *
shared_name *
_output_shapes	
:�
�
Apreparing_variables/hidden_2/b/Initializer/truncated_normal/shapeConst*
valueB:�*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
_output_shapes
:
�
@preparing_variables/hidden_2/b/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
_output_shapes
: 
�
Bpreparing_variables/hidden_2/b/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
_output_shapes
: 
�
Kpreparing_variables/hidden_2/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_2/b/Initializer/truncated_normal/shape*
dtype0*
_output_shapes	
:�*

seed *
seed2 *1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0
�
?preparing_variables/hidden_2/b/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_2/b/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_2/b/Initializer/truncated_normal/stddev*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0
�
;preparing_variables/hidden_2/b/Initializer/truncated_normalAdd?preparing_variables/hidden_2/b/Initializer/truncated_normal/mul@preparing_variables/hidden_2/b/Initializer/truncated_normal/mean*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0
�
%preparing_variables/hidden_2/b/AssignAssignpreparing_variables/hidden_2/b;preparing_variables/hidden_2/b/Initializer/truncated_normal*
use_locking(*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
validate_shape(
�
#preparing_variables/hidden_2/b/readIdentitypreparing_variables/hidden_2/b*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0
�
#preparing_variables/hidden_2/MatMulMatMul!preparing_variables/hidden_1/Relu#preparing_variables/hidden_2/w/read*
transpose_a( *(
_output_shapes
:����������*
transpose_b( *
T0
�
 preparing_variables/hidden_2/addAdd#preparing_variables/hidden_2/MatMul#preparing_variables/hidden_2/b/read*(
_output_shapes
:����������*
T0
~
!preparing_variables/hidden_2/ReluRelu preparing_variables/hidden_2/add*(
_output_shapes
:����������*
T0
�
preparing_variables/output/wVariable*
shape:	�
*
dtype0*
	container *
shared_name *
_output_shapes
:	�

�
?preparing_variables/output/w/Initializer/truncated_normal/shapeConst*
valueB"   
   *
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
_output_shapes
:
�
>preparing_variables/output/w/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
_output_shapes
: 
�
@preparing_variables/output/w/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
_output_shapes
: 
�
Ipreparing_variables/output/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?preparing_variables/output/w/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	�
*

seed *
seed2 */
_class%
#!loc:@preparing_variables/output/w*
T0
�
=preparing_variables/output/w/Initializer/truncated_normal/mulMulIpreparing_variables/output/w/Initializer/truncated_normal/TruncatedNormal@preparing_variables/output/w/Initializer/truncated_normal/stddev*
_output_shapes
:	�
*/
_class%
#!loc:@preparing_variables/output/w*
T0
�
9preparing_variables/output/w/Initializer/truncated_normalAdd=preparing_variables/output/w/Initializer/truncated_normal/mul>preparing_variables/output/w/Initializer/truncated_normal/mean*
_output_shapes
:	�
*/
_class%
#!loc:@preparing_variables/output/w*
T0
�
#preparing_variables/output/w/AssignAssignpreparing_variables/output/w9preparing_variables/output/w/Initializer/truncated_normal*
use_locking(*
_output_shapes
:	�
*/
_class%
#!loc:@preparing_variables/output/w*
T0*
validate_shape(
�
!preparing_variables/output/w/readIdentitypreparing_variables/output/w*
_output_shapes
:	�
*/
_class%
#!loc:@preparing_variables/output/w*
T0
�
preparing_variables/output/bVariable*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

�
?preparing_variables/output/b/Initializer/truncated_normal/shapeConst*
valueB:
*
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
_output_shapes
:
�
>preparing_variables/output/b/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
_output_shapes
: 
�
@preparing_variables/output/b/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
_output_shapes
: 
�
Ipreparing_variables/output/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?preparing_variables/output/b/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:
*

seed *
seed2 */
_class%
#!loc:@preparing_variables/output/b*
T0
�
=preparing_variables/output/b/Initializer/truncated_normal/mulMulIpreparing_variables/output/b/Initializer/truncated_normal/TruncatedNormal@preparing_variables/output/b/Initializer/truncated_normal/stddev*
_output_shapes
:
*/
_class%
#!loc:@preparing_variables/output/b*
T0
�
9preparing_variables/output/b/Initializer/truncated_normalAdd=preparing_variables/output/b/Initializer/truncated_normal/mul>preparing_variables/output/b/Initializer/truncated_normal/mean*
_output_shapes
:
*/
_class%
#!loc:@preparing_variables/output/b*
T0
�
#preparing_variables/output/b/AssignAssignpreparing_variables/output/b9preparing_variables/output/b/Initializer/truncated_normal*
use_locking(*
_output_shapes
:
*/
_class%
#!loc:@preparing_variables/output/b*
T0*
validate_shape(
�
!preparing_variables/output/b/readIdentitypreparing_variables/output/b*
_output_shapes
:
*/
_class%
#!loc:@preparing_variables/output/b*
T0
�
!preparing_variables/output/MatMulMatMul!preparing_variables/hidden_2/Relu!preparing_variables/output/w/read*
transpose_a( *'
_output_shapes
:���������
*
transpose_b( *
T0
�
preparing_variables/output/addAdd!preparing_variables/output/MatMul!preparing_variables/output/b/read*'
_output_shapes
:���������
*
T0
y
preparing_variables/output/ReluRelupreparing_variables/output/add*'
_output_shapes
:���������
*
T0
Z
preparing_variables/RankConst*
value	B :*
dtype0*
_output_shapes
: 
x
preparing_variables/ShapeShapepreparing_variables/output/Relu*
_output_shapes
:*
T0*
out_type0
\
preparing_variables/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
z
preparing_variables/Shape_1Shapepreparing_variables/output/Relu*
_output_shapes
:*
T0*
out_type0
[
preparing_variables/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
v
preparing_variables/SubSubpreparing_variables/Rank_1preparing_variables/Sub/y*
_output_shapes
: *
T0
z
preparing_variables/Slice/beginPackpreparing_variables/Sub*

axis *
_output_shapes
:*
N*
T0
h
preparing_variables/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
preparing_variables/SliceSlicepreparing_variables/Shape_1preparing_variables/Slice/beginpreparing_variables/Slice/size*
Index0*
_output_shapes
:*
T0
g
%preparing_variables/concat/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 
v
#preparing_variables/concat/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
preparing_variables/concatConcat%preparing_variables/concat/concat_dim#preparing_variables/concat/values_0preparing_variables/Slice*
_output_shapes
:*
N*
T0
�
preparing_variables/ReshapeReshapepreparing_variables/output/Relupreparing_variables/concat*
Tshape0*0
_output_shapes
:������������������*
T0
\
preparing_variables/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
h
preparing_variables/Shape_2ShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
]
preparing_variables/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
z
preparing_variables/Sub_1Subpreparing_variables/Rank_2preparing_variables/Sub_1/y*
_output_shapes
: *
T0
~
!preparing_variables/Slice_1/beginPackpreparing_variables/Sub_1*

axis *
_output_shapes
:*
N*
T0
j
 preparing_variables/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
preparing_variables/Slice_1Slicepreparing_variables/Shape_2!preparing_variables/Slice_1/begin preparing_variables/Slice_1/size*
Index0*
_output_shapes
:*
T0
i
'preparing_variables/concat_1/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 
x
%preparing_variables/concat_1/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
preparing_variables/concat_1Concat'preparing_variables/concat_1/concat_dim%preparing_variables/concat_1/values_0preparing_variables/Slice_1*
_output_shapes
:*
N*
T0
�
preparing_variables/Reshape_1ReshapePlaceholder_1preparing_variables/concat_1*
Tshape0*0
_output_shapes
:������������������*
T0
�
1preparing_variables/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitspreparing_variables/Reshapepreparing_variables/Reshape_1*?
_output_shapes-
+:���������:������������������*
T0
]
preparing_variables/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
x
preparing_variables/Sub_2Subpreparing_variables/Rankpreparing_variables/Sub_2/y*
_output_shapes
: *
T0
k
!preparing_variables/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
}
 preparing_variables/Slice_2/sizePackpreparing_variables/Sub_2*

axis *
_output_shapes
:*
N*
T0
�
preparing_variables/Slice_2Slicepreparing_variables/Shape!preparing_variables/Slice_2/begin preparing_variables/Slice_2/size*
Index0*#
_output_shapes
:���������*
T0
�
preparing_variables/Reshape_2Reshape1preparing_variables/SoftmaxCrossEntropyWithLogitspreparing_variables/Slice_2*
Tshape0*#
_output_shapes
:���������*
T0
c
preparing_variables/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
preparing_variables/MeanMeanpreparing_variables/Reshape_2preparing_variables/Const*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
v
preparing_variables/loss/tagsConst*)
value B Bpreparing_variables/loss*
dtype0*
_output_shapes
: 
�
preparing_variables/lossScalarSummarypreparing_variables/loss/tagspreparing_variables/Mean*
_output_shapes
: *
T0
f
#preparing_variables/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
h
#preparing_variables/gradients/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
"preparing_variables/gradients/FillFill#preparing_variables/gradients/Shape#preparing_variables/gradients/Const*
_output_shapes
: *
T0
�
Ipreparing_variables/gradients/preparing_variables/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/ReshapeReshape"preparing_variables/gradients/FillIpreparing_variables/gradients/preparing_variables/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
�
Apreparing_variables/gradients/preparing_variables/Mean_grad/ShapeShapepreparing_variables/Reshape_2*
_output_shapes
:*
T0*
out_type0
�
@preparing_variables/gradients/preparing_variables/Mean_grad/TileTileCpreparing_variables/gradients/preparing_variables/Mean_grad/ReshapeApreparing_variables/gradients/preparing_variables/Mean_grad/Shape*#
_output_shapes
:���������*
T0*

Tmultiples0
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_1Shapepreparing_variables/Reshape_2*
_output_shapes
:*
T0*
out_type0
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
�
Apreparing_variables/gradients/preparing_variables/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
@preparing_variables/gradients/preparing_variables/Mean_grad/ProdProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_1Apreparing_variables/gradients/preparing_variables/Mean_grad/Const*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
Bpreparing_variables/gradients/preparing_variables/Mean_grad/Prod_1ProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_2Cpreparing_variables/gradients/preparing_variables/Mean_grad/Const_1*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
�
Epreparing_variables/gradients/preparing_variables/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/MaximumMaximumBpreparing_variables/gradients/preparing_variables/Mean_grad/Prod_1Epreparing_variables/gradients/preparing_variables/Mean_grad/Maximum/y*
_output_shapes
: *
T0
�
Dpreparing_variables/gradients/preparing_variables/Mean_grad/floordivDiv@preparing_variables/gradients/preparing_variables/Mean_grad/ProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Maximum*
_output_shapes
: *
T0
�
@preparing_variables/gradients/preparing_variables/Mean_grad/CastCastDpreparing_variables/gradients/preparing_variables/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/truedivDiv@preparing_variables/gradients/preparing_variables/Mean_grad/Tile@preparing_variables/gradients/preparing_variables/Mean_grad/Cast*#
_output_shapes
:���������*
T0
�
Fpreparing_variables/gradients/preparing_variables/Reshape_2_grad/ShapeShape1preparing_variables/SoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0
�
Hpreparing_variables/gradients/preparing_variables/Reshape_2_grad/ReshapeReshapeCpreparing_variables/gradients/preparing_variables/Mean_grad/truedivFpreparing_variables/gradients/preparing_variables/Reshape_2_grad/Shape*
Tshape0*#
_output_shapes
:���������*
T0
�
(preparing_variables/gradients/zeros_like	ZerosLike3preparing_variables/SoftmaxCrossEntropyWithLogits:1*0
_output_shapes
:������������������*
T0
�
cpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
_preparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsHpreparing_variables/gradients/preparing_variables/Reshape_2_grad/Reshapecpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*'
_output_shapes
:���������*
T0
�
Xpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/mulMul_preparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims3preparing_variables/SoftmaxCrossEntropyWithLogits:1*0
_output_shapes
:������������������*
T0
�
Dpreparing_variables/gradients/preparing_variables/Reshape_grad/ShapeShapepreparing_variables/output/Relu*
_output_shapes
:*
T0*
out_type0
�
Fpreparing_variables/gradients/preparing_variables/Reshape_grad/ReshapeReshapeXpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/mulDpreparing_variables/gradients/preparing_variables/Reshape_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
T0
�
Kpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradReluGradFpreparing_variables/gradients/preparing_variables/Reshape_grad/Reshapepreparing_variables/output/Relu*'
_output_shapes
:���������
*
T0
�
Gpreparing_variables/gradients/preparing_variables/output/add_grad/ShapeShape!preparing_variables/output/MatMul*
_output_shapes
:*
T0*
out_type0
�
Ipreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
�
Wpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgsBroadcastGradientArgsGpreparing_variables/gradients/preparing_variables/output/add_grad/ShapeIpreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Epreparing_variables/gradients/preparing_variables/output/add_grad/SumSumKpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradWpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
�
Ipreparing_variables/gradients/preparing_variables/output/add_grad/ReshapeReshapeEpreparing_variables/gradients/preparing_variables/output/add_grad/SumGpreparing_variables/gradients/preparing_variables/output/add_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
T0
�
Gpreparing_variables/gradients/preparing_variables/output/add_grad/Sum_1SumKpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
�
Kpreparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1ReshapeGpreparing_variables/gradients/preparing_variables/output/add_grad/Sum_1Ipreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1*
Tshape0*
_output_shapes
:
*
T0
�
Rpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_depsNoOpJ^preparing_variables/gradients/preparing_variables/output/add_grad/ReshapeL^preparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1
�
Zpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependencyIdentityIpreparing_variables/gradients/preparing_variables/output/add_grad/ReshapeS^preparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_deps*'
_output_shapes
:���������
*\
_classR
PNloc:@preparing_variables/gradients/preparing_variables/output/add_grad/Reshape*
T0
�
\preparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency_1IdentityKpreparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1S^preparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_deps*
_output_shapes
:
*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1*
T0
�
Kpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulMatMulZpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency!preparing_variables/output/w/read*
transpose_a( *(
_output_shapes
:����������*
transpose_b(*
T0
�
Mpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1MatMul!preparing_variables/hidden_2/ReluZpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	�
*
transpose_b( *
T0
�
Upreparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulN^preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1
�
]preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulV^preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul*
T0
�
_preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1V^preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_deps*
_output_shapes
:	�
*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1*
T0
�
Mpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGradReluGrad]preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency!preparing_variables/hidden_2/Relu*(
_output_shapes
:����������*
T0
�
Ipreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ShapeShape#preparing_variables/hidden_2/MatMul*
_output_shapes
:*
T0*
out_type0
�
Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Ypreparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgsBroadcastGradientArgsIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ShapeKpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Gpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/SumSumMpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
�
Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeReshapeGpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/SumIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape*
Tshape0*(
_output_shapes
:����������*
T0
�
Ipreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Sum_1SumMpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGrad[preparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
�
Mpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1ReshapeIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Sum_1Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1*
Tshape0*
_output_shapes	
:�*
T0
�
Tpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeN^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1
�
\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeU^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_deps*(
_output_shapes
:����������*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape*
T0
�
^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1U^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_deps*
_output_shapes	
:�*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1*
T0
�
Mpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulMatMul\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency#preparing_variables/hidden_2/w/read*
transpose_a( *(
_output_shapes
:����������*
transpose_b(*
T0
�
Opreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1MatMul!preparing_variables/hidden_1/Relu\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
��*
transpose_b( *
T0
�
Wpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_depsNoOpN^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulP^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1
�
_preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependencyIdentityMpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulX^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul*
T0
�
apreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency_1IdentityOpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1X^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_deps* 
_output_shapes
:
��*b
_classX
VTloc:@preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1*
T0
�
Mpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGradReluGrad_preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency!preparing_variables/hidden_1/Relu*(
_output_shapes
:����������*
T0
�
Ipreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ShapeShape#preparing_variables/hidden_1/MatMul*
_output_shapes
:*
T0*
out_type0
�
Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Ypreparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgsBroadcastGradientArgsIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ShapeKpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Gpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/SumSumMpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
�
Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeReshapeGpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/SumIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape*
Tshape0*(
_output_shapes
:����������*
T0
�
Ipreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Sum_1SumMpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGrad[preparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
�
Mpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1ReshapeIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Sum_1Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1*
Tshape0*
_output_shapes	
:�*
T0
�
Tpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeN^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1
�
\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeU^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_deps*(
_output_shapes
:����������*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape*
T0
�
^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1U^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_deps*
_output_shapes	
:�*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1*
T0
�
Mpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulMatMul\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency#preparing_variables/hidden_1/w/read*
transpose_a( *(
_output_shapes
:����������*
transpose_b(*
T0
�
Opreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1MatMulPlaceholder\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
��*
transpose_b( *
T0
�
Wpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_depsNoOpN^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulP^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1
�
_preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependencyIdentityMpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulX^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul*
T0
�
apreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependency_1IdentityOpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1X^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
��*b
_classX
VTloc:@preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1*
T0
v
1preparing_variables/GradientDescent/learning_rateConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_1/w1preparing_variables/GradientDescent/learning_rateapreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependency_1*
use_locking( * 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_1/b1preparing_variables/GradientDescent/learning_rate^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency_1*
use_locking( *
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_2/w1preparing_variables/GradientDescent/learning_rateapreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency_1*
use_locking( * 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_2/b1preparing_variables/GradientDescent/learning_rate^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency_1*
use_locking( *
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0
�
\preparing_variables/GradientDescent/update_preparing_variables/output/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/output/w1preparing_variables/GradientDescent/learning_rate_preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency_1*
use_locking( *
_output_shapes
:	�
*/
_class%
#!loc:@preparing_variables/output/w*
T0
�
\preparing_variables/GradientDescent/update_preparing_variables/output/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/output/b1preparing_variables/GradientDescent/learning_rate\preparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency_1*
use_locking( *
_output_shapes
:
*/
_class%
#!loc:@preparing_variables/output/b*
T0
�
*preparing_variables/GradientDescent/updateNoOp_^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/w/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/b/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/w/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/b/ApplyGradientDescent]^preparing_variables/GradientDescent/update_preparing_variables/output/w/ApplyGradientDescent]^preparing_variables/GradientDescent/update_preparing_variables/output/b/ApplyGradientDescent
�
)preparing_variables/GradientDescent/valueConst+^preparing_variables/GradientDescent/update*
value	B :*
dtype0*2
_class(
&$loc:@preparing_variables/global_step*
_output_shapes
: 
�
#preparing_variables/GradientDescent	AssignAddpreparing_variables/global_step)preparing_variables/GradientDescent/value*
use_locking( *
_output_shapes
: *2
_class(
&$loc:@preparing_variables/global_step*
T0
f
$preparing_variables/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
preparing_variables/ArgMaxArgMaxPlaceholder_1$preparing_variables/ArgMax/dimension*

Tidx0*#
_output_shapes
:���������*
T0
h
&preparing_variables/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
preparing_variables/ArgMax_1ArgMaxpreparing_variables/output/Relu&preparing_variables/ArgMax_1/dimension*

Tidx0*#
_output_shapes
:���������*
T0
�
preparing_variables/EqualEqualpreparing_variables/ArgMaxpreparing_variables/ArgMax_1*#
_output_shapes
:���������*
T0	
z
preparing_variables/Cast_1Castpreparing_variables/Equal*

SrcT0
*#
_output_shapes
:���������*

DstT0
e
preparing_variables/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
preparing_variables/Mean_1Meanpreparing_variables/Cast_1preparing_variables/Const_1*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
^
preparing_variables/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
v
preparing_variables/subSubpreparing_variables/sub/xpreparing_variables/Mean_1*
_output_shapes
: *
T0
�
)preparing_variables/validation_error/tagsConst*5
value,B* B$preparing_variables/validation_error*
dtype0*
_output_shapes
: 
�
$preparing_variables/validation_errorScalarSummary)preparing_variables/validation_error/tagspreparing_variables/sub*
_output_shapes
: *
T0
�
preparing_variables/initNoOp'^preparing_variables/global_step/Assign&^preparing_variables/hidden_1/w/Assign&^preparing_variables/hidden_1/b/Assign&^preparing_variables/hidden_2/w/Assign&^preparing_variables/hidden_2/b/Assign$^preparing_variables/output/w/Assign$^preparing_variables/output/b/Assign
�
&preparing_variables/Merge/MergeSummaryMergeSummarypreparing_variables/loss$preparing_variables/validation_error*
_output_shapes
: *
N
d
preparing_variables/save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
,preparing_variables/save/SaveV2/tensor_namesConst*�
value�B�Bpreparing_variables/global_stepBpreparing_variables/hidden_1/bBpreparing_variables/hidden_1/wBpreparing_variables/hidden_2/bBpreparing_variables/hidden_2/wBpreparing_variables/output/bBpreparing_variables/output/w*
dtype0*
_output_shapes
:
�
0preparing_variables/save/SaveV2/shape_and_slicesConst*!
valueBB B B B B B B *
dtype0*
_output_shapes
:
�
preparing_variables/save/SaveV2SaveV2preparing_variables/save/Const,preparing_variables/save/SaveV2/tensor_names0preparing_variables/save/SaveV2/shape_and_slicespreparing_variables/global_steppreparing_variables/hidden_1/bpreparing_variables/hidden_1/wpreparing_variables/hidden_2/bpreparing_variables/hidden_2/wpreparing_variables/output/bpreparing_variables/output/w*
dtypes
	2
�
+preparing_variables/save/control_dependencyIdentitypreparing_variables/save/Const ^preparing_variables/save/SaveV2*
_output_shapes
: *1
_class'
%#loc:@preparing_variables/save/Const*
T0
�
/preparing_variables/save/RestoreV2/tensor_namesConst*4
value+B)Bpreparing_variables/global_step*
dtype0*
_output_shapes
:
|
3preparing_variables/save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
"preparing_variables/save/RestoreV2	RestoreV2preparing_variables/save/Const/preparing_variables/save/RestoreV2/tensor_names3preparing_variables/save/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
�
preparing_variables/save/AssignAssignpreparing_variables/global_step"preparing_variables/save/RestoreV2*
use_locking(*
_output_shapes
: *2
_class(
&$loc:@preparing_variables/global_step*
T0*
validate_shape(
�
1preparing_variables/save/RestoreV2_1/tensor_namesConst*3
value*B(Bpreparing_variables/hidden_1/b*
dtype0*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
$preparing_variables/save/RestoreV2_1	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_1/tensor_names5preparing_variables/save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
�
!preparing_variables/save/Assign_1Assignpreparing_variables/hidden_1/b$preparing_variables/save/RestoreV2_1*
use_locking(*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
validate_shape(
�
1preparing_variables/save/RestoreV2_2/tensor_namesConst*3
value*B(Bpreparing_variables/hidden_1/w*
dtype0*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
$preparing_variables/save/RestoreV2_2	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_2/tensor_names5preparing_variables/save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
�
!preparing_variables/save/Assign_2Assignpreparing_variables/hidden_1/w$preparing_variables/save/RestoreV2_2*
use_locking(* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0*
validate_shape(
�
1preparing_variables/save/RestoreV2_3/tensor_namesConst*3
value*B(Bpreparing_variables/hidden_2/b*
dtype0*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
$preparing_variables/save/RestoreV2_3	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_3/tensor_names5preparing_variables/save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
�
!preparing_variables/save/Assign_3Assignpreparing_variables/hidden_2/b$preparing_variables/save/RestoreV2_3*
use_locking(*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
validate_shape(
�
1preparing_variables/save/RestoreV2_4/tensor_namesConst*3
value*B(Bpreparing_variables/hidden_2/w*
dtype0*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
$preparing_variables/save/RestoreV2_4	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_4/tensor_names5preparing_variables/save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
�
!preparing_variables/save/Assign_4Assignpreparing_variables/hidden_2/w$preparing_variables/save/RestoreV2_4*
use_locking(* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0*
validate_shape(
�
1preparing_variables/save/RestoreV2_5/tensor_namesConst*1
value(B&Bpreparing_variables/output/b*
dtype0*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
$preparing_variables/save/RestoreV2_5	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_5/tensor_names5preparing_variables/save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
�
!preparing_variables/save/Assign_5Assignpreparing_variables/output/b$preparing_variables/save/RestoreV2_5*
use_locking(*
_output_shapes
:
*/
_class%
#!loc:@preparing_variables/output/b*
T0*
validate_shape(
�
1preparing_variables/save/RestoreV2_6/tensor_namesConst*1
value(B&Bpreparing_variables/output/w*
dtype0*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
$preparing_variables/save/RestoreV2_6	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_6/tensor_names5preparing_variables/save/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
�
!preparing_variables/save/Assign_6Assignpreparing_variables/output/w$preparing_variables/save/RestoreV2_6*
use_locking(*
_output_shapes
:	�
*/
_class%
#!loc:@preparing_variables/output/w*
T0*
validate_shape(
�
$preparing_variables/save/restore_allNoOp ^preparing_variables/save/Assign"^preparing_variables/save/Assign_1"^preparing_variables/save/Assign_2"^preparing_variables/save/Assign_3"^preparing_variables/save/Assign_4"^preparing_variables/save/Assign_5"^preparing_variables/save/Assign_6
�
mlp_init/hidden_1/wVariable*
shape:
��*
dtype0*
	container *
shared_name * 
_output_shapes
:
��
�
6mlp_init/hidden_1/w/Initializer/truncated_normal/shapeConst*
valueB"     *
dtype0*&
_class
loc:@mlp_init/hidden_1/w*
_output_shapes
:
�
5mlp_init/hidden_1/w/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*&
_class
loc:@mlp_init/hidden_1/w*
_output_shapes
: 
�
7mlp_init/hidden_1/w/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*&
_class
loc:@mlp_init/hidden_1/w*
_output_shapes
: 
�
@mlp_init/hidden_1/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_1/w/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
��*

seed *
seed2 *&
_class
loc:@mlp_init/hidden_1/w*
T0
�
4mlp_init/hidden_1/w/Initializer/truncated_normal/mulMul@mlp_init/hidden_1/w/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_1/w/Initializer/truncated_normal/stddev* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_1/w*
T0
�
0mlp_init/hidden_1/w/Initializer/truncated_normalAdd4mlp_init/hidden_1/w/Initializer/truncated_normal/mul5mlp_init/hidden_1/w/Initializer/truncated_normal/mean* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_1/w*
T0
�
mlp_init/hidden_1/w/AssignAssignmlp_init/hidden_1/w0mlp_init/hidden_1/w/Initializer/truncated_normal*
use_locking(* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_1/w*
T0*
validate_shape(
�
mlp_init/hidden_1/w/readIdentitymlp_init/hidden_1/w* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_1/w*
T0

mlp_init/hidden_1/bVariable*
shape:�*
dtype0*
	container *
shared_name *
_output_shapes	
:�
�
6mlp_init/hidden_1/b/Initializer/truncated_normal/shapeConst*
valueB:�*
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
_output_shapes
:
�
5mlp_init/hidden_1/b/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
_output_shapes
: 
�
7mlp_init/hidden_1/b/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
_output_shapes
: 
�
@mlp_init/hidden_1/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_1/b/Initializer/truncated_normal/shape*
dtype0*
_output_shapes	
:�*

seed *
seed2 *&
_class
loc:@mlp_init/hidden_1/b*
T0
�
4mlp_init/hidden_1/b/Initializer/truncated_normal/mulMul@mlp_init/hidden_1/b/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_1/b/Initializer/truncated_normal/stddev*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_1/b*
T0
�
0mlp_init/hidden_1/b/Initializer/truncated_normalAdd4mlp_init/hidden_1/b/Initializer/truncated_normal/mul5mlp_init/hidden_1/b/Initializer/truncated_normal/mean*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_1/b*
T0
�
mlp_init/hidden_1/b/AssignAssignmlp_init/hidden_1/b0mlp_init/hidden_1/b/Initializer/truncated_normal*
use_locking(*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_1/b*
T0*
validate_shape(
�
mlp_init/hidden_1/b/readIdentitymlp_init/hidden_1/b*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_1/b*
T0
�
mlp_init/hidden_1/MatMulMatMulPlaceholdermlp_init/hidden_1/w/read*
transpose_a( *(
_output_shapes
:����������*
transpose_b( *
T0
�
mlp_init/hidden_1/addAddmlp_init/hidden_1/MatMulmlp_init/hidden_1/b/read*(
_output_shapes
:����������*
T0
h
mlp_init/hidden_1/ReluRelumlp_init/hidden_1/add*(
_output_shapes
:����������*
T0
�
mlp_init/hidden_2/wVariable*
shape:
��*
dtype0*
	container *
shared_name * 
_output_shapes
:
��
�
6mlp_init/hidden_2/w/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*&
_class
loc:@mlp_init/hidden_2/w*
_output_shapes
:
�
5mlp_init/hidden_2/w/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*&
_class
loc:@mlp_init/hidden_2/w*
_output_shapes
: 
�
7mlp_init/hidden_2/w/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*&
_class
loc:@mlp_init/hidden_2/w*
_output_shapes
: 
�
@mlp_init/hidden_2/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_2/w/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
��*

seed *
seed2 *&
_class
loc:@mlp_init/hidden_2/w*
T0
�
4mlp_init/hidden_2/w/Initializer/truncated_normal/mulMul@mlp_init/hidden_2/w/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_2/w/Initializer/truncated_normal/stddev* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_2/w*
T0
�
0mlp_init/hidden_2/w/Initializer/truncated_normalAdd4mlp_init/hidden_2/w/Initializer/truncated_normal/mul5mlp_init/hidden_2/w/Initializer/truncated_normal/mean* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_2/w*
T0
�
mlp_init/hidden_2/w/AssignAssignmlp_init/hidden_2/w0mlp_init/hidden_2/w/Initializer/truncated_normal*
use_locking(* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_2/w*
T0*
validate_shape(
�
mlp_init/hidden_2/w/readIdentitymlp_init/hidden_2/w* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_2/w*
T0

mlp_init/hidden_2/bVariable*
shape:�*
dtype0*
	container *
shared_name *
_output_shapes	
:�
�
6mlp_init/hidden_2/b/Initializer/truncated_normal/shapeConst*
valueB:�*
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
_output_shapes
:
�
5mlp_init/hidden_2/b/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
_output_shapes
: 
�
7mlp_init/hidden_2/b/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
_output_shapes
: 
�
@mlp_init/hidden_2/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_2/b/Initializer/truncated_normal/shape*
dtype0*
_output_shapes	
:�*

seed *
seed2 *&
_class
loc:@mlp_init/hidden_2/b*
T0
�
4mlp_init/hidden_2/b/Initializer/truncated_normal/mulMul@mlp_init/hidden_2/b/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_2/b/Initializer/truncated_normal/stddev*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_2/b*
T0
�
0mlp_init/hidden_2/b/Initializer/truncated_normalAdd4mlp_init/hidden_2/b/Initializer/truncated_normal/mul5mlp_init/hidden_2/b/Initializer/truncated_normal/mean*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_2/b*
T0
�
mlp_init/hidden_2/b/AssignAssignmlp_init/hidden_2/b0mlp_init/hidden_2/b/Initializer/truncated_normal*
use_locking(*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_2/b*
T0*
validate_shape(
�
mlp_init/hidden_2/b/readIdentitymlp_init/hidden_2/b*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_2/b*
T0
�
mlp_init/hidden_2/MatMulMatMulmlp_init/hidden_1/Relumlp_init/hidden_2/w/read*
transpose_a( *(
_output_shapes
:����������*
transpose_b( *
T0
�
mlp_init/hidden_2/addAddmlp_init/hidden_2/MatMulmlp_init/hidden_2/b/read*(
_output_shapes
:����������*
T0
h
mlp_init/hidden_2/ReluRelumlp_init/hidden_2/add*(
_output_shapes
:����������*
T0
�
mlp_init/output/wVariable*
shape:	�
*
dtype0*
	container *
shared_name *
_output_shapes
:	�

�
4mlp_init/output/w/Initializer/truncated_normal/shapeConst*
valueB"   
   *
dtype0*$
_class
loc:@mlp_init/output/w*
_output_shapes
:
�
3mlp_init/output/w/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*$
_class
loc:@mlp_init/output/w*
_output_shapes
: 
�
5mlp_init/output/w/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*$
_class
loc:@mlp_init/output/w*
_output_shapes
: 
�
>mlp_init/output/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4mlp_init/output/w/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	�
*

seed *
seed2 *$
_class
loc:@mlp_init/output/w*
T0
�
2mlp_init/output/w/Initializer/truncated_normal/mulMul>mlp_init/output/w/Initializer/truncated_normal/TruncatedNormal5mlp_init/output/w/Initializer/truncated_normal/stddev*
_output_shapes
:	�
*$
_class
loc:@mlp_init/output/w*
T0
�
.mlp_init/output/w/Initializer/truncated_normalAdd2mlp_init/output/w/Initializer/truncated_normal/mul3mlp_init/output/w/Initializer/truncated_normal/mean*
_output_shapes
:	�
*$
_class
loc:@mlp_init/output/w*
T0
�
mlp_init/output/w/AssignAssignmlp_init/output/w.mlp_init/output/w/Initializer/truncated_normal*
use_locking(*
_output_shapes
:	�
*$
_class
loc:@mlp_init/output/w*
T0*
validate_shape(
�
mlp_init/output/w/readIdentitymlp_init/output/w*
_output_shapes
:	�
*$
_class
loc:@mlp_init/output/w*
T0
{
mlp_init/output/bVariable*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

�
4mlp_init/output/b/Initializer/truncated_normal/shapeConst*
valueB:
*
dtype0*$
_class
loc:@mlp_init/output/b*
_output_shapes
:
�
3mlp_init/output/b/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*$
_class
loc:@mlp_init/output/b*
_output_shapes
: 
�
5mlp_init/output/b/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*$
_class
loc:@mlp_init/output/b*
_output_shapes
: 
�
>mlp_init/output/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4mlp_init/output/b/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:
*

seed *
seed2 *$
_class
loc:@mlp_init/output/b*
T0
�
2mlp_init/output/b/Initializer/truncated_normal/mulMul>mlp_init/output/b/Initializer/truncated_normal/TruncatedNormal5mlp_init/output/b/Initializer/truncated_normal/stddev*
_output_shapes
:
*$
_class
loc:@mlp_init/output/b*
T0
�
.mlp_init/output/b/Initializer/truncated_normalAdd2mlp_init/output/b/Initializer/truncated_normal/mul3mlp_init/output/b/Initializer/truncated_normal/mean*
_output_shapes
:
*$
_class
loc:@mlp_init/output/b*
T0
�
mlp_init/output/b/AssignAssignmlp_init/output/b.mlp_init/output/b/Initializer/truncated_normal*
use_locking(*
_output_shapes
:
*$
_class
loc:@mlp_init/output/b*
T0*
validate_shape(
�
mlp_init/output/b/readIdentitymlp_init/output/b*
_output_shapes
:
*$
_class
loc:@mlp_init/output/b*
T0
�
mlp_init/output/MatMulMatMulmlp_init/hidden_2/Relumlp_init/output/w/read*
transpose_a( *'
_output_shapes
:���������
*
transpose_b( *
T0
|
mlp_init/output/addAddmlp_init/output/MatMulmlp_init/output/b/read*'
_output_shapes
:���������
*
T0
c
mlp_init/output/ReluRelumlp_init/output/add*'
_output_shapes
:���������
*
T0
O
mlp_init/RankConst*
value	B :*
dtype0*
_output_shapes
: 
b
mlp_init/ShapeShapemlp_init/output/Relu*
_output_shapes
:*
T0*
out_type0
Q
mlp_init/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
d
mlp_init/Shape_1Shapemlp_init/output/Relu*
_output_shapes
:*
T0*
out_type0
P
mlp_init/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
U
mlp_init/SubSubmlp_init/Rank_1mlp_init/Sub/y*
_output_shapes
: *
T0
d
mlp_init/Slice/beginPackmlp_init/Sub*

axis *
_output_shapes
:*
N*
T0
]
mlp_init/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
mlp_init/SliceSlicemlp_init/Shape_1mlp_init/Slice/beginmlp_init/Slice/size*
Index0*
_output_shapes
:*
T0
\
mlp_init/concat/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 
k
mlp_init/concat/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
mlp_init/concatConcatmlp_init/concat/concat_dimmlp_init/concat/values_0mlp_init/Slice*
_output_shapes
:*
N*
T0
�
mlp_init/ReshapeReshapemlp_init/output/Relumlp_init/concat*
Tshape0*0
_output_shapes
:������������������*
T0
Q
mlp_init/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
]
mlp_init/Shape_2ShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
R
mlp_init/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
Y
mlp_init/Sub_1Submlp_init/Rank_2mlp_init/Sub_1/y*
_output_shapes
: *
T0
h
mlp_init/Slice_1/beginPackmlp_init/Sub_1*

axis *
_output_shapes
:*
N*
T0
_
mlp_init/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
mlp_init/Slice_1Slicemlp_init/Shape_2mlp_init/Slice_1/beginmlp_init/Slice_1/size*
Index0*
_output_shapes
:*
T0
^
mlp_init/concat_1/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 
m
mlp_init/concat_1/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
mlp_init/concat_1Concatmlp_init/concat_1/concat_dimmlp_init/concat_1/values_0mlp_init/Slice_1*
_output_shapes
:*
N*
T0
�
mlp_init/Reshape_1ReshapePlaceholder_1mlp_init/concat_1*
Tshape0*0
_output_shapes
:������������������*
T0
�
&mlp_init/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsmlp_init/Reshapemlp_init/Reshape_1*?
_output_shapes-
+:���������:������������������*
T0
R
mlp_init/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
W
mlp_init/Sub_2Submlp_init/Rankmlp_init/Sub_2/y*
_output_shapes
: *
T0
`
mlp_init/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
g
mlp_init/Slice_2/sizePackmlp_init/Sub_2*

axis *
_output_shapes
:*
N*
T0
�
mlp_init/Slice_2Slicemlp_init/Shapemlp_init/Slice_2/beginmlp_init/Slice_2/size*
Index0*#
_output_shapes
:���������*
T0
�
mlp_init/Reshape_2Reshape&mlp_init/SoftmaxCrossEntropyWithLogitsmlp_init/Slice_2*
Tshape0*#
_output_shapes
:���������*
T0
X
mlp_init/ConstConst*
valueB: *
dtype0*
_output_shapes
:
w
mlp_init/MeanMeanmlp_init/Reshape_2mlp_init/Const*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
�
mlp_init/initNoOp^mlp_init/hidden_1/w/Assign^mlp_init/hidden_1/b/Assign^mlp_init/hidden_2/w/Assign^mlp_init/hidden_2/b/Assign^mlp_init/output/w/Assign^mlp_init/output/b/Assign
f
mlp_inter/PlaceholderPlaceholder*
shape
:*
dtype0*
_output_shapes

:
T
mlp_inter/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
e
mlp_inter/subSubmlp_inter/sub/xmlp_inter/Placeholder*
_output_shapes

:*
T0
s
mlp_inter/mulMul#preparing_variables/hidden_1/w/readmlp_inter/sub* 
_output_shapes
:
��*
T0
r
mlp_inter/mul_1Mulmlp_init/hidden_1/w/readmlp_inter/Placeholder* 
_output_shapes
:
��*
T0
_
mlp_inter/addAddmlp_inter/mulmlp_inter/mul_1* 
_output_shapes
:
��*
T0
V
mlp_inter/sub_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
i
mlp_inter/sub_1Submlp_inter/sub_1/xmlp_inter/Placeholder*
_output_shapes

:*
T0
v
mlp_inter/mul_2Mul#preparing_variables/hidden_1/b/readmlp_inter/sub_1*
_output_shapes
:	�*
T0
q
mlp_inter/mul_3Mulmlp_init/hidden_1/b/readmlp_inter/Placeholder*
_output_shapes
:	�*
T0
b
mlp_inter/add_1Addmlp_inter/mul_2mlp_inter/mul_3*
_output_shapes
:	�*
T0
V
mlp_inter/sub_2/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
i
mlp_inter/sub_2Submlp_inter/sub_2/xmlp_inter/Placeholder*
_output_shapes

:*
T0
w
mlp_inter/mul_4Mul#preparing_variables/hidden_2/w/readmlp_inter/sub_2* 
_output_shapes
:
��*
T0
r
mlp_inter/mul_5Mulmlp_init/hidden_2/w/readmlp_inter/Placeholder* 
_output_shapes
:
��*
T0
c
mlp_inter/add_2Addmlp_inter/mul_4mlp_inter/mul_5* 
_output_shapes
:
��*
T0
V
mlp_inter/sub_3/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
i
mlp_inter/sub_3Submlp_inter/sub_3/xmlp_inter/Placeholder*
_output_shapes

:*
T0
v
mlp_inter/mul_6Mul#preparing_variables/hidden_2/b/readmlp_inter/sub_3*
_output_shapes
:	�*
T0
q
mlp_inter/mul_7Mulmlp_init/hidden_2/b/readmlp_inter/Placeholder*
_output_shapes
:	�*
T0
b
mlp_inter/add_3Addmlp_inter/mul_6mlp_inter/mul_7*
_output_shapes
:	�*
T0
V
mlp_inter/sub_4/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
i
mlp_inter/sub_4Submlp_inter/sub_4/xmlp_inter/Placeholder*
_output_shapes

:*
T0
t
mlp_inter/mul_8Mul!preparing_variables/output/w/readmlp_inter/sub_4*
_output_shapes
:	�
*
T0
o
mlp_inter/mul_9Mulmlp_init/output/w/readmlp_inter/Placeholder*
_output_shapes
:	�
*
T0
b
mlp_inter/add_4Addmlp_inter/mul_8mlp_inter/mul_9*
_output_shapes
:	�
*
T0
V
mlp_inter/sub_5/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
i
mlp_inter/sub_5Submlp_inter/sub_5/xmlp_inter/Placeholder*
_output_shapes

:*
T0
t
mlp_inter/mul_10Mul!preparing_variables/output/b/readmlp_inter/sub_5*
_output_shapes

:
*
T0
o
mlp_inter/mul_11Mulmlp_init/output/b/readmlp_inter/Placeholder*
_output_shapes

:
*
T0
c
mlp_inter/add_5Addmlp_inter/mul_10mlp_inter/mul_11*
_output_shapes

:
*
T0
�
mlp_inter/MatMulMatMulPlaceholdermlp_inter/add*
transpose_a( *(
_output_shapes
:����������*
transpose_b( *
T0
l
mlp_inter/add_6Addmlp_inter/MatMulmlp_inter/add_1*(
_output_shapes
:����������*
T0
Z
mlp_inter/ReluRelumlp_inter/add_6*(
_output_shapes
:����������*
T0
�
mlp_inter/MatMul_1MatMulmlp_inter/Relumlp_inter/add_2*
transpose_a( *(
_output_shapes
:����������*
transpose_b( *
T0
n
mlp_inter/add_7Addmlp_inter/MatMul_1mlp_inter/add_3*(
_output_shapes
:����������*
T0
\
mlp_inter/Relu_1Relumlp_inter/add_7*(
_output_shapes
:����������*
T0
�
mlp_inter/MatMul_2MatMulmlp_inter/Relu_1mlp_inter/add_4*
transpose_a( *'
_output_shapes
:���������
*
transpose_b( *
T0
m
mlp_inter/add_8Addmlp_inter/MatMul_2mlp_inter/add_5*'
_output_shapes
:���������
*
T0
[
mlp_inter/Relu_2Relumlp_inter/add_8*'
_output_shapes
:���������
*
T0
P
mlp_inter/RankConst*
value	B :*
dtype0*
_output_shapes
: 
\
mlp_inter/ShapeShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
R
mlp_inter/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
^
mlp_inter/Shape_1ShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
Q
mlp_inter/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
X
mlp_inter/SubSubmlp_inter/Rank_1mlp_inter/Sub/y*
_output_shapes
: *
T0
f
mlp_inter/Slice/beginPackmlp_inter/Sub*

axis *
_output_shapes
:*
N*
T0
^
mlp_inter/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
mlp_inter/SliceSlicemlp_inter/Shape_1mlp_inter/Slice/beginmlp_inter/Slice/size*
Index0*
_output_shapes
:*
T0
]
mlp_inter/concat/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 
l
mlp_inter/concat/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
mlp_inter/concatConcatmlp_inter/concat/concat_dimmlp_inter/concat/values_0mlp_inter/Slice*
_output_shapes
:*
N*
T0
�
mlp_inter/ReshapeReshapePlaceholder_1mlp_inter/concat*
Tshape0*0
_output_shapes
:������������������*
T0
R
mlp_inter/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
a
mlp_inter/Shape_2Shapemlp_inter/Relu_2*
_output_shapes
:*
T0*
out_type0
S
mlp_inter/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
mlp_inter/Sub_1Submlp_inter/Rank_2mlp_inter/Sub_1/y*
_output_shapes
: *
T0
j
mlp_inter/Slice_1/beginPackmlp_inter/Sub_1*

axis *
_output_shapes
:*
N*
T0
`
mlp_inter/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
mlp_inter/Slice_1Slicemlp_inter/Shape_2mlp_inter/Slice_1/beginmlp_inter/Slice_1/size*
Index0*
_output_shapes
:*
T0
_
mlp_inter/concat_1/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 
n
mlp_inter/concat_1/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
mlp_inter/concat_1Concatmlp_inter/concat_1/concat_dimmlp_inter/concat_1/values_0mlp_inter/Slice_1*
_output_shapes
:*
N*
T0
�
mlp_inter/Reshape_1Reshapemlp_inter/Relu_2mlp_inter/concat_1*
Tshape0*0
_output_shapes
:������������������*
T0
�
'mlp_inter/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsmlp_inter/Reshapemlp_inter/Reshape_1*?
_output_shapes-
+:���������:������������������*
T0
S
mlp_inter/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
Z
mlp_inter/Sub_2Submlp_inter/Rankmlp_inter/Sub_2/y*
_output_shapes
: *
T0
a
mlp_inter/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
i
mlp_inter/Slice_2/sizePackmlp_inter/Sub_2*

axis *
_output_shapes
:*
N*
T0
�
mlp_inter/Slice_2Slicemlp_inter/Shapemlp_inter/Slice_2/beginmlp_inter/Slice_2/size*
Index0*#
_output_shapes
:���������*
T0
�
mlp_inter/Reshape_2Reshape'mlp_inter/SoftmaxCrossEntropyWithLogitsmlp_inter/Slice_2*
Tshape0*#
_output_shapes
:���������*
T0
Y
mlp_inter/ConstConst*
valueB: *
dtype0*
_output_shapes
:
z
mlp_inter/MeanMeanmlp_inter/Reshape_2mlp_inter/Const*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
n
mlp_inter/ScalarSummary/tagsConst*"
valueB Binterpolated_cost*
dtype0*
_output_shapes
: 
w
mlp_inter/ScalarSummaryScalarSummarymlp_inter/ScalarSummary/tagsmlp_inter/Mean*
_output_shapes
: *
T0")�>_*?     ��A�	ZfC~�7�AJ��
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
shape: *
dtype0*(
_output_shapes
:����������
_
Placeholder_1Placeholder*
shape: *
dtype0*'
_output_shapes
:���������

o
-preparing_variables/global_step/initial_valueConst*
value	B : *
dtype0*
_output_shapes
: 
�
preparing_variables/global_stepVariable*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
�
&preparing_variables/global_step/AssignAssignpreparing_variables/global_step-preparing_variables/global_step/initial_value*
use_locking(*
_output_shapes
: *2
_class(
&$loc:@preparing_variables/global_step*
T0*
validate_shape(
�
$preparing_variables/global_step/readIdentitypreparing_variables/global_step*
_output_shapes
: *2
_class(
&$loc:@preparing_variables/global_step*
T0
�
preparing_variables/hidden_1/wVariable*
shape:
��*
dtype0*
	container *
shared_name * 
_output_shapes
:
��
�
Apreparing_variables/hidden_1/w/Initializer/truncated_normal/shapeConst*
valueB"     *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
_output_shapes
:
�
@preparing_variables/hidden_1/w/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
_output_shapes
: 
�
Bpreparing_variables/hidden_1/w/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
_output_shapes
: 
�
Kpreparing_variables/hidden_1/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_1/w/Initializer/truncated_normal/shape*
dtype0*
T0*

seed *
seed2 *1
_class'
%#loc:@preparing_variables/hidden_1/w* 
_output_shapes
:
��
�
?preparing_variables/hidden_1/w/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_1/w/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_1/w/Initializer/truncated_normal/stddev* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0
�
;preparing_variables/hidden_1/w/Initializer/truncated_normalAdd?preparing_variables/hidden_1/w/Initializer/truncated_normal/mul@preparing_variables/hidden_1/w/Initializer/truncated_normal/mean* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0
�
%preparing_variables/hidden_1/w/AssignAssignpreparing_variables/hidden_1/w;preparing_variables/hidden_1/w/Initializer/truncated_normal*
use_locking(* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0*
validate_shape(
�
#preparing_variables/hidden_1/w/readIdentitypreparing_variables/hidden_1/w* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0
�
preparing_variables/hidden_1/bVariable*
shape:�*
dtype0*
	container *
shared_name *
_output_shapes	
:�
�
Apreparing_variables/hidden_1/b/Initializer/truncated_normal/shapeConst*
valueB:�*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
_output_shapes
:
�
@preparing_variables/hidden_1/b/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
_output_shapes
: 
�
Bpreparing_variables/hidden_1/b/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
_output_shapes
: 
�
Kpreparing_variables/hidden_1/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_1/b/Initializer/truncated_normal/shape*
dtype0*
T0*

seed *
seed2 *1
_class'
%#loc:@preparing_variables/hidden_1/b*
_output_shapes	
:�
�
?preparing_variables/hidden_1/b/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_1/b/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_1/b/Initializer/truncated_normal/stddev*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0
�
;preparing_variables/hidden_1/b/Initializer/truncated_normalAdd?preparing_variables/hidden_1/b/Initializer/truncated_normal/mul@preparing_variables/hidden_1/b/Initializer/truncated_normal/mean*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0
�
%preparing_variables/hidden_1/b/AssignAssignpreparing_variables/hidden_1/b;preparing_variables/hidden_1/b/Initializer/truncated_normal*
use_locking(*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
validate_shape(
�
#preparing_variables/hidden_1/b/readIdentitypreparing_variables/hidden_1/b*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0
�
#preparing_variables/hidden_1/MatMulMatMulPlaceholder#preparing_variables/hidden_1/w/read*
transpose_a( *(
_output_shapes
:����������*
T0*
transpose_b( 
�
 preparing_variables/hidden_1/addAdd#preparing_variables/hidden_1/MatMul#preparing_variables/hidden_1/b/read*(
_output_shapes
:����������*
T0
~
!preparing_variables/hidden_1/ReluRelu preparing_variables/hidden_1/add*(
_output_shapes
:����������*
T0
�
preparing_variables/hidden_2/wVariable*
shape:
��*
dtype0*
	container *
shared_name * 
_output_shapes
:
��
�
Apreparing_variables/hidden_2/w/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
_output_shapes
:
�
@preparing_variables/hidden_2/w/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
_output_shapes
: 
�
Bpreparing_variables/hidden_2/w/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
_output_shapes
: 
�
Kpreparing_variables/hidden_2/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_2/w/Initializer/truncated_normal/shape*
dtype0*
T0*

seed *
seed2 *1
_class'
%#loc:@preparing_variables/hidden_2/w* 
_output_shapes
:
��
�
?preparing_variables/hidden_2/w/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_2/w/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_2/w/Initializer/truncated_normal/stddev* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0
�
;preparing_variables/hidden_2/w/Initializer/truncated_normalAdd?preparing_variables/hidden_2/w/Initializer/truncated_normal/mul@preparing_variables/hidden_2/w/Initializer/truncated_normal/mean* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0
�
%preparing_variables/hidden_2/w/AssignAssignpreparing_variables/hidden_2/w;preparing_variables/hidden_2/w/Initializer/truncated_normal*
use_locking(* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0*
validate_shape(
�
#preparing_variables/hidden_2/w/readIdentitypreparing_variables/hidden_2/w* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0
�
preparing_variables/hidden_2/bVariable*
shape:�*
dtype0*
	container *
shared_name *
_output_shapes	
:�
�
Apreparing_variables/hidden_2/b/Initializer/truncated_normal/shapeConst*
valueB:�*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
_output_shapes
:
�
@preparing_variables/hidden_2/b/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
_output_shapes
: 
�
Bpreparing_variables/hidden_2/b/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
_output_shapes
: 
�
Kpreparing_variables/hidden_2/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_2/b/Initializer/truncated_normal/shape*
dtype0*
T0*

seed *
seed2 *1
_class'
%#loc:@preparing_variables/hidden_2/b*
_output_shapes	
:�
�
?preparing_variables/hidden_2/b/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_2/b/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_2/b/Initializer/truncated_normal/stddev*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0
�
;preparing_variables/hidden_2/b/Initializer/truncated_normalAdd?preparing_variables/hidden_2/b/Initializer/truncated_normal/mul@preparing_variables/hidden_2/b/Initializer/truncated_normal/mean*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0
�
%preparing_variables/hidden_2/b/AssignAssignpreparing_variables/hidden_2/b;preparing_variables/hidden_2/b/Initializer/truncated_normal*
use_locking(*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
validate_shape(
�
#preparing_variables/hidden_2/b/readIdentitypreparing_variables/hidden_2/b*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0
�
#preparing_variables/hidden_2/MatMulMatMul!preparing_variables/hidden_1/Relu#preparing_variables/hidden_2/w/read*
transpose_a( *(
_output_shapes
:����������*
T0*
transpose_b( 
�
 preparing_variables/hidden_2/addAdd#preparing_variables/hidden_2/MatMul#preparing_variables/hidden_2/b/read*(
_output_shapes
:����������*
T0
~
!preparing_variables/hidden_2/ReluRelu preparing_variables/hidden_2/add*(
_output_shapes
:����������*
T0
�
preparing_variables/output/wVariable*
shape:	�
*
dtype0*
	container *
shared_name *
_output_shapes
:	�

�
?preparing_variables/output/w/Initializer/truncated_normal/shapeConst*
valueB"   
   *
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
_output_shapes
:
�
>preparing_variables/output/w/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
_output_shapes
: 
�
@preparing_variables/output/w/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
_output_shapes
: 
�
Ipreparing_variables/output/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?preparing_variables/output/w/Initializer/truncated_normal/shape*
dtype0*
T0*

seed *
seed2 */
_class%
#!loc:@preparing_variables/output/w*
_output_shapes
:	�

�
=preparing_variables/output/w/Initializer/truncated_normal/mulMulIpreparing_variables/output/w/Initializer/truncated_normal/TruncatedNormal@preparing_variables/output/w/Initializer/truncated_normal/stddev*
_output_shapes
:	�
*/
_class%
#!loc:@preparing_variables/output/w*
T0
�
9preparing_variables/output/w/Initializer/truncated_normalAdd=preparing_variables/output/w/Initializer/truncated_normal/mul>preparing_variables/output/w/Initializer/truncated_normal/mean*
_output_shapes
:	�
*/
_class%
#!loc:@preparing_variables/output/w*
T0
�
#preparing_variables/output/w/AssignAssignpreparing_variables/output/w9preparing_variables/output/w/Initializer/truncated_normal*
use_locking(*
_output_shapes
:	�
*/
_class%
#!loc:@preparing_variables/output/w*
T0*
validate_shape(
�
!preparing_variables/output/w/readIdentitypreparing_variables/output/w*
_output_shapes
:	�
*/
_class%
#!loc:@preparing_variables/output/w*
T0
�
preparing_variables/output/bVariable*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

�
?preparing_variables/output/b/Initializer/truncated_normal/shapeConst*
valueB:
*
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
_output_shapes
:
�
>preparing_variables/output/b/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
_output_shapes
: 
�
@preparing_variables/output/b/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
_output_shapes
: 
�
Ipreparing_variables/output/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?preparing_variables/output/b/Initializer/truncated_normal/shape*
dtype0*
T0*

seed *
seed2 */
_class%
#!loc:@preparing_variables/output/b*
_output_shapes
:

�
=preparing_variables/output/b/Initializer/truncated_normal/mulMulIpreparing_variables/output/b/Initializer/truncated_normal/TruncatedNormal@preparing_variables/output/b/Initializer/truncated_normal/stddev*
_output_shapes
:
*/
_class%
#!loc:@preparing_variables/output/b*
T0
�
9preparing_variables/output/b/Initializer/truncated_normalAdd=preparing_variables/output/b/Initializer/truncated_normal/mul>preparing_variables/output/b/Initializer/truncated_normal/mean*
_output_shapes
:
*/
_class%
#!loc:@preparing_variables/output/b*
T0
�
#preparing_variables/output/b/AssignAssignpreparing_variables/output/b9preparing_variables/output/b/Initializer/truncated_normal*
use_locking(*
_output_shapes
:
*/
_class%
#!loc:@preparing_variables/output/b*
T0*
validate_shape(
�
!preparing_variables/output/b/readIdentitypreparing_variables/output/b*
_output_shapes
:
*/
_class%
#!loc:@preparing_variables/output/b*
T0
�
!preparing_variables/output/MatMulMatMul!preparing_variables/hidden_2/Relu!preparing_variables/output/w/read*
transpose_a( *'
_output_shapes
:���������
*
T0*
transpose_b( 
�
preparing_variables/output/addAdd!preparing_variables/output/MatMul!preparing_variables/output/b/read*'
_output_shapes
:���������
*
T0
y
preparing_variables/output/ReluRelupreparing_variables/output/add*'
_output_shapes
:���������
*
T0
Z
preparing_variables/RankConst*
value	B :*
dtype0*
_output_shapes
: 
x
preparing_variables/ShapeShapepreparing_variables/output/Relu*
_output_shapes
:*
T0*
out_type0
\
preparing_variables/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
z
preparing_variables/Shape_1Shapepreparing_variables/output/Relu*
_output_shapes
:*
T0*
out_type0
[
preparing_variables/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
v
preparing_variables/SubSubpreparing_variables/Rank_1preparing_variables/Sub/y*
_output_shapes
: *
T0
z
preparing_variables/Slice/beginPackpreparing_variables/Sub*

axis *
_output_shapes
:*
N*
T0
h
preparing_variables/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
preparing_variables/SliceSlicepreparing_variables/Shape_1preparing_variables/Slice/beginpreparing_variables/Slice/size*
Index0*
_output_shapes
:*
T0
g
%preparing_variables/concat/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 
v
#preparing_variables/concat/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
preparing_variables/concatConcat%preparing_variables/concat/concat_dim#preparing_variables/concat/values_0preparing_variables/Slice*
_output_shapes
:*
N*
T0
�
preparing_variables/ReshapeReshapepreparing_variables/output/Relupreparing_variables/concat*
Tshape0*0
_output_shapes
:������������������*
T0
\
preparing_variables/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
h
preparing_variables/Shape_2ShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
]
preparing_variables/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
z
preparing_variables/Sub_1Subpreparing_variables/Rank_2preparing_variables/Sub_1/y*
_output_shapes
: *
T0
~
!preparing_variables/Slice_1/beginPackpreparing_variables/Sub_1*

axis *
_output_shapes
:*
N*
T0
j
 preparing_variables/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
preparing_variables/Slice_1Slicepreparing_variables/Shape_2!preparing_variables/Slice_1/begin preparing_variables/Slice_1/size*
Index0*
_output_shapes
:*
T0
i
'preparing_variables/concat_1/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 
x
%preparing_variables/concat_1/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
preparing_variables/concat_1Concat'preparing_variables/concat_1/concat_dim%preparing_variables/concat_1/values_0preparing_variables/Slice_1*
_output_shapes
:*
N*
T0
�
preparing_variables/Reshape_1ReshapePlaceholder_1preparing_variables/concat_1*
Tshape0*0
_output_shapes
:������������������*
T0
�
1preparing_variables/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitspreparing_variables/Reshapepreparing_variables/Reshape_1*?
_output_shapes-
+:���������:������������������*
T0
]
preparing_variables/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
x
preparing_variables/Sub_2Subpreparing_variables/Rankpreparing_variables/Sub_2/y*
_output_shapes
: *
T0
k
!preparing_variables/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
}
 preparing_variables/Slice_2/sizePackpreparing_variables/Sub_2*

axis *
_output_shapes
:*
N*
T0
�
preparing_variables/Slice_2Slicepreparing_variables/Shape!preparing_variables/Slice_2/begin preparing_variables/Slice_2/size*
Index0*#
_output_shapes
:���������*
T0
�
preparing_variables/Reshape_2Reshape1preparing_variables/SoftmaxCrossEntropyWithLogitspreparing_variables/Slice_2*
Tshape0*#
_output_shapes
:���������*
T0
c
preparing_variables/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
preparing_variables/MeanMeanpreparing_variables/Reshape_2preparing_variables/Const*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
v
preparing_variables/loss/tagsConst*)
value B Bpreparing_variables/loss*
dtype0*
_output_shapes
: 
�
preparing_variables/lossScalarSummarypreparing_variables/loss/tagspreparing_variables/Mean*
_output_shapes
: *
T0
f
#preparing_variables/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
h
#preparing_variables/gradients/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
"preparing_variables/gradients/FillFill#preparing_variables/gradients/Shape#preparing_variables/gradients/Const*
_output_shapes
: *
T0
�
Ipreparing_variables/gradients/preparing_variables/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/ReshapeReshape"preparing_variables/gradients/FillIpreparing_variables/gradients/preparing_variables/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
�
Apreparing_variables/gradients/preparing_variables/Mean_grad/ShapeShapepreparing_variables/Reshape_2*
_output_shapes
:*
T0*
out_type0
�
@preparing_variables/gradients/preparing_variables/Mean_grad/TileTileCpreparing_variables/gradients/preparing_variables/Mean_grad/ReshapeApreparing_variables/gradients/preparing_variables/Mean_grad/Shape*#
_output_shapes
:���������*

Tmultiples0*
T0
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_1Shapepreparing_variables/Reshape_2*
_output_shapes
:*
T0*
out_type0
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
�
Apreparing_variables/gradients/preparing_variables/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
@preparing_variables/gradients/preparing_variables/Mean_grad/ProdProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_1Apreparing_variables/gradients/preparing_variables/Mean_grad/Const*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
Bpreparing_variables/gradients/preparing_variables/Mean_grad/Prod_1ProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_2Cpreparing_variables/gradients/preparing_variables/Mean_grad/Const_1*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
�
Epreparing_variables/gradients/preparing_variables/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/MaximumMaximumBpreparing_variables/gradients/preparing_variables/Mean_grad/Prod_1Epreparing_variables/gradients/preparing_variables/Mean_grad/Maximum/y*
_output_shapes
: *
T0
�
Dpreparing_variables/gradients/preparing_variables/Mean_grad/floordivDiv@preparing_variables/gradients/preparing_variables/Mean_grad/ProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Maximum*
_output_shapes
: *
T0
�
@preparing_variables/gradients/preparing_variables/Mean_grad/CastCastDpreparing_variables/gradients/preparing_variables/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
Cpreparing_variables/gradients/preparing_variables/Mean_grad/truedivDiv@preparing_variables/gradients/preparing_variables/Mean_grad/Tile@preparing_variables/gradients/preparing_variables/Mean_grad/Cast*#
_output_shapes
:���������*
T0
�
Fpreparing_variables/gradients/preparing_variables/Reshape_2_grad/ShapeShape1preparing_variables/SoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0
�
Hpreparing_variables/gradients/preparing_variables/Reshape_2_grad/ReshapeReshapeCpreparing_variables/gradients/preparing_variables/Mean_grad/truedivFpreparing_variables/gradients/preparing_variables/Reshape_2_grad/Shape*
Tshape0*#
_output_shapes
:���������*
T0
�
(preparing_variables/gradients/zeros_like	ZerosLike3preparing_variables/SoftmaxCrossEntropyWithLogits:1*0
_output_shapes
:������������������*
T0
�
cpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
_preparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsHpreparing_variables/gradients/preparing_variables/Reshape_2_grad/Reshapecpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*'
_output_shapes
:���������*
T0
�
Xpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/mulMul_preparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims3preparing_variables/SoftmaxCrossEntropyWithLogits:1*0
_output_shapes
:������������������*
T0
�
Dpreparing_variables/gradients/preparing_variables/Reshape_grad/ShapeShapepreparing_variables/output/Relu*
_output_shapes
:*
T0*
out_type0
�
Fpreparing_variables/gradients/preparing_variables/Reshape_grad/ReshapeReshapeXpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/mulDpreparing_variables/gradients/preparing_variables/Reshape_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
T0
�
Kpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradReluGradFpreparing_variables/gradients/preparing_variables/Reshape_grad/Reshapepreparing_variables/output/Relu*'
_output_shapes
:���������
*
T0
�
Gpreparing_variables/gradients/preparing_variables/output/add_grad/ShapeShape!preparing_variables/output/MatMul*
_output_shapes
:*
T0*
out_type0
�
Ipreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
�
Wpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgsBroadcastGradientArgsGpreparing_variables/gradients/preparing_variables/output/add_grad/ShapeIpreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Epreparing_variables/gradients/preparing_variables/output/add_grad/SumSumKpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradWpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
�
Ipreparing_variables/gradients/preparing_variables/output/add_grad/ReshapeReshapeEpreparing_variables/gradients/preparing_variables/output/add_grad/SumGpreparing_variables/gradients/preparing_variables/output/add_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
T0
�
Gpreparing_variables/gradients/preparing_variables/output/add_grad/Sum_1SumKpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
�
Kpreparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1ReshapeGpreparing_variables/gradients/preparing_variables/output/add_grad/Sum_1Ipreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1*
Tshape0*
_output_shapes
:
*
T0
�
Rpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_depsNoOpJ^preparing_variables/gradients/preparing_variables/output/add_grad/ReshapeL^preparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1
�
Zpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependencyIdentityIpreparing_variables/gradients/preparing_variables/output/add_grad/ReshapeS^preparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_deps*'
_output_shapes
:���������
*\
_classR
PNloc:@preparing_variables/gradients/preparing_variables/output/add_grad/Reshape*
T0
�
\preparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency_1IdentityKpreparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1S^preparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_deps*
_output_shapes
:
*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1*
T0
�
Kpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulMatMulZpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency!preparing_variables/output/w/read*
transpose_a( *(
_output_shapes
:����������*
T0*
transpose_b(
�
Mpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1MatMul!preparing_variables/hidden_2/ReluZpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	�
*
T0*
transpose_b( 
�
Upreparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulN^preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1
�
]preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulV^preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul*
T0
�
_preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1V^preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_deps*
_output_shapes
:	�
*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1*
T0
�
Mpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGradReluGrad]preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency!preparing_variables/hidden_2/Relu*(
_output_shapes
:����������*
T0
�
Ipreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ShapeShape#preparing_variables/hidden_2/MatMul*
_output_shapes
:*
T0*
out_type0
�
Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Ypreparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgsBroadcastGradientArgsIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ShapeKpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Gpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/SumSumMpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
�
Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeReshapeGpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/SumIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape*
Tshape0*(
_output_shapes
:����������*
T0
�
Ipreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Sum_1SumMpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGrad[preparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
�
Mpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1ReshapeIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Sum_1Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1*
Tshape0*
_output_shapes	
:�*
T0
�
Tpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeN^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1
�
\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeU^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_deps*(
_output_shapes
:����������*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape*
T0
�
^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1U^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_deps*
_output_shapes	
:�*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1*
T0
�
Mpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulMatMul\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency#preparing_variables/hidden_2/w/read*
transpose_a( *(
_output_shapes
:����������*
T0*
transpose_b(
�
Opreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1MatMul!preparing_variables/hidden_1/Relu\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
��*
T0*
transpose_b( 
�
Wpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_depsNoOpN^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulP^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1
�
_preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependencyIdentityMpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulX^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul*
T0
�
apreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency_1IdentityOpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1X^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_deps* 
_output_shapes
:
��*b
_classX
VTloc:@preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1*
T0
�
Mpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGradReluGrad_preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency!preparing_variables/hidden_1/Relu*(
_output_shapes
:����������*
T0
�
Ipreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ShapeShape#preparing_variables/hidden_1/MatMul*
_output_shapes
:*
T0*
out_type0
�
Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Ypreparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgsBroadcastGradientArgsIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ShapeKpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Gpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/SumSumMpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
�
Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeReshapeGpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/SumIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape*
Tshape0*(
_output_shapes
:����������*
T0
�
Ipreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Sum_1SumMpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGrad[preparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
�
Mpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1ReshapeIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Sum_1Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1*
Tshape0*
_output_shapes	
:�*
T0
�
Tpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeN^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1
�
\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeU^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_deps*(
_output_shapes
:����������*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape*
T0
�
^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1U^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_deps*
_output_shapes	
:�*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1*
T0
�
Mpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulMatMul\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency#preparing_variables/hidden_1/w/read*
transpose_a( *(
_output_shapes
:����������*
T0*
transpose_b(
�
Opreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1MatMulPlaceholder\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
��*
T0*
transpose_b( 
�
Wpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_depsNoOpN^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulP^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1
�
_preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependencyIdentityMpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulX^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul*
T0
�
apreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependency_1IdentityOpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1X^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
��*b
_classX
VTloc:@preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1*
T0
v
1preparing_variables/GradientDescent/learning_rateConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_1/w1preparing_variables/GradientDescent/learning_rateapreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependency_1*
use_locking( * 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_1/b1preparing_variables/GradientDescent/learning_rate^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency_1*
use_locking( *
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_2/w1preparing_variables/GradientDescent/learning_rateapreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency_1*
use_locking( * 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0
�
^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_2/b1preparing_variables/GradientDescent/learning_rate^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency_1*
use_locking( *
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0
�
\preparing_variables/GradientDescent/update_preparing_variables/output/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/output/w1preparing_variables/GradientDescent/learning_rate_preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency_1*
use_locking( *
_output_shapes
:	�
*/
_class%
#!loc:@preparing_variables/output/w*
T0
�
\preparing_variables/GradientDescent/update_preparing_variables/output/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/output/b1preparing_variables/GradientDescent/learning_rate\preparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency_1*
use_locking( *
_output_shapes
:
*/
_class%
#!loc:@preparing_variables/output/b*
T0
�
*preparing_variables/GradientDescent/updateNoOp_^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/w/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/b/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/w/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/b/ApplyGradientDescent]^preparing_variables/GradientDescent/update_preparing_variables/output/w/ApplyGradientDescent]^preparing_variables/GradientDescent/update_preparing_variables/output/b/ApplyGradientDescent
�
)preparing_variables/GradientDescent/valueConst+^preparing_variables/GradientDescent/update*
value	B :*
dtype0*2
_class(
&$loc:@preparing_variables/global_step*
_output_shapes
: 
�
#preparing_variables/GradientDescent	AssignAddpreparing_variables/global_step)preparing_variables/GradientDescent/value*
use_locking( *
_output_shapes
: *2
_class(
&$loc:@preparing_variables/global_step*
T0
f
$preparing_variables/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
preparing_variables/ArgMaxArgMaxPlaceholder_1$preparing_variables/ArgMax/dimension*

Tidx0*#
_output_shapes
:���������*
T0
h
&preparing_variables/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
preparing_variables/ArgMax_1ArgMaxpreparing_variables/output/Relu&preparing_variables/ArgMax_1/dimension*

Tidx0*#
_output_shapes
:���������*
T0
�
preparing_variables/EqualEqualpreparing_variables/ArgMaxpreparing_variables/ArgMax_1*#
_output_shapes
:���������*
T0	
z
preparing_variables/Cast_1Castpreparing_variables/Equal*

SrcT0
*#
_output_shapes
:���������*

DstT0
e
preparing_variables/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
preparing_variables/Mean_1Meanpreparing_variables/Cast_1preparing_variables/Const_1*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
^
preparing_variables/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
v
preparing_variables/subSubpreparing_variables/sub/xpreparing_variables/Mean_1*
_output_shapes
: *
T0
�
)preparing_variables/validation_error/tagsConst*5
value,B* B$preparing_variables/validation_error*
dtype0*
_output_shapes
: 
�
$preparing_variables/validation_errorScalarSummary)preparing_variables/validation_error/tagspreparing_variables/sub*
_output_shapes
: *
T0
�
preparing_variables/initNoOp'^preparing_variables/global_step/Assign&^preparing_variables/hidden_1/w/Assign&^preparing_variables/hidden_1/b/Assign&^preparing_variables/hidden_2/w/Assign&^preparing_variables/hidden_2/b/Assign$^preparing_variables/output/w/Assign$^preparing_variables/output/b/Assign
�
&preparing_variables/Merge/MergeSummaryMergeSummarypreparing_variables/loss$preparing_variables/validation_error*
_output_shapes
: *
N
d
preparing_variables/save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
,preparing_variables/save/SaveV2/tensor_namesConst*�
value�B�Bpreparing_variables/global_stepBpreparing_variables/hidden_1/bBpreparing_variables/hidden_1/wBpreparing_variables/hidden_2/bBpreparing_variables/hidden_2/wBpreparing_variables/output/bBpreparing_variables/output/w*
dtype0*
_output_shapes
:
�
0preparing_variables/save/SaveV2/shape_and_slicesConst*!
valueBB B B B B B B *
dtype0*
_output_shapes
:
�
preparing_variables/save/SaveV2SaveV2preparing_variables/save/Const,preparing_variables/save/SaveV2/tensor_names0preparing_variables/save/SaveV2/shape_and_slicespreparing_variables/global_steppreparing_variables/hidden_1/bpreparing_variables/hidden_1/wpreparing_variables/hidden_2/bpreparing_variables/hidden_2/wpreparing_variables/output/bpreparing_variables/output/w*
dtypes
	2
�
+preparing_variables/save/control_dependencyIdentitypreparing_variables/save/Const ^preparing_variables/save/SaveV2*
_output_shapes
: *1
_class'
%#loc:@preparing_variables/save/Const*
T0
�
/preparing_variables/save/RestoreV2/tensor_namesConst*4
value+B)Bpreparing_variables/global_step*
dtype0*
_output_shapes
:
|
3preparing_variables/save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
"preparing_variables/save/RestoreV2	RestoreV2preparing_variables/save/Const/preparing_variables/save/RestoreV2/tensor_names3preparing_variables/save/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
�
preparing_variables/save/AssignAssignpreparing_variables/global_step"preparing_variables/save/RestoreV2*
use_locking(*
_output_shapes
: *2
_class(
&$loc:@preparing_variables/global_step*
T0*
validate_shape(
�
1preparing_variables/save/RestoreV2_1/tensor_namesConst*3
value*B(Bpreparing_variables/hidden_1/b*
dtype0*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
$preparing_variables/save/RestoreV2_1	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_1/tensor_names5preparing_variables/save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
�
!preparing_variables/save/Assign_1Assignpreparing_variables/hidden_1/b$preparing_variables/save/RestoreV2_1*
use_locking(*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
validate_shape(
�
1preparing_variables/save/RestoreV2_2/tensor_namesConst*3
value*B(Bpreparing_variables/hidden_1/w*
dtype0*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
$preparing_variables/save/RestoreV2_2	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_2/tensor_names5preparing_variables/save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
�
!preparing_variables/save/Assign_2Assignpreparing_variables/hidden_1/w$preparing_variables/save/RestoreV2_2*
use_locking(* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0*
validate_shape(
�
1preparing_variables/save/RestoreV2_3/tensor_namesConst*3
value*B(Bpreparing_variables/hidden_2/b*
dtype0*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
$preparing_variables/save/RestoreV2_3	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_3/tensor_names5preparing_variables/save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
�
!preparing_variables/save/Assign_3Assignpreparing_variables/hidden_2/b$preparing_variables/save/RestoreV2_3*
use_locking(*
_output_shapes	
:�*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
validate_shape(
�
1preparing_variables/save/RestoreV2_4/tensor_namesConst*3
value*B(Bpreparing_variables/hidden_2/w*
dtype0*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
$preparing_variables/save/RestoreV2_4	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_4/tensor_names5preparing_variables/save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
�
!preparing_variables/save/Assign_4Assignpreparing_variables/hidden_2/w$preparing_variables/save/RestoreV2_4*
use_locking(* 
_output_shapes
:
��*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0*
validate_shape(
�
1preparing_variables/save/RestoreV2_5/tensor_namesConst*1
value(B&Bpreparing_variables/output/b*
dtype0*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
$preparing_variables/save/RestoreV2_5	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_5/tensor_names5preparing_variables/save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
�
!preparing_variables/save/Assign_5Assignpreparing_variables/output/b$preparing_variables/save/RestoreV2_5*
use_locking(*
_output_shapes
:
*/
_class%
#!loc:@preparing_variables/output/b*
T0*
validate_shape(
�
1preparing_variables/save/RestoreV2_6/tensor_namesConst*1
value(B&Bpreparing_variables/output/w*
dtype0*
_output_shapes
:
~
5preparing_variables/save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
$preparing_variables/save/RestoreV2_6	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_6/tensor_names5preparing_variables/save/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
�
!preparing_variables/save/Assign_6Assignpreparing_variables/output/w$preparing_variables/save/RestoreV2_6*
use_locking(*
_output_shapes
:	�
*/
_class%
#!loc:@preparing_variables/output/w*
T0*
validate_shape(
�
$preparing_variables/save/restore_allNoOp ^preparing_variables/save/Assign"^preparing_variables/save/Assign_1"^preparing_variables/save/Assign_2"^preparing_variables/save/Assign_3"^preparing_variables/save/Assign_4"^preparing_variables/save/Assign_5"^preparing_variables/save/Assign_6
�
mlp_init/hidden_1/wVariable*
shape:
��*
dtype0*
	container *
shared_name * 
_output_shapes
:
��
�
6mlp_init/hidden_1/w/Initializer/truncated_normal/shapeConst*
valueB"     *
dtype0*&
_class
loc:@mlp_init/hidden_1/w*
_output_shapes
:
�
5mlp_init/hidden_1/w/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*&
_class
loc:@mlp_init/hidden_1/w*
_output_shapes
: 
�
7mlp_init/hidden_1/w/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*&
_class
loc:@mlp_init/hidden_1/w*
_output_shapes
: 
�
@mlp_init/hidden_1/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_1/w/Initializer/truncated_normal/shape*
dtype0*
T0*

seed *
seed2 *&
_class
loc:@mlp_init/hidden_1/w* 
_output_shapes
:
��
�
4mlp_init/hidden_1/w/Initializer/truncated_normal/mulMul@mlp_init/hidden_1/w/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_1/w/Initializer/truncated_normal/stddev* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_1/w*
T0
�
0mlp_init/hidden_1/w/Initializer/truncated_normalAdd4mlp_init/hidden_1/w/Initializer/truncated_normal/mul5mlp_init/hidden_1/w/Initializer/truncated_normal/mean* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_1/w*
T0
�
mlp_init/hidden_1/w/AssignAssignmlp_init/hidden_1/w0mlp_init/hidden_1/w/Initializer/truncated_normal*
use_locking(* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_1/w*
T0*
validate_shape(
�
mlp_init/hidden_1/w/readIdentitymlp_init/hidden_1/w* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_1/w*
T0

mlp_init/hidden_1/bVariable*
shape:�*
dtype0*
	container *
shared_name *
_output_shapes	
:�
�
6mlp_init/hidden_1/b/Initializer/truncated_normal/shapeConst*
valueB:�*
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
_output_shapes
:
�
5mlp_init/hidden_1/b/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
_output_shapes
: 
�
7mlp_init/hidden_1/b/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
_output_shapes
: 
�
@mlp_init/hidden_1/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_1/b/Initializer/truncated_normal/shape*
dtype0*
T0*

seed *
seed2 *&
_class
loc:@mlp_init/hidden_1/b*
_output_shapes	
:�
�
4mlp_init/hidden_1/b/Initializer/truncated_normal/mulMul@mlp_init/hidden_1/b/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_1/b/Initializer/truncated_normal/stddev*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_1/b*
T0
�
0mlp_init/hidden_1/b/Initializer/truncated_normalAdd4mlp_init/hidden_1/b/Initializer/truncated_normal/mul5mlp_init/hidden_1/b/Initializer/truncated_normal/mean*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_1/b*
T0
�
mlp_init/hidden_1/b/AssignAssignmlp_init/hidden_1/b0mlp_init/hidden_1/b/Initializer/truncated_normal*
use_locking(*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_1/b*
T0*
validate_shape(
�
mlp_init/hidden_1/b/readIdentitymlp_init/hidden_1/b*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_1/b*
T0
�
mlp_init/hidden_1/MatMulMatMulPlaceholdermlp_init/hidden_1/w/read*
transpose_a( *(
_output_shapes
:����������*
T0*
transpose_b( 
�
mlp_init/hidden_1/addAddmlp_init/hidden_1/MatMulmlp_init/hidden_1/b/read*(
_output_shapes
:����������*
T0
h
mlp_init/hidden_1/ReluRelumlp_init/hidden_1/add*(
_output_shapes
:����������*
T0
�
mlp_init/hidden_2/wVariable*
shape:
��*
dtype0*
	container *
shared_name * 
_output_shapes
:
��
�
6mlp_init/hidden_2/w/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*&
_class
loc:@mlp_init/hidden_2/w*
_output_shapes
:
�
5mlp_init/hidden_2/w/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*&
_class
loc:@mlp_init/hidden_2/w*
_output_shapes
: 
�
7mlp_init/hidden_2/w/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*&
_class
loc:@mlp_init/hidden_2/w*
_output_shapes
: 
�
@mlp_init/hidden_2/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_2/w/Initializer/truncated_normal/shape*
dtype0*
T0*

seed *
seed2 *&
_class
loc:@mlp_init/hidden_2/w* 
_output_shapes
:
��
�
4mlp_init/hidden_2/w/Initializer/truncated_normal/mulMul@mlp_init/hidden_2/w/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_2/w/Initializer/truncated_normal/stddev* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_2/w*
T0
�
0mlp_init/hidden_2/w/Initializer/truncated_normalAdd4mlp_init/hidden_2/w/Initializer/truncated_normal/mul5mlp_init/hidden_2/w/Initializer/truncated_normal/mean* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_2/w*
T0
�
mlp_init/hidden_2/w/AssignAssignmlp_init/hidden_2/w0mlp_init/hidden_2/w/Initializer/truncated_normal*
use_locking(* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_2/w*
T0*
validate_shape(
�
mlp_init/hidden_2/w/readIdentitymlp_init/hidden_2/w* 
_output_shapes
:
��*&
_class
loc:@mlp_init/hidden_2/w*
T0

mlp_init/hidden_2/bVariable*
shape:�*
dtype0*
	container *
shared_name *
_output_shapes	
:�
�
6mlp_init/hidden_2/b/Initializer/truncated_normal/shapeConst*
valueB:�*
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
_output_shapes
:
�
5mlp_init/hidden_2/b/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
_output_shapes
: 
�
7mlp_init/hidden_2/b/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
_output_shapes
: 
�
@mlp_init/hidden_2/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_2/b/Initializer/truncated_normal/shape*
dtype0*
T0*

seed *
seed2 *&
_class
loc:@mlp_init/hidden_2/b*
_output_shapes	
:�
�
4mlp_init/hidden_2/b/Initializer/truncated_normal/mulMul@mlp_init/hidden_2/b/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_2/b/Initializer/truncated_normal/stddev*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_2/b*
T0
�
0mlp_init/hidden_2/b/Initializer/truncated_normalAdd4mlp_init/hidden_2/b/Initializer/truncated_normal/mul5mlp_init/hidden_2/b/Initializer/truncated_normal/mean*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_2/b*
T0
�
mlp_init/hidden_2/b/AssignAssignmlp_init/hidden_2/b0mlp_init/hidden_2/b/Initializer/truncated_normal*
use_locking(*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_2/b*
T0*
validate_shape(
�
mlp_init/hidden_2/b/readIdentitymlp_init/hidden_2/b*
_output_shapes	
:�*&
_class
loc:@mlp_init/hidden_2/b*
T0
�
mlp_init/hidden_2/MatMulMatMulmlp_init/hidden_1/Relumlp_init/hidden_2/w/read*
transpose_a( *(
_output_shapes
:����������*
T0*
transpose_b( 
�
mlp_init/hidden_2/addAddmlp_init/hidden_2/MatMulmlp_init/hidden_2/b/read*(
_output_shapes
:����������*
T0
h
mlp_init/hidden_2/ReluRelumlp_init/hidden_2/add*(
_output_shapes
:����������*
T0
�
mlp_init/output/wVariable*
shape:	�
*
dtype0*
	container *
shared_name *
_output_shapes
:	�

�
4mlp_init/output/w/Initializer/truncated_normal/shapeConst*
valueB"   
   *
dtype0*$
_class
loc:@mlp_init/output/w*
_output_shapes
:
�
3mlp_init/output/w/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*$
_class
loc:@mlp_init/output/w*
_output_shapes
: 
�
5mlp_init/output/w/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*$
_class
loc:@mlp_init/output/w*
_output_shapes
: 
�
>mlp_init/output/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4mlp_init/output/w/Initializer/truncated_normal/shape*
dtype0*
T0*

seed *
seed2 *$
_class
loc:@mlp_init/output/w*
_output_shapes
:	�

�
2mlp_init/output/w/Initializer/truncated_normal/mulMul>mlp_init/output/w/Initializer/truncated_normal/TruncatedNormal5mlp_init/output/w/Initializer/truncated_normal/stddev*
_output_shapes
:	�
*$
_class
loc:@mlp_init/output/w*
T0
�
.mlp_init/output/w/Initializer/truncated_normalAdd2mlp_init/output/w/Initializer/truncated_normal/mul3mlp_init/output/w/Initializer/truncated_normal/mean*
_output_shapes
:	�
*$
_class
loc:@mlp_init/output/w*
T0
�
mlp_init/output/w/AssignAssignmlp_init/output/w.mlp_init/output/w/Initializer/truncated_normal*
use_locking(*
_output_shapes
:	�
*$
_class
loc:@mlp_init/output/w*
T0*
validate_shape(
�
mlp_init/output/w/readIdentitymlp_init/output/w*
_output_shapes
:	�
*$
_class
loc:@mlp_init/output/w*
T0
{
mlp_init/output/bVariable*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

�
4mlp_init/output/b/Initializer/truncated_normal/shapeConst*
valueB:
*
dtype0*$
_class
loc:@mlp_init/output/b*
_output_shapes
:
�
3mlp_init/output/b/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*$
_class
loc:@mlp_init/output/b*
_output_shapes
: 
�
5mlp_init/output/b/Initializer/truncated_normal/stddevConst*
valueB
 *  �?*
dtype0*$
_class
loc:@mlp_init/output/b*
_output_shapes
: 
�
>mlp_init/output/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4mlp_init/output/b/Initializer/truncated_normal/shape*
dtype0*
T0*

seed *
seed2 *$
_class
loc:@mlp_init/output/b*
_output_shapes
:

�
2mlp_init/output/b/Initializer/truncated_normal/mulMul>mlp_init/output/b/Initializer/truncated_normal/TruncatedNormal5mlp_init/output/b/Initializer/truncated_normal/stddev*
_output_shapes
:
*$
_class
loc:@mlp_init/output/b*
T0
�
.mlp_init/output/b/Initializer/truncated_normalAdd2mlp_init/output/b/Initializer/truncated_normal/mul3mlp_init/output/b/Initializer/truncated_normal/mean*
_output_shapes
:
*$
_class
loc:@mlp_init/output/b*
T0
�
mlp_init/output/b/AssignAssignmlp_init/output/b.mlp_init/output/b/Initializer/truncated_normal*
use_locking(*
_output_shapes
:
*$
_class
loc:@mlp_init/output/b*
T0*
validate_shape(
�
mlp_init/output/b/readIdentitymlp_init/output/b*
_output_shapes
:
*$
_class
loc:@mlp_init/output/b*
T0
�
mlp_init/output/MatMulMatMulmlp_init/hidden_2/Relumlp_init/output/w/read*
transpose_a( *'
_output_shapes
:���������
*
T0*
transpose_b( 
|
mlp_init/output/addAddmlp_init/output/MatMulmlp_init/output/b/read*'
_output_shapes
:���������
*
T0
c
mlp_init/output/ReluRelumlp_init/output/add*'
_output_shapes
:���������
*
T0
O
mlp_init/RankConst*
value	B :*
dtype0*
_output_shapes
: 
b
mlp_init/ShapeShapemlp_init/output/Relu*
_output_shapes
:*
T0*
out_type0
Q
mlp_init/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
d
mlp_init/Shape_1Shapemlp_init/output/Relu*
_output_shapes
:*
T0*
out_type0
P
mlp_init/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
U
mlp_init/SubSubmlp_init/Rank_1mlp_init/Sub/y*
_output_shapes
: *
T0
d
mlp_init/Slice/beginPackmlp_init/Sub*

axis *
_output_shapes
:*
N*
T0
]
mlp_init/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
mlp_init/SliceSlicemlp_init/Shape_1mlp_init/Slice/beginmlp_init/Slice/size*
Index0*
_output_shapes
:*
T0
\
mlp_init/concat/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 
k
mlp_init/concat/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
mlp_init/concatConcatmlp_init/concat/concat_dimmlp_init/concat/values_0mlp_init/Slice*
_output_shapes
:*
N*
T0
�
mlp_init/ReshapeReshapemlp_init/output/Relumlp_init/concat*
Tshape0*0
_output_shapes
:������������������*
T0
Q
mlp_init/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
]
mlp_init/Shape_2ShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
R
mlp_init/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
Y
mlp_init/Sub_1Submlp_init/Rank_2mlp_init/Sub_1/y*
_output_shapes
: *
T0
h
mlp_init/Slice_1/beginPackmlp_init/Sub_1*

axis *
_output_shapes
:*
N*
T0
_
mlp_init/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
mlp_init/Slice_1Slicemlp_init/Shape_2mlp_init/Slice_1/beginmlp_init/Slice_1/size*
Index0*
_output_shapes
:*
T0
^
mlp_init/concat_1/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 
m
mlp_init/concat_1/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
mlp_init/concat_1Concatmlp_init/concat_1/concat_dimmlp_init/concat_1/values_0mlp_init/Slice_1*
_output_shapes
:*
N*
T0
�
mlp_init/Reshape_1ReshapePlaceholder_1mlp_init/concat_1*
Tshape0*0
_output_shapes
:������������������*
T0
�
&mlp_init/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsmlp_init/Reshapemlp_init/Reshape_1*?
_output_shapes-
+:���������:������������������*
T0
R
mlp_init/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
W
mlp_init/Sub_2Submlp_init/Rankmlp_init/Sub_2/y*
_output_shapes
: *
T0
`
mlp_init/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
g
mlp_init/Slice_2/sizePackmlp_init/Sub_2*

axis *
_output_shapes
:*
N*
T0
�
mlp_init/Slice_2Slicemlp_init/Shapemlp_init/Slice_2/beginmlp_init/Slice_2/size*
Index0*#
_output_shapes
:���������*
T0
�
mlp_init/Reshape_2Reshape&mlp_init/SoftmaxCrossEntropyWithLogitsmlp_init/Slice_2*
Tshape0*#
_output_shapes
:���������*
T0
X
mlp_init/ConstConst*
valueB: *
dtype0*
_output_shapes
:
w
mlp_init/MeanMeanmlp_init/Reshape_2mlp_init/Const*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
�
mlp_init/initNoOp^mlp_init/hidden_1/w/Assign^mlp_init/hidden_1/b/Assign^mlp_init/hidden_2/w/Assign^mlp_init/hidden_2/b/Assign^mlp_init/output/w/Assign^mlp_init/output/b/Assign
f
mlp_inter/PlaceholderPlaceholder*
shape
:*
dtype0*
_output_shapes

:
T
mlp_inter/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
e
mlp_inter/subSubmlp_inter/sub/xmlp_inter/Placeholder*
_output_shapes

:*
T0
s
mlp_inter/mulMul#preparing_variables/hidden_1/w/readmlp_inter/sub* 
_output_shapes
:
��*
T0
r
mlp_inter/mul_1Mulmlp_init/hidden_1/w/readmlp_inter/Placeholder* 
_output_shapes
:
��*
T0
_
mlp_inter/addAddmlp_inter/mulmlp_inter/mul_1* 
_output_shapes
:
��*
T0
V
mlp_inter/sub_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
i
mlp_inter/sub_1Submlp_inter/sub_1/xmlp_inter/Placeholder*
_output_shapes

:*
T0
v
mlp_inter/mul_2Mul#preparing_variables/hidden_1/b/readmlp_inter/sub_1*
_output_shapes
:	�*
T0
q
mlp_inter/mul_3Mulmlp_init/hidden_1/b/readmlp_inter/Placeholder*
_output_shapes
:	�*
T0
b
mlp_inter/add_1Addmlp_inter/mul_2mlp_inter/mul_3*
_output_shapes
:	�*
T0
V
mlp_inter/sub_2/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
i
mlp_inter/sub_2Submlp_inter/sub_2/xmlp_inter/Placeholder*
_output_shapes

:*
T0
w
mlp_inter/mul_4Mul#preparing_variables/hidden_2/w/readmlp_inter/sub_2* 
_output_shapes
:
��*
T0
r
mlp_inter/mul_5Mulmlp_init/hidden_2/w/readmlp_inter/Placeholder* 
_output_shapes
:
��*
T0
c
mlp_inter/add_2Addmlp_inter/mul_4mlp_inter/mul_5* 
_output_shapes
:
��*
T0
V
mlp_inter/sub_3/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
i
mlp_inter/sub_3Submlp_inter/sub_3/xmlp_inter/Placeholder*
_output_shapes

:*
T0
v
mlp_inter/mul_6Mul#preparing_variables/hidden_2/b/readmlp_inter/sub_3*
_output_shapes
:	�*
T0
q
mlp_inter/mul_7Mulmlp_init/hidden_2/b/readmlp_inter/Placeholder*
_output_shapes
:	�*
T0
b
mlp_inter/add_3Addmlp_inter/mul_6mlp_inter/mul_7*
_output_shapes
:	�*
T0
V
mlp_inter/sub_4/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
i
mlp_inter/sub_4Submlp_inter/sub_4/xmlp_inter/Placeholder*
_output_shapes

:*
T0
t
mlp_inter/mul_8Mul!preparing_variables/output/w/readmlp_inter/sub_4*
_output_shapes
:	�
*
T0
o
mlp_inter/mul_9Mulmlp_init/output/w/readmlp_inter/Placeholder*
_output_shapes
:	�
*
T0
b
mlp_inter/add_4Addmlp_inter/mul_8mlp_inter/mul_9*
_output_shapes
:	�
*
T0
V
mlp_inter/sub_5/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
i
mlp_inter/sub_5Submlp_inter/sub_5/xmlp_inter/Placeholder*
_output_shapes

:*
T0
t
mlp_inter/mul_10Mul!preparing_variables/output/b/readmlp_inter/sub_5*
_output_shapes

:
*
T0
o
mlp_inter/mul_11Mulmlp_init/output/b/readmlp_inter/Placeholder*
_output_shapes

:
*
T0
c
mlp_inter/add_5Addmlp_inter/mul_10mlp_inter/mul_11*
_output_shapes

:
*
T0
�
mlp_inter/MatMulMatMulPlaceholdermlp_inter/add*
transpose_a( *(
_output_shapes
:����������*
T0*
transpose_b( 
l
mlp_inter/add_6Addmlp_inter/MatMulmlp_inter/add_1*(
_output_shapes
:����������*
T0
Z
mlp_inter/ReluRelumlp_inter/add_6*(
_output_shapes
:����������*
T0
�
mlp_inter/MatMul_1MatMulmlp_inter/Relumlp_inter/add_2*
transpose_a( *(
_output_shapes
:����������*
T0*
transpose_b( 
n
mlp_inter/add_7Addmlp_inter/MatMul_1mlp_inter/add_3*(
_output_shapes
:����������*
T0
\
mlp_inter/Relu_1Relumlp_inter/add_7*(
_output_shapes
:����������*
T0
�
mlp_inter/MatMul_2MatMulmlp_inter/Relu_1mlp_inter/add_4*
transpose_a( *'
_output_shapes
:���������
*
T0*
transpose_b( 
m
mlp_inter/add_8Addmlp_inter/MatMul_2mlp_inter/add_5*'
_output_shapes
:���������
*
T0
[
mlp_inter/Relu_2Relumlp_inter/add_8*'
_output_shapes
:���������
*
T0
P
mlp_inter/RankConst*
value	B :*
dtype0*
_output_shapes
: 
\
mlp_inter/ShapeShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
R
mlp_inter/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
^
mlp_inter/Shape_1ShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
Q
mlp_inter/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
X
mlp_inter/SubSubmlp_inter/Rank_1mlp_inter/Sub/y*
_output_shapes
: *
T0
f
mlp_inter/Slice/beginPackmlp_inter/Sub*

axis *
_output_shapes
:*
N*
T0
^
mlp_inter/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
mlp_inter/SliceSlicemlp_inter/Shape_1mlp_inter/Slice/beginmlp_inter/Slice/size*
Index0*
_output_shapes
:*
T0
]
mlp_inter/concat/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 
l
mlp_inter/concat/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
mlp_inter/concatConcatmlp_inter/concat/concat_dimmlp_inter/concat/values_0mlp_inter/Slice*
_output_shapes
:*
N*
T0
�
mlp_inter/ReshapeReshapePlaceholder_1mlp_inter/concat*
Tshape0*0
_output_shapes
:������������������*
T0
R
mlp_inter/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
a
mlp_inter/Shape_2Shapemlp_inter/Relu_2*
_output_shapes
:*
T0*
out_type0
S
mlp_inter/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
mlp_inter/Sub_1Submlp_inter/Rank_2mlp_inter/Sub_1/y*
_output_shapes
: *
T0
j
mlp_inter/Slice_1/beginPackmlp_inter/Sub_1*

axis *
_output_shapes
:*
N*
T0
`
mlp_inter/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
mlp_inter/Slice_1Slicemlp_inter/Shape_2mlp_inter/Slice_1/beginmlp_inter/Slice_1/size*
Index0*
_output_shapes
:*
T0
_
mlp_inter/concat_1/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 
n
mlp_inter/concat_1/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
mlp_inter/concat_1Concatmlp_inter/concat_1/concat_dimmlp_inter/concat_1/values_0mlp_inter/Slice_1*
_output_shapes
:*
N*
T0
�
mlp_inter/Reshape_1Reshapemlp_inter/Relu_2mlp_inter/concat_1*
Tshape0*0
_output_shapes
:������������������*
T0
�
'mlp_inter/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsmlp_inter/Reshapemlp_inter/Reshape_1*?
_output_shapes-
+:���������:������������������*
T0
S
mlp_inter/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
Z
mlp_inter/Sub_2Submlp_inter/Rankmlp_inter/Sub_2/y*
_output_shapes
: *
T0
a
mlp_inter/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
i
mlp_inter/Slice_2/sizePackmlp_inter/Sub_2*

axis *
_output_shapes
:*
N*
T0
�
mlp_inter/Slice_2Slicemlp_inter/Shapemlp_inter/Slice_2/beginmlp_inter/Slice_2/size*
Index0*#
_output_shapes
:���������*
T0
�
mlp_inter/Reshape_2Reshape'mlp_inter/SoftmaxCrossEntropyWithLogitsmlp_inter/Slice_2*
Tshape0*#
_output_shapes
:���������*
T0
Y
mlp_inter/ConstConst*
valueB: *
dtype0*
_output_shapes
:
z
mlp_inter/MeanMeanmlp_inter/Reshape_2mlp_inter/Const*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
n
mlp_inter/ScalarSummary/tagsConst*"
valueB Binterpolated_cost*
dtype0*
_output_shapes
: 
w
mlp_inter/ScalarSummaryScalarSummarymlp_inter/ScalarSummary/tagsmlp_inter/Mean*
_output_shapes
: *
T0""3
train_op'
%
#preparing_variables/GradientDescent"�	
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
mlp_init/output/b:0mlp_init/output/b/Assignmlp_init/output/b/read:0"n
	summariesa
_
preparing_variables/loss:0
&preparing_variables/validation_error:0
mlp_inter/ScalarSummary:0"�

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
mlp_init/output/b:0mlp_init/output/b/Assignmlp_init/output/b/read:0��is       s|�	��o~�7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��5�u       ��Ax	�ˊ~�7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���>u       ��Ax	"��~�7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    @Lu       ��Ax	���~�7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �mRPu       ��Ax	�g�~�7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �6݅u       ��Ax	�?�~�7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    Ľ�u       ��Ax	���7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �Q[u       ��Ax	�E5�7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �Єau       ��Ax	;9N�7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �']-u       ��Ax	2>l�7�A	*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ����u       ��Ax	t	��7�A
*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    A
/Yu       ��Ax	iW��7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    (OE�u       ��Ax	���7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    v�u       ��Ax	 z��7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��W�u       ��Ax	����7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �^,wu       ��Ax	7���7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ����u       ��Ax	"q(��7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    <K�u       ��Ax	��A��7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �G9u       ��Ax	5�Z��7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �{�u       ��Ax	xs��7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �	Lu       ��Ax	>����7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��d�u       ��Ax	���7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    95a�u       ��Ax	33���7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �<�-u       ��Ax	/�ڀ�7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �;��u       ��Ax	�8�7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    pj��u       ��Ax	����7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���5u       ��Ax	��(��7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �cifu       ��Ax	�C��7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �$D.u       ��Ax	�_��7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    Rf�ou       ��Ax	��y��7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    E�x�u       ��Ax	�x���7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    w ��u       ��Ax	32���7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    `��{u       ��Ax	V�ˁ�7�A *h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ʔ�2u       ��Ax	�'恝7�A!*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost     �s�u       ��Ax	�� ��7�A"*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �k�u       ��Ax	U���7�A#*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ۏ;u       ��Ax	�65��7�A$*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �a�u       ��Ax	��O��7�A%*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �-�Eu       ��Ax	�i��7�A&*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���u       ��Ax	�c���7�A'*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    w
u       ��Ax	�!���7�A(*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    /Q��u       ��Ax	����7�A)*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �-��u       ��Ax	�0߂�7�A**h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost̹@ܲ�u       ��Ax	o����7�A+*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�̠Ae5y�u       ��Ax	O���7�A,*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costI��AeX��u       ��Ax	�2��7�A-*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��A�eK�u       ��Ax	�sL��7�A.*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost� �A���Fu       ��Ax	�f��7�A/*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costk��A	po|u       ��Ax	�[���7�A0*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost���A����u       ��Ax	�i���7�A1*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��{A'��u       ��Ax	�S���7�A2*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��@z�G-u       ��Ax	Ճ�7�A3*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    I�:u       ��Ax	��7�A4*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ]�!u       ��Ax	)_
��7�A5*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ڭ��u       ��Ax	�F%��7�A6*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �f�u       ��Ax	��A��7�A7*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ɦR�u       ��Ax	��]��7�A8*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���u       ��Ax	K9x��7�A9*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    J@��u       ��Ax	Փ��7�A:*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    N~�xu       ��Ax	M����7�A;*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    Eo6Mu       ��Ax	jMɄ�7�A<*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �ޯ�u       ��Ax	�a脝7�A=*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    6/8)u       ��Ax	���7�A>*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �~�u       ��Ax	v�!��7�A?*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    1X��u       ��Ax	�m>��7�A@*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    g���u       ��Ax	M[��7�AA*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    5�[�u       ��Ax	��w��7�AB*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    :�u       ��Ax	�9���7�AC*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��=u       ��Ax	�책�7�AD*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ����u       ��Ax	>�ͅ�7�AE*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ±�}u       ��Ax	�@酝7�AF*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �.�u       ��Ax	 %��7�AG*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�b�A��N�u       ��Ax	n3!��7�AH*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��?"u       ��Ax	K�<��7�AI*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    y̛6u       ��Ax	�MZ��7�AJ*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���Fu       ��Ax	E�v��7�AK*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �J"�u       ��Ax	;q���7�AL*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    6\��u       ��Ax	�Ӯ��7�AM*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �3��u       ��Ax	Xˆ�7�AN*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���u       ��Ax	ׅ冝7�AO*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��5�u       ��Ax	w���7�AP*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ~��0u       ��Ax	�2��7�AQ*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    f�u       ��Ax	K�9��7�AR*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �Y,_u       ��Ax	6:V��7�AS*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    S�3Nu       ��Ax	�r��7�AT*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �W
Gu       ��Ax	�����7�AU*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    _��u       ��Ax	����7�AV*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ����u       ��Ax	3�͇�7�AW*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �X-�u       ��Ax	m�뇝7�AX*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    6�?�u       ��Ax	r��7�AY*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    *��ou       ��Ax	��&��7�AZ*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�K�A��^ku       ��Ax	��D��7�A[*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ̀�.u       ��Ax	 �a��7�A\*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��đu       ��Ax	�~��7�A]*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    A+�u       ��Ax	�����7�A^*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ['|3u       ��Ax	����7�A_*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    $�u       ��Ax	�ֈ�7�A`*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ����u       ��Ax	�9�7�Aa*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��d�u       ��Ax	U���7�Ab*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ����u       ��Ax	��-��7�Ac*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    /�Z�u       ��Ax	t�H��7�Ad*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    MK�ku       ��Ax	��e��7�Ae*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    T�w*u       ��Ax	�����7�Af*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    O�u       ��Ax	�O���7�Ag*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    j�s@u       ��Ax	V񽉝7�Ah*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ؠ��u       ��Ax	�$މ�7�Ai*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���Zu       ��Ax	F����7�Aj*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��Λu       ��Ax	�_!��7�Ak*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �$7�u       ��Ax	��=��7�Al*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���u       ��Ax	 ^��7�Am*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �� �u       ��Ax	��z��7�An*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���u       ��Ax	�i���7�Ao*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    8�o-u       ��Ax	䞳��7�Ap*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���u       ��Ax	�LԊ�7�Aq*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    i�su       ��Ax	FB���7�Ar*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    V��u       ��Ax	<���7�As*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �Bþu       ��Ax	�(��7�At*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �3v�u       ��Ax	N�B��7�Au*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    $ȷ�u       ��Ax	eV^��7�Av*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���u       ��Ax	�z��7�Aw*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost���@*L�u       ��Ax	Q���7�Ax*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost?��@e��u       ��Ax	댶��7�Ay*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost+��?���u       ��Ax	'�׋�7�Az*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �*`u       ��Ax	�����7�A{*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ۙC�u       ��Ax	!@��7�A|*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    U�u       ��Ax	�4��7�A}*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���pu       ��Ax	\�V��7�A~*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    8�GUu       ��Ax	'gs��7�A*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ڡ��v       NC�}	8����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    -.�}v       NC�}	,󬌝7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    R�_v       NC�}	X ˌ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���]v       NC�}	�茝7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    cQ��v       NC�}	�>��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ѷ^�v       NC�}	*�$��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��hv       NC�}	J�F��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �W�v       NC�}	c��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �^)�v       NC�}	�����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    &7v       NC�}	?����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    <�Z[v       NC�}	CǼ��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    *?_uv       NC�}	��ٍ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���v       NC�}	�����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    G	(�v       NC�}	���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �ڂv       NC�}	�-��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��Gv       NC�}	��I��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ���v       NC�}	�Kg��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��iv       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��#;v       NC�}	2Y���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    c{�v       NC�}	XXʎ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ����v       NC�}	I뎝7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �K�v       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �}�Dv       NC�}	8$��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    r*�cv       NC�}	�DA��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �)��v       NC�}	0_��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    Mcu�v       NC�}	�r}��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��E/v       NC�}	3���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    @��v       NC�}	�����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    R�Rv       NC�}	N�Տ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �d�;v       NC�}	�,�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    Sv       NC�}	PU��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �u�v       NC�}	�)��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �]v       NC�}	9�F��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �iv       NC�}	zoc��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ����v       NC�}	
���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��b9v       NC�}	�#���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �İ�v       NC�}	�빐�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��Pv       NC�}	�֐�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �*p�v       NC�}	���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��v       NC�}	K ��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �K�v       NC�}	=�(��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��\�v       NC�}	�D��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ZHzFv       NC�}	��`��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    	���v       NC�}	en|��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    	�gv       NC�}	򖗑�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    [7�v       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    i5,v       NC�}	8L͑�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    l��v       NC�}	ty鑝7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    i�bv       NC�}	�7��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    B֊�v       NC�}	g�#��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �z��v       NC�}	��?��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    z�$v       NC�}	�[��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ׁi�v       NC�}	&x��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �re�v       NC�}	o���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ����v       NC�}	�׳��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �Z�1v       NC�}	��Ғ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ����v       NC�}	L7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    ��Q�v       NC�}	TR��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �3�{v       NC�}	p�)��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �	͎v       NC�}	�[F��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    H�v       NC�}	G=b��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost     �av       NC�}	R(���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    |oہv       NC�}	$H���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    fs��v       NC�}	�����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost    �D��v       NC�}	2"ؓ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costx�DDD�f�v       NC�}	g����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��D�l��v       NC�}	���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��E!���v       NC�}	�0��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costPQmEztבv       NC�}	��L��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costæEР��v       NC�}	�fh��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�<�E��j�v       NC�}	�����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�!�E��[�v       NC�}	B���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost׿F���v       NC�}	���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��&F��B�v       NC�}	�㔝7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost'j8F��<�v       NC�}	>w ��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��HF{]�#v       NC�}	h���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost PXFRW��v       NC�}	@O9��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�AjF'(S�v       NC�}	H�U��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costc�|FU��Zv       NC�}	g{r��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost.نF�|Gv       NC�}	�y���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost<��F��,�v       NC�}	®��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costʕF��Z�v       NC�}	��͕�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�@�F�QHHv       NC�}	,7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�F�b��v       NC�}		���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�@�FN#i�v       NC�}	j�.��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costCѫFy�siv       NC�}	�hK��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costLȯF�i޸v       NC�}	t�f��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costu
�F�i�v       NC�}	�6���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost���F�es^v       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costS��F����v       NC�}	aO͖�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costl��F�j�v       NC�}	�ꖝ7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�m�FA%��v       NC�}	�i��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�e�FO���v       NC�}	�n%��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost���Fղ�v       NC�}	��D��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�/�F�2��v       NC�}	�#`��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costF7�F�S �v       NC�}	~��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costP>�F��37v       NC�}	uu���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��F�ѣv       NC�}	*����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��F����v       NC�}	Bܗ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costn�F�v       NC�}	9c���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost���F�
��v       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�:�Fj�wv       NC�}	
H5��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costU;�F,��ov       NC�}	;�P��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��FMkTXv       NC�}	��o��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost���FT�lbv       NC�}	�����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costLΜFn��'v       NC�}	�����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost���F�.uv       NC�}	w�Ƙ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��F�'dv       NC�}	nQ똝7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�~�F�aov       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost0ޝF}�bv       NC�}	Ҏ%��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costU�F�_gmv       NC�}	~�B��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�G�F��w�v       NC�}	YMa��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost*	}F]�[lv       NC�}	a���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�gF,��v       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costzFF�^�v       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costo'F���v       NC�}	�ݙ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��	F�,��v       NC�}	VD��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��E�l}v       NC�}	_'!��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�n�E].�v       NC�}	B�=��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�R`E�-�kv       NC�}	uZ��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�OKE(�g�v       NC�}	v��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��KE��دv       NC�}	b���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�W1E�W��v       NC�}	j����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost)�BE7��v       NC�}	v�К�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��9E�c��v       NC�}	s��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costO��DsHaIv       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��D~l�v       NC�}	�./��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��Df�Yv       NC�}	¦L��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost���D�&�v       NC�}	l=s��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�?E|��v       NC�}	�ϓ��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costA�NE�F��v       NC�}	�Ӱ��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��Ev       NC�}	_�ћ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost"��E���v       NC�}	 �7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costj��E�6n=v       NC�}	f��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost_��E~��Kv       NC�}		�,��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost䩗E9��	v       NC�}	PH��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costs!�E�TNv       NC�}	Xsg��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�NLE�@Vv       NC�}	ٱ���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost:/EY�I�v       NC�}	�奜�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costdR7E0�qPv       NC�}	��Ĝ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��&E)<��v       NC�}	��蜝7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�
}Ef��pv       NC�}	�!��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�0cE]0�v       NC�}	r�/��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�.Ei1��v       NC�}	�<S��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�QEf�-�v       NC�}	�t��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�2RE6F�dv       NC�}	�Z���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost:*E\�8�v       NC�}	Ѳ���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost{I-E!�q�v       NC�}	��֝�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�_�E�9Z9v       NC�}	m���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��EP�J�v       NC�}	��"��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costi�F9͋�v       NC�}	�$F��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costcFj+/�v       NC�}	��j��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��Fe=��v       NC�}	5����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost)��E�spv       NC�}	\����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costn�E}&�
v       NC�}	6x➝7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost*�Fp�~v       NC�}	Փ��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costU�F�Ȫ�v       NC�}	��&��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�	F�}lv       NC�}	CG��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costÕ�Ea��v       NC�}	��f��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costcȷE+0�9v       NC�}	�)���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�ʹE��v       NC�}	�+���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costpE�E�Wxv       NC�}	,�Ɵ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost���EG�v       NC�}	!韝7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�mF&H�^v       NC�}	�E	��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�WPF��7v       NC�}	�0��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost/ΊF ��v       NC�}	�b��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costҺF 1L�v       NC�}	o���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�=�F����v       NC�}	�Ĩ��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��.G��1v       NC�}	�#͠�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��rG}��@v       NC�}	���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costj�G�T\�v       NC�}	y��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��G#�֍v       NC�}	#�3��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost)*%HFH0 v       NC�}	_�Q��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�VCI���v       NC�}	]lp��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��W�/�xv       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costYHzC�v       NC�}	ӣ���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�w�Y�-vJv       NC�}	ơ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�Z�Sr�v       NC�}	pB㡝7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costS�Z�d��v       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�w[[��y
v       NC�}	�_'��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�@�[�o��v       NC�}	z�I��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost!\ջ��v       NC�}	�Vi��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost-9\��P�v       NC�}	T8���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�~\;v�^v       NC�}	qt���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��\fW�v       NC�}	��â�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�w�\�"�ov       NC�}	�"ᢝ7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costa�]�"��v       NC�}	\t���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�@.]7�� v       NC�}	ҫ��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�RV]��8Jv       NC�}	'i6��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�]�cl�v       NC�}	V�S��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��]�T�v       NC�}	�Uo��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost-�]qZ�v       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��]X�h�v       NC�}	�﨣�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��]���v       NC�}	,�ģ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�^E���v       NC�}	x�䣝7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�)^��E�v       NC�}	� ��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costt)A^ق��v       NC�}	�� ��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�w[^/�/v       NC�}	W"?��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costpx^��v       NC�}	�V\��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costg��^��==v       NC�}	%�~��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost>�^?o�6v       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�@�^��~v       NC�}	V���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost+��^��kv       NC�}	�ߤ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costS�^��fVv       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�z�^�+��v       NC�}	�X��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost!_w�Wwv       NC�}	2Z8��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�_��cv       NC�}	��V��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�_�yi?v       NC�}	�v��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costj+*_���Cv       NC�}	.����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost-9_�`�Lv       NC�}	Va���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costO
I_D*��v       NC�}	;�ܥ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost
�Y_eRvv       NC�}	�z���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost{ok_��:�v       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�~_&ws�v       NC�}	�8��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�ň_,�v       NC�}	��T��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��_e��v       NC�}	=�q��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�ǝ_�#v       NC�}	�_���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��_�5�nv       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost ִ_S��v       NC�}	C�Ħ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�)�_!���v       NC�}	ᦝ7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost	�_^�r v       NC�}	2t���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�w�_�}�<v       NC�}	r��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costy�_�G�Ev       NC�}	T7��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��_W2�Tv       NC�}	�#U��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost;�`�m��v       NC�}	@�p��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costv�`E��{v       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�`Y�v       NC�}	!Y���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost>`��|�v       NC�}	i�ħ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�%`�l�v       NC�}	�᧝7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�@.`��Zv       NC�}	v���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��7`�,��v       NC�}	-���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costD�A`����v       NC�}	�N6��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost>�K`H�!v       NC�}	"R��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost,SV`p���v       NC�}	��m��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costt8a`�X��v       NC�}	(
���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�zl`���Cv       NC�}	&����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�x`��v       NC�}	n����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost*�`O���v       NC�}	�ۨ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costf?�`.���v       NC�}	�-���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��`���v       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost7�`��T�v       NC�}	��/��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost!��`�훹v       NC�}	��K��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��`�i��v       NC�}	�1g��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost|+�`=}�v       NC�}	2���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costF��`�v       NC�}	� ���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost0-�`sI�yv       NC�}	b�©�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost���`��vJv       NC�}	?㩝7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost_
�`q���v       NC�}	�o���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost,M�`Dٲ�v       NC�}	����7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��`��ӑv       NC�}	��6��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�~�`��8v       NC�}	f�R��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost�o�`���v       NC�}	��n��7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost���`X
�v       NC�}	t@���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��`�Y��v       NC�}	�	���7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_costt�a�I��v       NC�}	bɪ�7�A�*h

preparing_variables/loss׋�E
+
$preparing_variables/validation_error��f?

interpolated_cost��a���v       NC�}	��䪝7�A�*h

prepar