       ŁK"	   =7ÖAbrain.Event:2ÝÄÖ×ö'     Aę	Đ~1=7ÖA"éĎ
^
PlaceholderPlaceholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape: 
_
Placeholder_1Placeholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shape: 
o
-preparing_variables/global_step/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 

preparing_variables/global_stepVariable*
dtype0*
	container *
shared_name *
_output_shapes
: *
shape: 
ţ
&preparing_variables/global_step/AssignAssignpreparing_variables/global_step-preparing_variables/global_step/initial_value*
T0*2
_class(
&$loc:@preparing_variables/global_step*
validate_shape(*
use_locking(*
_output_shapes
: 
Ś
$preparing_variables/global_step/readIdentitypreparing_variables/global_step*
T0*2
_class(
&$loc:@preparing_variables/global_step*
_output_shapes
: 

preparing_variables/hidden_1/wVariable*
dtype0*
	container *
shared_name * 
_output_shapes
:
*
shape:

Ĺ
Apreparing_variables/hidden_1/w/Initializer/truncated_normal/shapeConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
valueB"     *
_output_shapes
:
¸
@preparing_variables/hidden_1/w/Initializer/truncated_normal/meanConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
valueB
 *    *
_output_shapes
: 
ş
Bpreparing_variables/hidden_1/w/Initializer/truncated_normal/stddevConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
valueB
 *  ?*
_output_shapes
: 
Ľ
Kpreparing_variables/hidden_1/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_1/w/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w* 
_output_shapes
:

ľ
?preparing_variables/hidden_1/w/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_1/w/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_1/w/Initializer/truncated_normal/stddev*
T0*1
_class'
%#loc:@preparing_variables/hidden_1/w* 
_output_shapes
:

Ł
;preparing_variables/hidden_1/w/Initializer/truncated_normalAdd?preparing_variables/hidden_1/w/Initializer/truncated_normal/mul@preparing_variables/hidden_1/w/Initializer/truncated_normal/mean*
T0*1
_class'
%#loc:@preparing_variables/hidden_1/w* 
_output_shapes
:


%preparing_variables/hidden_1/w/AssignAssignpreparing_variables/hidden_1/w;preparing_variables/hidden_1/w/Initializer/truncated_normal*
T0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
validate_shape(*
use_locking(* 
_output_shapes
:

­
#preparing_variables/hidden_1/w/readIdentitypreparing_variables/hidden_1/w*
T0*1
_class'
%#loc:@preparing_variables/hidden_1/w* 
_output_shapes
:


preparing_variables/hidden_1/bVariable*
dtype0*
	container *
shared_name *
_output_shapes	
:*
shape:
ż
Apreparing_variables/hidden_1/b/Initializer/truncated_normal/shapeConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
valueB:*
_output_shapes
:
¸
@preparing_variables/hidden_1/b/Initializer/truncated_normal/meanConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
valueB
 *    *
_output_shapes
: 
ş
Bpreparing_variables/hidden_1/b/Initializer/truncated_normal/stddevConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
valueB
 *  ?*
_output_shapes
: 
 
Kpreparing_variables/hidden_1/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_1/b/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
_output_shapes	
:
°
?preparing_variables/hidden_1/b/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_1/b/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_1/b/Initializer/truncated_normal/stddev*
T0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
_output_shapes	
:

;preparing_variables/hidden_1/b/Initializer/truncated_normalAdd?preparing_variables/hidden_1/b/Initializer/truncated_normal/mul@preparing_variables/hidden_1/b/Initializer/truncated_normal/mean*
T0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
_output_shapes	
:

%preparing_variables/hidden_1/b/AssignAssignpreparing_variables/hidden_1/b;preparing_variables/hidden_1/b/Initializer/truncated_normal*
T0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
validate_shape(*
use_locking(*
_output_shapes	
:
¨
#preparing_variables/hidden_1/b/readIdentitypreparing_variables/hidden_1/b*
T0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
_output_shapes	
:
¸
#preparing_variables/hidden_1/MatMulMatMulPlaceholder#preparing_variables/hidden_1/w/read*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
 preparing_variables/hidden_1/addAdd#preparing_variables/hidden_1/MatMul#preparing_variables/hidden_1/b/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
!preparing_variables/hidden_1/ReluRelu preparing_variables/hidden_1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

preparing_variables/hidden_2/wVariable*
dtype0*
	container *
shared_name * 
_output_shapes
:
*
shape:

Ĺ
Apreparing_variables/hidden_2/w/Initializer/truncated_normal/shapeConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
valueB"      *
_output_shapes
:
¸
@preparing_variables/hidden_2/w/Initializer/truncated_normal/meanConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
valueB
 *    *
_output_shapes
: 
ş
Bpreparing_variables/hidden_2/w/Initializer/truncated_normal/stddevConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
valueB
 *  ?*
_output_shapes
: 
Ľ
Kpreparing_variables/hidden_2/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_2/w/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w* 
_output_shapes
:

ľ
?preparing_variables/hidden_2/w/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_2/w/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_2/w/Initializer/truncated_normal/stddev*
T0*1
_class'
%#loc:@preparing_variables/hidden_2/w* 
_output_shapes
:

Ł
;preparing_variables/hidden_2/w/Initializer/truncated_normalAdd?preparing_variables/hidden_2/w/Initializer/truncated_normal/mul@preparing_variables/hidden_2/w/Initializer/truncated_normal/mean*
T0*1
_class'
%#loc:@preparing_variables/hidden_2/w* 
_output_shapes
:


%preparing_variables/hidden_2/w/AssignAssignpreparing_variables/hidden_2/w;preparing_variables/hidden_2/w/Initializer/truncated_normal*
T0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
validate_shape(*
use_locking(* 
_output_shapes
:

­
#preparing_variables/hidden_2/w/readIdentitypreparing_variables/hidden_2/w*
T0*1
_class'
%#loc:@preparing_variables/hidden_2/w* 
_output_shapes
:


preparing_variables/hidden_2/bVariable*
dtype0*
	container *
shared_name *
_output_shapes	
:*
shape:
ż
Apreparing_variables/hidden_2/b/Initializer/truncated_normal/shapeConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
valueB:*
_output_shapes
:
¸
@preparing_variables/hidden_2/b/Initializer/truncated_normal/meanConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
valueB
 *    *
_output_shapes
: 
ş
Bpreparing_variables/hidden_2/b/Initializer/truncated_normal/stddevConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
valueB
 *  ?*
_output_shapes
: 
 
Kpreparing_variables/hidden_2/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_2/b/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
_output_shapes	
:
°
?preparing_variables/hidden_2/b/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_2/b/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_2/b/Initializer/truncated_normal/stddev*
T0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
_output_shapes	
:

;preparing_variables/hidden_2/b/Initializer/truncated_normalAdd?preparing_variables/hidden_2/b/Initializer/truncated_normal/mul@preparing_variables/hidden_2/b/Initializer/truncated_normal/mean*
T0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
_output_shapes	
:

%preparing_variables/hidden_2/b/AssignAssignpreparing_variables/hidden_2/b;preparing_variables/hidden_2/b/Initializer/truncated_normal*
T0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
validate_shape(*
use_locking(*
_output_shapes	
:
¨
#preparing_variables/hidden_2/b/readIdentitypreparing_variables/hidden_2/b*
T0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
_output_shapes	
:
Î
#preparing_variables/hidden_2/MatMulMatMul!preparing_variables/hidden_1/Relu#preparing_variables/hidden_2/w/read*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
 preparing_variables/hidden_2/addAdd#preparing_variables/hidden_2/MatMul#preparing_variables/hidden_2/b/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
!preparing_variables/hidden_2/ReluRelu preparing_variables/hidden_2/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

preparing_variables/output/wVariable*
dtype0*
	container *
shared_name *
_output_shapes
:	
*
shape:	

Á
?preparing_variables/output/w/Initializer/truncated_normal/shapeConst*
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
valueB"   
   *
_output_shapes
:
´
>preparing_variables/output/w/Initializer/truncated_normal/meanConst*
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
valueB
 *    *
_output_shapes
: 
ś
@preparing_variables/output/w/Initializer/truncated_normal/stddevConst*
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
valueB
 *  ?*
_output_shapes
: 

Ipreparing_variables/output/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?preparing_variables/output/w/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
_output_shapes
:	

Ź
=preparing_variables/output/w/Initializer/truncated_normal/mulMulIpreparing_variables/output/w/Initializer/truncated_normal/TruncatedNormal@preparing_variables/output/w/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@preparing_variables/output/w*
_output_shapes
:	


9preparing_variables/output/w/Initializer/truncated_normalAdd=preparing_variables/output/w/Initializer/truncated_normal/mul>preparing_variables/output/w/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@preparing_variables/output/w*
_output_shapes
:	


#preparing_variables/output/w/AssignAssignpreparing_variables/output/w9preparing_variables/output/w/Initializer/truncated_normal*
T0*/
_class%
#!loc:@preparing_variables/output/w*
validate_shape(*
use_locking(*
_output_shapes
:	

Ś
!preparing_variables/output/w/readIdentitypreparing_variables/output/w*
T0*/
_class%
#!loc:@preparing_variables/output/w*
_output_shapes
:	


preparing_variables/output/bVariable*
dtype0*
	container *
shared_name *
_output_shapes
:
*
shape:

ş
?preparing_variables/output/b/Initializer/truncated_normal/shapeConst*
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
valueB:
*
_output_shapes
:
´
>preparing_variables/output/b/Initializer/truncated_normal/meanConst*
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
valueB
 *    *
_output_shapes
: 
ś
@preparing_variables/output/b/Initializer/truncated_normal/stddevConst*
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
valueB
 *  ?*
_output_shapes
: 

Ipreparing_variables/output/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?preparing_variables/output/b/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
_output_shapes
:

§
=preparing_variables/output/b/Initializer/truncated_normal/mulMulIpreparing_variables/output/b/Initializer/truncated_normal/TruncatedNormal@preparing_variables/output/b/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@preparing_variables/output/b*
_output_shapes
:


9preparing_variables/output/b/Initializer/truncated_normalAdd=preparing_variables/output/b/Initializer/truncated_normal/mul>preparing_variables/output/b/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@preparing_variables/output/b*
_output_shapes
:


#preparing_variables/output/b/AssignAssignpreparing_variables/output/b9preparing_variables/output/b/Initializer/truncated_normal*
T0*/
_class%
#!loc:@preparing_variables/output/b*
validate_shape(*
use_locking(*
_output_shapes
:

Ą
!preparing_variables/output/b/readIdentitypreparing_variables/output/b*
T0*/
_class%
#!loc:@preparing_variables/output/b*
_output_shapes
:

É
!preparing_variables/output/MatMulMatMul!preparing_variables/hidden_2/Relu!preparing_variables/output/w/read*
transpose_a( *
T0*
transpose_b( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙


preparing_variables/output/addAdd!preparing_variables/output/MatMul!preparing_variables/output/b/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

y
preparing_variables/output/ReluRelupreparing_variables/output/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Z
preparing_variables/RankConst*
dtype0*
value	B :*
_output_shapes
: 
x
preparing_variables/ShapeShapepreparing_variables/output/Relu*
T0*
out_type0*
_output_shapes
:
\
preparing_variables/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
z
preparing_variables/Shape_1Shapepreparing_variables/output/Relu*
T0*
out_type0*
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
N*
T0*

axis *
_output_shapes
:
h
preparing_variables/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
˛
preparing_variables/SliceSlicepreparing_variables/Shape_1preparing_variables/Slice/beginpreparing_variables/Slice/size*
T0*
_output_shapes
:*
Index0
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
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
š
preparing_variables/concatConcat%preparing_variables/concat/concat_dim#preparing_variables/concat/values_0preparing_variables/Slice*
T0*
N*
_output_shapes
:
Ź
preparing_variables/ReshapeReshapepreparing_variables/output/Relupreparing_variables/concat*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
\
preparing_variables/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
h
preparing_variables/Shape_2ShapePlaceholder_1*
T0*
out_type0*
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
N*
T0*

axis *
_output_shapes
:
j
 preparing_variables/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
¸
preparing_variables/Slice_1Slicepreparing_variables/Shape_2!preparing_variables/Slice_1/begin preparing_variables/Slice_1/size*
T0*
_output_shapes
:*
Index0
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
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
Á
preparing_variables/concat_1Concat'preparing_variables/concat_1/concat_dim%preparing_variables/concat_1/values_0preparing_variables/Slice_1*
T0*
N*
_output_shapes
:

preparing_variables/Reshape_1ReshapePlaceholder_1preparing_variables/concat_1*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ř
1preparing_variables/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitspreparing_variables/Reshapepreparing_variables/Reshape_1*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
N*
T0*

axis *
_output_shapes
:
ż
preparing_variables/Slice_2Slicepreparing_variables/Shape!preparing_variables/Slice_2/begin preparing_variables/Slice_2/size*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0
´
preparing_variables/Reshape_2Reshape1preparing_variables/SoftmaxCrossEntropyWithLogitspreparing_variables/Slice_2*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
preparing_variables/ConstConst*
dtype0*
valueB: *
_output_shapes
:

preparing_variables/MeanMeanpreparing_variables/Reshape_2preparing_variables/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
v
preparing_variables/loss/tagsConst*
dtype0*)
value B Bpreparing_variables/loss*
_output_shapes
: 

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
 *  ?*
_output_shapes
: 

"preparing_variables/gradients/FillFill#preparing_variables/gradients/Shape#preparing_variables/gradients/Const*
T0*
_output_shapes
: 

Ipreparing_variables/gradients/preparing_variables/Mean_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
đ
Cpreparing_variables/gradients/preparing_variables/Mean_grad/ReshapeReshape"preparing_variables/gradients/FillIpreparing_variables/gradients/preparing_variables/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

Apreparing_variables/gradients/preparing_variables/Mean_grad/ShapeShapepreparing_variables/Reshape_2*
T0*
out_type0*
_output_shapes
:

@preparing_variables/gradients/preparing_variables/Mean_grad/TileTileCpreparing_variables/gradients/preparing_variables/Mean_grad/ReshapeApreparing_variables/gradients/preparing_variables/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_1Shapepreparing_variables/Reshape_2*
T0*
out_type0*
_output_shapes
:

Cpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 

Apreparing_variables/gradients/preparing_variables/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:

@preparing_variables/gradients/preparing_variables/Mean_grad/ProdProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_1Apreparing_variables/gradients/preparing_variables/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

Cpreparing_variables/gradients/preparing_variables/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:

Bpreparing_variables/gradients/preparing_variables/Mean_grad/Prod_1ProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_2Cpreparing_variables/gradients/preparing_variables/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

Epreparing_variables/gradients/preparing_variables/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 
ú
Cpreparing_variables/gradients/preparing_variables/Mean_grad/MaximumMaximumBpreparing_variables/gradients/preparing_variables/Mean_grad/Prod_1Epreparing_variables/gradients/preparing_variables/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
ó
Dpreparing_variables/gradients/preparing_variables/Mean_grad/floordivDiv@preparing_variables/gradients/preparing_variables/Mean_grad/ProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Maximum*
T0*
_output_shapes
: 
ž
@preparing_variables/gradients/preparing_variables/Mean_grad/CastCastDpreparing_variables/gradients/preparing_variables/Mean_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0
ü
Cpreparing_variables/gradients/preparing_variables/Mean_grad/truedivDiv@preparing_variables/gradients/preparing_variables/Mean_grad/Tile@preparing_variables/gradients/preparing_variables/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
Fpreparing_variables/gradients/preparing_variables/Reshape_2_grad/ShapeShape1preparing_variables/SoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:

Hpreparing_variables/gradients/preparing_variables/Reshape_2_grad/ReshapeReshapeCpreparing_variables/gradients/preparing_variables/Mean_grad/truedivFpreparing_variables/gradients/preparing_variables/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
(preparing_variables/gradients/zeros_like	ZerosLike3preparing_variables/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ž
cpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
Ú
_preparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsHpreparing_variables/gradients/preparing_variables/Reshape_2_grad/Reshapecpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
Xpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/mulMul_preparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims3preparing_variables/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ł
Dpreparing_variables/gradients/preparing_variables/Reshape_grad/ShapeShapepreparing_variables/output/Relu*
T0*
out_type0*
_output_shapes
:
ą
Fpreparing_variables/gradients/preparing_variables/Reshape_grad/ReshapeReshapeXpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/mulDpreparing_variables/gradients/preparing_variables/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ň
Kpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradReluGradFpreparing_variables/gradients/preparing_variables/Reshape_grad/Reshapepreparing_variables/output/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

¨
Gpreparing_variables/gradients/preparing_variables/output/add_grad/ShapeShape!preparing_variables/output/MatMul*
T0*
out_type0*
_output_shapes
:

Ipreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1Const*
dtype0*
valueB:
*
_output_shapes
:
Á
Wpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgsBroadcastGradientArgsGpreparing_variables/gradients/preparing_variables/output/add_grad/ShapeIpreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
˛
Epreparing_variables/gradients/preparing_variables/output/add_grad/SumSumKpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradWpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
¤
Ipreparing_variables/gradients/preparing_variables/output/add_grad/ReshapeReshapeEpreparing_variables/gradients/preparing_variables/output/add_grad/SumGpreparing_variables/gradients/preparing_variables/output/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ś
Gpreparing_variables/gradients/preparing_variables/output/add_grad/Sum_1SumKpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

Kpreparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1ReshapeGpreparing_variables/gradients/preparing_variables/output/add_grad/Sum_1Ipreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

ô
Rpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_depsNoOpJ^preparing_variables/gradients/preparing_variables/output/add_grad/ReshapeL^preparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1

Zpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependencyIdentityIpreparing_variables/gradients/preparing_variables/output/add_grad/ReshapeS^preparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_deps*
T0*\
_classR
PNloc:@preparing_variables/gradients/preparing_variables/output/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


\preparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency_1IdentityKpreparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1S^preparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_deps*
T0*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1*
_output_shapes
:

­
Kpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulMatMulZpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency!preparing_variables/output/w/read*
transpose_a( *
T0*
transpose_b(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
Mpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1MatMul!preparing_variables/hidden_2/ReluZpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency*
transpose_a(*
T0*
transpose_b( *
_output_shapes
:	

ű
Upreparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulN^preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1
Ą
]preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulV^preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_deps*
T0*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

_preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1V^preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_deps*
T0*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1*
_output_shapes
:	


Mpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGradReluGrad]preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency!preparing_variables/hidden_2/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
Ipreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ShapeShape#preparing_variables/hidden_2/MatMul*
T0*
out_type0*
_output_shapes
:

Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ç
Ypreparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgsBroadcastGradientArgsIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ShapeKpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¸
Gpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/SumSumMpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ť
Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeReshapeGpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/SumIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
Ipreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Sum_1SumMpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGrad[preparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
¤
Mpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1ReshapeIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Sum_1Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:
ú
Tpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeN^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1

\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeU^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_deps*
T0*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1U^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_deps*
T0*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1*
_output_shapes	
:
ł
Mpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulMatMul\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency#preparing_variables/hidden_2/w/read*
transpose_a( *
T0*
transpose_b(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Opreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1MatMul!preparing_variables/hidden_1/Relu\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency*
transpose_a(*
T0*
transpose_b( * 
_output_shapes
:


Wpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_depsNoOpN^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulP^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1
Š
_preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependencyIdentityMpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulX^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_deps*
T0*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
apreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency_1IdentityOpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1X^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_deps*
T0*b
_classX
VTloc:@preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1* 
_output_shapes
:


Mpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGradReluGrad_preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency!preparing_variables/hidden_1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
Ipreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ShapeShape#preparing_variables/hidden_1/MatMul*
T0*
out_type0*
_output_shapes
:

Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ç
Ypreparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgsBroadcastGradientArgsIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ShapeKpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¸
Gpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/SumSumMpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ť
Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeReshapeGpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/SumIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
Ipreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Sum_1SumMpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGrad[preparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
¤
Mpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1ReshapeIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Sum_1Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:
ú
Tpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeN^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1

\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeU^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_deps*
T0*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1U^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_deps*
T0*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1*
_output_shapes	
:
ł
Mpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulMatMul\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency#preparing_variables/hidden_1/w/read*
transpose_a( *
T0*
transpose_b(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Opreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1MatMulPlaceholder\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency*
transpose_a(*
T0*
transpose_b( * 
_output_shapes
:


Wpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_depsNoOpN^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulP^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1
Š
_preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependencyIdentityMpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulX^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_deps*
T0*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
apreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependency_1IdentityOpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1X^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_deps*
T0*b
_classX
VTloc:@preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1* 
_output_shapes
:

v
1preparing_variables/GradientDescent/learning_rateConst*
dtype0*
valueB
 *o:*
_output_shapes
: 

^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_1/w1preparing_variables/GradientDescent/learning_rateapreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependency_1*
T0*1
_class'
%#loc:@preparing_variables/hidden_1/w* 
_output_shapes
:
*
use_locking( 

^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_1/b1preparing_variables/GradientDescent/learning_rate^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency_1*
T0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
_output_shapes	
:*
use_locking( 

^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_2/w1preparing_variables/GradientDescent/learning_rateapreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency_1*
T0*1
_class'
%#loc:@preparing_variables/hidden_2/w* 
_output_shapes
:
*
use_locking( 

^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_2/b1preparing_variables/GradientDescent/learning_rate^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency_1*
T0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
_output_shapes	
:*
use_locking( 

\preparing_variables/GradientDescent/update_preparing_variables/output/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/output/w1preparing_variables/GradientDescent/learning_rate_preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency_1*
T0*/
_class%
#!loc:@preparing_variables/output/w*
_output_shapes
:	
*
use_locking( 

\preparing_variables/GradientDescent/update_preparing_variables/output/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/output/b1preparing_variables/GradientDescent/learning_rate\preparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency_1*
T0*/
_class%
#!loc:@preparing_variables/output/b*
_output_shapes
:
*
use_locking( 
ô
*preparing_variables/GradientDescent/updateNoOp_^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/w/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/b/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/w/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/b/ApplyGradientDescent]^preparing_variables/GradientDescent/update_preparing_variables/output/w/ApplyGradientDescent]^preparing_variables/GradientDescent/update_preparing_variables/output/b/ApplyGradientDescent
Ě
)preparing_variables/GradientDescent/valueConst+^preparing_variables/GradientDescent/update*
dtype0*2
_class(
&$loc:@preparing_variables/global_step*
value	B :*
_output_shapes
: 
ä
#preparing_variables/GradientDescent	AssignAddpreparing_variables/global_step)preparing_variables/GradientDescent/value*
T0*2
_class(
&$loc:@preparing_variables/global_step*
_output_shapes
: *
use_locking( 
f
$preparing_variables/ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 

preparing_variables/ArgMaxArgMaxPlaceholder_1$preparing_variables/ArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
&preparing_variables/ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
Š
preparing_variables/ArgMax_1ArgMaxpreparing_variables/output/Relu&preparing_variables/ArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

preparing_variables/EqualEqualpreparing_variables/ArgMaxpreparing_variables/ArgMax_1*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
preparing_variables/Cast_1Castpreparing_variables/Equal*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0

e
preparing_variables/Const_1Const*
dtype0*
valueB: *
_output_shapes
:

preparing_variables/Mean_1Meanpreparing_variables/Cast_1preparing_variables/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
^
preparing_variables/sub/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
v
preparing_variables/subSubpreparing_variables/sub/xpreparing_variables/Mean_1*
T0*
_output_shapes
: 

)preparing_variables/validation_error/tagsConst*
dtype0*5
value,B* B$preparing_variables/validation_error*
_output_shapes
: 

$preparing_variables/validation_errorScalarSummary)preparing_variables/validation_error/tagspreparing_variables/sub*
T0*
_output_shapes
: 
ľ
preparing_variables/initNoOp'^preparing_variables/global_step/Assign&^preparing_variables/hidden_1/w/Assign&^preparing_variables/hidden_1/b/Assign&^preparing_variables/hidden_2/w/Assign&^preparing_variables/hidden_2/b/Assign$^preparing_variables/output/w/Assign$^preparing_variables/output/b/Assign

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
Ó
,preparing_variables/save/SaveV2/tensor_namesConst*
dtype0*ň
valuečBĺBpreparing_variables/global_stepBpreparing_variables/hidden_1/bBpreparing_variables/hidden_1/wBpreparing_variables/hidden_2/bBpreparing_variables/hidden_2/wBpreparing_variables/output/bBpreparing_variables/output/w*
_output_shapes
:

0preparing_variables/save/SaveV2/shape_and_slicesConst*
dtype0*!
valueBB B B B B B B *
_output_shapes
:

preparing_variables/save/SaveV2SaveV2preparing_variables/save/Const,preparing_variables/save/SaveV2/tensor_names0preparing_variables/save/SaveV2/shape_and_slicespreparing_variables/global_steppreparing_variables/hidden_1/bpreparing_variables/hidden_1/wpreparing_variables/hidden_2/bpreparing_variables/hidden_2/wpreparing_variables/output/bpreparing_variables/output/w*
dtypes
	2
Í
+preparing_variables/save/control_dependencyIdentitypreparing_variables/save/Const ^preparing_variables/save/SaveV2*
T0*1
_class'
%#loc:@preparing_variables/save/Const*
_output_shapes
: 

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
ŕ
"preparing_variables/save/RestoreV2	RestoreV2preparing_variables/save/Const/preparing_variables/save/RestoreV2/tensor_names3preparing_variables/save/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
ě
preparing_variables/save/AssignAssignpreparing_variables/global_step"preparing_variables/save/RestoreV2*
T0*2
_class(
&$loc:@preparing_variables/global_step*
validate_shape(*
use_locking(*
_output_shapes
: 

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
ć
$preparing_variables/save/RestoreV2_1	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_1/tensor_names5preparing_variables/save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
ó
!preparing_variables/save/Assign_1Assignpreparing_variables/hidden_1/b$preparing_variables/save/RestoreV2_1*
T0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
validate_shape(*
use_locking(*
_output_shapes	
:

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
ć
$preparing_variables/save/RestoreV2_2	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_2/tensor_names5preparing_variables/save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
ř
!preparing_variables/save/Assign_2Assignpreparing_variables/hidden_1/w$preparing_variables/save/RestoreV2_2*
T0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
validate_shape(*
use_locking(* 
_output_shapes
:


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
ć
$preparing_variables/save/RestoreV2_3	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_3/tensor_names5preparing_variables/save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
ó
!preparing_variables/save/Assign_3Assignpreparing_variables/hidden_2/b$preparing_variables/save/RestoreV2_3*
T0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
validate_shape(*
use_locking(*
_output_shapes	
:

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
ć
$preparing_variables/save/RestoreV2_4	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_4/tensor_names5preparing_variables/save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
ř
!preparing_variables/save/Assign_4Assignpreparing_variables/hidden_2/w$preparing_variables/save/RestoreV2_4*
T0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
validate_shape(*
use_locking(* 
_output_shapes
:


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
ć
$preparing_variables/save/RestoreV2_5	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_5/tensor_names5preparing_variables/save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
î
!preparing_variables/save/Assign_5Assignpreparing_variables/output/b$preparing_variables/save/RestoreV2_5*
T0*/
_class%
#!loc:@preparing_variables/output/b*
validate_shape(*
use_locking(*
_output_shapes
:


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
ć
$preparing_variables/save/RestoreV2_6	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_6/tensor_names5preparing_variables/save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
ó
!preparing_variables/save/Assign_6Assignpreparing_variables/output/w$preparing_variables/save/RestoreV2_6*
T0*/
_class%
#!loc:@preparing_variables/output/w*
validate_shape(*
use_locking(*
_output_shapes
:	

Ś
$preparing_variables/save/restore_allNoOp ^preparing_variables/save/Assign"^preparing_variables/save/Assign_1"^preparing_variables/save/Assign_2"^preparing_variables/save/Assign_3"^preparing_variables/save/Assign_4"^preparing_variables/save/Assign_5"^preparing_variables/save/Assign_6

mlp_init/hidden_1/wVariable*
dtype0*
	container *
shared_name * 
_output_shapes
:
*
shape:

Ż
6mlp_init/hidden_1/w/Initializer/truncated_normal/shapeConst*
dtype0*&
_class
loc:@mlp_init/hidden_1/w*
valueB"     *
_output_shapes
:
˘
5mlp_init/hidden_1/w/Initializer/truncated_normal/meanConst*
dtype0*&
_class
loc:@mlp_init/hidden_1/w*
valueB
 *    *
_output_shapes
: 
¤
7mlp_init/hidden_1/w/Initializer/truncated_normal/stddevConst*
dtype0*&
_class
loc:@mlp_init/hidden_1/w*
valueB
 *  ?*
_output_shapes
: 

@mlp_init/hidden_1/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_1/w/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*&
_class
loc:@mlp_init/hidden_1/w* 
_output_shapes
:


4mlp_init/hidden_1/w/Initializer/truncated_normal/mulMul@mlp_init/hidden_1/w/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_1/w/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@mlp_init/hidden_1/w* 
_output_shapes
:

÷
0mlp_init/hidden_1/w/Initializer/truncated_normalAdd4mlp_init/hidden_1/w/Initializer/truncated_normal/mul5mlp_init/hidden_1/w/Initializer/truncated_normal/mean*
T0*&
_class
loc:@mlp_init/hidden_1/w* 
_output_shapes
:

ç
mlp_init/hidden_1/w/AssignAssignmlp_init/hidden_1/w0mlp_init/hidden_1/w/Initializer/truncated_normal*
T0*&
_class
loc:@mlp_init/hidden_1/w*
validate_shape(*
use_locking(* 
_output_shapes
:


mlp_init/hidden_1/w/readIdentitymlp_init/hidden_1/w*
T0*&
_class
loc:@mlp_init/hidden_1/w* 
_output_shapes
:


mlp_init/hidden_1/bVariable*
dtype0*
	container *
shared_name *
_output_shapes	
:*
shape:
Š
6mlp_init/hidden_1/b/Initializer/truncated_normal/shapeConst*
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
valueB:*
_output_shapes
:
˘
5mlp_init/hidden_1/b/Initializer/truncated_normal/meanConst*
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
valueB
 *    *
_output_shapes
: 
¤
7mlp_init/hidden_1/b/Initializer/truncated_normal/stddevConst*
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
valueB
 *  ?*
_output_shapes
: 
˙
@mlp_init/hidden_1/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_1/b/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
_output_shapes	
:

4mlp_init/hidden_1/b/Initializer/truncated_normal/mulMul@mlp_init/hidden_1/b/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_1/b/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@mlp_init/hidden_1/b*
_output_shapes	
:
ň
0mlp_init/hidden_1/b/Initializer/truncated_normalAdd4mlp_init/hidden_1/b/Initializer/truncated_normal/mul5mlp_init/hidden_1/b/Initializer/truncated_normal/mean*
T0*&
_class
loc:@mlp_init/hidden_1/b*
_output_shapes	
:
â
mlp_init/hidden_1/b/AssignAssignmlp_init/hidden_1/b0mlp_init/hidden_1/b/Initializer/truncated_normal*
T0*&
_class
loc:@mlp_init/hidden_1/b*
validate_shape(*
use_locking(*
_output_shapes	
:

mlp_init/hidden_1/b/readIdentitymlp_init/hidden_1/b*
T0*&
_class
loc:@mlp_init/hidden_1/b*
_output_shapes	
:
˘
mlp_init/hidden_1/MatMulMatMulPlaceholdermlp_init/hidden_1/w/read*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

mlp_init/hidden_1/addAddmlp_init/hidden_1/MatMulmlp_init/hidden_1/b/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
mlp_init/hidden_1/ReluRelumlp_init/hidden_1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

mlp_init/hidden_2/wVariable*
dtype0*
	container *
shared_name * 
_output_shapes
:
*
shape:

Ż
6mlp_init/hidden_2/w/Initializer/truncated_normal/shapeConst*
dtype0*&
_class
loc:@mlp_init/hidden_2/w*
valueB"      *
_output_shapes
:
˘
5mlp_init/hidden_2/w/Initializer/truncated_normal/meanConst*
dtype0*&
_class
loc:@mlp_init/hidden_2/w*
valueB
 *    *
_output_shapes
: 
¤
7mlp_init/hidden_2/w/Initializer/truncated_normal/stddevConst*
dtype0*&
_class
loc:@mlp_init/hidden_2/w*
valueB
 *  ?*
_output_shapes
: 

@mlp_init/hidden_2/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_2/w/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*&
_class
loc:@mlp_init/hidden_2/w* 
_output_shapes
:


4mlp_init/hidden_2/w/Initializer/truncated_normal/mulMul@mlp_init/hidden_2/w/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_2/w/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@mlp_init/hidden_2/w* 
_output_shapes
:

÷
0mlp_init/hidden_2/w/Initializer/truncated_normalAdd4mlp_init/hidden_2/w/Initializer/truncated_normal/mul5mlp_init/hidden_2/w/Initializer/truncated_normal/mean*
T0*&
_class
loc:@mlp_init/hidden_2/w* 
_output_shapes
:

ç
mlp_init/hidden_2/w/AssignAssignmlp_init/hidden_2/w0mlp_init/hidden_2/w/Initializer/truncated_normal*
T0*&
_class
loc:@mlp_init/hidden_2/w*
validate_shape(*
use_locking(* 
_output_shapes
:


mlp_init/hidden_2/w/readIdentitymlp_init/hidden_2/w*
T0*&
_class
loc:@mlp_init/hidden_2/w* 
_output_shapes
:


mlp_init/hidden_2/bVariable*
dtype0*
	container *
shared_name *
_output_shapes	
:*
shape:
Š
6mlp_init/hidden_2/b/Initializer/truncated_normal/shapeConst*
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
valueB:*
_output_shapes
:
˘
5mlp_init/hidden_2/b/Initializer/truncated_normal/meanConst*
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
valueB
 *    *
_output_shapes
: 
¤
7mlp_init/hidden_2/b/Initializer/truncated_normal/stddevConst*
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
valueB
 *  ?*
_output_shapes
: 
˙
@mlp_init/hidden_2/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_2/b/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
_output_shapes	
:

4mlp_init/hidden_2/b/Initializer/truncated_normal/mulMul@mlp_init/hidden_2/b/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_2/b/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@mlp_init/hidden_2/b*
_output_shapes	
:
ň
0mlp_init/hidden_2/b/Initializer/truncated_normalAdd4mlp_init/hidden_2/b/Initializer/truncated_normal/mul5mlp_init/hidden_2/b/Initializer/truncated_normal/mean*
T0*&
_class
loc:@mlp_init/hidden_2/b*
_output_shapes	
:
â
mlp_init/hidden_2/b/AssignAssignmlp_init/hidden_2/b0mlp_init/hidden_2/b/Initializer/truncated_normal*
T0*&
_class
loc:@mlp_init/hidden_2/b*
validate_shape(*
use_locking(*
_output_shapes	
:

mlp_init/hidden_2/b/readIdentitymlp_init/hidden_2/b*
T0*&
_class
loc:@mlp_init/hidden_2/b*
_output_shapes	
:
­
mlp_init/hidden_2/MatMulMatMulmlp_init/hidden_1/Relumlp_init/hidden_2/w/read*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

mlp_init/hidden_2/addAddmlp_init/hidden_2/MatMulmlp_init/hidden_2/b/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
mlp_init/hidden_2/ReluRelumlp_init/hidden_2/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

mlp_init/output/wVariable*
dtype0*
	container *
shared_name *
_output_shapes
:	
*
shape:	

Ť
4mlp_init/output/w/Initializer/truncated_normal/shapeConst*
dtype0*$
_class
loc:@mlp_init/output/w*
valueB"   
   *
_output_shapes
:

3mlp_init/output/w/Initializer/truncated_normal/meanConst*
dtype0*$
_class
loc:@mlp_init/output/w*
valueB
 *    *
_output_shapes
: 
 
5mlp_init/output/w/Initializer/truncated_normal/stddevConst*
dtype0*$
_class
loc:@mlp_init/output/w*
valueB
 *  ?*
_output_shapes
: 
ý
>mlp_init/output/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4mlp_init/output/w/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*$
_class
loc:@mlp_init/output/w*
_output_shapes
:	


2mlp_init/output/w/Initializer/truncated_normal/mulMul>mlp_init/output/w/Initializer/truncated_normal/TruncatedNormal5mlp_init/output/w/Initializer/truncated_normal/stddev*
T0*$
_class
loc:@mlp_init/output/w*
_output_shapes
:	

î
.mlp_init/output/w/Initializer/truncated_normalAdd2mlp_init/output/w/Initializer/truncated_normal/mul3mlp_init/output/w/Initializer/truncated_normal/mean*
T0*$
_class
loc:@mlp_init/output/w*
_output_shapes
:	

Ţ
mlp_init/output/w/AssignAssignmlp_init/output/w.mlp_init/output/w/Initializer/truncated_normal*
T0*$
_class
loc:@mlp_init/output/w*
validate_shape(*
use_locking(*
_output_shapes
:	


mlp_init/output/w/readIdentitymlp_init/output/w*
T0*$
_class
loc:@mlp_init/output/w*
_output_shapes
:	

{
mlp_init/output/bVariable*
dtype0*
	container *
shared_name *
_output_shapes
:
*
shape:

¤
4mlp_init/output/b/Initializer/truncated_normal/shapeConst*
dtype0*$
_class
loc:@mlp_init/output/b*
valueB:
*
_output_shapes
:

3mlp_init/output/b/Initializer/truncated_normal/meanConst*
dtype0*$
_class
loc:@mlp_init/output/b*
valueB
 *    *
_output_shapes
: 
 
5mlp_init/output/b/Initializer/truncated_normal/stddevConst*
dtype0*$
_class
loc:@mlp_init/output/b*
valueB
 *  ?*
_output_shapes
: 
ř
>mlp_init/output/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4mlp_init/output/b/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*$
_class
loc:@mlp_init/output/b*
_output_shapes
:

ű
2mlp_init/output/b/Initializer/truncated_normal/mulMul>mlp_init/output/b/Initializer/truncated_normal/TruncatedNormal5mlp_init/output/b/Initializer/truncated_normal/stddev*
T0*$
_class
loc:@mlp_init/output/b*
_output_shapes
:

é
.mlp_init/output/b/Initializer/truncated_normalAdd2mlp_init/output/b/Initializer/truncated_normal/mul3mlp_init/output/b/Initializer/truncated_normal/mean*
T0*$
_class
loc:@mlp_init/output/b*
_output_shapes
:

Ů
mlp_init/output/b/AssignAssignmlp_init/output/b.mlp_init/output/b/Initializer/truncated_normal*
T0*$
_class
loc:@mlp_init/output/b*
validate_shape(*
use_locking(*
_output_shapes
:


mlp_init/output/b/readIdentitymlp_init/output/b*
T0*$
_class
loc:@mlp_init/output/b*
_output_shapes
:

¨
mlp_init/output/MatMulMatMulmlp_init/hidden_2/Relumlp_init/output/w/read*
transpose_a( *
T0*
transpose_b( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙

|
mlp_init/output/addAddmlp_init/output/MatMulmlp_init/output/b/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

c
mlp_init/output/ReluRelumlp_init/output/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

O
mlp_init/RankConst*
dtype0*
value	B :*
_output_shapes
: 
b
mlp_init/ShapeShapemlp_init/output/Relu*
T0*
out_type0*
_output_shapes
:
Q
mlp_init/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
d
mlp_init/Shape_1Shapemlp_init/output/Relu*
T0*
out_type0*
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
N*
T0*

axis *
_output_shapes
:
]
mlp_init/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

mlp_init/SliceSlicemlp_init/Shape_1mlp_init/Slice/beginmlp_init/Slice/size*
T0*
_output_shapes
:*
Index0
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
˙˙˙˙˙˙˙˙˙*
_output_shapes
:

mlp_init/concatConcatmlp_init/concat/concat_dimmlp_init/concat/values_0mlp_init/Slice*
T0*
N*
_output_shapes
:

mlp_init/ReshapeReshapemlp_init/output/Relumlp_init/concat*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Q
mlp_init/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
]
mlp_init/Shape_2ShapePlaceholder_1*
T0*
out_type0*
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
N*
T0*

axis *
_output_shapes
:
_
mlp_init/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:

mlp_init/Slice_1Slicemlp_init/Shape_2mlp_init/Slice_1/beginmlp_init/Slice_1/size*
T0*
_output_shapes
:*
Index0
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
˙˙˙˙˙˙˙˙˙*
_output_shapes
:

mlp_init/concat_1Concatmlp_init/concat_1/concat_dimmlp_init/concat_1/values_0mlp_init/Slice_1*
T0*
N*
_output_shapes
:

mlp_init/Reshape_1ReshapePlaceholder_1mlp_init/concat_1*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ˇ
&mlp_init/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsmlp_init/Reshapemlp_init/Reshape_1*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
N*
T0*

axis *
_output_shapes
:

mlp_init/Slice_2Slicemlp_init/Shapemlp_init/Slice_2/beginmlp_init/Slice_2/size*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0

mlp_init/Reshape_2Reshape&mlp_init/SoftmaxCrossEntropyWithLogitsmlp_init/Slice_2*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
mlp_init/ConstConst*
dtype0*
valueB: *
_output_shapes
:
w
mlp_init/MeanMeanmlp_init/Reshape_2mlp_init/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ż
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
 *  ?*
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

r
mlp_inter/mul_1Mulmlp_init/hidden_1/w/readmlp_inter/Placeholder*
T0* 
_output_shapes
:

_
mlp_inter/addAddmlp_inter/mulmlp_inter/mul_1*
T0* 
_output_shapes
:

V
mlp_inter/sub_1/xConst*
dtype0*
valueB
 *  ?*
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
:	
q
mlp_inter/mul_3Mulmlp_init/hidden_1/b/readmlp_inter/Placeholder*
T0*
_output_shapes
:	
b
mlp_inter/add_1Addmlp_inter/mul_2mlp_inter/mul_3*
T0*
_output_shapes
:	
V
mlp_inter/sub_2/xConst*
dtype0*
valueB
 *  ?*
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

r
mlp_inter/mul_5Mulmlp_init/hidden_2/w/readmlp_inter/Placeholder*
T0* 
_output_shapes
:

c
mlp_inter/add_2Addmlp_inter/mul_4mlp_inter/mul_5*
T0* 
_output_shapes
:

V
mlp_inter/sub_3/xConst*
dtype0*
valueB
 *  ?*
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
:	
q
mlp_inter/mul_7Mulmlp_init/hidden_2/b/readmlp_inter/Placeholder*
T0*
_output_shapes
:	
b
mlp_inter/add_3Addmlp_inter/mul_6mlp_inter/mul_7*
T0*
_output_shapes
:	
V
mlp_inter/sub_4/xConst*
dtype0*
valueB
 *  ?*
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
:	

o
mlp_inter/mul_9Mulmlp_init/output/w/readmlp_inter/Placeholder*
T0*
_output_shapes
:	

b
mlp_inter/add_4Addmlp_inter/mul_8mlp_inter/mul_9*
T0*
_output_shapes
:	

V
mlp_inter/sub_5/xConst*
dtype0*
valueB
 *  ?*
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


mlp_inter/MatMulMatMulPlaceholdermlp_inter/add*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
mlp_inter/add_6Addmlp_inter/MatMulmlp_inter/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
mlp_inter/ReluRelumlp_inter/add_6*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

mlp_inter/MatMul_1MatMulmlp_inter/Relumlp_inter/add_2*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
mlp_inter/add_7Addmlp_inter/MatMul_1mlp_inter/add_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
mlp_inter/Relu_1Relumlp_inter/add_7*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

mlp_inter/MatMul_2MatMulmlp_inter/Relu_1mlp_inter/add_4*
transpose_a( *
T0*
transpose_b( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙

m
mlp_inter/add_8Addmlp_inter/MatMul_2mlp_inter/add_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

[
mlp_inter/Relu_2Relumlp_inter/add_8*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

P
mlp_inter/RankConst*
dtype0*
value	B :*
_output_shapes
: 
\
mlp_inter/ShapeShapePlaceholder_1*
T0*
out_type0*
_output_shapes
:
R
mlp_inter/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
^
mlp_inter/Shape_1ShapePlaceholder_1*
T0*
out_type0*
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
N*
T0*

axis *
_output_shapes
:
^
mlp_inter/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

mlp_inter/SliceSlicemlp_inter/Shape_1mlp_inter/Slice/beginmlp_inter/Slice/size*
T0*
_output_shapes
:*
Index0
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
˙˙˙˙˙˙˙˙˙*
_output_shapes
:

mlp_inter/concatConcatmlp_inter/concat/concat_dimmlp_inter/concat/values_0mlp_inter/Slice*
T0*
N*
_output_shapes
:

mlp_inter/ReshapeReshapePlaceholder_1mlp_inter/concat*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
R
mlp_inter/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
a
mlp_inter/Shape_2Shapemlp_inter/Relu_2*
T0*
out_type0*
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
N*
T0*

axis *
_output_shapes
:
`
mlp_inter/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:

mlp_inter/Slice_1Slicemlp_inter/Shape_2mlp_inter/Slice_1/beginmlp_inter/Slice_1/size*
T0*
_output_shapes
:*
Index0
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
˙˙˙˙˙˙˙˙˙*
_output_shapes
:

mlp_inter/concat_1Concatmlp_inter/concat_1/concat_dimmlp_inter/concat_1/values_0mlp_inter/Slice_1*
T0*
N*
_output_shapes
:

mlp_inter/Reshape_1Reshapemlp_inter/Relu_2mlp_inter/concat_1*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
'mlp_inter/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsmlp_inter/Reshapemlp_inter/Reshape_1*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
N*
T0*

axis *
_output_shapes
:

mlp_inter/Slice_2Slicemlp_inter/Shapemlp_inter/Slice_2/beginmlp_inter/Slice_2/size*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0

mlp_inter/Reshape_2Reshape'mlp_inter/SoftmaxCrossEntropyWithLogitsmlp_inter/Slice_2*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
mlp_inter/ConstConst*
dtype0*
valueB: *
_output_shapes
:
z
mlp_inter/MeanMeanmlp_inter/Reshape_2mlp_inter/Const*
	keep_dims( *
T0*

Tidx0*
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
: "ŢżÂ*?     ţA	á=7ÖAJţ
íÇ
9
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
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
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
p
	AssignAdd
ref"T

value"T

output_ref"T"
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

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
2	

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
2	
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

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

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
2	
q
Variable
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype*0.12.12v0.12.0-10-g4d924e7-dirtyéĎ
^
PlaceholderPlaceholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape: 
_
Placeholder_1Placeholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shape: 
o
-preparing_variables/global_step/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 

preparing_variables/global_stepVariable*
dtype0*
	container *
shared_name *
_output_shapes
: *
shape: 
ţ
&preparing_variables/global_step/AssignAssignpreparing_variables/global_step-preparing_variables/global_step/initial_value*2
_class(
&$loc:@preparing_variables/global_step*
T0*
validate_shape(*
use_locking(*
_output_shapes
: 
Ś
$preparing_variables/global_step/readIdentitypreparing_variables/global_step*2
_class(
&$loc:@preparing_variables/global_step*
T0*
_output_shapes
: 

preparing_variables/hidden_1/wVariable*
dtype0*
	container *
shared_name * 
_output_shapes
:
*
shape:

Ĺ
Apreparing_variables/hidden_1/w/Initializer/truncated_normal/shapeConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
valueB"     *
_output_shapes
:
¸
@preparing_variables/hidden_1/w/Initializer/truncated_normal/meanConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
valueB
 *    *
_output_shapes
: 
ş
Bpreparing_variables/hidden_1/w/Initializer/truncated_normal/stddevConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w*
valueB
 *  ?*
_output_shapes
: 
Ľ
Kpreparing_variables/hidden_1/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_1/w/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/w* 
_output_shapes
:

ľ
?preparing_variables/hidden_1/w/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_1/w/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_1/w/Initializer/truncated_normal/stddev*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0* 
_output_shapes
:

Ł
;preparing_variables/hidden_1/w/Initializer/truncated_normalAdd?preparing_variables/hidden_1/w/Initializer/truncated_normal/mul@preparing_variables/hidden_1/w/Initializer/truncated_normal/mean*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0* 
_output_shapes
:


%preparing_variables/hidden_1/w/AssignAssignpreparing_variables/hidden_1/w;preparing_variables/hidden_1/w/Initializer/truncated_normal*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:

­
#preparing_variables/hidden_1/w/readIdentitypreparing_variables/hidden_1/w*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0* 
_output_shapes
:


preparing_variables/hidden_1/bVariable*
dtype0*
	container *
shared_name *
_output_shapes	
:*
shape:
ż
Apreparing_variables/hidden_1/b/Initializer/truncated_normal/shapeConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
valueB:*
_output_shapes
:
¸
@preparing_variables/hidden_1/b/Initializer/truncated_normal/meanConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
valueB
 *    *
_output_shapes
: 
ş
Bpreparing_variables/hidden_1/b/Initializer/truncated_normal/stddevConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
valueB
 *  ?*
_output_shapes
: 
 
Kpreparing_variables/hidden_1/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_1/b/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_1/b*
_output_shapes	
:
°
?preparing_variables/hidden_1/b/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_1/b/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_1/b/Initializer/truncated_normal/stddev*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
_output_shapes	
:

;preparing_variables/hidden_1/b/Initializer/truncated_normalAdd?preparing_variables/hidden_1/b/Initializer/truncated_normal/mul@preparing_variables/hidden_1/b/Initializer/truncated_normal/mean*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
_output_shapes	
:

%preparing_variables/hidden_1/b/AssignAssignpreparing_variables/hidden_1/b;preparing_variables/hidden_1/b/Initializer/truncated_normal*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:
¨
#preparing_variables/hidden_1/b/readIdentitypreparing_variables/hidden_1/b*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
_output_shapes	
:
¸
#preparing_variables/hidden_1/MatMulMatMulPlaceholder#preparing_variables/hidden_1/w/read*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
 preparing_variables/hidden_1/addAdd#preparing_variables/hidden_1/MatMul#preparing_variables/hidden_1/b/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
!preparing_variables/hidden_1/ReluRelu preparing_variables/hidden_1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

preparing_variables/hidden_2/wVariable*
dtype0*
	container *
shared_name * 
_output_shapes
:
*
shape:

Ĺ
Apreparing_variables/hidden_2/w/Initializer/truncated_normal/shapeConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
valueB"      *
_output_shapes
:
¸
@preparing_variables/hidden_2/w/Initializer/truncated_normal/meanConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
valueB
 *    *
_output_shapes
: 
ş
Bpreparing_variables/hidden_2/w/Initializer/truncated_normal/stddevConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w*
valueB
 *  ?*
_output_shapes
: 
Ľ
Kpreparing_variables/hidden_2/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_2/w/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/w* 
_output_shapes
:

ľ
?preparing_variables/hidden_2/w/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_2/w/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_2/w/Initializer/truncated_normal/stddev*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0* 
_output_shapes
:

Ł
;preparing_variables/hidden_2/w/Initializer/truncated_normalAdd?preparing_variables/hidden_2/w/Initializer/truncated_normal/mul@preparing_variables/hidden_2/w/Initializer/truncated_normal/mean*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0* 
_output_shapes
:


%preparing_variables/hidden_2/w/AssignAssignpreparing_variables/hidden_2/w;preparing_variables/hidden_2/w/Initializer/truncated_normal*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:

­
#preparing_variables/hidden_2/w/readIdentitypreparing_variables/hidden_2/w*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0* 
_output_shapes
:


preparing_variables/hidden_2/bVariable*
dtype0*
	container *
shared_name *
_output_shapes	
:*
shape:
ż
Apreparing_variables/hidden_2/b/Initializer/truncated_normal/shapeConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
valueB:*
_output_shapes
:
¸
@preparing_variables/hidden_2/b/Initializer/truncated_normal/meanConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
valueB
 *    *
_output_shapes
: 
ş
Bpreparing_variables/hidden_2/b/Initializer/truncated_normal/stddevConst*
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
valueB
 *  ?*
_output_shapes
: 
 
Kpreparing_variables/hidden_2/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormalApreparing_variables/hidden_2/b/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*1
_class'
%#loc:@preparing_variables/hidden_2/b*
_output_shapes	
:
°
?preparing_variables/hidden_2/b/Initializer/truncated_normal/mulMulKpreparing_variables/hidden_2/b/Initializer/truncated_normal/TruncatedNormalBpreparing_variables/hidden_2/b/Initializer/truncated_normal/stddev*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
_output_shapes	
:

;preparing_variables/hidden_2/b/Initializer/truncated_normalAdd?preparing_variables/hidden_2/b/Initializer/truncated_normal/mul@preparing_variables/hidden_2/b/Initializer/truncated_normal/mean*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
_output_shapes	
:

%preparing_variables/hidden_2/b/AssignAssignpreparing_variables/hidden_2/b;preparing_variables/hidden_2/b/Initializer/truncated_normal*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:
¨
#preparing_variables/hidden_2/b/readIdentitypreparing_variables/hidden_2/b*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
_output_shapes	
:
Î
#preparing_variables/hidden_2/MatMulMatMul!preparing_variables/hidden_1/Relu#preparing_variables/hidden_2/w/read*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
 preparing_variables/hidden_2/addAdd#preparing_variables/hidden_2/MatMul#preparing_variables/hidden_2/b/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
!preparing_variables/hidden_2/ReluRelu preparing_variables/hidden_2/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

preparing_variables/output/wVariable*
dtype0*
	container *
shared_name *
_output_shapes
:	
*
shape:	

Á
?preparing_variables/output/w/Initializer/truncated_normal/shapeConst*
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
valueB"   
   *
_output_shapes
:
´
>preparing_variables/output/w/Initializer/truncated_normal/meanConst*
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
valueB
 *    *
_output_shapes
: 
ś
@preparing_variables/output/w/Initializer/truncated_normal/stddevConst*
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
valueB
 *  ?*
_output_shapes
: 

Ipreparing_variables/output/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?preparing_variables/output/w/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*/
_class%
#!loc:@preparing_variables/output/w*
_output_shapes
:	

Ź
=preparing_variables/output/w/Initializer/truncated_normal/mulMulIpreparing_variables/output/w/Initializer/truncated_normal/TruncatedNormal@preparing_variables/output/w/Initializer/truncated_normal/stddev*/
_class%
#!loc:@preparing_variables/output/w*
T0*
_output_shapes
:	


9preparing_variables/output/w/Initializer/truncated_normalAdd=preparing_variables/output/w/Initializer/truncated_normal/mul>preparing_variables/output/w/Initializer/truncated_normal/mean*/
_class%
#!loc:@preparing_variables/output/w*
T0*
_output_shapes
:	


#preparing_variables/output/w/AssignAssignpreparing_variables/output/w9preparing_variables/output/w/Initializer/truncated_normal*/
_class%
#!loc:@preparing_variables/output/w*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	

Ś
!preparing_variables/output/w/readIdentitypreparing_variables/output/w*/
_class%
#!loc:@preparing_variables/output/w*
T0*
_output_shapes
:	


preparing_variables/output/bVariable*
dtype0*
	container *
shared_name *
_output_shapes
:
*
shape:

ş
?preparing_variables/output/b/Initializer/truncated_normal/shapeConst*
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
valueB:
*
_output_shapes
:
´
>preparing_variables/output/b/Initializer/truncated_normal/meanConst*
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
valueB
 *    *
_output_shapes
: 
ś
@preparing_variables/output/b/Initializer/truncated_normal/stddevConst*
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
valueB
 *  ?*
_output_shapes
: 

Ipreparing_variables/output/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?preparing_variables/output/b/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*/
_class%
#!loc:@preparing_variables/output/b*
_output_shapes
:

§
=preparing_variables/output/b/Initializer/truncated_normal/mulMulIpreparing_variables/output/b/Initializer/truncated_normal/TruncatedNormal@preparing_variables/output/b/Initializer/truncated_normal/stddev*/
_class%
#!loc:@preparing_variables/output/b*
T0*
_output_shapes
:


9preparing_variables/output/b/Initializer/truncated_normalAdd=preparing_variables/output/b/Initializer/truncated_normal/mul>preparing_variables/output/b/Initializer/truncated_normal/mean*/
_class%
#!loc:@preparing_variables/output/b*
T0*
_output_shapes
:


#preparing_variables/output/b/AssignAssignpreparing_variables/output/b9preparing_variables/output/b/Initializer/truncated_normal*/
_class%
#!loc:@preparing_variables/output/b*
T0*
validate_shape(*
use_locking(*
_output_shapes
:

Ą
!preparing_variables/output/b/readIdentitypreparing_variables/output/b*/
_class%
#!loc:@preparing_variables/output/b*
T0*
_output_shapes
:

É
!preparing_variables/output/MatMulMatMul!preparing_variables/hidden_2/Relu!preparing_variables/output/w/read*
transpose_a( *
T0*
transpose_b( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙


preparing_variables/output/addAdd!preparing_variables/output/MatMul!preparing_variables/output/b/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

y
preparing_variables/output/ReluRelupreparing_variables/output/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Z
preparing_variables/RankConst*
dtype0*
value	B :*
_output_shapes
: 
x
preparing_variables/ShapeShapepreparing_variables/output/Relu*
T0*
out_type0*
_output_shapes
:
\
preparing_variables/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
z
preparing_variables/Shape_1Shapepreparing_variables/output/Relu*
T0*
out_type0*
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
preparing_variables/Slice/beginPackpreparing_variables/Sub*

axis *
T0*
N*
_output_shapes
:
h
preparing_variables/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
˛
preparing_variables/SliceSlicepreparing_variables/Shape_1preparing_variables/Slice/beginpreparing_variables/Slice/size*
T0*
_output_shapes
:*
Index0
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
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
š
preparing_variables/concatConcat%preparing_variables/concat/concat_dim#preparing_variables/concat/values_0preparing_variables/Slice*
T0*
N*
_output_shapes
:
Ź
preparing_variables/ReshapeReshapepreparing_variables/output/Relupreparing_variables/concat*
Tshape0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
\
preparing_variables/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
h
preparing_variables/Shape_2ShapePlaceholder_1*
T0*
out_type0*
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
!preparing_variables/Slice_1/beginPackpreparing_variables/Sub_1*

axis *
T0*
N*
_output_shapes
:
j
 preparing_variables/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
¸
preparing_variables/Slice_1Slicepreparing_variables/Shape_2!preparing_variables/Slice_1/begin preparing_variables/Slice_1/size*
T0*
_output_shapes
:*
Index0
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
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
Á
preparing_variables/concat_1Concat'preparing_variables/concat_1/concat_dim%preparing_variables/concat_1/values_0preparing_variables/Slice_1*
T0*
N*
_output_shapes
:

preparing_variables/Reshape_1ReshapePlaceholder_1preparing_variables/concat_1*
Tshape0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ř
1preparing_variables/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitspreparing_variables/Reshapepreparing_variables/Reshape_1*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
 preparing_variables/Slice_2/sizePackpreparing_variables/Sub_2*

axis *
T0*
N*
_output_shapes
:
ż
preparing_variables/Slice_2Slicepreparing_variables/Shape!preparing_variables/Slice_2/begin preparing_variables/Slice_2/size*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0
´
preparing_variables/Reshape_2Reshape1preparing_variables/SoftmaxCrossEntropyWithLogitspreparing_variables/Slice_2*
Tshape0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
preparing_variables/ConstConst*
dtype0*
valueB: *
_output_shapes
:

preparing_variables/MeanMeanpreparing_variables/Reshape_2preparing_variables/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
v
preparing_variables/loss/tagsConst*
dtype0*)
value B Bpreparing_variables/loss*
_output_shapes
: 

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
 *  ?*
_output_shapes
: 

"preparing_variables/gradients/FillFill#preparing_variables/gradients/Shape#preparing_variables/gradients/Const*
T0*
_output_shapes
: 

Ipreparing_variables/gradients/preparing_variables/Mean_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
đ
Cpreparing_variables/gradients/preparing_variables/Mean_grad/ReshapeReshape"preparing_variables/gradients/FillIpreparing_variables/gradients/preparing_variables/Mean_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:

Apreparing_variables/gradients/preparing_variables/Mean_grad/ShapeShapepreparing_variables/Reshape_2*
T0*
out_type0*
_output_shapes
:

@preparing_variables/gradients/preparing_variables/Mean_grad/TileTileCpreparing_variables/gradients/preparing_variables/Mean_grad/ReshapeApreparing_variables/gradients/preparing_variables/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
Cpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_1Shapepreparing_variables/Reshape_2*
T0*
out_type0*
_output_shapes
:

Cpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 

Apreparing_variables/gradients/preparing_variables/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:

@preparing_variables/gradients/preparing_variables/Mean_grad/ProdProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_1Apreparing_variables/gradients/preparing_variables/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

Cpreparing_variables/gradients/preparing_variables/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:

Bpreparing_variables/gradients/preparing_variables/Mean_grad/Prod_1ProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Shape_2Cpreparing_variables/gradients/preparing_variables/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

Epreparing_variables/gradients/preparing_variables/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 
ú
Cpreparing_variables/gradients/preparing_variables/Mean_grad/MaximumMaximumBpreparing_variables/gradients/preparing_variables/Mean_grad/Prod_1Epreparing_variables/gradients/preparing_variables/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
ó
Dpreparing_variables/gradients/preparing_variables/Mean_grad/floordivDiv@preparing_variables/gradients/preparing_variables/Mean_grad/ProdCpreparing_variables/gradients/preparing_variables/Mean_grad/Maximum*
T0*
_output_shapes
: 
ž
@preparing_variables/gradients/preparing_variables/Mean_grad/CastCastDpreparing_variables/gradients/preparing_variables/Mean_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0
ü
Cpreparing_variables/gradients/preparing_variables/Mean_grad/truedivDiv@preparing_variables/gradients/preparing_variables/Mean_grad/Tile@preparing_variables/gradients/preparing_variables/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
Fpreparing_variables/gradients/preparing_variables/Reshape_2_grad/ShapeShape1preparing_variables/SoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:

Hpreparing_variables/gradients/preparing_variables/Reshape_2_grad/ReshapeReshapeCpreparing_variables/gradients/preparing_variables/Mean_grad/truedivFpreparing_variables/gradients/preparing_variables/Reshape_2_grad/Shape*
Tshape0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
(preparing_variables/gradients/zeros_like	ZerosLike3preparing_variables/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ž
cpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
Ú
_preparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsHpreparing_variables/gradients/preparing_variables/Reshape_2_grad/Reshapecpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
Xpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/mulMul_preparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/ExpandDims3preparing_variables/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ł
Dpreparing_variables/gradients/preparing_variables/Reshape_grad/ShapeShapepreparing_variables/output/Relu*
T0*
out_type0*
_output_shapes
:
ą
Fpreparing_variables/gradients/preparing_variables/Reshape_grad/ReshapeReshapeXpreparing_variables/gradients/preparing_variables/SoftmaxCrossEntropyWithLogits_grad/mulDpreparing_variables/gradients/preparing_variables/Reshape_grad/Shape*
Tshape0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ň
Kpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradReluGradFpreparing_variables/gradients/preparing_variables/Reshape_grad/Reshapepreparing_variables/output/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

¨
Gpreparing_variables/gradients/preparing_variables/output/add_grad/ShapeShape!preparing_variables/output/MatMul*
T0*
out_type0*
_output_shapes
:

Ipreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1Const*
dtype0*
valueB:
*
_output_shapes
:
Á
Wpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgsBroadcastGradientArgsGpreparing_variables/gradients/preparing_variables/output/add_grad/ShapeIpreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
˛
Epreparing_variables/gradients/preparing_variables/output/add_grad/SumSumKpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradWpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
¤
Ipreparing_variables/gradients/preparing_variables/output/add_grad/ReshapeReshapeEpreparing_variables/gradients/preparing_variables/output/add_grad/SumGpreparing_variables/gradients/preparing_variables/output/add_grad/Shape*
Tshape0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ś
Gpreparing_variables/gradients/preparing_variables/output/add_grad/Sum_1SumKpreparing_variables/gradients/preparing_variables/output/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/output/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

Kpreparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1ReshapeGpreparing_variables/gradients/preparing_variables/output/add_grad/Sum_1Ipreparing_variables/gradients/preparing_variables/output/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

ô
Rpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_depsNoOpJ^preparing_variables/gradients/preparing_variables/output/add_grad/ReshapeL^preparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1

Zpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependencyIdentityIpreparing_variables/gradients/preparing_variables/output/add_grad/ReshapeS^preparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_deps*\
_classR
PNloc:@preparing_variables/gradients/preparing_variables/output/add_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


\preparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency_1IdentityKpreparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1S^preparing_variables/gradients/preparing_variables/output/add_grad/tuple/group_deps*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/output/add_grad/Reshape_1*
T0*
_output_shapes
:

­
Kpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulMatMulZpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency!preparing_variables/output/w/read*
transpose_a( *
T0*
transpose_b(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
Mpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1MatMul!preparing_variables/hidden_2/ReluZpreparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency*
transpose_a(*
T0*
transpose_b( *
_output_shapes
:	

ű
Upreparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulN^preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1
Ą
]preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMulV^preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_deps*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

_preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1V^preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/output/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	


Mpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGradReluGrad]preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency!preparing_variables/hidden_2/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
Ipreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ShapeShape#preparing_variables/hidden_2/MatMul*
T0*
out_type0*
_output_shapes
:

Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ç
Ypreparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgsBroadcastGradientArgsIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ShapeKpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¸
Gpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/SumSumMpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ť
Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeReshapeGpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/SumIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape*
Tshape0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
Ipreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Sum_1SumMpreparing_variables/gradients/preparing_variables/hidden_2/Relu_grad/ReluGrad[preparing_variables/gradients/preparing_variables/hidden_2/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
¤
Mpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1ReshapeIpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Sum_1Kpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes	
:
ú
Tpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeN^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1

\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/ReshapeU^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_deps*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1U^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_2/add_grad/Reshape_1*
T0*
_output_shapes	
:
ł
Mpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulMatMul\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency#preparing_variables/hidden_2/w/read*
transpose_a( *
T0*
transpose_b(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Opreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1MatMul!preparing_variables/hidden_1/Relu\preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency*
transpose_a(*
T0*
transpose_b( * 
_output_shapes
:


Wpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_depsNoOpN^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulP^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1
Š
_preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependencyIdentityMpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMulX^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
apreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency_1IdentityOpreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1X^preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/group_deps*b
_classX
VTloc:@preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:


Mpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGradReluGrad_preparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency!preparing_variables/hidden_1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
Ipreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ShapeShape#preparing_variables/hidden_1/MatMul*
T0*
out_type0*
_output_shapes
:

Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ç
Ypreparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgsBroadcastGradientArgsIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ShapeKpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¸
Gpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/SumSumMpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGradYpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ť
Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeReshapeGpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/SumIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape*
Tshape0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
Ipreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Sum_1SumMpreparing_variables/gradients/preparing_variables/hidden_1/Relu_grad/ReluGrad[preparing_variables/gradients/preparing_variables/hidden_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
¤
Mpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1ReshapeIpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Sum_1Kpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes	
:
ú
Tpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_depsNoOpL^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeN^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1

\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependencyIdentityKpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/ReshapeU^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_deps*^
_classT
RPloc:@preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency_1IdentityMpreparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1U^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_1/add_grad/Reshape_1*
T0*
_output_shapes	
:
ł
Mpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulMatMul\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency#preparing_variables/hidden_1/w/read*
transpose_a( *
T0*
transpose_b(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Opreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1MatMulPlaceholder\preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency*
transpose_a(*
T0*
transpose_b( * 
_output_shapes
:


Wpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_depsNoOpN^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulP^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1
Š
_preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependencyIdentityMpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMulX^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_deps*`
_classV
TRloc:@preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
apreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependency_1IdentityOpreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1X^preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/group_deps*b
_classX
VTloc:@preparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

v
1preparing_variables/GradientDescent/learning_rateConst*
dtype0*
valueB
 *o:*
_output_shapes
: 

^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_1/w1preparing_variables/GradientDescent/learning_rateapreparing_variables/gradients/preparing_variables/hidden_1/MatMul_grad/tuple/control_dependency_1*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0* 
_output_shapes
:
*
use_locking( 

^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_1/b1preparing_variables/GradientDescent/learning_rate^preparing_variables/gradients/preparing_variables/hidden_1/add_grad/tuple/control_dependency_1*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
_output_shapes	
:*
use_locking( 

^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_2/w1preparing_variables/GradientDescent/learning_rateapreparing_variables/gradients/preparing_variables/hidden_2/MatMul_grad/tuple/control_dependency_1*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0* 
_output_shapes
:
*
use_locking( 

^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/hidden_2/b1preparing_variables/GradientDescent/learning_rate^preparing_variables/gradients/preparing_variables/hidden_2/add_grad/tuple/control_dependency_1*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
_output_shapes	
:*
use_locking( 

\preparing_variables/GradientDescent/update_preparing_variables/output/w/ApplyGradientDescentApplyGradientDescentpreparing_variables/output/w1preparing_variables/GradientDescent/learning_rate_preparing_variables/gradients/preparing_variables/output/MatMul_grad/tuple/control_dependency_1*/
_class%
#!loc:@preparing_variables/output/w*
T0*
_output_shapes
:	
*
use_locking( 

\preparing_variables/GradientDescent/update_preparing_variables/output/b/ApplyGradientDescentApplyGradientDescentpreparing_variables/output/b1preparing_variables/GradientDescent/learning_rate\preparing_variables/gradients/preparing_variables/output/add_grad/tuple/control_dependency_1*/
_class%
#!loc:@preparing_variables/output/b*
T0*
_output_shapes
:
*
use_locking( 
ô
*preparing_variables/GradientDescent/updateNoOp_^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/w/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_1/b/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/w/ApplyGradientDescent_^preparing_variables/GradientDescent/update_preparing_variables/hidden_2/b/ApplyGradientDescent]^preparing_variables/GradientDescent/update_preparing_variables/output/w/ApplyGradientDescent]^preparing_variables/GradientDescent/update_preparing_variables/output/b/ApplyGradientDescent
Ě
)preparing_variables/GradientDescent/valueConst+^preparing_variables/GradientDescent/update*
dtype0*2
_class(
&$loc:@preparing_variables/global_step*
value	B :*
_output_shapes
: 
ä
#preparing_variables/GradientDescent	AssignAddpreparing_variables/global_step)preparing_variables/GradientDescent/value*2
_class(
&$loc:@preparing_variables/global_step*
T0*
_output_shapes
: *
use_locking( 
f
$preparing_variables/ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 

preparing_variables/ArgMaxArgMaxPlaceholder_1$preparing_variables/ArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
&preparing_variables/ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
Š
preparing_variables/ArgMax_1ArgMaxpreparing_variables/output/Relu&preparing_variables/ArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

preparing_variables/EqualEqualpreparing_variables/ArgMaxpreparing_variables/ArgMax_1*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
preparing_variables/Cast_1Castpreparing_variables/Equal*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0

e
preparing_variables/Const_1Const*
dtype0*
valueB: *
_output_shapes
:

preparing_variables/Mean_1Meanpreparing_variables/Cast_1preparing_variables/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
^
preparing_variables/sub/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
v
preparing_variables/subSubpreparing_variables/sub/xpreparing_variables/Mean_1*
T0*
_output_shapes
: 

)preparing_variables/validation_error/tagsConst*
dtype0*5
value,B* B$preparing_variables/validation_error*
_output_shapes
: 

$preparing_variables/validation_errorScalarSummary)preparing_variables/validation_error/tagspreparing_variables/sub*
T0*
_output_shapes
: 
ľ
preparing_variables/initNoOp'^preparing_variables/global_step/Assign&^preparing_variables/hidden_1/w/Assign&^preparing_variables/hidden_1/b/Assign&^preparing_variables/hidden_2/w/Assign&^preparing_variables/hidden_2/b/Assign$^preparing_variables/output/w/Assign$^preparing_variables/output/b/Assign

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
Ó
,preparing_variables/save/SaveV2/tensor_namesConst*
dtype0*ň
valuečBĺBpreparing_variables/global_stepBpreparing_variables/hidden_1/bBpreparing_variables/hidden_1/wBpreparing_variables/hidden_2/bBpreparing_variables/hidden_2/wBpreparing_variables/output/bBpreparing_variables/output/w*
_output_shapes
:

0preparing_variables/save/SaveV2/shape_and_slicesConst*
dtype0*!
valueBB B B B B B B *
_output_shapes
:

preparing_variables/save/SaveV2SaveV2preparing_variables/save/Const,preparing_variables/save/SaveV2/tensor_names0preparing_variables/save/SaveV2/shape_and_slicespreparing_variables/global_steppreparing_variables/hidden_1/bpreparing_variables/hidden_1/wpreparing_variables/hidden_2/bpreparing_variables/hidden_2/wpreparing_variables/output/bpreparing_variables/output/w*
dtypes
	2
Í
+preparing_variables/save/control_dependencyIdentitypreparing_variables/save/Const ^preparing_variables/save/SaveV2*1
_class'
%#loc:@preparing_variables/save/Const*
T0*
_output_shapes
: 

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
ŕ
"preparing_variables/save/RestoreV2	RestoreV2preparing_variables/save/Const/preparing_variables/save/RestoreV2/tensor_names3preparing_variables/save/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
ě
preparing_variables/save/AssignAssignpreparing_variables/global_step"preparing_variables/save/RestoreV2*2
_class(
&$loc:@preparing_variables/global_step*
T0*
validate_shape(*
use_locking(*
_output_shapes
: 

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
ć
$preparing_variables/save/RestoreV2_1	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_1/tensor_names5preparing_variables/save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
ó
!preparing_variables/save/Assign_1Assignpreparing_variables/hidden_1/b$preparing_variables/save/RestoreV2_1*1
_class'
%#loc:@preparing_variables/hidden_1/b*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:

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
ć
$preparing_variables/save/RestoreV2_2	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_2/tensor_names5preparing_variables/save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
ř
!preparing_variables/save/Assign_2Assignpreparing_variables/hidden_1/w$preparing_variables/save/RestoreV2_2*1
_class'
%#loc:@preparing_variables/hidden_1/w*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:


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
ć
$preparing_variables/save/RestoreV2_3	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_3/tensor_names5preparing_variables/save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
ó
!preparing_variables/save/Assign_3Assignpreparing_variables/hidden_2/b$preparing_variables/save/RestoreV2_3*1
_class'
%#loc:@preparing_variables/hidden_2/b*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:

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
ć
$preparing_variables/save/RestoreV2_4	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_4/tensor_names5preparing_variables/save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
ř
!preparing_variables/save/Assign_4Assignpreparing_variables/hidden_2/w$preparing_variables/save/RestoreV2_4*1
_class'
%#loc:@preparing_variables/hidden_2/w*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:


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
ć
$preparing_variables/save/RestoreV2_5	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_5/tensor_names5preparing_variables/save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
î
!preparing_variables/save/Assign_5Assignpreparing_variables/output/b$preparing_variables/save/RestoreV2_5*/
_class%
#!loc:@preparing_variables/output/b*
T0*
validate_shape(*
use_locking(*
_output_shapes
:


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
ć
$preparing_variables/save/RestoreV2_6	RestoreV2preparing_variables/save/Const1preparing_variables/save/RestoreV2_6/tensor_names5preparing_variables/save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
ó
!preparing_variables/save/Assign_6Assignpreparing_variables/output/w$preparing_variables/save/RestoreV2_6*/
_class%
#!loc:@preparing_variables/output/w*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	

Ś
$preparing_variables/save/restore_allNoOp ^preparing_variables/save/Assign"^preparing_variables/save/Assign_1"^preparing_variables/save/Assign_2"^preparing_variables/save/Assign_3"^preparing_variables/save/Assign_4"^preparing_variables/save/Assign_5"^preparing_variables/save/Assign_6

mlp_init/hidden_1/wVariable*
dtype0*
	container *
shared_name * 
_output_shapes
:
*
shape:

Ż
6mlp_init/hidden_1/w/Initializer/truncated_normal/shapeConst*
dtype0*&
_class
loc:@mlp_init/hidden_1/w*
valueB"     *
_output_shapes
:
˘
5mlp_init/hidden_1/w/Initializer/truncated_normal/meanConst*
dtype0*&
_class
loc:@mlp_init/hidden_1/w*
valueB
 *    *
_output_shapes
: 
¤
7mlp_init/hidden_1/w/Initializer/truncated_normal/stddevConst*
dtype0*&
_class
loc:@mlp_init/hidden_1/w*
valueB
 *  ?*
_output_shapes
: 

@mlp_init/hidden_1/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_1/w/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*&
_class
loc:@mlp_init/hidden_1/w* 
_output_shapes
:


4mlp_init/hidden_1/w/Initializer/truncated_normal/mulMul@mlp_init/hidden_1/w/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_1/w/Initializer/truncated_normal/stddev*&
_class
loc:@mlp_init/hidden_1/w*
T0* 
_output_shapes
:

÷
0mlp_init/hidden_1/w/Initializer/truncated_normalAdd4mlp_init/hidden_1/w/Initializer/truncated_normal/mul5mlp_init/hidden_1/w/Initializer/truncated_normal/mean*&
_class
loc:@mlp_init/hidden_1/w*
T0* 
_output_shapes
:

ç
mlp_init/hidden_1/w/AssignAssignmlp_init/hidden_1/w0mlp_init/hidden_1/w/Initializer/truncated_normal*&
_class
loc:@mlp_init/hidden_1/w*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:


mlp_init/hidden_1/w/readIdentitymlp_init/hidden_1/w*&
_class
loc:@mlp_init/hidden_1/w*
T0* 
_output_shapes
:


mlp_init/hidden_1/bVariable*
dtype0*
	container *
shared_name *
_output_shapes	
:*
shape:
Š
6mlp_init/hidden_1/b/Initializer/truncated_normal/shapeConst*
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
valueB:*
_output_shapes
:
˘
5mlp_init/hidden_1/b/Initializer/truncated_normal/meanConst*
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
valueB
 *    *
_output_shapes
: 
¤
7mlp_init/hidden_1/b/Initializer/truncated_normal/stddevConst*
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
valueB
 *  ?*
_output_shapes
: 
˙
@mlp_init/hidden_1/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_1/b/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*&
_class
loc:@mlp_init/hidden_1/b*
_output_shapes	
:

4mlp_init/hidden_1/b/Initializer/truncated_normal/mulMul@mlp_init/hidden_1/b/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_1/b/Initializer/truncated_normal/stddev*&
_class
loc:@mlp_init/hidden_1/b*
T0*
_output_shapes	
:
ň
0mlp_init/hidden_1/b/Initializer/truncated_normalAdd4mlp_init/hidden_1/b/Initializer/truncated_normal/mul5mlp_init/hidden_1/b/Initializer/truncated_normal/mean*&
_class
loc:@mlp_init/hidden_1/b*
T0*
_output_shapes	
:
â
mlp_init/hidden_1/b/AssignAssignmlp_init/hidden_1/b0mlp_init/hidden_1/b/Initializer/truncated_normal*&
_class
loc:@mlp_init/hidden_1/b*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:

mlp_init/hidden_1/b/readIdentitymlp_init/hidden_1/b*&
_class
loc:@mlp_init/hidden_1/b*
T0*
_output_shapes	
:
˘
mlp_init/hidden_1/MatMulMatMulPlaceholdermlp_init/hidden_1/w/read*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

mlp_init/hidden_1/addAddmlp_init/hidden_1/MatMulmlp_init/hidden_1/b/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
mlp_init/hidden_1/ReluRelumlp_init/hidden_1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

mlp_init/hidden_2/wVariable*
dtype0*
	container *
shared_name * 
_output_shapes
:
*
shape:

Ż
6mlp_init/hidden_2/w/Initializer/truncated_normal/shapeConst*
dtype0*&
_class
loc:@mlp_init/hidden_2/w*
valueB"      *
_output_shapes
:
˘
5mlp_init/hidden_2/w/Initializer/truncated_normal/meanConst*
dtype0*&
_class
loc:@mlp_init/hidden_2/w*
valueB
 *    *
_output_shapes
: 
¤
7mlp_init/hidden_2/w/Initializer/truncated_normal/stddevConst*
dtype0*&
_class
loc:@mlp_init/hidden_2/w*
valueB
 *  ?*
_output_shapes
: 

@mlp_init/hidden_2/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_2/w/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*&
_class
loc:@mlp_init/hidden_2/w* 
_output_shapes
:


4mlp_init/hidden_2/w/Initializer/truncated_normal/mulMul@mlp_init/hidden_2/w/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_2/w/Initializer/truncated_normal/stddev*&
_class
loc:@mlp_init/hidden_2/w*
T0* 
_output_shapes
:

÷
0mlp_init/hidden_2/w/Initializer/truncated_normalAdd4mlp_init/hidden_2/w/Initializer/truncated_normal/mul5mlp_init/hidden_2/w/Initializer/truncated_normal/mean*&
_class
loc:@mlp_init/hidden_2/w*
T0* 
_output_shapes
:

ç
mlp_init/hidden_2/w/AssignAssignmlp_init/hidden_2/w0mlp_init/hidden_2/w/Initializer/truncated_normal*&
_class
loc:@mlp_init/hidden_2/w*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:


mlp_init/hidden_2/w/readIdentitymlp_init/hidden_2/w*&
_class
loc:@mlp_init/hidden_2/w*
T0* 
_output_shapes
:


mlp_init/hidden_2/bVariable*
dtype0*
	container *
shared_name *
_output_shapes	
:*
shape:
Š
6mlp_init/hidden_2/b/Initializer/truncated_normal/shapeConst*
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
valueB:*
_output_shapes
:
˘
5mlp_init/hidden_2/b/Initializer/truncated_normal/meanConst*
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
valueB
 *    *
_output_shapes
: 
¤
7mlp_init/hidden_2/b/Initializer/truncated_normal/stddevConst*
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
valueB
 *  ?*
_output_shapes
: 
˙
@mlp_init/hidden_2/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6mlp_init/hidden_2/b/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*&
_class
loc:@mlp_init/hidden_2/b*
_output_shapes	
:

4mlp_init/hidden_2/b/Initializer/truncated_normal/mulMul@mlp_init/hidden_2/b/Initializer/truncated_normal/TruncatedNormal7mlp_init/hidden_2/b/Initializer/truncated_normal/stddev*&
_class
loc:@mlp_init/hidden_2/b*
T0*
_output_shapes	
:
ň
0mlp_init/hidden_2/b/Initializer/truncated_normalAdd4mlp_init/hidden_2/b/Initializer/truncated_normal/mul5mlp_init/hidden_2/b/Initializer/truncated_normal/mean*&
_class
loc:@mlp_init/hidden_2/b*
T0*
_output_shapes	
:
â
mlp_init/hidden_2/b/AssignAssignmlp_init/hidden_2/b0mlp_init/hidden_2/b/Initializer/truncated_normal*&
_class
loc:@mlp_init/hidden_2/b*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:

mlp_init/hidden_2/b/readIdentitymlp_init/hidden_2/b*&
_class
loc:@mlp_init/hidden_2/b*
T0*
_output_shapes	
:
­
mlp_init/hidden_2/MatMulMatMulmlp_init/hidden_1/Relumlp_init/hidden_2/w/read*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

mlp_init/hidden_2/addAddmlp_init/hidden_2/MatMulmlp_init/hidden_2/b/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
mlp_init/hidden_2/ReluRelumlp_init/hidden_2/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

mlp_init/output/wVariable*
dtype0*
	container *
shared_name *
_output_shapes
:	
*
shape:	

Ť
4mlp_init/output/w/Initializer/truncated_normal/shapeConst*
dtype0*$
_class
loc:@mlp_init/output/w*
valueB"   
   *
_output_shapes
:

3mlp_init/output/w/Initializer/truncated_normal/meanConst*
dtype0*$
_class
loc:@mlp_init/output/w*
valueB
 *    *
_output_shapes
: 
 
5mlp_init/output/w/Initializer/truncated_normal/stddevConst*
dtype0*$
_class
loc:@mlp_init/output/w*
valueB
 *  ?*
_output_shapes
: 
ý
>mlp_init/output/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4mlp_init/output/w/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*$
_class
loc:@mlp_init/output/w*
_output_shapes
:	


2mlp_init/output/w/Initializer/truncated_normal/mulMul>mlp_init/output/w/Initializer/truncated_normal/TruncatedNormal5mlp_init/output/w/Initializer/truncated_normal/stddev*$
_class
loc:@mlp_init/output/w*
T0*
_output_shapes
:	

î
.mlp_init/output/w/Initializer/truncated_normalAdd2mlp_init/output/w/Initializer/truncated_normal/mul3mlp_init/output/w/Initializer/truncated_normal/mean*$
_class
loc:@mlp_init/output/w*
T0*
_output_shapes
:	

Ţ
mlp_init/output/w/AssignAssignmlp_init/output/w.mlp_init/output/w/Initializer/truncated_normal*$
_class
loc:@mlp_init/output/w*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	


mlp_init/output/w/readIdentitymlp_init/output/w*$
_class
loc:@mlp_init/output/w*
T0*
_output_shapes
:	

{
mlp_init/output/bVariable*
dtype0*
	container *
shared_name *
_output_shapes
:
*
shape:

¤
4mlp_init/output/b/Initializer/truncated_normal/shapeConst*
dtype0*$
_class
loc:@mlp_init/output/b*
valueB:
*
_output_shapes
:

3mlp_init/output/b/Initializer/truncated_normal/meanConst*
dtype0*$
_class
loc:@mlp_init/output/b*
valueB
 *    *
_output_shapes
: 
 
5mlp_init/output/b/Initializer/truncated_normal/stddevConst*
dtype0*$
_class
loc:@mlp_init/output/b*
valueB
 *  ?*
_output_shapes
: 
ř
>mlp_init/output/b/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4mlp_init/output/b/Initializer/truncated_normal/shape*

seed *
T0*
seed2 *
dtype0*$
_class
loc:@mlp_init/output/b*
_output_shapes
:

ű
2mlp_init/output/b/Initializer/truncated_normal/mulMul>mlp_init/output/b/Initializer/truncated_normal/TruncatedNormal5mlp_init/output/b/Initializer/truncated_normal/stddev*$
_class
loc:@mlp_init/output/b*
T0*
_output_shapes
:

é
.mlp_init/output/b/Initializer/truncated_normalAdd2mlp_init/output/b/Initializer/truncated_normal/mul3mlp_init/output/b/Initializer/truncated_normal/mean*$
_class
loc:@mlp_init/output/b*
T0*
_output_shapes
:

Ů
mlp_init/output/b/AssignAssignmlp_init/output/b.mlp_init/output/b/Initializer/truncated_normal*$
_class
loc:@mlp_init/output/b*
T0*
validate_shape(*
use_locking(*
_output_shapes
:


mlp_init/output/b/readIdentitymlp_init/output/b*$
_class
loc:@mlp_init/output/b*
T0*
_output_shapes
:

¨
mlp_init/output/MatMulMatMulmlp_init/hidden_2/Relumlp_init/output/w/read*
transpose_a( *
T0*
transpose_b( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙

|
mlp_init/output/addAddmlp_init/output/MatMulmlp_init/output/b/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

c
mlp_init/output/ReluRelumlp_init/output/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

O
mlp_init/RankConst*
dtype0*
value	B :*
_output_shapes
: 
b
mlp_init/ShapeShapemlp_init/output/Relu*
T0*
out_type0*
_output_shapes
:
Q
mlp_init/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
d
mlp_init/Shape_1Shapemlp_init/output/Relu*
T0*
out_type0*
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
mlp_init/Slice/beginPackmlp_init/Sub*

axis *
T0*
N*
_output_shapes
:
]
mlp_init/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

mlp_init/SliceSlicemlp_init/Shape_1mlp_init/Slice/beginmlp_init/Slice/size*
T0*
_output_shapes
:*
Index0
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
˙˙˙˙˙˙˙˙˙*
_output_shapes
:

mlp_init/concatConcatmlp_init/concat/concat_dimmlp_init/concat/values_0mlp_init/Slice*
T0*
N*
_output_shapes
:

mlp_init/ReshapeReshapemlp_init/output/Relumlp_init/concat*
Tshape0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Q
mlp_init/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
]
mlp_init/Shape_2ShapePlaceholder_1*
T0*
out_type0*
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
mlp_init/Slice_1/beginPackmlp_init/Sub_1*

axis *
T0*
N*
_output_shapes
:
_
mlp_init/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:

mlp_init/Slice_1Slicemlp_init/Shape_2mlp_init/Slice_1/beginmlp_init/Slice_1/size*
T0*
_output_shapes
:*
Index0
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
˙˙˙˙˙˙˙˙˙*
_output_shapes
:

mlp_init/concat_1Concatmlp_init/concat_1/concat_dimmlp_init/concat_1/values_0mlp_init/Slice_1*
T0*
N*
_output_shapes
:

mlp_init/Reshape_1ReshapePlaceholder_1mlp_init/concat_1*
Tshape0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ˇ
&mlp_init/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsmlp_init/Reshapemlp_init/Reshape_1*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
mlp_init/Slice_2/sizePackmlp_init/Sub_2*

axis *
T0*
N*
_output_shapes
:

mlp_init/Slice_2Slicemlp_init/Shapemlp_init/Slice_2/beginmlp_init/Slice_2/size*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0

mlp_init/Reshape_2Reshape&mlp_init/SoftmaxCrossEntropyWithLogitsmlp_init/Slice_2*
Tshape0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
mlp_init/ConstConst*
dtype0*
valueB: *
_output_shapes
:
w
mlp_init/MeanMeanmlp_init/Reshape_2mlp_init/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ż
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
 *  ?*
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

r
mlp_inter/mul_1Mulmlp_init/hidden_1/w/readmlp_inter/Placeholder*
T0* 
_output_shapes
:

_
mlp_inter/addAddmlp_inter/mulmlp_inter/mul_1*
T0* 
_output_shapes
:

V
mlp_inter/sub_1/xConst*
dtype0*
valueB
 *  ?*
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
:	
q
mlp_inter/mul_3Mulmlp_init/hidden_1/b/readmlp_inter/Placeholder*
T0*
_output_shapes
:	
b
mlp_inter/add_1Addmlp_inter/mul_2mlp_inter/mul_3*
T0*
_output_shapes
:	
V
mlp_inter/sub_2/xConst*
dtype0*
valueB
 *  ?*
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

r
mlp_inter/mul_5Mulmlp_init/hidden_2/w/readmlp_inter/Placeholder*
T0* 
_output_shapes
:

c
mlp_inter/add_2Addmlp_inter/mul_4mlp_inter/mul_5*
T0* 
_output_shapes
:

V
mlp_inter/sub_3/xConst*
dtype0*
valueB
 *  ?*
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
:	
q
mlp_inter/mul_7Mulmlp_init/hidden_2/b/readmlp_inter/Placeholder*
T0*
_output_shapes
:	
b
mlp_inter/add_3Addmlp_inter/mul_6mlp_inter/mul_7*
T0*
_output_shapes
:	
V
mlp_inter/sub_4/xConst*
dtype0*
valueB
 *  ?*
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
:	

o
mlp_inter/mul_9Mulmlp_init/output/w/readmlp_inter/Placeholder*
T0*
_output_shapes
:	

b
mlp_inter/add_4Addmlp_inter/mul_8mlp_inter/mul_9*
T0*
_output_shapes
:	

V
mlp_inter/sub_5/xConst*
dtype0*
valueB
 *  ?*
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


mlp_inter/MatMulMatMulPlaceholdermlp_inter/add*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
mlp_inter/add_6Addmlp_inter/MatMulmlp_inter/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
mlp_inter/ReluRelumlp_inter/add_6*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

mlp_inter/MatMul_1MatMulmlp_inter/Relumlp_inter/add_2*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
mlp_inter/add_7Addmlp_inter/MatMul_1mlp_inter/add_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
mlp_inter/Relu_1Relumlp_inter/add_7*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

mlp_inter/MatMul_2MatMulmlp_inter/Relu_1mlp_inter/add_4*
transpose_a( *
T0*
transpose_b( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙

m
mlp_inter/add_8Addmlp_inter/MatMul_2mlp_inter/add_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

[
mlp_inter/Relu_2Relumlp_inter/add_8*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

P
mlp_inter/RankConst*
dtype0*
value	B :*
_output_shapes
: 
\
mlp_inter/ShapeShapePlaceholder_1*
T0*
out_type0*
_output_shapes
:
R
mlp_inter/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
^
mlp_inter/Shape_1ShapePlaceholder_1*
T0*
out_type0*
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
mlp_inter/Slice/beginPackmlp_inter/Sub*

axis *
T0*
N*
_output_shapes
:
^
mlp_inter/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

mlp_inter/SliceSlicemlp_inter/Shape_1mlp_inter/Slice/beginmlp_inter/Slice/size*
T0*
_output_shapes
:*
Index0
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
˙˙˙˙˙˙˙˙˙*
_output_shapes
:

mlp_inter/concatConcatmlp_inter/concat/concat_dimmlp_inter/concat/values_0mlp_inter/Slice*
T0*
N*
_output_shapes
:

mlp_inter/ReshapeReshapePlaceholder_1mlp_inter/concat*
Tshape0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
R
mlp_inter/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
a
mlp_inter/Shape_2Shapemlp_inter/Relu_2*
T0*
out_type0*
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
mlp_inter/Slice_1/beginPackmlp_inter/Sub_1*

axis *
T0*
N*
_output_shapes
:
`
mlp_inter/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:

mlp_inter/Slice_1Slicemlp_inter/Shape_2mlp_inter/Slice_1/beginmlp_inter/Slice_1/size*
T0*
_output_shapes
:*
Index0
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
˙˙˙˙˙˙˙˙˙*
_output_shapes
:

mlp_inter/concat_1Concatmlp_inter/concat_1/concat_dimmlp_inter/concat_1/values_0mlp_inter/Slice_1*
T0*
N*
_output_shapes
:

mlp_inter/Reshape_1Reshapemlp_inter/Relu_2mlp_inter/concat_1*
Tshape0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
'mlp_inter/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsmlp_inter/Reshapemlp_inter/Reshape_1*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
mlp_inter/Slice_2/sizePackmlp_inter/Sub_2*

axis *
T0*
N*
_output_shapes
:

mlp_inter/Slice_2Slicemlp_inter/Shapemlp_inter/Slice_2/beginmlp_inter/Slice_2/size*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0

mlp_inter/Reshape_2Reshape'mlp_inter/SoftmaxCrossEntropyWithLogitsmlp_inter/Slice_2*
Tshape0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
mlp_inter/ConstConst*
dtype0*
valueB: *
_output_shapes
:
z
mlp_inter/MeanMeanmlp_inter/Reshape_2mlp_inter/Const*
	keep_dims( *
T0*

Tidx0*
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
: ""3
train_op'
%
#preparing_variables/GradientDescent"	
trainable_variablesýú
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
mlp_init/output/b:0mlp_init/output/b/Assignmlp_init/output/b/read:0"

	variablesň	ď	
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
mlp_init/output/b:0mlp_init/output/b/Assignmlp_init/output/b/read:0"n
	summariesa
_
preparing_variables/loss:0
&preparing_variables/validation_error:0
mlp_inter/ScalarSummary:0ÖLďź