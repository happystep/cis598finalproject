       �K"	  �g��Abrain.Event:2���8f�     ��ɼ	�d�g��A"��
n
InputData/XPlaceholder*
dtype0*
shape:���������0*'
_output_shapes
:���������0
�
3FullyConnected/W/Initializer/truncated_normal/shapeConst*
valueB"0      *
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes
:
�
2FullyConnected/W/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
4FullyConnected/W/Initializer/truncated_normal/stddevConst*
valueB
 *
ף<*
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
=FullyConnected/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3FullyConnected/W/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
1FullyConnected/W/Initializer/truncated_normal/mulMul=FullyConnected/W/Initializer/truncated_normal/TruncatedNormal4FullyConnected/W/Initializer/truncated_normal/stddev*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
-FullyConnected/W/Initializer/truncated_normalAdd1FullyConnected/W/Initializer/truncated_normal/mul2FullyConnected/W/Initializer/truncated_normal/mean*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W
VariableV2*
shape
:0*
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/AssignAssignFullyConnected/W-FullyConnected/W/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/readIdentityFullyConnected/W*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
"FullyConnected/b/Initializer/ConstConst*
valueB*    *
dtype0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b
VariableV2*
shape:*
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/AssignAssignFullyConnected/b"FullyConnected/b/Initializer/Const*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
}
FullyConnected/b/readIdentityFullyConnected/b*
T0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/MatMulMatMulInputData/XFullyConnected/W/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:���������
�
FullyConnected/BiasAddBiasAddFullyConnected/MatMulFullyConnected/b/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
�
5FullyConnected_1/W/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:
�
4FullyConnected_1/W/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
: 
�
6FullyConnected_1/W/Initializer/truncated_normal/stddevConst*
valueB
 *
ף<*
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
: 
�
?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_1/W/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
3FullyConnected_1/W/Initializer/truncated_normal/mulMul?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_1/W/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
/FullyConnected_1/W/Initializer/truncated_normalAdd3FullyConnected_1/W/Initializer/truncated_normal/mul4FullyConnected_1/W/Initializer/truncated_normal/mean*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W
VariableV2*
shape
:*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/AssignAssignFullyConnected_1/W/FullyConnected_1/W/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/readIdentityFullyConnected_1/W*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
$FullyConnected_1/b/Initializer/ConstConst*
valueB*    *
dtype0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b
VariableV2*
shape:*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/AssignAssignFullyConnected_1/b$FullyConnected_1/b/Initializer/Const*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/readIdentityFullyConnected_1/b*
T0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/MatMulMatMulFullyConnected/BiasAddFullyConnected_1/W/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:���������
�
FullyConnected_1/BiasAddBiasAddFullyConnected_1/MatMulFullyConnected_1/b/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
�
5FullyConnected_2/W/Initializer/truncated_normal/shapeConst*
valueB"   	   *
dtype0*%
_class
loc:@FullyConnected_2/W*
_output_shapes
:
�
4FullyConnected_2/W/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*%
_class
loc:@FullyConnected_2/W*
_output_shapes
: 
�
6FullyConnected_2/W/Initializer/truncated_normal/stddevConst*
valueB
 *
ף<*
dtype0*%
_class
loc:@FullyConnected_2/W*
_output_shapes
: 
�
?FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_2/W/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
3FullyConnected_2/W/Initializer/truncated_normal/mulMul?FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_2/W/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
/FullyConnected_2/W/Initializer/truncated_normalAdd3FullyConnected_2/W/Initializer/truncated_normal/mul4FullyConnected_2/W/Initializer/truncated_normal/mean*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W
VariableV2*
shape
:	*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/AssignAssignFullyConnected_2/W/FullyConnected_2/W/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/readIdentityFullyConnected_2/W*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
$FullyConnected_2/b/Initializer/ConstConst*
valueB	*    *
dtype0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b
VariableV2*
shape:	*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/AssignAssignFullyConnected_2/b$FullyConnected_2/b/Initializer/Const*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/readIdentityFullyConnected_2/b*
T0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/MatMulMatMulFullyConnected_1/BiasAddFullyConnected_2/W/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:���������	
�
FullyConnected_2/BiasAddBiasAddFullyConnected_2/MatMulFullyConnected_2/b/read*
T0*
data_formatNHWC*'
_output_shapes
:���������	
o
FullyConnected_2/SoftmaxSoftmaxFullyConnected_2/BiasAdd*
T0*'
_output_shapes
:���������	
p
TargetsData/YPlaceholder*
dtype0*
shape:���������	*'
_output_shapes
:���������	
[
Accuracy/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
Accuracy/ArgMaxArgMaxFullyConnected_2/SoftmaxAccuracy/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:���������
]
Accuracy/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
Accuracy/ArgMax_1ArgMaxTargetsData/YAccuracy/ArgMax_1/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:���������
i
Accuracy/EqualEqualAccuracy/ArgMaxAccuracy/ArgMax_1*
T0	*#
_output_shapes
:���������
b
Accuracy/CastCastAccuracy/Equal*

SrcT0
*

DstT0*#
_output_shapes
:���������
X
Accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
r
Accuracy/MeanMeanAccuracy/CastAccuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
d
"Crossentropy/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
Crossentropy/SumSumFullyConnected_2/Softmax"Crossentropy/Sum/reduction_indices*
	keep_dims(*
T0*

Tidx0*'
_output_shapes
:���������
}
Crossentropy/truedivRealDivFullyConnected_2/SoftmaxCrossentropy/Sum*
T0*'
_output_shapes
:���������	
X
Crossentropy/Cast/xConst*
valueB
 *���.*
dtype0*
_output_shapes
: 
Z
Crossentropy/Cast_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
"Crossentropy/clip_by_value/MinimumMinimumCrossentropy/truedivCrossentropy/Cast_1/x*
T0*'
_output_shapes
:���������	
�
Crossentropy/clip_by_valueMaximum"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x*
T0*'
_output_shapes
:���������	
e
Crossentropy/LogLogCrossentropy/clip_by_value*
T0*'
_output_shapes
:���������	
j
Crossentropy/mulMulTargetsData/YCrossentropy/Log*
T0*'
_output_shapes
:���������	
f
$Crossentropy/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
Crossentropy/Sum_1SumCrossentropy/mul$Crossentropy/Sum_1/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:���������
Y
Crossentropy/NegNegCrossentropy/Sum_1*
T0*#
_output_shapes
:���������
\
Crossentropy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
Crossentropy/MeanMeanCrossentropy/NegCrossentropy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
`
Training_step/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
q
Training_step
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
�
Training_step/AssignAssignTraining_stepTraining_step/initial_value*
T0*
validate_shape(*
use_locking(* 
_class
loc:@Training_step*
_output_shapes
: 
p
Training_step/readIdentityTraining_step*
T0* 
_class
loc:@Training_step*
_output_shapes
: 

is_training/Initializer/ConstConst*
value	B
 Z *
dtype0
*
_class
loc:@is_training*
_output_shapes
: 
�
is_training
VariableV2*
shape: *
dtype0
*
	container *
shared_name *
_class
loc:@is_training*
_output_shapes
: 
�
is_training/AssignAssignis_trainingis_training/Initializer/Const*
T0
*
validate_shape(*
use_locking(*
_class
loc:@is_training*
_output_shapes
: 
j
is_training/readIdentityis_training*
T0
*
_class
loc:@is_training*
_output_shapes
: 
N
Assign/valueConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
�
AssignAssignis_trainingAssign/value*
T0
*
validate_shape(*
use_locking(*
_class
loc:@is_training*
_output_shapes
: 
P
Assign_1/valueConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
�
Assign_1Assignis_trainingAssign_1/value*
T0
*
validate_shape(*
use_locking(*
_class
loc:@is_training*
_output_shapes
: 
^
Global_Step/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
Global_Step
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
�
Global_Step/AssignAssignGlobal_StepGlobal_Step/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Global_Step*
_output_shapes
: 
j
Global_Step/readIdentityGlobal_Step*
T0*
_class
loc:@Global_Step*
_output_shapes
: 
J
Add/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
D
AddAddGlobal_Step/readAdd/y*
T0*
_output_shapes
: 
�
Assign_2AssignGlobal_StepAdd*
T0*
validate_shape(*
use_locking(*
_class
loc:@Global_Step*
_output_shapes
: 
[
val_loss/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
val_loss
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
�
val_loss/AssignAssignval_lossval_loss/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_loss*
_output_shapes
: 
a
val_loss/readIdentityval_loss*
T0*
_class
loc:@val_loss*
_output_shapes
: 
Z
val_acc/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
val_acc
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
�
val_acc/AssignAssignval_accval_acc/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_acc*
_output_shapes
: 
^
val_acc/readIdentityval_acc*
T0*
_class
loc:@val_acc*
_output_shapes
: 
Y
placeholder/val_lossPlaceholder*
dtype0*
shape:*
_output_shapes
:
X
placeholder/val_accPlaceholder*
dtype0*
shape:*
_output_shapes
:
�
assign/val_lossAssignval_lossplaceholder/val_loss*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_loss*
_output_shapes
: 
�
assign/val_accAssignval_accplaceholder/val_acc*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_acc*
_output_shapes
: 
�
*Accuracy/Mean/moving_avg/Initializer/zerosConst*
valueB
 *    *
dtype0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
Accuracy/Mean/moving_avg
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
Accuracy/Mean/moving_avg/AssignAssignAccuracy/Mean/moving_avg*Accuracy/Mean/moving_avg/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
Accuracy/Mean/moving_avg/readIdentityAccuracy/Mean/moving_avg*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
U
moving_avg/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
U
moving_avg/add/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
\
moving_avg/addAddmoving_avg/add/xTraining_step/read*
T0*
_output_shapes
: 
W
moving_avg/add_1/xConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
`
moving_avg/add_1Addmoving_avg/add_1/xTraining_step/read*
T0*
_output_shapes
: 
`
moving_avg/truedivRealDivmoving_avg/addmoving_avg/add_1*
T0*
_output_shapes
: 
d
moving_avg/MinimumMinimummoving_avg/decaymoving_avg/truediv*
T0*
_output_shapes
: 
�
 moving_avg/AssignMovingAvg/sub/xConst*
valueB
 *  �?*
dtype0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
moving_avg/AssignMovingAvg/subSub moving_avg/AssignMovingAvg/sub/xmoving_avg/Minimum*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
 moving_avg/AssignMovingAvg/sub_1SubAccuracy/Mean/moving_avg/readAccuracy/Mean*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
moving_avg/AssignMovingAvg/mulMul moving_avg/AssignMovingAvg/sub_1moving_avg/AssignMovingAvg/sub*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
moving_avg/AssignMovingAvg	AssignSubAccuracy/Mean/moving_avgmoving_avg/AssignMovingAvg/mul*
T0*
use_locking( *+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
/

moving_avgNoOp^moving_avg/AssignMovingAvg
O
Adam/Total_LossIdentityCrossentropy/Mean*
T0*
_output_shapes
: 
�
.Crossentropy/Mean/moving_avg/Initializer/zerosConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
Crossentropy/Mean/moving_avg
VariableV2*
shape: *
dtype0*
	container *
shared_name */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
#Crossentropy/Mean/moving_avg/AssignAssignCrossentropy/Mean/moving_avg.Crossentropy/Mean/moving_avg/Initializer/zeros*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
!Crossentropy/Mean/moving_avg/readIdentityCrossentropy/Mean/moving_avg*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
Z
Adam/moving_avg/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Z
Adam/moving_avg/add/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
Adam/moving_avg/addAddAdam/moving_avg/add/xTraining_step/read*
T0*
_output_shapes
: 
\
Adam/moving_avg/add_1/xConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
j
Adam/moving_avg/add_1AddAdam/moving_avg/add_1/xTraining_step/read*
T0*
_output_shapes
: 
o
Adam/moving_avg/truedivRealDivAdam/moving_avg/addAdam/moving_avg/add_1*
T0*
_output_shapes
: 
s
Adam/moving_avg/MinimumMinimumAdam/moving_avg/decayAdam/moving_avg/truediv*
T0*
_output_shapes
: 
�
%Adam/moving_avg/AssignMovingAvg/sub/xConst*
valueB
 *  �?*
dtype0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
#Adam/moving_avg/AssignMovingAvg/subSub%Adam/moving_avg/AssignMovingAvg/sub/xAdam/moving_avg/Minimum*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
%Adam/moving_avg/AssignMovingAvg/sub_1Sub!Crossentropy/Mean/moving_avg/readCrossentropy/Mean*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
#Adam/moving_avg/AssignMovingAvg/mulMul%Adam/moving_avg/AssignMovingAvg/sub_1#Adam/moving_avg/AssignMovingAvg/sub*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
Adam/moving_avg/AssignMovingAvg	AssignSubCrossentropy/Mean/moving_avg#Adam/moving_avg/AssignMovingAvg/mul*
T0*
use_locking( */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
9
Adam/moving_avgNoOp ^Adam/moving_avg/AssignMovingAvg
N
	Loss/tagsConst*
valueB
 BLoss*
dtype0*
_output_shapes
: 
d
LossScalarSummary	Loss/tags!Crossentropy/Mean/moving_avg/read*
T0*
_output_shapes
: 
`
Adam/Loss/raw/tagsConst*
valueB BAdam/Loss/raw*
dtype0*
_output_shapes
: 
f
Adam/Loss/rawScalarSummaryAdam/Loss/raw/tagsCrossentropy/Mean*
T0*
_output_shapes
: 
v
Adam/gradients/ShapeConst^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
x
Adam/gradients/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *  �?*
dtype0*
_output_shapes
: 
h
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/Const*
T0*
_output_shapes
: 
�
3Adam/gradients/Crossentropy/Mean_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
valueB:*
dtype0*
_output_shapes
:
�
-Adam/gradients/Crossentropy/Mean_grad/ReshapeReshapeAdam/gradients/Fill3Adam/gradients/Crossentropy/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
+Adam/gradients/Crossentropy/Mean_grad/ShapeShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
*Adam/gradients/Crossentropy/Mean_grad/TileTile-Adam/gradients/Crossentropy/Mean_grad/Reshape+Adam/gradients/Crossentropy/Mean_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:���������
�
-Adam/gradients/Crossentropy/Mean_grad/Shape_1ShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
-Adam/gradients/Crossentropy/Mean_grad/Shape_2Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
+Adam/gradients/Crossentropy/Mean_grad/ConstConst^Adam/moving_avg^moving_avg*
valueB: *
dtype0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
:
�
*Adam/gradients/Crossentropy/Mean_grad/ProdProd-Adam/gradients/Crossentropy/Mean_grad/Shape_1+Adam/gradients/Crossentropy/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
: 
�
-Adam/gradients/Crossentropy/Mean_grad/Const_1Const^Adam/moving_avg^moving_avg*
valueB: *
dtype0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
:
�
,Adam/gradients/Crossentropy/Mean_grad/Prod_1Prod-Adam/gradients/Crossentropy/Mean_grad/Shape_2-Adam/gradients/Crossentropy/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
: 
�
/Adam/gradients/Crossentropy/Mean_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
: 
�
-Adam/gradients/Crossentropy/Mean_grad/MaximumMaximum,Adam/gradients/Crossentropy/Mean_grad/Prod_1/Adam/gradients/Crossentropy/Mean_grad/Maximum/y*
T0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Mean_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Mean_grad/Prod-Adam/gradients/Crossentropy/Mean_grad/Maximum*
T0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Mean_grad/CastCast.Adam/gradients/Crossentropy/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
�
-Adam/gradients/Crossentropy/Mean_grad/truedivRealDiv*Adam/gradients/Crossentropy/Mean_grad/Tile*Adam/gradients/Crossentropy/Mean_grad/Cast*
T0*#
_output_shapes
:���������
�
(Adam/gradients/Crossentropy/Neg_grad/NegNeg-Adam/gradients/Crossentropy/Mean_grad/truediv*
T0*#
_output_shapes
:���������
�
,Adam/gradients/Crossentropy/Sum_1_grad/ShapeShapeCrossentropy/mul^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
+Adam/gradients/Crossentropy/Sum_1_grad/SizeConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_1_grad/addAdd$Crossentropy/Sum_1/reduction_indices+Adam/gradients/Crossentropy/Sum_1_grad/Size*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_1_grad/modFloorMod*Adam/gradients/Crossentropy/Sum_1_grad/add+Adam/gradients/Crossentropy/Sum_1_grad/Size*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Sum_1_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/startConst^Adam/moving_avg^moving_avg*
value	B : *
dtype0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_1_grad/rangeRange2Adam/gradients/Crossentropy/Sum_1_grad/range/start+Adam/gradients/Crossentropy/Sum_1_grad/Size2Adam/gradients/Crossentropy/Sum_1_grad/range/delta*

Tidx0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
:
�
1Adam/gradients/Crossentropy/Sum_1_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
+Adam/gradients/Crossentropy/Sum_1_grad/FillFill.Adam/gradients/Crossentropy/Sum_1_grad/Shape_11Adam/gradients/Crossentropy/Sum_1_grad/Fill/value*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitchDynamicStitch,Adam/gradients/Crossentropy/Sum_1_grad/range*Adam/gradients/Crossentropy/Sum_1_grad/mod,Adam/gradients/Crossentropy/Sum_1_grad/Shape+Adam/gradients/Crossentropy/Sum_1_grad/Fill*
N*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*#
_output_shapes
:���������
�
0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Sum_1_grad/MaximumMaximum4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/y*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*#
_output_shapes
:���������
�
/Adam/gradients/Crossentropy/Sum_1_grad/floordivFloorDiv,Adam/gradients/Crossentropy/Sum_1_grad/Shape.Adam/gradients/Crossentropy/Sum_1_grad/Maximum*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
:
�
.Adam/gradients/Crossentropy/Sum_1_grad/ReshapeReshape(Adam/gradients/Crossentropy/Neg_grad/Neg4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
+Adam/gradients/Crossentropy/Sum_1_grad/TileTile.Adam/gradients/Crossentropy/Sum_1_grad/Reshape/Adam/gradients/Crossentropy/Sum_1_grad/floordiv*
T0*

Tmultiples0*'
_output_shapes
:���������	
�
*Adam/gradients/Crossentropy/mul_grad/ShapeShapeTargetsData/Y^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/mul_grad/Shape_1ShapeCrossentropy/Log^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*Adam/gradients/Crossentropy/mul_grad/Shape,Adam/gradients/Crossentropy/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
(Adam/gradients/Crossentropy/mul_grad/mulMul+Adam/gradients/Crossentropy/Sum_1_grad/TileCrossentropy/Log*
T0*'
_output_shapes
:���������	
�
(Adam/gradients/Crossentropy/mul_grad/SumSum(Adam/gradients/Crossentropy/mul_grad/mul:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/mul_grad/ReshapeReshape(Adam/gradients/Crossentropy/mul_grad/Sum*Adam/gradients/Crossentropy/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������	
�
*Adam/gradients/Crossentropy/mul_grad/mul_1MulTargetsData/Y+Adam/gradients/Crossentropy/Sum_1_grad/Tile*
T0*'
_output_shapes
:���������	
�
*Adam/gradients/Crossentropy/mul_grad/Sum_1Sum*Adam/gradients/Crossentropy/mul_grad/mul_1<Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
.Adam/gradients/Crossentropy/mul_grad/Reshape_1Reshape*Adam/gradients/Crossentropy/mul_grad/Sum_1,Adam/gradients/Crossentropy/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������	
�
/Adam/gradients/Crossentropy/Log_grad/Reciprocal
ReciprocalCrossentropy/clip_by_value^Adam/moving_avg^moving_avg/^Adam/gradients/Crossentropy/mul_grad/Reshape_1*
T0*'
_output_shapes
:���������	
�
(Adam/gradients/Crossentropy/Log_grad/mulMul.Adam/gradients/Crossentropy/mul_grad/Reshape_1/Adam/gradients/Crossentropy/Log_grad/Reciprocal*
T0*'
_output_shapes
:���������	
�
4Adam/gradients/Crossentropy/clip_by_value_grad/ShapeShape"Crossentropy/clip_by_value/Minimum^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2Shape(Adam/gradients/Crossentropy/Log_grad/mul*
T0*
out_type0*
_output_shapes
:
�
:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
dtype0*
_output_shapes
: 
�
4Adam/gradients/Crossentropy/clip_by_value_grad/zerosFill6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:���������	
�
;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqualGreaterEqual"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������	
�
DAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4Adam/gradients/Crossentropy/clip_by_value_grad/Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
5Adam/gradients/Crossentropy/clip_by_value_grad/SelectSelect;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*
T0*'
_output_shapes
:���������	
�
7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1Select;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual4Adam/gradients/Crossentropy/clip_by_value_grad/zeros(Adam/gradients/Crossentropy/Log_grad/mul*
T0*'
_output_shapes
:���������	
�
2Adam/gradients/Crossentropy/clip_by_value_grad/SumSum5Adam/gradients/Crossentropy/clip_by_value_grad/SelectDAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
6Adam/gradients/Crossentropy/clip_by_value_grad/ReshapeReshape2Adam/gradients/Crossentropy/clip_by_value_grad/Sum4Adam/gradients/Crossentropy/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������	
�
4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_1Sum7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1FAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
8Adam/gradients/Crossentropy/clip_by_value_grad/Reshape_1Reshape4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_16Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ShapeShapeCrossentropy/truediv^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape*
T0*
out_type0*
_output_shapes
:
�
BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
dtype0*
_output_shapes
: 
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zerosFill>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:���������	
�
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualCrossentropy/truedivCrossentropy/Cast_1/x^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������	
�
LAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectSelect@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:���������	
�
?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1Select@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape*
T0*'
_output_shapes
:���������	
�
:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SumSum=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectLAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeReshape:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������	
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1Sum?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1NAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/truediv_grad/ShapeShapeFullyConnected_2/Softmax^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
0Adam/gradients/Crossentropy/truediv_grad/Shape_1ShapeCrossentropy/Sum^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs.Adam/gradients/Crossentropy/truediv_grad/Shape0Adam/gradients/Crossentropy/truediv_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
0Adam/gradients/Crossentropy/truediv_grad/RealDivRealDiv>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeCrossentropy/Sum*
T0*'
_output_shapes
:���������	
�
,Adam/gradients/Crossentropy/truediv_grad/SumSum0Adam/gradients/Crossentropy/truediv_grad/RealDiv>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
0Adam/gradients/Crossentropy/truediv_grad/ReshapeReshape,Adam/gradients/Crossentropy/truediv_grad/Sum.Adam/gradients/Crossentropy/truediv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������	
�
,Adam/gradients/Crossentropy/truediv_grad/NegNegFullyConnected_2/Softmax^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������	
�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1RealDiv,Adam/gradients/Crossentropy/truediv_grad/NegCrossentropy/Sum*
T0*'
_output_shapes
:���������	
�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2RealDiv2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1Crossentropy/Sum*
T0*'
_output_shapes
:���������	
�
,Adam/gradients/Crossentropy/truediv_grad/mulMul>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:���������	
�
.Adam/gradients/Crossentropy/truediv_grad/Sum_1Sum,Adam/gradients/Crossentropy/truediv_grad/mul@Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
2Adam/gradients/Crossentropy/truediv_grad/Reshape_1Reshape.Adam/gradients/Crossentropy/truediv_grad/Sum_10Adam/gradients/Crossentropy/truediv_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
*Adam/gradients/Crossentropy/Sum_grad/ShapeShapeFullyConnected_2/Softmax^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
)Adam/gradients/Crossentropy/Sum_grad/SizeConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
(Adam/gradients/Crossentropy/Sum_grad/addAdd"Crossentropy/Sum/reduction_indices)Adam/gradients/Crossentropy/Sum_grad/Size*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
(Adam/gradients/Crossentropy/Sum_grad/modFloorMod(Adam/gradients/Crossentropy/Sum_grad/add)Adam/gradients/Crossentropy/Sum_grad/Size*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
0Adam/gradients/Crossentropy/Sum_grad/range/startConst^Adam/moving_avg^moving_avg*
value	B : *
dtype0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
0Adam/gradients/Crossentropy/Sum_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_grad/rangeRange0Adam/gradients/Crossentropy/Sum_grad/range/start)Adam/gradients/Crossentropy/Sum_grad/Size0Adam/gradients/Crossentropy/Sum_grad/range/delta*

Tidx0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
:
�
/Adam/gradients/Crossentropy/Sum_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
)Adam/gradients/Crossentropy/Sum_grad/FillFill,Adam/gradients/Crossentropy/Sum_grad/Shape_1/Adam/gradients/Crossentropy/Sum_grad/Fill/value*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
2Adam/gradients/Crossentropy/Sum_grad/DynamicStitchDynamicStitch*Adam/gradients/Crossentropy/Sum_grad/range(Adam/gradients/Crossentropy/Sum_grad/mod*Adam/gradients/Crossentropy/Sum_grad/Shape)Adam/gradients/Crossentropy/Sum_grad/Fill*
N*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*#
_output_shapes
:���������
�
.Adam/gradients/Crossentropy/Sum_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_grad/MaximumMaximum2Adam/gradients/Crossentropy/Sum_grad/DynamicStitch.Adam/gradients/Crossentropy/Sum_grad/Maximum/y*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*#
_output_shapes
:���������
�
-Adam/gradients/Crossentropy/Sum_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Sum_grad/Shape,Adam/gradients/Crossentropy/Sum_grad/Maximum*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
:
�
,Adam/gradients/Crossentropy/Sum_grad/ReshapeReshape2Adam/gradients/Crossentropy/truediv_grad/Reshape_12Adam/gradients/Crossentropy/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
)Adam/gradients/Crossentropy/Sum_grad/TileTile,Adam/gradients/Crossentropy/Sum_grad/Reshape-Adam/gradients/Crossentropy/Sum_grad/floordiv*
T0*

Tmultiples0*'
_output_shapes
:���������	
�
Adam/gradients/AddNAddN0Adam/gradients/Crossentropy/truediv_grad/Reshape)Adam/gradients/Crossentropy/Sum_grad/Tile*
N*
T0*C
_class9
75loc:@Adam/gradients/Crossentropy/truediv_grad/Reshape*'
_output_shapes
:���������	
�
0Adam/gradients/FullyConnected_2/Softmax_grad/mulMulAdam/gradients/AddNFullyConnected_2/Softmax*
T0*'
_output_shapes
:���������	
�
BAdam/gradients/FullyConnected_2/Softmax_grad/Sum/reduction_indicesConst^Adam/moving_avg^moving_avg*
valueB:*
dtype0*
_output_shapes
:
�
0Adam/gradients/FullyConnected_2/Softmax_grad/SumSum0Adam/gradients/FullyConnected_2/Softmax_grad/mulBAdam/gradients/FullyConnected_2/Softmax_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:���������
�
:Adam/gradients/FullyConnected_2/Softmax_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
valueB"����   *
dtype0*
_output_shapes
:
�
4Adam/gradients/FullyConnected_2/Softmax_grad/ReshapeReshape0Adam/gradients/FullyConnected_2/Softmax_grad/Sum:Adam/gradients/FullyConnected_2/Softmax_grad/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:���������
�
0Adam/gradients/FullyConnected_2/Softmax_grad/subSubAdam/gradients/AddN4Adam/gradients/FullyConnected_2/Softmax_grad/Reshape*
T0*'
_output_shapes
:���������	
�
2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1Mul0Adam/gradients/FullyConnected_2/Softmax_grad/subFullyConnected_2/Softmax*
T0*'
_output_shapes
:���������	
�
8Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1*
T0*
data_formatNHWC*
_output_shapes
:	
�
2Adam/gradients/FullyConnected_2/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1FullyConnected_2/W/read*
transpose_a( *
transpose_b(*
T0*'
_output_shapes
:���������
�
4Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1MatMulFullyConnected_1/BiasAdd2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:	
�
8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_2/MatMul_grad/MatMul*
T0*
data_formatNHWC*
_output_shapes
:
�
2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_2/MatMul_grad/MatMulFullyConnected_1/W/read*
transpose_a( *
transpose_b(*
T0*'
_output_shapes
:���������
�
4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1MatMulFullyConnected/BiasAdd2Adam/gradients/FullyConnected_2/MatMul_grad/MatMul*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
�
6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_1/MatMul_grad/MatMul*
T0*
data_formatNHWC*
_output_shapes
:
�
0Adam/gradients/FullyConnected/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulFullyConnected/W/read*
transpose_a( *
transpose_b(*
T0*'
_output_shapes
:���������0
�
2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1MatMulInputData/X2Adam/gradients/FullyConnected_1/MatMul_grad/MatMul*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:0
�
Adam/global_norm/L2LossL2Loss2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
: 
�
Adam/global_norm/L2Loss_1L2Loss6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
T0*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/L2Loss_2L2Loss4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes
: 
�
Adam/global_norm/L2Loss_3L2Loss8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/L2Loss_4L2Loss4Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1*
_output_shapes
: 
�
Adam/global_norm/L2Loss_5L2Loss8Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/stackPackAdam/global_norm/L2LossAdam/global_norm/L2Loss_1Adam/global_norm/L2Loss_2Adam/global_norm/L2Loss_3Adam/global_norm/L2Loss_4Adam/global_norm/L2Loss_5*
N*
T0*

axis *
_output_shapes
:

Adam/global_norm/ConstConst^Adam/moving_avg^moving_avg*
valueB: *
dtype0*
_output_shapes
:
�
Adam/global_norm/SumSumAdam/global_norm/stackAdam/global_norm/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
|
Adam/global_norm/Const_1Const^Adam/moving_avg^moving_avg*
valueB
 *   @*
dtype0*
_output_shapes
: 
l
Adam/global_norm/mulMulAdam/global_norm/SumAdam/global_norm/Const_1*
T0*
_output_shapes
: 
[
Adam/global_norm/global_normSqrtAdam/global_norm/mul*
T0*
_output_shapes
: 
�
"Adam/clip_by_global_norm/truediv/xConst^Adam/moving_avg^moving_avg*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
 Adam/clip_by_global_norm/truedivRealDiv"Adam/clip_by_global_norm/truediv/xAdam/global_norm/global_norm*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
$Adam/clip_by_global_norm/truediv_1/yConst^Adam/moving_avg^moving_avg*
valueB
 *  �@*
dtype0*
_output_shapes
: 
�
"Adam/clip_by_global_norm/truediv_1RealDivAdam/clip_by_global_norm/Const$Adam/clip_by_global_norm/truediv_1/y*
T0*
_output_shapes
: 
�
 Adam/clip_by_global_norm/MinimumMinimum Adam/clip_by_global_norm/truediv"Adam/clip_by_global_norm/truediv_1*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/mul/xConst^Adam/moving_avg^moving_avg*
valueB
 *  �@*
dtype0*
_output_shapes
: 
�
Adam/clip_by_global_norm/mulMulAdam/clip_by_global_norm/mul/x Adam/clip_by_global_norm/Minimum*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/mul_1Mul2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes

:0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0IdentityAdam/clip_by_global_norm/mul_1*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes

:0
�
Adam/clip_by_global_norm/mul_2Mul6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1IdentityAdam/clip_by_global_norm/mul_2*
T0*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
Adam/clip_by_global_norm/mul_3Mul4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes

:
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2IdentityAdam/clip_by_global_norm/mul_3*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes

:
�
Adam/clip_by_global_norm/mul_4Mul8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3IdentityAdam/clip_by_global_norm/mul_4*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
Adam/clip_by_global_norm/mul_5Mul4Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1*
_output_shapes

:	
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4IdentityAdam/clip_by_global_norm/mul_5*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1*
_output_shapes

:	
�
Adam/clip_by_global_norm/mul_6Mul8Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:	
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5IdentityAdam/clip_by_global_norm/mul_6*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:	
�
Adam/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/beta1_power/AssignAssignAdam/beta1_powerAdam/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
y
Adam/beta1_power/readIdentityAdam/beta1_power*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/beta2_power/initial_valueConst*
valueB
 *w�?*
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/beta2_power/AssignAssignAdam/beta2_powerAdam/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
y
Adam/beta2_power/readIdentityAdam/beta2_power*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
'FullyConnected/W/Adam/Initializer/zerosConst*
valueB0*    *
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/Adam
VariableV2*
shape
:0*
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/Adam/AssignAssignFullyConnected/W/Adam'FullyConnected/W/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/Adam/readIdentityFullyConnected/W/Adam*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
)FullyConnected/W/Adam_1/Initializer/zerosConst*
valueB0*    *
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/Adam_1
VariableV2*
shape
:0*
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/Adam_1/AssignAssignFullyConnected/W/Adam_1)FullyConnected/W/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/Adam_1/readIdentityFullyConnected/W/Adam_1*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
'FullyConnected/b/Adam/Initializer/zerosConst*
valueB*    *
dtype0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/Adam/AssignAssignFullyConnected/b/Adam'FullyConnected/b/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/Adam/readIdentityFullyConnected/b/Adam*
T0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
)FullyConnected/b/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/Adam_1/AssignAssignFullyConnected/b/Adam_1)FullyConnected/b/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/Adam_1/readIdentityFullyConnected/b/Adam_1*
T0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
)FullyConnected_1/W/Adam/Initializer/zerosConst*
valueB*    *
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/Adam
VariableV2*
shape
:*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/Adam/AssignAssignFullyConnected_1/W/Adam)FullyConnected_1/W/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/Adam/readIdentityFullyConnected_1/W/Adam*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
+FullyConnected_1/W/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/Adam_1
VariableV2*
shape
:*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
 FullyConnected_1/W/Adam_1/AssignAssignFullyConnected_1/W/Adam_1+FullyConnected_1/W/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/Adam_1/readIdentityFullyConnected_1/W/Adam_1*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
)FullyConnected_1/b/Adam/Initializer/zerosConst*
valueB*    *
dtype0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/Adam/AssignAssignFullyConnected_1/b/Adam)FullyConnected_1/b/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/Adam/readIdentityFullyConnected_1/b/Adam*
T0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
+FullyConnected_1/b/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
 FullyConnected_1/b/Adam_1/AssignAssignFullyConnected_1/b/Adam_1+FullyConnected_1/b/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/Adam_1/readIdentityFullyConnected_1/b/Adam_1*
T0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
)FullyConnected_2/W/Adam/Initializer/zerosConst*
valueB	*    *
dtype0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/Adam
VariableV2*
shape
:	*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/Adam/AssignAssignFullyConnected_2/W/Adam)FullyConnected_2/W/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/Adam/readIdentityFullyConnected_2/W/Adam*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
+FullyConnected_2/W/Adam_1/Initializer/zerosConst*
valueB	*    *
dtype0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/Adam_1
VariableV2*
shape
:	*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
 FullyConnected_2/W/Adam_1/AssignAssignFullyConnected_2/W/Adam_1+FullyConnected_2/W/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/Adam_1/readIdentityFullyConnected_2/W/Adam_1*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
)FullyConnected_2/b/Adam/Initializer/zerosConst*
valueB	*    *
dtype0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/Adam
VariableV2*
shape:	*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/Adam/AssignAssignFullyConnected_2/b/Adam)FullyConnected_2/b/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/Adam/readIdentityFullyConnected_2/b/Adam*
T0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
+FullyConnected_2/b/Adam_1/Initializer/zerosConst*
valueB	*    *
dtype0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/Adam_1
VariableV2*
shape:	*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
 FullyConnected_2/b/Adam_1/AssignAssignFullyConnected_2/b/Adam_1+FullyConnected_2/b/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/Adam_1/readIdentityFullyConnected_2/b/Adam_1*
T0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
g
"Adam/apply_grad_op_0/learning_rateConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
_
Adam/apply_grad_op_0/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
_
Adam/apply_grad_op_0/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
a
Adam/apply_grad_op_0/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
6Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam	ApplyAdamFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0*
T0*
use_locking( *
use_nesterov( *#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
6Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam	ApplyAdamFullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1*
T0*
use_locking( *
use_nesterov( *#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
8Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam	ApplyAdamFullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
8Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam	ApplyAdamFullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
8Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam	ApplyAdamFullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
8Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam	ApplyAdamFullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
Adam/apply_grad_op_0/mulMulAdam/beta1_power/readAdam/apply_grad_op_0/beta17^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/apply_grad_op_0/AssignAssignAdam/beta1_powerAdam/apply_grad_op_0/mul*
T0*
validate_shape(*
use_locking( *#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/apply_grad_op_0/mul_1MulAdam/beta2_power/readAdam/apply_grad_op_0/beta27^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/apply_grad_op_0/Assign_1AssignAdam/beta2_powerAdam/apply_grad_op_0/mul_1*
T0*
validate_shape(*
use_locking( *#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/apply_grad_op_0/updateNoOp7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam^Adam/apply_grad_op_0/Assign^Adam/apply_grad_op_0/Assign_1
�
Adam/apply_grad_op_0/valueConst^Adam/apply_grad_op_0/update*
valueB
 *  �?*
dtype0* 
_class
loc:@Training_step*
_output_shapes
: 
�
Adam/apply_grad_op_0	AssignAddTraining_stepAdam/apply_grad_op_0/value*
T0*
use_locking( * 
_class
loc:@Training_step*
_output_shapes
: 
]
Adam/Merge/MergeSummaryMergeSummaryLossAdam/Loss/raw*
N*
_output_shapes
: 
.
Adam/train_op_0NoOp^Adam/apply_grad_op_0
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerCrossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1FullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1FullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*)
dtypes
2

}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
|
save/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/AssignAssignAccuracy/Mean/moving_avgsave/RestoreV2*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
v
save/RestoreV2_1/tensor_namesConst*%
valueBBAdam/beta1_power*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_1AssignAdam/beta1_powersave/RestoreV2_1*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
v
save/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
dtype0*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_2AssignAdam/beta2_powersave/RestoreV2_2*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
save/RestoreV2_3/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
dtype0*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_3AssignCrossentropy/Mean/moving_avgsave/RestoreV2_3*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
v
save/RestoreV2_4/tensor_namesConst*%
valueBBFullyConnected/W*
dtype0*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_4AssignFullyConnected/Wsave/RestoreV2_4*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
{
save/RestoreV2_5/tensor_namesConst**
value!BBFullyConnected/W/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_5AssignFullyConnected/W/Adamsave/RestoreV2_5*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
}
save/RestoreV2_6/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_6AssignFullyConnected/W/Adam_1save/RestoreV2_6*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
v
save/RestoreV2_7/tensor_namesConst*%
valueBBFullyConnected/b*
dtype0*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_7AssignFullyConnected/bsave/RestoreV2_7*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
{
save/RestoreV2_8/tensor_namesConst**
value!BBFullyConnected/b/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_8AssignFullyConnected/b/Adamsave/RestoreV2_8*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
}
save/RestoreV2_9/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_9AssignFullyConnected/b/Adam_1save/RestoreV2_9*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
y
save/RestoreV2_10/tensor_namesConst*'
valueBBFullyConnected_1/W*
dtype0*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_10AssignFullyConnected_1/Wsave/RestoreV2_10*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
~
save/RestoreV2_11/tensor_namesConst*,
value#B!BFullyConnected_1/W/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_11AssignFullyConnected_1/W/Adamsave/RestoreV2_11*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
save/RestoreV2_12/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_12AssignFullyConnected_1/W/Adam_1save/RestoreV2_12*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
y
save/RestoreV2_13/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_13AssignFullyConnected_1/bsave/RestoreV2_13*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
~
save/RestoreV2_14/tensor_namesConst*,
value#B!BFullyConnected_1/b/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_14AssignFullyConnected_1/b/Adamsave/RestoreV2_14*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
save/RestoreV2_15/tensor_namesConst*.
value%B#BFullyConnected_1/b/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_15AssignFullyConnected_1/b/Adam_1save/RestoreV2_15*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
y
save/RestoreV2_16/tensor_namesConst*'
valueBBFullyConnected_2/W*
dtype0*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_16AssignFullyConnected_2/Wsave/RestoreV2_16*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
~
save/RestoreV2_17/tensor_namesConst*,
value#B!BFullyConnected_2/W/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_17AssignFullyConnected_2/W/Adamsave/RestoreV2_17*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
save/RestoreV2_18/tensor_namesConst*.
value%B#BFullyConnected_2/W/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_18AssignFullyConnected_2/W/Adam_1save/RestoreV2_18*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
y
save/RestoreV2_19/tensor_namesConst*'
valueBBFullyConnected_2/b*
dtype0*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_19AssignFullyConnected_2/bsave/RestoreV2_19*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
~
save/RestoreV2_20/tensor_namesConst*,
value#B!BFullyConnected_2/b/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_20AssignFullyConnected_2/b/Adamsave/RestoreV2_20*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
save/RestoreV2_21/tensor_namesConst*.
value%B#BFullyConnected_2/b/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_21AssignFullyConnected_2/b/Adam_1save/RestoreV2_21*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
r
save/RestoreV2_22/tensor_namesConst* 
valueBBGlobal_Step*
dtype0*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_22AssignGlobal_Stepsave/RestoreV2_22*
T0*
validate_shape(*
use_locking(*
_class
loc:@Global_Step*
_output_shapes
: 
t
save/RestoreV2_23/tensor_namesConst*"
valueBBTraining_step*
dtype0*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_23AssignTraining_stepsave/RestoreV2_23*
T0*
validate_shape(*
use_locking(* 
_class
loc:@Training_step*
_output_shapes
: 
r
save/RestoreV2_24/tensor_namesConst* 
valueBBis_training*
dtype0*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2
*
_output_shapes
:
�
save/Assign_24Assignis_trainingsave/RestoreV2_24*
T0
*
validate_shape(*
use_locking(*
_class
loc:@is_training*
_output_shapes
: 
n
save/RestoreV2_25/tensor_namesConst*
valueBBval_acc*
dtype0*
_output_shapes
:
k
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_25Assignval_accsave/RestoreV2_25*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_acc*
_output_shapes
: 
o
save/RestoreV2_26/tensor_namesConst*
valueBBval_loss*
dtype0*
_output_shapes
:
k
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_26Assignval_losssave/RestoreV2_26*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_loss*
_output_shapes
: 
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_1/SaveV2/tensor_namesConst*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:
�
save_1/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerCrossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1FullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1FullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*)
dtypes
2

�
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const*
_output_shapes
: 
~
save_1/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/AssignAssignAccuracy/Mean/moving_avgsave_1/RestoreV2*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
x
save_1/RestoreV2_1/tensor_namesConst*%
valueBBAdam/beta1_power*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_1AssignAdam/beta1_powersave_1/RestoreV2_1*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
x
save_1/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_2AssignAdam/beta2_powersave_1/RestoreV2_2*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
save_1/RestoreV2_3/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_3AssignCrossentropy/Mean/moving_avgsave_1/RestoreV2_3*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
x
save_1/RestoreV2_4/tensor_namesConst*%
valueBBFullyConnected/W*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_4AssignFullyConnected/Wsave_1/RestoreV2_4*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
}
save_1/RestoreV2_5/tensor_namesConst**
value!BBFullyConnected/W/Adam*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_5AssignFullyConnected/W/Adamsave_1/RestoreV2_5*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0

save_1/RestoreV2_6/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_6AssignFullyConnected/W/Adam_1save_1/RestoreV2_6*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
x
save_1/RestoreV2_7/tensor_namesConst*%
valueBBFullyConnected/b*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_7AssignFullyConnected/bsave_1/RestoreV2_7*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
}
save_1/RestoreV2_8/tensor_namesConst**
value!BBFullyConnected/b/Adam*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_8AssignFullyConnected/b/Adamsave_1/RestoreV2_8*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:

save_1/RestoreV2_9/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_9AssignFullyConnected/b/Adam_1save_1/RestoreV2_9*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
{
 save_1/RestoreV2_10/tensor_namesConst*'
valueBBFullyConnected_1/W*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_10AssignFullyConnected_1/Wsave_1/RestoreV2_10*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
 save_1/RestoreV2_11/tensor_namesConst*,
value#B!BFullyConnected_1/W/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_11AssignFullyConnected_1/W/Adamsave_1/RestoreV2_11*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
 save_1/RestoreV2_12/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_12AssignFullyConnected_1/W/Adam_1save_1/RestoreV2_12*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
{
 save_1/RestoreV2_13/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_13AssignFullyConnected_1/bsave_1/RestoreV2_13*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
 save_1/RestoreV2_14/tensor_namesConst*,
value#B!BFullyConnected_1/b/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_14AssignFullyConnected_1/b/Adamsave_1/RestoreV2_14*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
 save_1/RestoreV2_15/tensor_namesConst*.
value%B#BFullyConnected_1/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_15AssignFullyConnected_1/b/Adam_1save_1/RestoreV2_15*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
{
 save_1/RestoreV2_16/tensor_namesConst*'
valueBBFullyConnected_2/W*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_16AssignFullyConnected_2/Wsave_1/RestoreV2_16*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
 save_1/RestoreV2_17/tensor_namesConst*,
value#B!BFullyConnected_2/W/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_17AssignFullyConnected_2/W/Adamsave_1/RestoreV2_17*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
 save_1/RestoreV2_18/tensor_namesConst*.
value%B#BFullyConnected_2/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_18AssignFullyConnected_2/W/Adam_1save_1/RestoreV2_18*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
{
 save_1/RestoreV2_19/tensor_namesConst*'
valueBBFullyConnected_2/b*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_19AssignFullyConnected_2/bsave_1/RestoreV2_19*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
 save_1/RestoreV2_20/tensor_namesConst*,
value#B!BFullyConnected_2/b/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_20AssignFullyConnected_2/b/Adamsave_1/RestoreV2_20*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
 save_1/RestoreV2_21/tensor_namesConst*.
value%B#BFullyConnected_2/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_21AssignFullyConnected_2/b/Adam_1save_1/RestoreV2_21*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
t
 save_1/RestoreV2_22/tensor_namesConst* 
valueBBGlobal_Step*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_22AssignGlobal_Stepsave_1/RestoreV2_22*
T0*
validate_shape(*
use_locking(*
_class
loc:@Global_Step*
_output_shapes
: 
v
 save_1/RestoreV2_23/tensor_namesConst*"
valueBBTraining_step*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_23AssignTraining_stepsave_1/RestoreV2_23*
T0*
validate_shape(*
use_locking(* 
_class
loc:@Training_step*
_output_shapes
: 
t
 save_1/RestoreV2_24/tensor_namesConst* 
valueBBis_training*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
dtypes
2
*
_output_shapes
:
�
save_1/Assign_24Assignis_trainingsave_1/RestoreV2_24*
T0
*
validate_shape(*
use_locking(*
_class
loc:@is_training*
_output_shapes
: 
p
 save_1/RestoreV2_25/tensor_namesConst*
valueBBval_acc*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_25Assignval_accsave_1/RestoreV2_25*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_acc*
_output_shapes
: 
q
 save_1/RestoreV2_26/tensor_namesConst*
valueBBval_loss*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_26	RestoreV2save_1/Const save_1/RestoreV2_26/tensor_names$save_1/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_26Assignval_losssave_1/RestoreV2_26*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_loss*
_output_shapes
: 
�
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26
R
save_2/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_2/SaveV2/tensor_namesConst*�
value~B|BFullyConnected/WBFullyConnected/bBFullyConnected_1/WBFullyConnected_1/bBFullyConnected_2/WBFullyConnected_2/b*
dtype0*
_output_shapes
:
q
save_2/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0*
_output_shapes
:
�
save_2/SaveV2SaveV2save_2/Constsave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesFullyConnected/WFullyConnected/bFullyConnected_1/WFullyConnected_1/bFullyConnected_2/WFullyConnected_2/b*
dtypes

2
�
save_2/control_dependencyIdentitysave_2/Const^save_2/SaveV2*
T0*
_class
loc:@save_2/Const*
_output_shapes
: 
v
save_2/RestoreV2/tensor_namesConst*%
valueBBFullyConnected/W*
dtype0*
_output_shapes
:
j
!save_2/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/AssignAssignFullyConnected/Wsave_2/RestoreV2*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
x
save_2/RestoreV2_1/tensor_namesConst*%
valueBBFullyConnected/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_1AssignFullyConnected/bsave_2/RestoreV2_1*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
z
save_2/RestoreV2_2/tensor_namesConst*'
valueBBFullyConnected_1/W*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_2	RestoreV2save_2/Constsave_2/RestoreV2_2/tensor_names#save_2/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_2AssignFullyConnected_1/Wsave_2/RestoreV2_2*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
z
save_2/RestoreV2_3/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_3	RestoreV2save_2/Constsave_2/RestoreV2_3/tensor_names#save_2/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_3AssignFullyConnected_1/bsave_2/RestoreV2_3*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
z
save_2/RestoreV2_4/tensor_namesConst*'
valueBBFullyConnected_2/W*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_4	RestoreV2save_2/Constsave_2/RestoreV2_4/tensor_names#save_2/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_4AssignFullyConnected_2/Wsave_2/RestoreV2_4*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
z
save_2/RestoreV2_5/tensor_namesConst*'
valueBBFullyConnected_2/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_5	RestoreV2save_2/Constsave_2/RestoreV2_5/tensor_names#save_2/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_5AssignFullyConnected_2/bsave_2/RestoreV2_5*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
save_2/restore_allNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5
�
initNoOp^FullyConnected/W/Assign^FullyConnected/b/Assign^FullyConnected_1/W/Assign^FullyConnected_1/b/Assign^FullyConnected_2/W/Assign^FullyConnected_2/b/Assign^Training_step/Assign^is_training/Assign^Global_Step/Assign^val_loss/Assign^val_acc/Assign ^Accuracy/Mean/moving_avg/Assign$^Crossentropy/Mean/moving_avg/Assign^Adam/beta1_power/Assign^Adam/beta2_power/Assign^FullyConnected/W/Adam/Assign^FullyConnected/W/Adam_1/Assign^FullyConnected/b/Adam/Assign^FullyConnected/b/Adam_1/Assign^FullyConnected_1/W/Adam/Assign!^FullyConnected_1/W/Adam_1/Assign^FullyConnected_1/b/Adam/Assign!^FullyConnected_1/b/Adam_1/Assign^FullyConnected_2/W/Adam/Assign!^FullyConnected_2/W/Adam_1/Assign^FullyConnected_2/b/Adam/Assign!^FullyConnected_2/b/Adam_1/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
#
init_2NoOp^is_training/Assign
R
save_3/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_3/SaveV2/tensor_namesConst*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:
�
save_3/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_3/SaveV2SaveV2save_3/Constsave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerCrossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1FullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1FullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*)
dtypes
2

�
save_3/control_dependencyIdentitysave_3/Const^save_3/SaveV2*
T0*
_class
loc:@save_3/Const*
_output_shapes
: 
~
save_3/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
dtype0*
_output_shapes
:
j
!save_3/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/AssignAssignAccuracy/Mean/moving_avgsave_3/RestoreV2*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
x
save_3/RestoreV2_1/tensor_namesConst*%
valueBBAdam/beta1_power*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_1	RestoreV2save_3/Constsave_3/RestoreV2_1/tensor_names#save_3/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_1AssignAdam/beta1_powersave_3/RestoreV2_1*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
x
save_3/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_2	RestoreV2save_3/Constsave_3/RestoreV2_2/tensor_names#save_3/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_2AssignAdam/beta2_powersave_3/RestoreV2_2*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
save_3/RestoreV2_3/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_3	RestoreV2save_3/Constsave_3/RestoreV2_3/tensor_names#save_3/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_3AssignCrossentropy/Mean/moving_avgsave_3/RestoreV2_3*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
x
save_3/RestoreV2_4/tensor_namesConst*%
valueBBFullyConnected/W*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_4	RestoreV2save_3/Constsave_3/RestoreV2_4/tensor_names#save_3/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_4AssignFullyConnected/Wsave_3/RestoreV2_4*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
}
save_3/RestoreV2_5/tensor_namesConst**
value!BBFullyConnected/W/Adam*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_5	RestoreV2save_3/Constsave_3/RestoreV2_5/tensor_names#save_3/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_5AssignFullyConnected/W/Adamsave_3/RestoreV2_5*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0

save_3/RestoreV2_6/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_6	RestoreV2save_3/Constsave_3/RestoreV2_6/tensor_names#save_3/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_6AssignFullyConnected/W/Adam_1save_3/RestoreV2_6*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
x
save_3/RestoreV2_7/tensor_namesConst*%
valueBBFullyConnected/b*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_7	RestoreV2save_3/Constsave_3/RestoreV2_7/tensor_names#save_3/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_7AssignFullyConnected/bsave_3/RestoreV2_7*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
}
save_3/RestoreV2_8/tensor_namesConst**
value!BBFullyConnected/b/Adam*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_8	RestoreV2save_3/Constsave_3/RestoreV2_8/tensor_names#save_3/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_8AssignFullyConnected/b/Adamsave_3/RestoreV2_8*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:

save_3/RestoreV2_9/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_9	RestoreV2save_3/Constsave_3/RestoreV2_9/tensor_names#save_3/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_9AssignFullyConnected/b/Adam_1save_3/RestoreV2_9*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
{
 save_3/RestoreV2_10/tensor_namesConst*'
valueBBFullyConnected_1/W*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_10	RestoreV2save_3/Const save_3/RestoreV2_10/tensor_names$save_3/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_10AssignFullyConnected_1/Wsave_3/RestoreV2_10*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
 save_3/RestoreV2_11/tensor_namesConst*,
value#B!BFullyConnected_1/W/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_11	RestoreV2save_3/Const save_3/RestoreV2_11/tensor_names$save_3/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_11AssignFullyConnected_1/W/Adamsave_3/RestoreV2_11*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
 save_3/RestoreV2_12/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_12	RestoreV2save_3/Const save_3/RestoreV2_12/tensor_names$save_3/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_12AssignFullyConnected_1/W/Adam_1save_3/RestoreV2_12*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
{
 save_3/RestoreV2_13/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_13	RestoreV2save_3/Const save_3/RestoreV2_13/tensor_names$save_3/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_13AssignFullyConnected_1/bsave_3/RestoreV2_13*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
 save_3/RestoreV2_14/tensor_namesConst*,
value#B!BFullyConnected_1/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_14	RestoreV2save_3/Const save_3/RestoreV2_14/tensor_names$save_3/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_14AssignFullyConnected_1/b/Adamsave_3/RestoreV2_14*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
 save_3/RestoreV2_15/tensor_namesConst*.
value%B#BFullyConnected_1/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_15	RestoreV2save_3/Const save_3/RestoreV2_15/tensor_names$save_3/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_15AssignFullyConnected_1/b/Adam_1save_3/RestoreV2_15*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
{
 save_3/RestoreV2_16/tensor_namesConst*'
valueBBFullyConnected_2/W*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_16	RestoreV2save_3/Const save_3/RestoreV2_16/tensor_names$save_3/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_16AssignFullyConnected_2/Wsave_3/RestoreV2_16*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
 save_3/RestoreV2_17/tensor_namesConst*,
value#B!BFullyConnected_2/W/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_17	RestoreV2save_3/Const save_3/RestoreV2_17/tensor_names$save_3/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_17AssignFullyConnected_2/W/Adamsave_3/RestoreV2_17*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
 save_3/RestoreV2_18/tensor_namesConst*.
value%B#BFullyConnected_2/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_18	RestoreV2save_3/Const save_3/RestoreV2_18/tensor_names$save_3/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_18AssignFullyConnected_2/W/Adam_1save_3/RestoreV2_18*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
{
 save_3/RestoreV2_19/tensor_namesConst*'
valueBBFullyConnected_2/b*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_19	RestoreV2save_3/Const save_3/RestoreV2_19/tensor_names$save_3/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_19AssignFullyConnected_2/bsave_3/RestoreV2_19*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
 save_3/RestoreV2_20/tensor_namesConst*,
value#B!BFullyConnected_2/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_20	RestoreV2save_3/Const save_3/RestoreV2_20/tensor_names$save_3/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_20AssignFullyConnected_2/b/Adamsave_3/RestoreV2_20*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
 save_3/RestoreV2_21/tensor_namesConst*.
value%B#BFullyConnected_2/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_21	RestoreV2save_3/Const save_3/RestoreV2_21/tensor_names$save_3/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_21AssignFullyConnected_2/b/Adam_1save_3/RestoreV2_21*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
t
 save_3/RestoreV2_22/tensor_namesConst* 
valueBBGlobal_Step*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_22	RestoreV2save_3/Const save_3/RestoreV2_22/tensor_names$save_3/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_22AssignGlobal_Stepsave_3/RestoreV2_22*
T0*
validate_shape(*
use_locking(*
_class
loc:@Global_Step*
_output_shapes
: 
v
 save_3/RestoreV2_23/tensor_namesConst*"
valueBBTraining_step*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_23	RestoreV2save_3/Const save_3/RestoreV2_23/tensor_names$save_3/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_23AssignTraining_stepsave_3/RestoreV2_23*
T0*
validate_shape(*
use_locking(* 
_class
loc:@Training_step*
_output_shapes
: 
t
 save_3/RestoreV2_24/tensor_namesConst* 
valueBBis_training*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_24	RestoreV2save_3/Const save_3/RestoreV2_24/tensor_names$save_3/RestoreV2_24/shape_and_slices*
dtypes
2
*
_output_shapes
:
�
save_3/Assign_24Assignis_trainingsave_3/RestoreV2_24*
T0
*
validate_shape(*
use_locking(*
_class
loc:@is_training*
_output_shapes
: 
p
 save_3/RestoreV2_25/tensor_namesConst*
valueBBval_acc*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_25	RestoreV2save_3/Const save_3/RestoreV2_25/tensor_names$save_3/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_25Assignval_accsave_3/RestoreV2_25*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_acc*
_output_shapes
: 
q
 save_3/RestoreV2_26/tensor_namesConst*
valueBBval_loss*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_26	RestoreV2save_3/Const save_3/RestoreV2_26/tensor_names$save_3/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_26Assignval_losssave_3/RestoreV2_26*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_loss*
_output_shapes
: 
�
save_3/restore_allNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26"f(�ή     $�z	k@h��AJ��
� � 
9
Add
x"T
y"T
z"T"
Ttype:
2	
T
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	��
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�"
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
�
ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
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
p
	AssignSub
ref"T�

value"T

output_ref"T�"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
A
Equal
x"T
y"T
z
"
Ttype:
2	
�
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
1
L2Loss
t"T
output"T"
Ttype:
2
<
	LessEqual
x"T
y"T
z
"
Ttype:
2		
+
Log
x"T
y"T"
Ttype:	
2
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
:
Minimum
x"T
y"T
z"T"
Ttype:	
2	�
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
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
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
8
Softmax
logits"T
softmax"T"
Ttype:
2
,
Sqrt
x"T
y"T"
Ttype:	
2
9
Sub
x"T
y"T
z"T"
Ttype:
2	
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
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �*1.4.02v1.4.0-rc1-11-g130a514��
n
InputData/XPlaceholder*
dtype0*
shape:���������0*'
_output_shapes
:���������0
�
3FullyConnected/W/Initializer/truncated_normal/shapeConst*
valueB"0      *
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes
:
�
2FullyConnected/W/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
4FullyConnected/W/Initializer/truncated_normal/stddevConst*
valueB
 *
ף<*
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
=FullyConnected/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3FullyConnected/W/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
1FullyConnected/W/Initializer/truncated_normal/mulMul=FullyConnected/W/Initializer/truncated_normal/TruncatedNormal4FullyConnected/W/Initializer/truncated_normal/stddev*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
-FullyConnected/W/Initializer/truncated_normalAdd1FullyConnected/W/Initializer/truncated_normal/mul2FullyConnected/W/Initializer/truncated_normal/mean*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W
VariableV2*
shape
:0*
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/AssignAssignFullyConnected/W-FullyConnected/W/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/readIdentityFullyConnected/W*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
"FullyConnected/b/Initializer/ConstConst*
valueB*    *
dtype0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b
VariableV2*
shape:*
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/AssignAssignFullyConnected/b"FullyConnected/b/Initializer/Const*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
}
FullyConnected/b/readIdentityFullyConnected/b*
T0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/MatMulMatMulInputData/XFullyConnected/W/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:���������
�
FullyConnected/BiasAddBiasAddFullyConnected/MatMulFullyConnected/b/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
�
5FullyConnected_1/W/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:
�
4FullyConnected_1/W/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
: 
�
6FullyConnected_1/W/Initializer/truncated_normal/stddevConst*
valueB
 *
ף<*
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
: 
�
?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_1/W/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
3FullyConnected_1/W/Initializer/truncated_normal/mulMul?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_1/W/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
/FullyConnected_1/W/Initializer/truncated_normalAdd3FullyConnected_1/W/Initializer/truncated_normal/mul4FullyConnected_1/W/Initializer/truncated_normal/mean*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W
VariableV2*
shape
:*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/AssignAssignFullyConnected_1/W/FullyConnected_1/W/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/readIdentityFullyConnected_1/W*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
$FullyConnected_1/b/Initializer/ConstConst*
valueB*    *
dtype0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b
VariableV2*
shape:*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/AssignAssignFullyConnected_1/b$FullyConnected_1/b/Initializer/Const*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/readIdentityFullyConnected_1/b*
T0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/MatMulMatMulFullyConnected/BiasAddFullyConnected_1/W/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:���������
�
FullyConnected_1/BiasAddBiasAddFullyConnected_1/MatMulFullyConnected_1/b/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
�
5FullyConnected_2/W/Initializer/truncated_normal/shapeConst*
valueB"   	   *
dtype0*%
_class
loc:@FullyConnected_2/W*
_output_shapes
:
�
4FullyConnected_2/W/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*%
_class
loc:@FullyConnected_2/W*
_output_shapes
: 
�
6FullyConnected_2/W/Initializer/truncated_normal/stddevConst*
valueB
 *
ף<*
dtype0*%
_class
loc:@FullyConnected_2/W*
_output_shapes
: 
�
?FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_2/W/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
3FullyConnected_2/W/Initializer/truncated_normal/mulMul?FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_2/W/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
/FullyConnected_2/W/Initializer/truncated_normalAdd3FullyConnected_2/W/Initializer/truncated_normal/mul4FullyConnected_2/W/Initializer/truncated_normal/mean*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W
VariableV2*
shape
:	*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/AssignAssignFullyConnected_2/W/FullyConnected_2/W/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/readIdentityFullyConnected_2/W*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
$FullyConnected_2/b/Initializer/ConstConst*
valueB	*    *
dtype0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b
VariableV2*
shape:	*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/AssignAssignFullyConnected_2/b$FullyConnected_2/b/Initializer/Const*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/readIdentityFullyConnected_2/b*
T0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/MatMulMatMulFullyConnected_1/BiasAddFullyConnected_2/W/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:���������	
�
FullyConnected_2/BiasAddBiasAddFullyConnected_2/MatMulFullyConnected_2/b/read*
T0*
data_formatNHWC*'
_output_shapes
:���������	
o
FullyConnected_2/SoftmaxSoftmaxFullyConnected_2/BiasAdd*
T0*'
_output_shapes
:���������	
p
TargetsData/YPlaceholder*
dtype0*
shape:���������	*'
_output_shapes
:���������	
[
Accuracy/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
Accuracy/ArgMaxArgMaxFullyConnected_2/SoftmaxAccuracy/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:���������
]
Accuracy/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
Accuracy/ArgMax_1ArgMaxTargetsData/YAccuracy/ArgMax_1/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:���������
i
Accuracy/EqualEqualAccuracy/ArgMaxAccuracy/ArgMax_1*
T0	*#
_output_shapes
:���������
b
Accuracy/CastCastAccuracy/Equal*

SrcT0
*

DstT0*#
_output_shapes
:���������
X
Accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
r
Accuracy/MeanMeanAccuracy/CastAccuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
d
"Crossentropy/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
Crossentropy/SumSumFullyConnected_2/Softmax"Crossentropy/Sum/reduction_indices*
	keep_dims(*
T0*

Tidx0*'
_output_shapes
:���������
}
Crossentropy/truedivRealDivFullyConnected_2/SoftmaxCrossentropy/Sum*
T0*'
_output_shapes
:���������	
X
Crossentropy/Cast/xConst*
valueB
 *���.*
dtype0*
_output_shapes
: 
Z
Crossentropy/Cast_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
"Crossentropy/clip_by_value/MinimumMinimumCrossentropy/truedivCrossentropy/Cast_1/x*
T0*'
_output_shapes
:���������	
�
Crossentropy/clip_by_valueMaximum"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x*
T0*'
_output_shapes
:���������	
e
Crossentropy/LogLogCrossentropy/clip_by_value*
T0*'
_output_shapes
:���������	
j
Crossentropy/mulMulTargetsData/YCrossentropy/Log*
T0*'
_output_shapes
:���������	
f
$Crossentropy/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
Crossentropy/Sum_1SumCrossentropy/mul$Crossentropy/Sum_1/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:���������
Y
Crossentropy/NegNegCrossentropy/Sum_1*
T0*#
_output_shapes
:���������
\
Crossentropy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
Crossentropy/MeanMeanCrossentropy/NegCrossentropy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
`
Training_step/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
q
Training_step
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
�
Training_step/AssignAssignTraining_stepTraining_step/initial_value*
T0*
validate_shape(*
use_locking(* 
_class
loc:@Training_step*
_output_shapes
: 
p
Training_step/readIdentityTraining_step*
T0* 
_class
loc:@Training_step*
_output_shapes
: 

is_training/Initializer/ConstConst*
value	B
 Z *
dtype0
*
_class
loc:@is_training*
_output_shapes
: 
�
is_training
VariableV2*
shape: *
dtype0
*
	container *
shared_name *
_class
loc:@is_training*
_output_shapes
: 
�
is_training/AssignAssignis_trainingis_training/Initializer/Const*
T0
*
validate_shape(*
use_locking(*
_class
loc:@is_training*
_output_shapes
: 
j
is_training/readIdentityis_training*
T0
*
_class
loc:@is_training*
_output_shapes
: 
N
Assign/valueConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
�
AssignAssignis_trainingAssign/value*
T0
*
validate_shape(*
use_locking(*
_class
loc:@is_training*
_output_shapes
: 
P
Assign_1/valueConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
�
Assign_1Assignis_trainingAssign_1/value*
T0
*
validate_shape(*
use_locking(*
_class
loc:@is_training*
_output_shapes
: 
^
Global_Step/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
Global_Step
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
�
Global_Step/AssignAssignGlobal_StepGlobal_Step/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Global_Step*
_output_shapes
: 
j
Global_Step/readIdentityGlobal_Step*
T0*
_class
loc:@Global_Step*
_output_shapes
: 
J
Add/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
D
AddAddGlobal_Step/readAdd/y*
T0*
_output_shapes
: 
�
Assign_2AssignGlobal_StepAdd*
T0*
validate_shape(*
use_locking(*
_class
loc:@Global_Step*
_output_shapes
: 
[
val_loss/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
val_loss
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
�
val_loss/AssignAssignval_lossval_loss/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_loss*
_output_shapes
: 
a
val_loss/readIdentityval_loss*
T0*
_class
loc:@val_loss*
_output_shapes
: 
Z
val_acc/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
val_acc
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
�
val_acc/AssignAssignval_accval_acc/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_acc*
_output_shapes
: 
^
val_acc/readIdentityval_acc*
T0*
_class
loc:@val_acc*
_output_shapes
: 
Y
placeholder/val_lossPlaceholder*
dtype0*
shape:*
_output_shapes
:
X
placeholder/val_accPlaceholder*
dtype0*
shape:*
_output_shapes
:
�
assign/val_lossAssignval_lossplaceholder/val_loss*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_loss*
_output_shapes
: 
�
assign/val_accAssignval_accplaceholder/val_acc*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_acc*
_output_shapes
: 
�
*Accuracy/Mean/moving_avg/Initializer/zerosConst*
valueB
 *    *
dtype0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
Accuracy/Mean/moving_avg
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
Accuracy/Mean/moving_avg/AssignAssignAccuracy/Mean/moving_avg*Accuracy/Mean/moving_avg/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
Accuracy/Mean/moving_avg/readIdentityAccuracy/Mean/moving_avg*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
U
moving_avg/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
U
moving_avg/add/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
\
moving_avg/addAddmoving_avg/add/xTraining_step/read*
T0*
_output_shapes
: 
W
moving_avg/add_1/xConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
`
moving_avg/add_1Addmoving_avg/add_1/xTraining_step/read*
T0*
_output_shapes
: 
`
moving_avg/truedivRealDivmoving_avg/addmoving_avg/add_1*
T0*
_output_shapes
: 
d
moving_avg/MinimumMinimummoving_avg/decaymoving_avg/truediv*
T0*
_output_shapes
: 
�
 moving_avg/AssignMovingAvg/sub/xConst*
valueB
 *  �?*
dtype0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
moving_avg/AssignMovingAvg/subSub moving_avg/AssignMovingAvg/sub/xmoving_avg/Minimum*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
 moving_avg/AssignMovingAvg/sub_1SubAccuracy/Mean/moving_avg/readAccuracy/Mean*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
moving_avg/AssignMovingAvg/mulMul moving_avg/AssignMovingAvg/sub_1moving_avg/AssignMovingAvg/sub*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
moving_avg/AssignMovingAvg	AssignSubAccuracy/Mean/moving_avgmoving_avg/AssignMovingAvg/mul*
T0*
use_locking( *+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
/

moving_avgNoOp^moving_avg/AssignMovingAvg
O
Adam/Total_LossIdentityCrossentropy/Mean*
T0*
_output_shapes
: 
�
.Crossentropy/Mean/moving_avg/Initializer/zerosConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
Crossentropy/Mean/moving_avg
VariableV2*
shape: *
dtype0*
	container *
shared_name */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
#Crossentropy/Mean/moving_avg/AssignAssignCrossentropy/Mean/moving_avg.Crossentropy/Mean/moving_avg/Initializer/zeros*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
!Crossentropy/Mean/moving_avg/readIdentityCrossentropy/Mean/moving_avg*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
Z
Adam/moving_avg/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Z
Adam/moving_avg/add/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
Adam/moving_avg/addAddAdam/moving_avg/add/xTraining_step/read*
T0*
_output_shapes
: 
\
Adam/moving_avg/add_1/xConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
j
Adam/moving_avg/add_1AddAdam/moving_avg/add_1/xTraining_step/read*
T0*
_output_shapes
: 
o
Adam/moving_avg/truedivRealDivAdam/moving_avg/addAdam/moving_avg/add_1*
T0*
_output_shapes
: 
s
Adam/moving_avg/MinimumMinimumAdam/moving_avg/decayAdam/moving_avg/truediv*
T0*
_output_shapes
: 
�
%Adam/moving_avg/AssignMovingAvg/sub/xConst*
valueB
 *  �?*
dtype0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
#Adam/moving_avg/AssignMovingAvg/subSub%Adam/moving_avg/AssignMovingAvg/sub/xAdam/moving_avg/Minimum*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
%Adam/moving_avg/AssignMovingAvg/sub_1Sub!Crossentropy/Mean/moving_avg/readCrossentropy/Mean*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
#Adam/moving_avg/AssignMovingAvg/mulMul%Adam/moving_avg/AssignMovingAvg/sub_1#Adam/moving_avg/AssignMovingAvg/sub*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
Adam/moving_avg/AssignMovingAvg	AssignSubCrossentropy/Mean/moving_avg#Adam/moving_avg/AssignMovingAvg/mul*
T0*
use_locking( */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
9
Adam/moving_avgNoOp ^Adam/moving_avg/AssignMovingAvg
N
	Loss/tagsConst*
valueB
 BLoss*
dtype0*
_output_shapes
: 
d
LossScalarSummary	Loss/tags!Crossentropy/Mean/moving_avg/read*
T0*
_output_shapes
: 
`
Adam/Loss/raw/tagsConst*
valueB BAdam/Loss/raw*
dtype0*
_output_shapes
: 
f
Adam/Loss/rawScalarSummaryAdam/Loss/raw/tagsCrossentropy/Mean*
T0*
_output_shapes
: 
v
Adam/gradients/ShapeConst^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
x
Adam/gradients/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *  �?*
dtype0*
_output_shapes
: 
h
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/Const*
T0*
_output_shapes
: 
�
3Adam/gradients/Crossentropy/Mean_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
valueB:*
dtype0*
_output_shapes
:
�
-Adam/gradients/Crossentropy/Mean_grad/ReshapeReshapeAdam/gradients/Fill3Adam/gradients/Crossentropy/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
+Adam/gradients/Crossentropy/Mean_grad/ShapeShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
*Adam/gradients/Crossentropy/Mean_grad/TileTile-Adam/gradients/Crossentropy/Mean_grad/Reshape+Adam/gradients/Crossentropy/Mean_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:���������
�
-Adam/gradients/Crossentropy/Mean_grad/Shape_1ShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
-Adam/gradients/Crossentropy/Mean_grad/Shape_2Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
+Adam/gradients/Crossentropy/Mean_grad/ConstConst^Adam/moving_avg^moving_avg*
valueB: *
dtype0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
:
�
*Adam/gradients/Crossentropy/Mean_grad/ProdProd-Adam/gradients/Crossentropy/Mean_grad/Shape_1+Adam/gradients/Crossentropy/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
: 
�
-Adam/gradients/Crossentropy/Mean_grad/Const_1Const^Adam/moving_avg^moving_avg*
valueB: *
dtype0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
:
�
,Adam/gradients/Crossentropy/Mean_grad/Prod_1Prod-Adam/gradients/Crossentropy/Mean_grad/Shape_2-Adam/gradients/Crossentropy/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
: 
�
/Adam/gradients/Crossentropy/Mean_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
: 
�
-Adam/gradients/Crossentropy/Mean_grad/MaximumMaximum,Adam/gradients/Crossentropy/Mean_grad/Prod_1/Adam/gradients/Crossentropy/Mean_grad/Maximum/y*
T0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Mean_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Mean_grad/Prod-Adam/gradients/Crossentropy/Mean_grad/Maximum*
T0*@
_class6
42loc:@Adam/gradients/Crossentropy/Mean_grad/Shape_1*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Mean_grad/CastCast.Adam/gradients/Crossentropy/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
�
-Adam/gradients/Crossentropy/Mean_grad/truedivRealDiv*Adam/gradients/Crossentropy/Mean_grad/Tile*Adam/gradients/Crossentropy/Mean_grad/Cast*
T0*#
_output_shapes
:���������
�
(Adam/gradients/Crossentropy/Neg_grad/NegNeg-Adam/gradients/Crossentropy/Mean_grad/truediv*
T0*#
_output_shapes
:���������
�
,Adam/gradients/Crossentropy/Sum_1_grad/ShapeShapeCrossentropy/mul^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
+Adam/gradients/Crossentropy/Sum_1_grad/SizeConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_1_grad/addAdd$Crossentropy/Sum_1/reduction_indices+Adam/gradients/Crossentropy/Sum_1_grad/Size*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_1_grad/modFloorMod*Adam/gradients/Crossentropy/Sum_1_grad/add+Adam/gradients/Crossentropy/Sum_1_grad/Size*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Sum_1_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/startConst^Adam/moving_avg^moving_avg*
value	B : *
dtype0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_1_grad/rangeRange2Adam/gradients/Crossentropy/Sum_1_grad/range/start+Adam/gradients/Crossentropy/Sum_1_grad/Size2Adam/gradients/Crossentropy/Sum_1_grad/range/delta*

Tidx0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
:
�
1Adam/gradients/Crossentropy/Sum_1_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
+Adam/gradients/Crossentropy/Sum_1_grad/FillFill.Adam/gradients/Crossentropy/Sum_1_grad/Shape_11Adam/gradients/Crossentropy/Sum_1_grad/Fill/value*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitchDynamicStitch,Adam/gradients/Crossentropy/Sum_1_grad/range*Adam/gradients/Crossentropy/Sum_1_grad/mod,Adam/gradients/Crossentropy/Sum_1_grad/Shape+Adam/gradients/Crossentropy/Sum_1_grad/Fill*
N*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*#
_output_shapes
:���������
�
0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Sum_1_grad/MaximumMaximum4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/y*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*#
_output_shapes
:���������
�
/Adam/gradients/Crossentropy/Sum_1_grad/floordivFloorDiv,Adam/gradients/Crossentropy/Sum_1_grad/Shape.Adam/gradients/Crossentropy/Sum_1_grad/Maximum*
T0*?
_class5
31loc:@Adam/gradients/Crossentropy/Sum_1_grad/Shape*
_output_shapes
:
�
.Adam/gradients/Crossentropy/Sum_1_grad/ReshapeReshape(Adam/gradients/Crossentropy/Neg_grad/Neg4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
+Adam/gradients/Crossentropy/Sum_1_grad/TileTile.Adam/gradients/Crossentropy/Sum_1_grad/Reshape/Adam/gradients/Crossentropy/Sum_1_grad/floordiv*
T0*

Tmultiples0*'
_output_shapes
:���������	
�
*Adam/gradients/Crossentropy/mul_grad/ShapeShapeTargetsData/Y^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/mul_grad/Shape_1ShapeCrossentropy/Log^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*Adam/gradients/Crossentropy/mul_grad/Shape,Adam/gradients/Crossentropy/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
(Adam/gradients/Crossentropy/mul_grad/mulMul+Adam/gradients/Crossentropy/Sum_1_grad/TileCrossentropy/Log*
T0*'
_output_shapes
:���������	
�
(Adam/gradients/Crossentropy/mul_grad/SumSum(Adam/gradients/Crossentropy/mul_grad/mul:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/mul_grad/ReshapeReshape(Adam/gradients/Crossentropy/mul_grad/Sum*Adam/gradients/Crossentropy/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������	
�
*Adam/gradients/Crossentropy/mul_grad/mul_1MulTargetsData/Y+Adam/gradients/Crossentropy/Sum_1_grad/Tile*
T0*'
_output_shapes
:���������	
�
*Adam/gradients/Crossentropy/mul_grad/Sum_1Sum*Adam/gradients/Crossentropy/mul_grad/mul_1<Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
.Adam/gradients/Crossentropy/mul_grad/Reshape_1Reshape*Adam/gradients/Crossentropy/mul_grad/Sum_1,Adam/gradients/Crossentropy/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������	
�
/Adam/gradients/Crossentropy/Log_grad/Reciprocal
ReciprocalCrossentropy/clip_by_value^Adam/moving_avg^moving_avg/^Adam/gradients/Crossentropy/mul_grad/Reshape_1*
T0*'
_output_shapes
:���������	
�
(Adam/gradients/Crossentropy/Log_grad/mulMul.Adam/gradients/Crossentropy/mul_grad/Reshape_1/Adam/gradients/Crossentropy/Log_grad/Reciprocal*
T0*'
_output_shapes
:���������	
�
4Adam/gradients/Crossentropy/clip_by_value_grad/ShapeShape"Crossentropy/clip_by_value/Minimum^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2Shape(Adam/gradients/Crossentropy/Log_grad/mul*
T0*
out_type0*
_output_shapes
:
�
:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
dtype0*
_output_shapes
: 
�
4Adam/gradients/Crossentropy/clip_by_value_grad/zerosFill6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:���������	
�
;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqualGreaterEqual"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������	
�
DAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4Adam/gradients/Crossentropy/clip_by_value_grad/Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
5Adam/gradients/Crossentropy/clip_by_value_grad/SelectSelect;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*
T0*'
_output_shapes
:���������	
�
7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1Select;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual4Adam/gradients/Crossentropy/clip_by_value_grad/zeros(Adam/gradients/Crossentropy/Log_grad/mul*
T0*'
_output_shapes
:���������	
�
2Adam/gradients/Crossentropy/clip_by_value_grad/SumSum5Adam/gradients/Crossentropy/clip_by_value_grad/SelectDAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
6Adam/gradients/Crossentropy/clip_by_value_grad/ReshapeReshape2Adam/gradients/Crossentropy/clip_by_value_grad/Sum4Adam/gradients/Crossentropy/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������	
�
4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_1Sum7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1FAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
8Adam/gradients/Crossentropy/clip_by_value_grad/Reshape_1Reshape4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_16Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ShapeShapeCrossentropy/truediv^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape*
T0*
out_type0*
_output_shapes
:
�
BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
dtype0*
_output_shapes
: 
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zerosFill>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:���������	
�
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualCrossentropy/truedivCrossentropy/Cast_1/x^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������	
�
LAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectSelect@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:���������	
�
?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1Select@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape*
T0*'
_output_shapes
:���������	
�
:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SumSum=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectLAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeReshape:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������	
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1Sum?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1NAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/truediv_grad/ShapeShapeFullyConnected_2/Softmax^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
0Adam/gradients/Crossentropy/truediv_grad/Shape_1ShapeCrossentropy/Sum^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs.Adam/gradients/Crossentropy/truediv_grad/Shape0Adam/gradients/Crossentropy/truediv_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
0Adam/gradients/Crossentropy/truediv_grad/RealDivRealDiv>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeCrossentropy/Sum*
T0*'
_output_shapes
:���������	
�
,Adam/gradients/Crossentropy/truediv_grad/SumSum0Adam/gradients/Crossentropy/truediv_grad/RealDiv>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
0Adam/gradients/Crossentropy/truediv_grad/ReshapeReshape,Adam/gradients/Crossentropy/truediv_grad/Sum.Adam/gradients/Crossentropy/truediv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������	
�
,Adam/gradients/Crossentropy/truediv_grad/NegNegFullyConnected_2/Softmax^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������	
�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1RealDiv,Adam/gradients/Crossentropy/truediv_grad/NegCrossentropy/Sum*
T0*'
_output_shapes
:���������	
�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2RealDiv2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1Crossentropy/Sum*
T0*'
_output_shapes
:���������	
�
,Adam/gradients/Crossentropy/truediv_grad/mulMul>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:���������	
�
.Adam/gradients/Crossentropy/truediv_grad/Sum_1Sum,Adam/gradients/Crossentropy/truediv_grad/mul@Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
2Adam/gradients/Crossentropy/truediv_grad/Reshape_1Reshape.Adam/gradients/Crossentropy/truediv_grad/Sum_10Adam/gradients/Crossentropy/truediv_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
*Adam/gradients/Crossentropy/Sum_grad/ShapeShapeFullyConnected_2/Softmax^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
)Adam/gradients/Crossentropy/Sum_grad/SizeConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
(Adam/gradients/Crossentropy/Sum_grad/addAdd"Crossentropy/Sum/reduction_indices)Adam/gradients/Crossentropy/Sum_grad/Size*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
(Adam/gradients/Crossentropy/Sum_grad/modFloorMod(Adam/gradients/Crossentropy/Sum_grad/add)Adam/gradients/Crossentropy/Sum_grad/Size*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
0Adam/gradients/Crossentropy/Sum_grad/range/startConst^Adam/moving_avg^moving_avg*
value	B : *
dtype0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
0Adam/gradients/Crossentropy/Sum_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_grad/rangeRange0Adam/gradients/Crossentropy/Sum_grad/range/start)Adam/gradients/Crossentropy/Sum_grad/Size0Adam/gradients/Crossentropy/Sum_grad/range/delta*

Tidx0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
:
�
/Adam/gradients/Crossentropy/Sum_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
)Adam/gradients/Crossentropy/Sum_grad/FillFill,Adam/gradients/Crossentropy/Sum_grad/Shape_1/Adam/gradients/Crossentropy/Sum_grad/Fill/value*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
2Adam/gradients/Crossentropy/Sum_grad/DynamicStitchDynamicStitch*Adam/gradients/Crossentropy/Sum_grad/range(Adam/gradients/Crossentropy/Sum_grad/mod*Adam/gradients/Crossentropy/Sum_grad/Shape)Adam/gradients/Crossentropy/Sum_grad/Fill*
N*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*#
_output_shapes
:���������
�
.Adam/gradients/Crossentropy/Sum_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_grad/MaximumMaximum2Adam/gradients/Crossentropy/Sum_grad/DynamicStitch.Adam/gradients/Crossentropy/Sum_grad/Maximum/y*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*#
_output_shapes
:���������
�
-Adam/gradients/Crossentropy/Sum_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Sum_grad/Shape,Adam/gradients/Crossentropy/Sum_grad/Maximum*
T0*=
_class3
1/loc:@Adam/gradients/Crossentropy/Sum_grad/Shape*
_output_shapes
:
�
,Adam/gradients/Crossentropy/Sum_grad/ReshapeReshape2Adam/gradients/Crossentropy/truediv_grad/Reshape_12Adam/gradients/Crossentropy/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
)Adam/gradients/Crossentropy/Sum_grad/TileTile,Adam/gradients/Crossentropy/Sum_grad/Reshape-Adam/gradients/Crossentropy/Sum_grad/floordiv*
T0*

Tmultiples0*'
_output_shapes
:���������	
�
Adam/gradients/AddNAddN0Adam/gradients/Crossentropy/truediv_grad/Reshape)Adam/gradients/Crossentropy/Sum_grad/Tile*
N*
T0*C
_class9
75loc:@Adam/gradients/Crossentropy/truediv_grad/Reshape*'
_output_shapes
:���������	
�
0Adam/gradients/FullyConnected_2/Softmax_grad/mulMulAdam/gradients/AddNFullyConnected_2/Softmax*
T0*'
_output_shapes
:���������	
�
BAdam/gradients/FullyConnected_2/Softmax_grad/Sum/reduction_indicesConst^Adam/moving_avg^moving_avg*
valueB:*
dtype0*
_output_shapes
:
�
0Adam/gradients/FullyConnected_2/Softmax_grad/SumSum0Adam/gradients/FullyConnected_2/Softmax_grad/mulBAdam/gradients/FullyConnected_2/Softmax_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:���������
�
:Adam/gradients/FullyConnected_2/Softmax_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
valueB"����   *
dtype0*
_output_shapes
:
�
4Adam/gradients/FullyConnected_2/Softmax_grad/ReshapeReshape0Adam/gradients/FullyConnected_2/Softmax_grad/Sum:Adam/gradients/FullyConnected_2/Softmax_grad/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:���������
�
0Adam/gradients/FullyConnected_2/Softmax_grad/subSubAdam/gradients/AddN4Adam/gradients/FullyConnected_2/Softmax_grad/Reshape*
T0*'
_output_shapes
:���������	
�
2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1Mul0Adam/gradients/FullyConnected_2/Softmax_grad/subFullyConnected_2/Softmax*
T0*'
_output_shapes
:���������	
�
8Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1*
T0*
data_formatNHWC*
_output_shapes
:	
�
2Adam/gradients/FullyConnected_2/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1FullyConnected_2/W/read*
transpose_a( *
transpose_b(*
T0*'
_output_shapes
:���������
�
4Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1MatMulFullyConnected_1/BiasAdd2Adam/gradients/FullyConnected_2/Softmax_grad/mul_1*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:	
�
8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_2/MatMul_grad/MatMul*
T0*
data_formatNHWC*
_output_shapes
:
�
2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_2/MatMul_grad/MatMulFullyConnected_1/W/read*
transpose_a( *
transpose_b(*
T0*'
_output_shapes
:���������
�
4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1MatMulFullyConnected/BiasAdd2Adam/gradients/FullyConnected_2/MatMul_grad/MatMul*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
�
6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_1/MatMul_grad/MatMul*
T0*
data_formatNHWC*
_output_shapes
:
�
0Adam/gradients/FullyConnected/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulFullyConnected/W/read*
transpose_a( *
transpose_b(*
T0*'
_output_shapes
:���������0
�
2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1MatMulInputData/X2Adam/gradients/FullyConnected_1/MatMul_grad/MatMul*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:0
�
Adam/global_norm/L2LossL2Loss2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
: 
�
Adam/global_norm/L2Loss_1L2Loss6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
T0*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/L2Loss_2L2Loss4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes
: 
�
Adam/global_norm/L2Loss_3L2Loss8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/L2Loss_4L2Loss4Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1*
_output_shapes
: 
�
Adam/global_norm/L2Loss_5L2Loss8Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/stackPackAdam/global_norm/L2LossAdam/global_norm/L2Loss_1Adam/global_norm/L2Loss_2Adam/global_norm/L2Loss_3Adam/global_norm/L2Loss_4Adam/global_norm/L2Loss_5*
N*
T0*

axis *
_output_shapes
:

Adam/global_norm/ConstConst^Adam/moving_avg^moving_avg*
valueB: *
dtype0*
_output_shapes
:
�
Adam/global_norm/SumSumAdam/global_norm/stackAdam/global_norm/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
|
Adam/global_norm/Const_1Const^Adam/moving_avg^moving_avg*
valueB
 *   @*
dtype0*
_output_shapes
: 
l
Adam/global_norm/mulMulAdam/global_norm/SumAdam/global_norm/Const_1*
T0*
_output_shapes
: 
[
Adam/global_norm/global_normSqrtAdam/global_norm/mul*
T0*
_output_shapes
: 
�
"Adam/clip_by_global_norm/truediv/xConst^Adam/moving_avg^moving_avg*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
 Adam/clip_by_global_norm/truedivRealDiv"Adam/clip_by_global_norm/truediv/xAdam/global_norm/global_norm*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
$Adam/clip_by_global_norm/truediv_1/yConst^Adam/moving_avg^moving_avg*
valueB
 *  �@*
dtype0*
_output_shapes
: 
�
"Adam/clip_by_global_norm/truediv_1RealDivAdam/clip_by_global_norm/Const$Adam/clip_by_global_norm/truediv_1/y*
T0*
_output_shapes
: 
�
 Adam/clip_by_global_norm/MinimumMinimum Adam/clip_by_global_norm/truediv"Adam/clip_by_global_norm/truediv_1*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/mul/xConst^Adam/moving_avg^moving_avg*
valueB
 *  �@*
dtype0*
_output_shapes
: 
�
Adam/clip_by_global_norm/mulMulAdam/clip_by_global_norm/mul/x Adam/clip_by_global_norm/Minimum*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/mul_1Mul2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes

:0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0IdentityAdam/clip_by_global_norm/mul_1*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes

:0
�
Adam/clip_by_global_norm/mul_2Mul6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1IdentityAdam/clip_by_global_norm/mul_2*
T0*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
Adam/clip_by_global_norm/mul_3Mul4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes

:
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2IdentityAdam/clip_by_global_norm/mul_3*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes

:
�
Adam/clip_by_global_norm/mul_4Mul8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3IdentityAdam/clip_by_global_norm/mul_4*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
Adam/clip_by_global_norm/mul_5Mul4Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1*
_output_shapes

:	
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4IdentityAdam/clip_by_global_norm/mul_5*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_2/MatMul_grad/MatMul_1*
_output_shapes

:	
�
Adam/clip_by_global_norm/mul_6Mul8Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:	
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5IdentityAdam/clip_by_global_norm/mul_6*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:	
�
Adam/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/beta1_power/AssignAssignAdam/beta1_powerAdam/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
y
Adam/beta1_power/readIdentityAdam/beta1_power*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/beta2_power/initial_valueConst*
valueB
 *w�?*
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/beta2_power/AssignAssignAdam/beta2_powerAdam/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
y
Adam/beta2_power/readIdentityAdam/beta2_power*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
'FullyConnected/W/Adam/Initializer/zerosConst*
valueB0*    *
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/Adam
VariableV2*
shape
:0*
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/Adam/AssignAssignFullyConnected/W/Adam'FullyConnected/W/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/Adam/readIdentityFullyConnected/W/Adam*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
)FullyConnected/W/Adam_1/Initializer/zerosConst*
valueB0*    *
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/Adam_1
VariableV2*
shape
:0*
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/Adam_1/AssignAssignFullyConnected/W/Adam_1)FullyConnected/W/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
FullyConnected/W/Adam_1/readIdentityFullyConnected/W/Adam_1*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
'FullyConnected/b/Adam/Initializer/zerosConst*
valueB*    *
dtype0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/Adam/AssignAssignFullyConnected/b/Adam'FullyConnected/b/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/Adam/readIdentityFullyConnected/b/Adam*
T0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
)FullyConnected/b/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/Adam_1/AssignAssignFullyConnected/b/Adam_1)FullyConnected/b/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
FullyConnected/b/Adam_1/readIdentityFullyConnected/b/Adam_1*
T0*#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
)FullyConnected_1/W/Adam/Initializer/zerosConst*
valueB*    *
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/Adam
VariableV2*
shape
:*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/Adam/AssignAssignFullyConnected_1/W/Adam)FullyConnected_1/W/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/Adam/readIdentityFullyConnected_1/W/Adam*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
+FullyConnected_1/W/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/Adam_1
VariableV2*
shape
:*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
 FullyConnected_1/W/Adam_1/AssignAssignFullyConnected_1/W/Adam_1+FullyConnected_1/W/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
FullyConnected_1/W/Adam_1/readIdentityFullyConnected_1/W/Adam_1*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
)FullyConnected_1/b/Adam/Initializer/zerosConst*
valueB*    *
dtype0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/Adam/AssignAssignFullyConnected_1/b/Adam)FullyConnected_1/b/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/Adam/readIdentityFullyConnected_1/b/Adam*
T0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
+FullyConnected_1/b/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
 FullyConnected_1/b/Adam_1/AssignAssignFullyConnected_1/b/Adam_1+FullyConnected_1/b/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/b/Adam_1/readIdentityFullyConnected_1/b/Adam_1*
T0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
)FullyConnected_2/W/Adam/Initializer/zerosConst*
valueB	*    *
dtype0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/Adam
VariableV2*
shape
:	*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/Adam/AssignAssignFullyConnected_2/W/Adam)FullyConnected_2/W/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/Adam/readIdentityFullyConnected_2/W/Adam*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
+FullyConnected_2/W/Adam_1/Initializer/zerosConst*
valueB	*    *
dtype0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/Adam_1
VariableV2*
shape
:	*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
 FullyConnected_2/W/Adam_1/AssignAssignFullyConnected_2/W/Adam_1+FullyConnected_2/W/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
FullyConnected_2/W/Adam_1/readIdentityFullyConnected_2/W/Adam_1*
T0*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
)FullyConnected_2/b/Adam/Initializer/zerosConst*
valueB	*    *
dtype0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/Adam
VariableV2*
shape:	*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/Adam/AssignAssignFullyConnected_2/b/Adam)FullyConnected_2/b/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/Adam/readIdentityFullyConnected_2/b/Adam*
T0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
+FullyConnected_2/b/Adam_1/Initializer/zerosConst*
valueB	*    *
dtype0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/Adam_1
VariableV2*
shape:	*
dtype0*
	container *
shared_name *%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
 FullyConnected_2/b/Adam_1/AssignAssignFullyConnected_2/b/Adam_1+FullyConnected_2/b/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
FullyConnected_2/b/Adam_1/readIdentityFullyConnected_2/b/Adam_1*
T0*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
g
"Adam/apply_grad_op_0/learning_rateConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
_
Adam/apply_grad_op_0/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
_
Adam/apply_grad_op_0/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
a
Adam/apply_grad_op_0/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
6Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam	ApplyAdamFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0*
T0*
use_locking( *
use_nesterov( *#
_class
loc:@FullyConnected/W*
_output_shapes

:0
�
6Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam	ApplyAdamFullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1*
T0*
use_locking( *
use_nesterov( *#
_class
loc:@FullyConnected/b*
_output_shapes
:
�
8Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam	ApplyAdamFullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
8Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam	ApplyAdamFullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
8Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam	ApplyAdamFullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
8Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam	ApplyAdamFullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
Adam/apply_grad_op_0/mulMulAdam/beta1_power/readAdam/apply_grad_op_0/beta17^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/apply_grad_op_0/AssignAssignAdam/beta1_powerAdam/apply_grad_op_0/mul*
T0*
validate_shape(*
use_locking( *#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/apply_grad_op_0/mul_1MulAdam/beta2_power/readAdam/apply_grad_op_0/beta27^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/apply_grad_op_0/Assign_1AssignAdam/beta2_powerAdam/apply_grad_op_0/mul_1*
T0*
validate_shape(*
use_locking( *#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
Adam/apply_grad_op_0/updateNoOp7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_2/b/ApplyAdam^Adam/apply_grad_op_0/Assign^Adam/apply_grad_op_0/Assign_1
�
Adam/apply_grad_op_0/valueConst^Adam/apply_grad_op_0/update*
valueB
 *  �?*
dtype0* 
_class
loc:@Training_step*
_output_shapes
: 
�
Adam/apply_grad_op_0	AssignAddTraining_stepAdam/apply_grad_op_0/value*
T0*
use_locking( * 
_class
loc:@Training_step*
_output_shapes
: 
]
Adam/Merge/MergeSummaryMergeSummaryLossAdam/Loss/raw*
N*
_output_shapes
: 
.
Adam/train_op_0NoOp^Adam/apply_grad_op_0
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerCrossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1FullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1FullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*)
dtypes
2

}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
|
save/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/AssignAssignAccuracy/Mean/moving_avgsave/RestoreV2*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
v
save/RestoreV2_1/tensor_namesConst*%
valueBBAdam/beta1_power*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_1AssignAdam/beta1_powersave/RestoreV2_1*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
v
save/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
dtype0*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_2AssignAdam/beta2_powersave/RestoreV2_2*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
save/RestoreV2_3/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
dtype0*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_3AssignCrossentropy/Mean/moving_avgsave/RestoreV2_3*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
v
save/RestoreV2_4/tensor_namesConst*%
valueBBFullyConnected/W*
dtype0*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_4AssignFullyConnected/Wsave/RestoreV2_4*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
{
save/RestoreV2_5/tensor_namesConst**
value!BBFullyConnected/W/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_5AssignFullyConnected/W/Adamsave/RestoreV2_5*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
}
save/RestoreV2_6/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_6AssignFullyConnected/W/Adam_1save/RestoreV2_6*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
v
save/RestoreV2_7/tensor_namesConst*%
valueBBFullyConnected/b*
dtype0*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_7AssignFullyConnected/bsave/RestoreV2_7*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
{
save/RestoreV2_8/tensor_namesConst**
value!BBFullyConnected/b/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_8AssignFullyConnected/b/Adamsave/RestoreV2_8*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
}
save/RestoreV2_9/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_9AssignFullyConnected/b/Adam_1save/RestoreV2_9*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
y
save/RestoreV2_10/tensor_namesConst*'
valueBBFullyConnected_1/W*
dtype0*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_10AssignFullyConnected_1/Wsave/RestoreV2_10*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
~
save/RestoreV2_11/tensor_namesConst*,
value#B!BFullyConnected_1/W/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_11AssignFullyConnected_1/W/Adamsave/RestoreV2_11*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
save/RestoreV2_12/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_12AssignFullyConnected_1/W/Adam_1save/RestoreV2_12*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
y
save/RestoreV2_13/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_13AssignFullyConnected_1/bsave/RestoreV2_13*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
~
save/RestoreV2_14/tensor_namesConst*,
value#B!BFullyConnected_1/b/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_14AssignFullyConnected_1/b/Adamsave/RestoreV2_14*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
save/RestoreV2_15/tensor_namesConst*.
value%B#BFullyConnected_1/b/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_15AssignFullyConnected_1/b/Adam_1save/RestoreV2_15*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
y
save/RestoreV2_16/tensor_namesConst*'
valueBBFullyConnected_2/W*
dtype0*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_16AssignFullyConnected_2/Wsave/RestoreV2_16*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
~
save/RestoreV2_17/tensor_namesConst*,
value#B!BFullyConnected_2/W/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_17AssignFullyConnected_2/W/Adamsave/RestoreV2_17*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
save/RestoreV2_18/tensor_namesConst*.
value%B#BFullyConnected_2/W/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_18AssignFullyConnected_2/W/Adam_1save/RestoreV2_18*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
y
save/RestoreV2_19/tensor_namesConst*'
valueBBFullyConnected_2/b*
dtype0*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_19AssignFullyConnected_2/bsave/RestoreV2_19*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
~
save/RestoreV2_20/tensor_namesConst*,
value#B!BFullyConnected_2/b/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_20AssignFullyConnected_2/b/Adamsave/RestoreV2_20*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
save/RestoreV2_21/tensor_namesConst*.
value%B#BFullyConnected_2/b/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_21AssignFullyConnected_2/b/Adam_1save/RestoreV2_21*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
r
save/RestoreV2_22/tensor_namesConst* 
valueBBGlobal_Step*
dtype0*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_22AssignGlobal_Stepsave/RestoreV2_22*
T0*
validate_shape(*
use_locking(*
_class
loc:@Global_Step*
_output_shapes
: 
t
save/RestoreV2_23/tensor_namesConst*"
valueBBTraining_step*
dtype0*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_23AssignTraining_stepsave/RestoreV2_23*
T0*
validate_shape(*
use_locking(* 
_class
loc:@Training_step*
_output_shapes
: 
r
save/RestoreV2_24/tensor_namesConst* 
valueBBis_training*
dtype0*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2
*
_output_shapes
:
�
save/Assign_24Assignis_trainingsave/RestoreV2_24*
T0
*
validate_shape(*
use_locking(*
_class
loc:@is_training*
_output_shapes
: 
n
save/RestoreV2_25/tensor_namesConst*
valueBBval_acc*
dtype0*
_output_shapes
:
k
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_25Assignval_accsave/RestoreV2_25*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_acc*
_output_shapes
: 
o
save/RestoreV2_26/tensor_namesConst*
valueBBval_loss*
dtype0*
_output_shapes
:
k
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_26Assignval_losssave/RestoreV2_26*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_loss*
_output_shapes
: 
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_1/SaveV2/tensor_namesConst*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:
�
save_1/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerCrossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1FullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1FullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*)
dtypes
2

�
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const*
_output_shapes
: 
~
save_1/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/AssignAssignAccuracy/Mean/moving_avgsave_1/RestoreV2*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
x
save_1/RestoreV2_1/tensor_namesConst*%
valueBBAdam/beta1_power*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_1AssignAdam/beta1_powersave_1/RestoreV2_1*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
x
save_1/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_2AssignAdam/beta2_powersave_1/RestoreV2_2*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
save_1/RestoreV2_3/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_3AssignCrossentropy/Mean/moving_avgsave_1/RestoreV2_3*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
x
save_1/RestoreV2_4/tensor_namesConst*%
valueBBFullyConnected/W*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_4AssignFullyConnected/Wsave_1/RestoreV2_4*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
}
save_1/RestoreV2_5/tensor_namesConst**
value!BBFullyConnected/W/Adam*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_5AssignFullyConnected/W/Adamsave_1/RestoreV2_5*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0

save_1/RestoreV2_6/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_6AssignFullyConnected/W/Adam_1save_1/RestoreV2_6*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
x
save_1/RestoreV2_7/tensor_namesConst*%
valueBBFullyConnected/b*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_7AssignFullyConnected/bsave_1/RestoreV2_7*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
}
save_1/RestoreV2_8/tensor_namesConst**
value!BBFullyConnected/b/Adam*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_8AssignFullyConnected/b/Adamsave_1/RestoreV2_8*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:

save_1/RestoreV2_9/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_9AssignFullyConnected/b/Adam_1save_1/RestoreV2_9*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
{
 save_1/RestoreV2_10/tensor_namesConst*'
valueBBFullyConnected_1/W*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_10AssignFullyConnected_1/Wsave_1/RestoreV2_10*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
 save_1/RestoreV2_11/tensor_namesConst*,
value#B!BFullyConnected_1/W/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_11AssignFullyConnected_1/W/Adamsave_1/RestoreV2_11*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
 save_1/RestoreV2_12/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_12AssignFullyConnected_1/W/Adam_1save_1/RestoreV2_12*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
{
 save_1/RestoreV2_13/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_13AssignFullyConnected_1/bsave_1/RestoreV2_13*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
 save_1/RestoreV2_14/tensor_namesConst*,
value#B!BFullyConnected_1/b/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_14AssignFullyConnected_1/b/Adamsave_1/RestoreV2_14*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
 save_1/RestoreV2_15/tensor_namesConst*.
value%B#BFullyConnected_1/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_15AssignFullyConnected_1/b/Adam_1save_1/RestoreV2_15*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
{
 save_1/RestoreV2_16/tensor_namesConst*'
valueBBFullyConnected_2/W*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_16AssignFullyConnected_2/Wsave_1/RestoreV2_16*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
 save_1/RestoreV2_17/tensor_namesConst*,
value#B!BFullyConnected_2/W/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_17AssignFullyConnected_2/W/Adamsave_1/RestoreV2_17*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
 save_1/RestoreV2_18/tensor_namesConst*.
value%B#BFullyConnected_2/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_18AssignFullyConnected_2/W/Adam_1save_1/RestoreV2_18*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
{
 save_1/RestoreV2_19/tensor_namesConst*'
valueBBFullyConnected_2/b*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_19AssignFullyConnected_2/bsave_1/RestoreV2_19*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
 save_1/RestoreV2_20/tensor_namesConst*,
value#B!BFullyConnected_2/b/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_20AssignFullyConnected_2/b/Adamsave_1/RestoreV2_20*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
 save_1/RestoreV2_21/tensor_namesConst*.
value%B#BFullyConnected_2/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_21AssignFullyConnected_2/b/Adam_1save_1/RestoreV2_21*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
t
 save_1/RestoreV2_22/tensor_namesConst* 
valueBBGlobal_Step*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_22AssignGlobal_Stepsave_1/RestoreV2_22*
T0*
validate_shape(*
use_locking(*
_class
loc:@Global_Step*
_output_shapes
: 
v
 save_1/RestoreV2_23/tensor_namesConst*"
valueBBTraining_step*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_23AssignTraining_stepsave_1/RestoreV2_23*
T0*
validate_shape(*
use_locking(* 
_class
loc:@Training_step*
_output_shapes
: 
t
 save_1/RestoreV2_24/tensor_namesConst* 
valueBBis_training*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
dtypes
2
*
_output_shapes
:
�
save_1/Assign_24Assignis_trainingsave_1/RestoreV2_24*
T0
*
validate_shape(*
use_locking(*
_class
loc:@is_training*
_output_shapes
: 
p
 save_1/RestoreV2_25/tensor_namesConst*
valueBBval_acc*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_25Assignval_accsave_1/RestoreV2_25*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_acc*
_output_shapes
: 
q
 save_1/RestoreV2_26/tensor_namesConst*
valueBBval_loss*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_26	RestoreV2save_1/Const save_1/RestoreV2_26/tensor_names$save_1/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_26Assignval_losssave_1/RestoreV2_26*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_loss*
_output_shapes
: 
�
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26
R
save_2/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_2/SaveV2/tensor_namesConst*�
value~B|BFullyConnected/WBFullyConnected/bBFullyConnected_1/WBFullyConnected_1/bBFullyConnected_2/WBFullyConnected_2/b*
dtype0*
_output_shapes
:
q
save_2/SaveV2/shape_and_slicesConst*
valueBB B B B B B *
dtype0*
_output_shapes
:
�
save_2/SaveV2SaveV2save_2/Constsave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesFullyConnected/WFullyConnected/bFullyConnected_1/WFullyConnected_1/bFullyConnected_2/WFullyConnected_2/b*
dtypes

2
�
save_2/control_dependencyIdentitysave_2/Const^save_2/SaveV2*
T0*
_class
loc:@save_2/Const*
_output_shapes
: 
v
save_2/RestoreV2/tensor_namesConst*%
valueBBFullyConnected/W*
dtype0*
_output_shapes
:
j
!save_2/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/AssignAssignFullyConnected/Wsave_2/RestoreV2*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
x
save_2/RestoreV2_1/tensor_namesConst*%
valueBBFullyConnected/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_1AssignFullyConnected/bsave_2/RestoreV2_1*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
z
save_2/RestoreV2_2/tensor_namesConst*'
valueBBFullyConnected_1/W*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_2	RestoreV2save_2/Constsave_2/RestoreV2_2/tensor_names#save_2/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_2AssignFullyConnected_1/Wsave_2/RestoreV2_2*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
z
save_2/RestoreV2_3/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_3	RestoreV2save_2/Constsave_2/RestoreV2_3/tensor_names#save_2/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_3AssignFullyConnected_1/bsave_2/RestoreV2_3*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
z
save_2/RestoreV2_4/tensor_namesConst*'
valueBBFullyConnected_2/W*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_4	RestoreV2save_2/Constsave_2/RestoreV2_4/tensor_names#save_2/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_4AssignFullyConnected_2/Wsave_2/RestoreV2_4*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
z
save_2/RestoreV2_5/tensor_namesConst*'
valueBBFullyConnected_2/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_5	RestoreV2save_2/Constsave_2/RestoreV2_5/tensor_names#save_2/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_5AssignFullyConnected_2/bsave_2/RestoreV2_5*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
save_2/restore_allNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5
�
initNoOp^FullyConnected/W/Assign^FullyConnected/b/Assign^FullyConnected_1/W/Assign^FullyConnected_1/b/Assign^FullyConnected_2/W/Assign^FullyConnected_2/b/Assign^Training_step/Assign^is_training/Assign^Global_Step/Assign^val_loss/Assign^val_acc/Assign ^Accuracy/Mean/moving_avg/Assign$^Crossentropy/Mean/moving_avg/Assign^Adam/beta1_power/Assign^Adam/beta2_power/Assign^FullyConnected/W/Adam/Assign^FullyConnected/W/Adam_1/Assign^FullyConnected/b/Adam/Assign^FullyConnected/b/Adam_1/Assign^FullyConnected_1/W/Adam/Assign!^FullyConnected_1/W/Adam_1/Assign^FullyConnected_1/b/Adam/Assign!^FullyConnected_1/b/Adam_1/Assign^FullyConnected_2/W/Adam/Assign!^FullyConnected_2/W/Adam_1/Assign^FullyConnected_2/b/Adam/Assign!^FullyConnected_2/b/Adam_1/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
#
init_2NoOp^is_training/Assign
R
save_3/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_3/SaveV2/tensor_namesConst*�
value�B�BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BFullyConnected_2/WBFullyConnected_2/W/AdamBFullyConnected_2/W/Adam_1BFullyConnected_2/bBFullyConnected_2/b/AdamBFullyConnected_2/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:
�
save_3/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_3/SaveV2SaveV2save_3/Constsave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerCrossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1FullyConnected_2/WFullyConnected_2/W/AdamFullyConnected_2/W/Adam_1FullyConnected_2/bFullyConnected_2/b/AdamFullyConnected_2/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*)
dtypes
2

�
save_3/control_dependencyIdentitysave_3/Const^save_3/SaveV2*
T0*
_class
loc:@save_3/Const*
_output_shapes
: 
~
save_3/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
dtype0*
_output_shapes
:
j
!save_3/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/AssignAssignAccuracy/Mean/moving_avgsave_3/RestoreV2*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
x
save_3/RestoreV2_1/tensor_namesConst*%
valueBBAdam/beta1_power*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_1	RestoreV2save_3/Constsave_3/RestoreV2_1/tensor_names#save_3/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_1AssignAdam/beta1_powersave_3/RestoreV2_1*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
x
save_3/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_2	RestoreV2save_3/Constsave_3/RestoreV2_2/tensor_names#save_3/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_2AssignAdam/beta2_powersave_3/RestoreV2_2*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes
: 
�
save_3/RestoreV2_3/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_3	RestoreV2save_3/Constsave_3/RestoreV2_3/tensor_names#save_3/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_3AssignCrossentropy/Mean/moving_avgsave_3/RestoreV2_3*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
x
save_3/RestoreV2_4/tensor_namesConst*%
valueBBFullyConnected/W*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_4	RestoreV2save_3/Constsave_3/RestoreV2_4/tensor_names#save_3/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_4AssignFullyConnected/Wsave_3/RestoreV2_4*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
}
save_3/RestoreV2_5/tensor_namesConst**
value!BBFullyConnected/W/Adam*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_5	RestoreV2save_3/Constsave_3/RestoreV2_5/tensor_names#save_3/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_5AssignFullyConnected/W/Adamsave_3/RestoreV2_5*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0

save_3/RestoreV2_6/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_6	RestoreV2save_3/Constsave_3/RestoreV2_6/tensor_names#save_3/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_6AssignFullyConnected/W/Adam_1save_3/RestoreV2_6*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/W*
_output_shapes

:0
x
save_3/RestoreV2_7/tensor_namesConst*%
valueBBFullyConnected/b*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_7	RestoreV2save_3/Constsave_3/RestoreV2_7/tensor_names#save_3/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_7AssignFullyConnected/bsave_3/RestoreV2_7*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
}
save_3/RestoreV2_8/tensor_namesConst**
value!BBFullyConnected/b/Adam*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_8	RestoreV2save_3/Constsave_3/RestoreV2_8/tensor_names#save_3/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_8AssignFullyConnected/b/Adamsave_3/RestoreV2_8*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:

save_3/RestoreV2_9/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_9	RestoreV2save_3/Constsave_3/RestoreV2_9/tensor_names#save_3/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_9AssignFullyConnected/b/Adam_1save_3/RestoreV2_9*
T0*
validate_shape(*
use_locking(*#
_class
loc:@FullyConnected/b*
_output_shapes
:
{
 save_3/RestoreV2_10/tensor_namesConst*'
valueBBFullyConnected_1/W*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_10	RestoreV2save_3/Const save_3/RestoreV2_10/tensor_names$save_3/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_10AssignFullyConnected_1/Wsave_3/RestoreV2_10*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
 save_3/RestoreV2_11/tensor_namesConst*,
value#B!BFullyConnected_1/W/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_11	RestoreV2save_3/Const save_3/RestoreV2_11/tensor_names$save_3/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_11AssignFullyConnected_1/W/Adamsave_3/RestoreV2_11*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
�
 save_3/RestoreV2_12/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_12	RestoreV2save_3/Const save_3/RestoreV2_12/tensor_names$save_3/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_12AssignFullyConnected_1/W/Adam_1save_3/RestoreV2_12*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/W*
_output_shapes

:
{
 save_3/RestoreV2_13/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_13	RestoreV2save_3/Const save_3/RestoreV2_13/tensor_names$save_3/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_13AssignFullyConnected_1/bsave_3/RestoreV2_13*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
 save_3/RestoreV2_14/tensor_namesConst*,
value#B!BFullyConnected_1/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_14	RestoreV2save_3/Const save_3/RestoreV2_14/tensor_names$save_3/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_14AssignFullyConnected_1/b/Adamsave_3/RestoreV2_14*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
 save_3/RestoreV2_15/tensor_namesConst*.
value%B#BFullyConnected_1/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_15	RestoreV2save_3/Const save_3/RestoreV2_15/tensor_names$save_3/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_15AssignFullyConnected_1/b/Adam_1save_3/RestoreV2_15*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
{
 save_3/RestoreV2_16/tensor_namesConst*'
valueBBFullyConnected_2/W*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_16	RestoreV2save_3/Const save_3/RestoreV2_16/tensor_names$save_3/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_16AssignFullyConnected_2/Wsave_3/RestoreV2_16*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
 save_3/RestoreV2_17/tensor_namesConst*,
value#B!BFullyConnected_2/W/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_17	RestoreV2save_3/Const save_3/RestoreV2_17/tensor_names$save_3/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_17AssignFullyConnected_2/W/Adamsave_3/RestoreV2_17*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
�
 save_3/RestoreV2_18/tensor_namesConst*.
value%B#BFullyConnected_2/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_18	RestoreV2save_3/Const save_3/RestoreV2_18/tensor_names$save_3/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_18AssignFullyConnected_2/W/Adam_1save_3/RestoreV2_18*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/W*
_output_shapes

:	
{
 save_3/RestoreV2_19/tensor_namesConst*'
valueBBFullyConnected_2/b*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_19	RestoreV2save_3/Const save_3/RestoreV2_19/tensor_names$save_3/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_19AssignFullyConnected_2/bsave_3/RestoreV2_19*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
 save_3/RestoreV2_20/tensor_namesConst*,
value#B!BFullyConnected_2/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_20	RestoreV2save_3/Const save_3/RestoreV2_20/tensor_names$save_3/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_20AssignFullyConnected_2/b/Adamsave_3/RestoreV2_20*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
�
 save_3/RestoreV2_21/tensor_namesConst*.
value%B#BFullyConnected_2/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_21	RestoreV2save_3/Const save_3/RestoreV2_21/tensor_names$save_3/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_21AssignFullyConnected_2/b/Adam_1save_3/RestoreV2_21*
T0*
validate_shape(*
use_locking(*%
_class
loc:@FullyConnected_2/b*
_output_shapes
:	
t
 save_3/RestoreV2_22/tensor_namesConst* 
valueBBGlobal_Step*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_22	RestoreV2save_3/Const save_3/RestoreV2_22/tensor_names$save_3/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_22AssignGlobal_Stepsave_3/RestoreV2_22*
T0*
validate_shape(*
use_locking(*
_class
loc:@Global_Step*
_output_shapes
: 
v
 save_3/RestoreV2_23/tensor_namesConst*"
valueBBTraining_step*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_23	RestoreV2save_3/Const save_3/RestoreV2_23/tensor_names$save_3/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_23AssignTraining_stepsave_3/RestoreV2_23*
T0*
validate_shape(*
use_locking(* 
_class
loc:@Training_step*
_output_shapes
: 
t
 save_3/RestoreV2_24/tensor_namesConst* 
valueBBis_training*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_24	RestoreV2save_3/Const save_3/RestoreV2_24/tensor_names$save_3/RestoreV2_24/shape_and_slices*
dtypes
2
*
_output_shapes
:
�
save_3/Assign_24Assignis_trainingsave_3/RestoreV2_24*
T0
*
validate_shape(*
use_locking(*
_class
loc:@is_training*
_output_shapes
: 
p
 save_3/RestoreV2_25/tensor_namesConst*
valueBBval_acc*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_25	RestoreV2save_3/Const save_3/RestoreV2_25/tensor_names$save_3/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_25Assignval_accsave_3/RestoreV2_25*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_acc*
_output_shapes
: 
q
 save_3/RestoreV2_26/tensor_namesConst*
valueBBval_loss*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_26	RestoreV2save_3/Const save_3/RestoreV2_26/tensor_names$save_3/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_26Assignval_losssave_3/RestoreV2_26*
T0*
validate_shape(*
use_locking(*
_class
loc:@val_loss*
_output_shapes
: 
�
save_3/restore_allNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26""
inputs

InputData/X:0"+
layer_tensor/InputData

InputData/X:0"�
trainable_variables��
w
FullyConnected/W:0FullyConnected/W/AssignFullyConnected/W/read:02/FullyConnected/W/Initializer/truncated_normal:0
l
FullyConnected/b:0FullyConnected/b/AssignFullyConnected/b/read:02$FullyConnected/b/Initializer/Const:0

FullyConnected_1/W:0FullyConnected_1/W/AssignFullyConnected_1/W/read:021FullyConnected_1/W/Initializer/truncated_normal:0
t
FullyConnected_1/b:0FullyConnected_1/b/AssignFullyConnected_1/b/read:02&FullyConnected_1/b/Initializer/Const:0

FullyConnected_2/W:0FullyConnected_2/W/AssignFullyConnected_2/W/read:021FullyConnected_2/W/Initializer/truncated_normal:0
t
FullyConnected_2/b:0FullyConnected_2/b/AssignFullyConnected_2/b/read:02&FullyConnected_2/b/Initializer/Const:0"�
model_variables��
w
FullyConnected/W:0FullyConnected/W/AssignFullyConnected/W/read:02/FullyConnected/W/Initializer/truncated_normal:0
l
FullyConnected/b:0FullyConnected/b/AssignFullyConnected/b/read:02$FullyConnected/b/Initializer/Const:0

FullyConnected_1/W:0FullyConnected_1/W/AssignFullyConnected_1/W/read:021FullyConnected_1/W/Initializer/truncated_normal:0
t
FullyConnected_1/b:0FullyConnected_1/b/AssignFullyConnected_1/b/read:02&FullyConnected_1/b/Initializer/Const:0

FullyConnected_2/W:0FullyConnected_2/W/AssignFullyConnected_2/W/read:021FullyConnected_2/W/Initializer/truncated_normal:0
t
FullyConnected_2/b:0FullyConnected_2/b/AssignFullyConnected_2/b/read:02&FullyConnected_2/b/Initializer/Const:0
X
is_training:0is_training/Assignis_training/read:02is_training/Initializer/Const:0"�
	variables��
w
FullyConnected/W:0FullyConnected/W/AssignFullyConnected/W/read:02/FullyConnected/W/Initializer/truncated_normal:0
l
FullyConnected/b:0FullyConnected/b/AssignFullyConnected/b/read:02$FullyConnected/b/Initializer/Const:0

FullyConnected_1/W:0FullyConnected_1/W/AssignFullyConnected_1/W/read:021FullyConnected_1/W/Initializer/truncated_normal:0
t
FullyConnected_1/b:0FullyConnected_1/b/AssignFullyConnected_1/b/read:02&FullyConnected_1/b/Initializer/Const:0

FullyConnected_2/W:0FullyConnected_2/W/AssignFullyConnected_2/W/read:021FullyConnected_2/W/Initializer/truncated_normal:0
t
FullyConnected_2/b:0FullyConnected_2/b/AssignFullyConnected_2/b/read:02&FullyConnected_2/b/Initializer/Const:0
\
Training_step:0Training_step/AssignTraining_step/read:02Training_step/initial_value:0
X
is_training:0is_training/Assignis_training/read:02is_training/Initializer/Const:0
T
Global_Step:0Global_Step/AssignGlobal_Step/read:02Global_Step/initial_value:0
H

val_loss:0val_loss/Assignval_loss/read:02val_loss/initial_value:0
D
	val_acc:0val_acc/Assignval_acc/read:02val_acc/initial_value:0
�
Accuracy/Mean/moving_avg:0Accuracy/Mean/moving_avg/AssignAccuracy/Mean/moving_avg/read:02,Accuracy/Mean/moving_avg/Initializer/zeros:0
�
Crossentropy/Mean/moving_avg:0#Crossentropy/Mean/moving_avg/Assign#Crossentropy/Mean/moving_avg/read:020Crossentropy/Mean/moving_avg/Initializer/zeros:0
h
Adam/beta1_power:0Adam/beta1_power/AssignAdam/beta1_power/read:02 Adam/beta1_power/initial_value:0
h
Adam/beta2_power:0Adam/beta2_power/AssignAdam/beta2_power/read:02 Adam/beta2_power/initial_value:0
�
FullyConnected/W/Adam:0FullyConnected/W/Adam/AssignFullyConnected/W/Adam/read:02)FullyConnected/W/Adam/Initializer/zeros:0
�
FullyConnected/W/Adam_1:0FullyConnected/W/Adam_1/AssignFullyConnected/W/Adam_1/read:02+FullyConnected/W/Adam_1/Initializer/zeros:0
�
FullyConnected/b/Adam:0FullyConnected/b/Adam/AssignFullyConnected/b/Adam/read:02)FullyConnected/b/Adam/Initializer/zeros:0
�
FullyConnected/b/Adam_1:0FullyConnected/b/Adam_1/AssignFullyConnected/b/Adam_1/read:02+FullyConnected/b/Adam_1/Initializer/zeros:0
�
FullyConnected_1/W/Adam:0FullyConnected_1/W/Adam/AssignFullyConnected_1/W/Adam/read:02+FullyConnected_1/W/Adam/Initializer/zeros:0
�
FullyConnected_1/W/Adam_1:0 FullyConnected_1/W/Adam_1/Assign FullyConnected_1/W/Adam_1/read:02-FullyConnected_1/W/Adam_1/Initializer/zeros:0
�
FullyConnected_1/b/Adam:0FullyConnected_1/b/Adam/AssignFullyConnected_1/b/Adam/read:02+FullyConnected_1/b/Adam/Initializer/zeros:0
�
FullyConnected_1/b/Adam_1:0 FullyConnected_1/b/Adam_1/Assign FullyConnected_1/b/Adam_1/read:02-FullyConnected_1/b/Adam_1/Initializer/zeros:0
�
FullyConnected_2/W/Adam:0FullyConnected_2/W/Adam/AssignFullyConnected_2/W/Adam/read:02+FullyConnected_2/W/Adam/Initializer/zeros:0
�
FullyConnected_2/W/Adam_1:0 FullyConnected_2/W/Adam_1/Assign FullyConnected_2/W/Adam_1/read:02-FullyConnected_2/W/Adam_1/Initializer/zeros:0
�
FullyConnected_2/b/Adam:0FullyConnected_2/b/Adam/AssignFullyConnected_2/b/Adam/read:02+FullyConnected_2/b/Adam/Initializer/zeros:0
�
FullyConnected_2/b/Adam_1:0 FullyConnected_2/b/Adam_1/Assign FullyConnected_2/b/Adam_1/read:02-FullyConnected_2/b/Adam_1/Initializer/zeros:0"L
layer_variables/FullyConnected*
(
FullyConnected/W:0
FullyConnected/b:0"c
activationsT
R
FullyConnected/BiasAdd:0
FullyConnected_1/BiasAdd:0
FullyConnected_2/Softmax:0";
layer_tensor/FullyConnected

FullyConnected/BiasAdd:0"R
 layer_variables/FullyConnected_1.
,
FullyConnected_1/W:0
FullyConnected_1/b:0"?
layer_tensor/FullyConnected_1

FullyConnected_1/BiasAdd:0"R
 layer_variables/FullyConnected_2.
,
FullyConnected_2/W:0
FullyConnected_2/b:0"?
layer_tensor/FullyConnected_2

FullyConnected_2/Softmax:0"
targets

TargetsData/Y:0"
trainops

Adam" 
is_training

is_training:0"+
is_training_ops

Assign:0

Assign_1:0"(
	summaries

Loss:0
Adam/Loss/raw:0"6
Adam_training_summaries

Loss:0
Adam/Loss/raw:0"$
train_op

Adam/apply_grad_op_0��Y       �e�	��h��A*L

Loss(�?

Adam/Loss/raw�@

Accuracy/__raw_   >

Accuracyff�=�}g}Y       �e�	�h��A*L

Loss
@

Adam/Loss/rawU�@

Accuracy/__raw_   >

AccuracypX�=�~6ZY       �e�	�<h��A*L

Loss�@

Adam/Loss/rawq�@

Accuracy/__raw_    

Accuracy��=z��tY       �e�	gch��A*L

Lossi@

Adam/Loss/rawӏ@

Accuracy/__raw_    

Accuracy��=@�y�Y       �e�	��h��A*L

Loss��@

Adam/Loss/raw��@

Accuracy/__raw_   >

Accuracy.`<	���Y       �e�	t�h��A*L

Loss^�@

Adam/Loss/raw�@

Accuracy/__raw_    

Accuracy6ͤ=i�i�Y       �e�	��h��A*L

Loss|�@

Adam/Loss/raw��@

Accuracy/__raw_   >

Accuracy�3=��fY       �e�	,
h��A	*L

Loss �@

Adam/Loss/raw.t@

Accuracy/__raw_���>

Accuracy�u�=�{�GY       �e�	�/h��A
*L

Loss'�@

Adam/Loss/raw�v@

Accuracy/__raw_���>

AccuracyU>5�m�Y       �e�	�Wh��A*L

Loss�~@

Adam/Loss/raw7�@

Accuracy/__raw_    

Accuracy,�>Bh�Y       �e�	��h��A*L

LossĀ@

Adam/Loss/raw�@

Accuracy/__raw_   >

Accuracy�>sͣ�Y       �e�	2�h��A*L

LossÍ@

Adam/Loss/raw�w@

Accuracy/__raw_   >

Accuracy�>d���Y       �e�	��h��A*L

Loss��@

Adam/Loss/rawHh@

Accuracy/__raw_���>

Accuracy�>���Y       �e�	�h��A*L

Loss�y@

Adam/Loss/rawLa@

Accuracy/__raw_���>

Accuracy9X>)i��Y       �e�	=h��A*L

Loss|p@

Adam/Loss/rawd�@

Accuracy/__raw_    

Accuracy�>\R�zY       �e�	z�h��A*L

Loss��@

Adam/Loss/raw��@

Accuracy/__raw_   >

Accuracyh^(>P�
Y       �e�	/�h��A*L

Loss�}@

Adam/Loss/rawZc@

Accuracy/__raw_   >

Accuracy��>�A)�Y       �e�	b�h��A*L

Loss�}@

Adam/Loss/rawC@

Accuracy/__raw_���>

Accuracy��>�HbzY       �e�	K" h��A*L

Loss�j@

Adam/Loss/raw99@

Accuracy/__raw_���>

Accuracy�P>�i��Y       �e�	[� h��A*L

Lossk[@

Adam/Loss/rawN�@

Accuracy/__raw_    

Accuracy��y>�.TWY       �e�	�&!h��A*L

Lossv@

Adam/Loss/raw��@

Accuracy/__raw_   >

Accuracy�.>�|@SY       �e�	1z!h��A*L

Loss�}@

Adam/Loss/rawq�@

Accuracy/__raw_    

Accuracy�8!>~�SY       �e�	��!h��A*L

Loss!�@

Adam/Loss/rawLg@

Accuracy/__raw_    

Accuracy���=��GY       �e�	Z+"h��A*L

Loss�@

Adam/Loss/raw�_@

Accuracy/__raw_    

Accuracyڌ�=��8�Y       �e�	yr"h��A*L

Loss�x@

Adam/Loss/raw�S@

Accuracy/__raw_   >

Accuracy1�w=���6Y       �e�	��"h��A*L

Lossqo@

Adam/Loss/rawt]@

Accuracy/__raw_  �>

Accuracy��=1��Y       �e�	?�"h��A*L

Loss�j@

Adam/Loss/raw��@

Accuracy/__raw_    

Accuracy�k�=�C�Y       �e�	M#h��A*L

Loss�{@

Adam/Loss/raws8@

Accuracy/__raw_    

Accuracy�z�=,hY       �e�	�7#h��A*L

Loss�k@

Adam/Loss/raw,@

Accuracy/__raw_    

Accuracy[P�=��0HY       �e�	�a#h��A*L

Loss.]@

Adam/Loss/raw[?@

Accuracy/__raw_  �>

Accuracy��Z=/m�Y       �e�	��#h��A *L

LossxV@

Adam/Loss/raw�R@

Accuracy/__raw_  �>

Accuracy~
�=M{�Y       �e�	�#h��A!*L

Loss�U@

Adam/Loss/raw4�@

Accuracy/__raw_   >

Accuracy�B>b$uY       �e�	�$$h��A"*L

Loss�g@

Adam/Loss/rawTL@

Accuracy/__raw_���>

Accuracy"�>���Y       �e�	�O$h��A#*L

Loss1b@

Adam/Loss/raw1E@

Accuracy/__raw_��*?

AccuracyJ�0>v%�Y       �e�	܀$h��A$*L

LossB\@

Adam/Loss/raw�C@

Accuracy/__raw_  �>

Accuracyt�>��t Y       �e�	�$h��A%*L

LossTW@

Adam/Loss/raw�	@

Accuracy/__raw_  @?

Accuracy*m�>� (wY       �e�	�%h��A&*L

Loss!H@

Adam/Loss/raw�-@

Accuracy/__raw_  �>

Accuracy( �> \2^Y       �e�	�[%h��A'*L

LossC@

Adam/Loss/raw��@

Accuracy/__raw_���>

Accuracy��>��� Y       �e�	�%h��A(*L

LossW@

Adam/Loss/rawڦ@

Accuracy/__raw_���>

Accuracy���>4��Y       �e�	��%h��A)*L

Loss�e@

Adam/Loss/raw�"@

Accuracy/__raw_  �>

Accuracys�>�K��Y       �e�	G!&h��A**L

Loss�Y@

Adam/Loss/rawJ-@

Accuracy/__raw_  �>

Accuracy���>��J}Y       �e�	J&h��A+*L

Loss�Q@

Adam/Loss/raw�4@

Accuracy/__raw_   ?

Accuracyc_�>&��UY       �e�	!u&h��A,*L

Loss�L@

Adam/Loss/rawX�@

Accuracy/__raw_    

Accuracy͓�>�Yn Y       �e�	�&h��A-*L

Lossv*@

Adam/Loss/raw�s@

Accuracy/__raw_    

Accuracy�@�>$w-Y       �e�	O'h��A.*L

Loss@

Adam/Loss/raw�@

Accuracy/__raw_  �>

Accuracy�w>�[yY       �e�	T'h��A/*L

Loss|@

Adam/Loss/raw�P@

Accuracy/__raw_    

Accuracy�x>L�>SY       �e�	�'h��A0*L

Lossr@

Adam/Loss/raw�@

Accuracy/__raw_  �>

Accuracy��P>�2��Y       �e�	�'h��A1*L

Loss�@

Adam/Loss/raw�@

Accuracy/__raw_    

Accuracy�X>��/�Y       �e�	�'h��A2*L

LossT?@

Adam/Loss/raw�@

Accuracy/__raw_    

Accuracy�6>?�ǸY       �e�	�5(h��A3*L

Loss`@

Adam/Loss/rawBa@

Accuracy/__raw_  �>

Accuracy&�>U8��Y       �e�	*�(h��A4*L

Loss�9@

Adam/Loss/raw	@

Accuracy/__raw_  �>

Accuracy�=>6��Y       �e�	�(h��A5*L

Loss�2@

Adam/Loss/raw��@

Accuracy/__raw_  �>

Accuracy��F>�C��Y       �e�	&O)h��A6*L

Loss&@

Adam/Loss/rawZ6@

Accuracy/__raw_���>

Accuracy��a>YhҹY       �e�	ŧ)h��A7*L

Lossp(@

Adam/Loss/raw�+@

Accuracy/__raw_���>

Accuracy�Tr>��8WY       �e�	l	*h��A8*L

Loss�(@

Adam/Loss/rawW�@

Accuracy/__raw_   ?

Accuracyk �>4��Y       �e�	�z*h��A9*L

Loss7@

Adam/Loss/raw&�@

Accuracy/__raw_   >

Accuracy	Ց>�L6IY       �e�	��*h��A:*L

Loss@

Adam/Loss/rawԄ@

Accuracy/__raw_  �>

AccuracyY��>u�S�Y       �e�	�+h��A;*L

Lossf�@

Adam/Loss/raw_N@

Accuracy/__raw_��*?

Accuracy�_�>F�r�Y       �e�	�X+h��A<*L

Loss)�@

Adam/Loss/rawk9@

Accuracy/__raw_��*?

Accuracy봨>}�?pY       �e�	��+h��A=*L

Lossi�@

Adam/Loss/raw\@

Accuracy/__raw_  �>

Accuracy&9�>�S�Y       �e�	u,h��A>*L

Loss!�@

Adam/Loss/rawS�@

Accuracy/__raw_  �>

Accuracy3�>h��IY       �e�	�^,h��A?*L

Loss
�@

Adam/Loss/raw�@

Accuracy/__raw_   >

AccuracyX�>D)�Y       �e�	"�,h��A@*L

Loss@�@

Adam/Loss/raw�@

Accuracy/__raw_���>

Accuracy��>�q�?Y       �e�	��,h��AA*L

Loss��@

Adam/Loss/raw�
@

Accuracy/__raw_���>

AccuracyG'�>E�Y       �e�	�-h��AB*L

Loss~�@

Adam/Loss/raw�R@

Accuracy/__raw_  �>

Accuracy4�>��'�Y       �e�	��-h��AC*L

Loss��@

Adam/Loss/raw0@

Accuracy/__raw_  �>

Accuracy8��>� 
jY       �e�	l�-h��AD*L

Loss��@

Adam/Loss/raw�}
@

Accuracy/__raw_  �>

Accuracy��>;^#�Y       �e�	�>.h��AE*L

LossRr@

Adam/Loss/raw��@

Accuracy/__raw_    

Accuracy�0�>#(%Y       �e�	�.h��AF*L

LossѶ@

Adam/Loss/raw��@

Accuracy/__raw_    

Accuracy��>�i�Y       �e�	+�.h��AG*L

Loss��@

Adam/Loss/rawG�@

Accuracy/__raw_    

Accuracyb {>�):Y       �e�	�.h��AH*L

Loss��@

Adam/Loss/rawd�	@

Accuracy/__raw_  @?

Accuracy��^>�'k�Y       �e�	4/h��AI*L

Loss�@

Adam/Loss/rawtM@

Accuracy/__raw_   >

Accuracyܸ�>�i�jY       �e�	�l/h��AJ*L

Loss��@

Adam/Loss/rawB�
@

Accuracy/__raw_���>

Accuracy1�>KEcY       �e�	��/h��AK*L

Loss��@

Adam/Loss/raw��
@

Accuracy/__raw_���>

AccuracyTA�>�9X�Y       �e�	�0h��AL*L

Loss)k@

Adam/Loss/raw��	@

Accuracy/__raw_   ?

Accuracy�Ռ>�s3Y       �e�	cD0h��AM*L

Loss!D@

Adam/Loss/rawX�
@

Accuracy/__raw_  �>

Accuracyh�>�Ȳ�Y       �e�	C�0h��AN*L

Loss�1@

Adam/Loss/raw�E
@

Accuracy/__raw_   ?

Accuracyx�>0N�'Y       �e�	��0h��AO*L

Loss4@

Adam/Loss/raw5	@

Accuracy/__raw_��*?

AccuracylV�>�1_�Y       �e�	��0h��AP*L

Loss��
@

Adam/Loss/raw�	@

Accuracy/__raw_��*?

Accuracy�!�>I<2�Y       �e�	�1h��AQ*L

Loss3�
@

Adam/Loss/raw
t
@

Accuracy/__raw_  �>

Accuracy���>��s Y       �e�	;1h��AR*L

Lossb�
@

Adam/Loss/raw�*
@

Accuracy/__raw_  �>

Accuracy���>%=�0Y       �e�	:[1h��AS*L

Loss�
@

Adam/Loss/rawvq
@

Accuracy/__raw_   >

Accuracyd�>���Y       �e�	$|1h��AT*L

Lossޞ
@

Adam/Loss/raw�^@

Accuracy/__raw_    

Accuracy�î>��E�Y       �e�	ף1h��AU*L

Loss�
@

Adam/Loss/raw�G@

Accuracy/__raw_    

Accuracy�I�>M���Y       �e�	f�1h��AV*L

Loss�
@

Adam/Loss/raw��@

Accuracy/__raw_  @?

Accuracy2��>t��Y       �e�	�'2h��AW*L

Loss�u
@

Adam/Loss/raw�	@

Accuracy/__raw_   ?

Accuracy�ͥ>�G�Y       �e�	�W2h��AX*L

Loss�b
@

Adam/Loss/rawZ_	@

Accuracy/__raw_   ?

Accuracy�Ү>[�-+Y       �e�	��2h��AY*L

Loss I
@

Adam/Loss/raw�d	@

Accuracy/__raw_���>

Accuracy��>��;Y       �e�	&�2h��AZ*L

Loss02
@

Adam/Loss/raw�J	@

Accuracy/__raw_��*?

Accuracy���>�V�DY       �e�	i�2h��A[*L

Loss
@

Adam/Loss/rawj#@

Accuracy/__raw_   ?

Accuracy��>�W#gY       �e�	�3h��A\*L

Loss��	@

Adam/Loss/raw	@

Accuracy/__raw_  �>

Accuracy ��>a8CY       �e�	&3h��A]*L

Loss!�	@

Adam/Loss/raw�$@

Accuracy/__raw_  �>

Accuracy ��>�D[�Y       �e�	�E3h��A^*L

Loss�	@

Adam/Loss/raw8 @

Accuracy/__raw_��*?

Accuracy���>�d��Y       �e�	�c3h��A_*L

Loss�i	@

Adam/Loss/raw��@

Accuracy/__raw_��*?

Accuracyw#�>49}�Y       �e�	P�3h��A`*L

Loss�C	@

Adam/Loss/rawD&@

Accuracy/__raw_  �>

AccuracyB�>Q]�Y       �e�	��3h��Aa*L

Loss'	@

Adam/Loss/rawsa	@

Accuracy/__raw_   ?

Accuracy�!�>~kuY       �e�	E4h��Ab*L

Loss�,	@

Adam/Loss/rawI�@

Accuracy/__raw_   ?

Accuracy��>*HY       �e�	j64h��Ac*L

Loss��@

Adam/Loss/raw��	@

Accuracy/__raw_���>

Accuracy�X�>���Y       �e�	PW4h��Ad*L

Loss~ 	@

Adam/Loss/raw1[	@

Accuracy/__raw_���>

Accuracy<�>��F�Y       �e�	Gw4h��Ae*L

Loss�		@

Adam/Loss/raw�u@

Accuracy/__raw_   ?

Accuracyp�>Z��Y       �e�	�4h��Af*L

Loss��@

Adam/Loss/raw@

Accuracy/__raw_  �>

Accuracy���>��eY       �e�	��4h��Ag*L

Loss��@

Adam/Loss/raw0@

Accuracy/__raw_  �>

Accuracyb4�>)�C�Y       �e�	,�4h��Ah*L

Loss��@

Adam/Loss/raw�@

Accuracy/__raw_��*?

Accuracy�{�>�sd�Y       �e�	�65h��Ai*L

Loss�e@

Adam/Loss/raw�>@

Accuracy/__raw_��*?

Accuracy��>m��Y       �e�	�d5h��Aj*L

Loss�.@

Adam/Loss/raw��@

Accuracy/__raw_   ?

Accuracy�>۔V�Y       �e�	~�5h��Ak*L

Losse�@

Adam/Loss/raw�~@

Accuracy/__raw_   ?

Accuracy�~�>�ux(Y       �e�	��5h��Al*L

Loss��@

Adam/Loss/raw�9@

Accuracy/__raw_  �>

Accuracy=��><��*Y       �e�	)�5h��Am*L

Loss�)@

Adam/Loss/raw[#@

Accuracy/__raw_���>

AccuracyP.�>�� �Y       �e�	E6h��An*L

Loss��@

Adam/Loss/raw!�@

Accuracy/__raw_���>

Accuracy��>�\J-Y       �e�	N.6h��Ao*L

Loss+X@

Adam/Loss/raw�@

Accuracy/__raw_  @?

AccuracyB~�>�HMY       �e�	aP6h��Ap*L

Loss�@

Adam/Loss/raw�x	@

Accuracy/__raw_  �>

Accuracy��>��7�Y       �e�	;r6h��Aq*L

Loss�g@

Adam/Loss/raw�P@

Accuracy/__raw_   ?

Accuracy���>��ZY       �e�	��6h��Ar*L

Lossc2@

Adam/Loss/raw�@

Accuracy/__raw_    

Accuracy]�>����Y       �e�	��6h��As*L

LossZ_@

Adam/Loss/raw��@

Accuracy/__raw_    

Accuracy���>���YY       �e�	7h��At*L

Loss��@

Adam/Loss/rawr�@

Accuracy/__raw_  @?

Accuracy���>���Y       �e�	�67h��Au*L

LossS@

Adam/Loss/raw=H@

Accuracy/__raw_   >

Accuracy���>�Y       �e�	:V7h��Av*L

Loss��@

Adam/Loss/raw
�@

Accuracy/__raw_  �>

Accuracy�a�>I�$Y       �e�	�t7h��Aw*L

LossԌ@

Adam/Loss/raw���?

Accuracy/__raw_  �?

AccuracyФ�>�7Y       �e�	�7h��Ax*L

Loss-p@

Adam/Loss/raw���?

Accuracy/__raw_  �?

Accuracy���>[6�cY       �e�	V�7h��Ay*L

Loss�`@

Adam/Loss/raw}�@

Accuracy/__raw_   ?

Accuracy��>[W�Y       �e�	9�7h��Az*L

Lossz9@

Adam/Loss/rawb@

Accuracy/__raw_  �>

Accuracya��>/2�RY       �e�	��7h��A{*L

Loss#W@

Adam/Loss/raw*�@

Accuracy/__raw_  �>

AccuracyW��>{ίY       �e�	,8h��A|*L

Loss�x@

Adam/Loss/raw�[�?

Accuracy/__raw_���>

Accuracy���>}�~�Y       �e�	a8h��A}*L

Loss��@

Adam/Loss/raw�(�?

Accuracy/__raw_���>

Accuracy���>^QY       �e�	�8h��A~*L

Loss�@

Adam/Loss/raw�Q@

Accuracy/__raw_  �>

Accuracy7q�>T�	6Y       �e�		�8h��A*L

Lossg
@

Adam/Loss/rawV��?

Accuracy/__raw_   ?

Accuracy��>>��\Z       o��	��8h��A�*L

Lossa�@

Adam/Loss/raw*�?

Accuracy/__raw_  �>

Accuracyɉ�>�]�Z       o��	'9h��A�*L

Loss�P@

Adam/Loss/raw�@

Accuracy/__raw_���>

Accuracy�H�>���Z       o��	�F9h��A�*L

Loss�`@

Adam/Loss/raw�~@

Accuracy/__raw_���>

Accuracy�8�>�i4EZ       o��	o9h��A�*L

Loss�c@

Adam/Loss/rawN��?

Accuracy/__raw_  �>

Accuracy)��>e��Z       o��	��9h��A�*L

Loss�� @

Adam/Loss/raw]��?

Accuracy/__raw_   ?

Accuracyi�>n\�]Z       o��	6�9h��A�*L

Loss}� @

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy���>|Y�Z       o��	-�9h��A�*L

Loss��?

Adam/Loss/raw � @

Accuracy/__raw_���>

Accuracy>1�>��BZ       o��	):h��A�*L

Loss���?

Adam/Loss/rawWQ @

Accuracy/__raw_���>

Accuracyɣ�>�.�,Z       o��	8K:h��A�*L

Loss���?

Adam/Loss/raw��@

Accuracy/__raw_   >

AccuracyFq�>�Ʃ�Z       o��	r:h��A�*L

Loss�� @

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy��>���eZ       o��	�:h��A�*L

LossV��?

Adam/Loss/raw.@

Accuracy/__raw_  �>

Accuracy�N�>V$�Z       o��	\�:h��A�*L

Loss���?

Adam/Loss/raw,��?

Accuracy/__raw_    

Accuracyܓ�>b6=Z       o��	2�:h��A�*L

Loss�#�?

Adam/Loss/raws��?

Accuracy/__raw_    

AccuracyF��>ޯ��Z       o��	�;h��A�*L

LossL�?

Adam/Loss/rawlX�?

Accuracy/__raw_   ?

Accuracy٠>,�H�Z       o��	s*;h��A�*L

Loss��?

Adam/Loss/raw��@

Accuracy/__raw_  �>

AccuracyXð>���Z       o��	�e;h��A�*L

Loss-��?

Adam/Loss/raw@�@

Accuracy/__raw_  �>

Accuracy�>S[�Z       o��	�;h��A�*L

Loss�P�?

Adam/Loss/raw���?

Accuracy/__raw_���>

Accuracy��>�7�Z       o��	1�;h��A�*L

Loss���?

Adam/Loss/raw�;�?

Accuracy/__raw_���>

Accuracy�Ч>;���Z       o��	k�;h��A�*L

Loss���?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy��>���:Z       o��		<h��A�*L

Loss�U�?

Adam/Loss/raw �?

Accuracy/__raw_   ?

Accuracyw}�>�9$Z       o��	�4<h��A�*L

LossK�?

Adam/Loss/rawD�?

Accuracy/__raw_    

Accuracy�
�>C��#Z       o��	 V<h��A�*L

Loss���?

Adam/Loss/raw���?

Accuracy/__raw_  �?

Accuracy#�>��F,Z       o��	v<h��A�*L

LossM��?

Adam/Loss/rawk@�?

Accuracy/__raw_  �?

Accuracy*9�>���Z       o��	�<h��A�*L

Loss���?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy��>d��Z       o��	��<h��A�*L

Loss���?

Adam/Loss/rawX�?

Accuracy/__raw_  �>

Accuracy��>mZ[�Z       o��	E�<h��A�*L

LossC��?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy@��>_���Z       o��	w�<h��A�*L

Loss��?

Adam/Loss/raw���?

Accuracy/__raw_��*?

AccuracymH�>�qNZ       o��	�=h��A�*L

Loss�q�?

Adam/Loss/raw Z�?

Accuracy/__raw_��*?

Accuracy��>��j�Z       o��	�X=h��A�*L

Loss
	�?

Adam/Loss/rawPF�?

Accuracy/__raw_  �>

Accuracyf��>�'�Z       o��	ɐ=h��A�*L

Loss���?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy\W�>|	J�Z       o��	$�=h��A�*L

Loss���?

Adam/Loss/raw���?

Accuracy/__raw_  `?

Accuracyl�>�rZ       o��	��=h��A�*L

LossX��?

Adam/Loss/raw׳ @

Accuracy/__raw_    

Accuracy��>�UOZZ       o��	��=h��A�*L

Loss-9�?

Adam/Loss/raw�� @

Accuracy/__raw_    

Accuracy���>���Z       o��	�>h��A�*L

Lossd��?

Adam/Loss/raw�?�?

Accuracy/__raw_  �>

Accuracy�N�>�l�vZ       o��	j4>h��A�*L

Loss׫�?

Adam/Loss/rawI�@

Accuracy/__raw_   >

Accuracy���>�ߛ�Z       o��	SZ>h��A�*L

Loss�n�?

Adam/Loss/rawwF�?

Accuracy/__raw_  �>

AccuracyF��>@�Z       o��	W�>h��A�*L

Loss�j�?

Adam/Loss/raw�|�?

Accuracy/__raw_��*?

Accuracy�>�Z       o��	��>h��A�*L

Lossw��?

Adam/Loss/rawg�?

Accuracy/__raw_��*?

Accuracy|Q�>t�Z       o��	E�>h��A�*L

Loss:1�?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy��>g-��Z       o��	!?h��A�*L

Loss��?

Adam/Loss/raw<��?

Accuracy/__raw_  �>

Accuracy*^�>P�^Z       o��	Li?h��A�*L

Loss=��?

Adam/Loss/rawH��?

Accuracy/__raw_  �>

Accuracy��>�m��Z       o��	��?h��A�*L

Loss���?

Adam/Loss/rawM��?

Accuracy/__raw_���>

Accuracy&��>P�W�Z       o��	̳?h��A�*L

Loss���?

Adam/Loss/raw���?

Accuracy/__raw_���>

Accuracy�
�>K]0�Z       o��	��?h��A�*L

Loss2��?

Adam/Loss/raw��?

Accuracy/__raw_    

Accuracy�;>�cm�Z       o��	#�?h��A�*L

Loss!��?

Adam/Loss/raw�.�?

Accuracy/__raw_  `?

AccuracyN��>��Z~Z       o��	�@h��A�*L

Loss��?

Adam/Loss/rawC$�?

Accuracy/__raw_  �>

Accuracy�Y�>����Z       o��	"2@h��A�*L

Loss2;�?

Adam/Loss/raw�.�?

Accuracy/__raw_���>

Accuracya7�>\0�@Z       o��	�q@h��A�*L

Loss,m�?

Adam/Loss/raw��?

Accuracy/__raw_���>

Accuracy��>�d}�Z       o��	��@h��A�*L

LossY��?

Adam/Loss/raw#��?

Accuracy/__raw_   ?

Accuracy4�>�P#.Z       o��	��@h��A�*L

Loss�g�?

Adam/Loss/rawƽ�?

Accuracy/__raw_  �>

Accuracy���>)V�\Z       o��	� Ah��A�*L

Loss��?

Adam/Loss/rawxm�?

Accuracy/__raw_   ?

Accuracye��>�>��Z       o��	h'Ah��A�*L

Loss�S�?

Adam/Loss/raw+��?

Accuracy/__raw_���>

Accuracy���>����Z       o��	4FAh��A�*L

Loss���?

Adam/Loss/raw��?

Accuracy/__raw_���>

Accuracyr��>�ڟ)Z       o��	�eAh��A�*L

Loss�P�?

Adam/Loss/raw(��?

Accuracy/__raw_  �>

Accuracy+
�>)?�bZ       o��	m�Ah��A�*L

Loss���?

Adam/Loss/raw��?

Accuracy/__raw_  �>

AccuracyZ��>��cZ       o��	(�Ah��A�*L

Loss�}�?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy��>�r�5Z       o��	��Ah��A�*L

Lossa�?

Adam/Loss/raw��@

Accuracy/__raw_    

Accuracy�t�>���=Z       o��	@Bh��A�*L

Lossj�?

Adam/Loss/raw3�@

Accuracy/__raw_    

Accuracy@��>�.�`Z       o��	�7Bh��A�*L

Loss��?

Adam/Loss/rawKѡ?

Accuracy/__raw_   ?

Accuracy9��>�c�sZ       o��	"�Bh��A�*L

Loss���?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracygb�>F�^HZ       o��	��Bh��A�*L

Loss\��?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy�>�>BpL:Z       o��	&�Bh��A�*L

Loss<��?

Adam/Loss/raw8	�?

Accuracy/__raw_���>

Accuracyw��>[4N�Z       o��	�Ch��A�*L

Loss"��?

Adam/Loss/raw�Z�?

Accuracy/__raw_���>

Accuracy�o�>�·Z       o��	@Ch��A�*L

Loss�a�?

Adam/Loss/raw��?

Accuracy/__raw_  �>

AccuracyKB�>���Z       o��	�_Ch��A�*L

Loss��?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy"�>DkyxZ       o��	�Ch��A�*L

Loss4 �?

Adam/Loss/raw���?

Accuracy/__raw_   >

Accuracy��>rU[Z       o��	n�Ch��A�*L

LossV��?

Adam/Loss/raw��?

Accuracy/__raw_    

Accuracy��>�-"Z       o��	��Ch��A�*L

Lossa�?

Adam/Loss/raw���?

Accuracy/__raw_    

Accuracyd��>�	�'Z       o��	~�Ch��A�*L

Loss���?

Adam/Loss/raw�4�?

Accuracy/__raw_   ?

Accuracy�؄>��Z       o��	�Dh��A�*L

Loss�@�?

Adam/Loss/raw0��?

Accuracy/__raw_   ?

Accuracyʏ�>ow;Z       o��	5$Dh��A�*L

Loss|�?

Adam/Loss/raw�S�?

Accuracy/__raw_  �>

Accuracyi�>�i�Z       o��	�FDh��A�*L

Loss��?

Adam/Loss/raw�A�?

Accuracy/__raw_  �?

AccuracyE�>�̏[Z       o��	iDh��A�*L

Loss2�?

Adam/Loss/raw3��?

Accuracy/__raw_  �?

AccuracyX��>�=�Z       o��	�Dh��A�*L

Loss��?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy��>��NZ       o��	2�Dh��A�*L

Lossf��?

Adam/Loss/raw	*�?

Accuracy/__raw_  �>

Accuracy���>��5�Z       o��	^�Dh��A�*L

Lossv��?

Adam/Loss/rawڦ�?

Accuracy/__raw_   >

Accuracye`�>�\�-Z       o��	�Eh��A�*L

Loss�g�?

Adam/Loss/raw�{�?

Accuracy/__raw_��*?

Accuracy���>���qZ       o��	�=Eh��A�*L

LossΜ�?

Adam/Loss/rawky�?

Accuracy/__raw_��*?

Accuracy��>W�|Z       o��	,`Eh��A�*L

Lossw��?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy!�>��Z       o��	,�Eh��A�*L

Loss���?

Adam/Loss/raw��L@

Accuracy/__raw_    

Accuracy���>��M�Z       o��	<�Eh��A�*L

Loss��?

Adam/Loss/raww�?

Accuracy/__raw_   ?

Accuracys��>{�l�Z       o��	�4Fh��A�*L

Loss.E�?

Adam/Loss/raw�?

Accuracy/__raw_    

Accuracy��>��EZ       o��	?WFh��A�*L

Loss���?

Adam/Loss/raw(f�?

Accuracy/__raw_    

Accuracy��>��q�Z       o��	�wFh��A�*L

Lossk�?

Adam/Loss/raw6Y�?

Accuracy/__raw_   ?

Accuracy��>����Z       o��	�Fh��A�*L

LossKi�?

Adam/Loss/raw���?

Accuracy/__raw_  �>

AccuracyM��>��٤Z       o��	ݶFh��A�*L

Loss���?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracyx
�>h�)OZ       o��	��Fh��A�*L

Loss@��?

Adam/Loss/raw g�?

Accuracy/__raw_���>

Accuracy�<�>}�Z       o��	s�Fh��A�*L

Loss=��?

Adam/Loss/raw0ت?

Accuracy/__raw_���>

Accuracym�>�NZ       o��	Gh��A�*L

Loss�w�?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy@�>}Kw�Z       o��	�>Gh��A�*L

LossA��?

Adam/Loss/raw��8@

Accuracy/__raw_    

Accuracym��>3��Z       o��	�^Gh��A�*L

Lossp�?

Adam/Loss/rawRE�?

Accuracy/__raw_  �>

AccuracyHʖ>��oZ       o��	��Gh��A�*L

Loss���?

Adam/Loss/raw_��?

Accuracy/__raw_���>

AccuracyA�>6Υ�Z       o��	ӢGh��A�*L

Loss^�?

Adam/Loss/raw@ѻ?

Accuracy/__raw_���>

Accuracy�|�><��JZ       o��	��Gh��A�*L

Loss���?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy��>��1�Z       o��	��Gh��A�*L

Loss!��?

Adam/Loss/raw�p�?

Accuracy/__raw_  �>

AccuracyqP�>F�+gZ       o��	3Hh��A�*L

Lossz �?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy�a�>~u�Z       o��	�HHh��A�*L

Loss{��?

Adam/Loss/rawL�?

Accuracy/__raw_��*?

Accuracy�$�>��m�Z       o��	\rHh��A�*L

Loss":�?

Adam/Loss/raw���?

Accuracy/__raw_��*?

Accuracy;��>ÎƤZ       o��	x�Hh��A�*L

Loss�(�?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy�=�>K��Z       o��	��Hh��A�*L

Loss��?

Adam/Loss/rawA��?

Accuracy/__raw_  �>

Accuracy���>2�G�Z       o��	:#Ih��A�*L

Loss�3�?

Adam/Loss/raw�~�?

Accuracy/__raw_  �>

Accuracy��>���`Z       o��	�SIh��A�*L

Loss��?

Adam/Loss/raw8'�?

Accuracy/__raw_���>

Accuracygn�>��ϖZ       o��	�}Ih��A�*L

Loss�d�?

Adam/Loss/raw��?

Accuracy/__raw_���>

Accuracy;��>"�!�Z       o��	ݛIh��A�*L

Loss��?

Adam/Loss/raww�?

Accuracy/__raw_   ?

Accuracy�X�>כi�Z       o��	U�Ih��A�*L

Loss?J�?

Adam/Loss/rawyB�?

Accuracy/__raw_  �>

Accuracy��>���VZ       o��	��Ih��A�*L

Loss�/�?

Adam/Loss/raw4;�?

Accuracy/__raw_  �>

Accuracy���>�'��Z       o��	�Ih��A�*L

Loss���?

Adam/Loss/raw}��?

Accuracy/__raw_���>

AccuracyǞ�>GzżZ       o��	DJh��A�*L

Lossd+�?

Adam/Loss/raw�2�?

Accuracy/__raw_���>

Accuracy�l�>����Z       o��	-<Jh��A�*L

Loss,�?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy���>	�x*Z       o��	_\Jh��A�*L

Loss���?

Adam/Loss/raw�?

Accuracy/__raw_   ?

Accuracy�>ʑ�cZ       o��	�|Jh��A�*L

Loss�E�?

Adam/Loss/rawvs�?

Accuracy/__raw_  �>

Accuracy|�>"_EZ       o��	��Jh��A�*L

Loss���?

Adam/Loss/rawc��?

Accuracy/__raw_��*?

Accuracy��>ٗ��Z       o��	V�Jh��A�*L

Loss���?

Adam/Loss/raw�ߛ?

Accuracy/__raw_��*?

Accuracy5I�>rE �Z       o��	,�Jh��A�*L

Loss�'�?

Adam/Loss/rawn�?

Accuracy/__raw_  @?

Accuracyd�>�i�~Z       o��	�Kh��A�*L

Loss���?

Adam/Loss/raw�?

Accuracy/__raw_  �>

Accuracy8��>mR��Z       o��	�<Kh��A�*L

Loss�r�?

Adam/Loss/raw�7�?

Accuracy/__raw_  @?

Accuracy���>l�yZ       o��	�sKh��A�*L

Loss�l�?

Adam/Loss/raw\��?

Accuracy/__raw_���>

Accuracy�o�>^_��Z       o��	ÞKh��A�*L

LossD�?

Adam/Loss/raw	�?

Accuracy/__raw_���>

Accuracy�u�>�>�Z       o��	�Kh��A�*L

Loss���?

Adam/Loss/raw3��?

Accuracy/__raw_   ?

Accuracy�G�>g�`�Z       o��	� Lh��A�*L

Loss%�?

Adam/Loss/raw0�?

Accuracy/__raw_  �>

Accuracy9Z�>�%��Z       o��	c(Lh��A�*L

Loss�
�?

Adam/Loss/rawo�?

Accuracy/__raw_  @?

Accuracy�j�>���Z       o��	QKLh��A�*L

Loss���?

Adam/Loss/raw�V?

Accuracy/__raw_  �?

Accuracy�,�>�h�Z       o��	�sLh��A�*L

LossW��?

Adam/Loss/rawMT?

Accuracy/__raw_  �?

Accuracy7�?̫KZ       o��	9�Lh��A�*L

Loss_��?

Adam/Loss/raw�0�?

Accuracy/__raw_   >

Accuracy��?i�6�Z       o��	N�Lh��A�*L

Loss~�?

Adam/Loss/rawε�?

Accuracy/__raw_  �>

Accuracy�??�y�Z       o��	��Lh��A�*L

Loss ޶?

Adam/Loss/raw�g�?

Accuracy/__raw_   ?

Accuracy�R?0���Z       o��	�Lh��A�*L

Loss|��?

Adam/Loss/raw��?

Accuracy/__raw_���>

Accuracy��?O�ܰZ       o��	Mh��A�*L

Lossd��?

Adam/Loss/raw���?

Accuracy/__raw_���>

Accuracy��>�D�iZ       o��	�bMh��A�*L

Loss�?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy��>�z�Z       o��	,�Mh��A�*L

Loss��?

Adam/Loss/rawV��?

Accuracy/__raw_   ?

Accuracy��>�;�Z       o��	��Mh��A�*L

Loss���?

Adam/Loss/raw0��?

Accuracy/__raw_   ?

Accuracy���>�e�Z       o��	L�Mh��A�*L

Loss'i�?

Adam/Loss/raw���?

Accuracy/__raw_���>

Accuracy�>I�WiZ       o��	�Nh��A�*L

Loss�W�?

Adam/Loss/raw�?

Accuracy/__raw_���>

Accuracy���>p��pZ       o��	�%Nh��A�*L

Lossg��?

Adam/Loss/raw<o�?

Accuracy/__raw_  �>

Accuracy6B�>l<zZ       o��	JENh��A�*L

Loss��?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy�;�>�Gj�Z       o��	~pNh��A�*L

Loss�ŵ?

Adam/Loss/raw��?

Accuracy/__raw_   >

Accuracyn��>�o4�Z       o��	צNh��A�*L

Loss�ܸ?

Adam/Loss/raw�?

Accuracy/__raw_��*?

Accuracy0B�>[�MZ       o��	_�Nh��A�*L

Loss甾?

Adam/Loss/raw�j�?

Accuracy/__raw_��*?

AccuracyNw�>�Q bZ       o��	��Nh��A�*L

LossJ��?

Adam/Loss/rawFm�?

Accuracy/__raw_   ?

Accuracy�s�>k��oZ       o��	�4Oh��A�*L

Loss�p�?

Adam/Loss/rawrȕ?

Accuracy/__raw_   ?

Accuracy���>5�Z       o��	��Oh��A�*L

LossU�?

Adam/Loss/rawuH�?

Accuracy/__raw_  �>

Accuracy��>����Z       o��	t�Oh��A�*L

Loss��?

Adam/Loss/raws��?

Accuracy/__raw_���>

Accuracy�R�>���lZ       o��	��Oh��A�*L

Loss��?

Adam/Loss/raw�\�?

Accuracy/__raw_���>

Accuracy��>^���Z       o��	��Oh��A�*L

Loss�h�?

Adam/Loss/rawr��?

Accuracy/__raw_   ?

AccuracyNk�>B�ҼZ       o��	LPh��A�*L

Loss]�?

Adam/Loss/raw]b�?

Accuracy/__raw_  @?

Accuracy���>+�J�Z       o��	a6Ph��A�*L

Loss�ݿ?

Adam/Loss/raw�k�?

Accuracy/__raw_  �>

Accuracy��>��Z       o��	YPh��A�*L

Loss�8�?

Adam/Loss/rawyn�?

Accuracy/__raw_��*?

Accuracy��>˛N�Z       o��	g{Ph��A�*L

Loss>�?

Adam/Loss/raw%��?

Accuracy/__raw_��*?

Accuracy�s�>�lpZ       o��	�Ph��A�*L

Lossu��?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy���>�m��Z       o��	��Ph��A�*L

Loss*a�?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy���>��Y)Z       o��	�Ph��A�*L

Loss��?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy�K ?&F��Z       o��	�,Qh��A�*L

Lossb;�?

Adam/Loss/raw|�?

Accuracy/__raw_���>

Accuracy���>�\Z       o��	�bQh��A�*L

Losss[�?

Adam/Loss/raw���?

Accuracy/__raw_���>

Accuracy!m�>���Z       o��	�Qh��A�*L

Loss�1�?

Adam/Loss/rawD~?

Accuracy/__raw_   ?

Accuracy���>ܨ	QZ       o��	��Qh��A�*L

Lossԭ�?

Adam/Loss/raw借?

Accuracy/__raw_   ?

Accuracy���>�t��Z       o��	K@Rh��A�*L

LossV)�?

Adam/Loss/raw���?

Accuracy/__raw_   >

Accuracy���>4-UZ       o��	��Rh��A�*L

Loss���?

Adam/Loss/raw��?

Accuracy/__raw_  �?

AccuracyN��>=$�1Z       o��	.Sh��A�*L

Loss�:�?

Adam/Loss/rawo��?

Accuracy/__raw_  �?

Accuracy�� ?��� Z       o��	FSh��A�*L

Loss��?

Adam/Loss/rawq�?

Accuracy/__raw_  �>

AccuracyyA?A�wZ       o��	1�Sh��A�*L

Losshܹ?

Adam/Loss/raw:��?

Accuracy/__raw_  @?

Accuracy��?u  _Z       o��	�Th��A�*L

Loss��?

Adam/Loss/raw�Ù?

Accuracy/__raw_  @?

Accuracy�A?+�(Z       o��	�Th��A�*L

Loss��?

Adam/Loss/raw3�?

Accuracy/__raw_��*?

Accuracy@;?9���Z       o��	��Th��A�*L

Loss2��?

Adam/Loss/raw��?

Accuracy/__raw_��*?

Accuracy1�?b��Z       o��	{0Uh��A�*L

Loss��?

Adam/Loss/raw�z�?

Accuracy/__raw_  �>

Accuracy$�?7���Z       o��	G�Uh��A�*L

Loss�X�?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy�?T&�EZ       o��	��Uh��A�*L

Loss8v�?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracyv�	?�j
cZ       o��	�$Vh��A�*L

Loss�?

Adam/Loss/rawMa�?

Accuracy/__raw_���>

Accuracy��?Z       o��	�_Vh��A�*L

Loss	W�?

Adam/Loss/rawK��?

Accuracy/__raw_���>

Accuracy���>�}�=Z       o��	�Vh��A�*L

Loss��?

Adam/Loss/rawڋ�?

Accuracy/__raw_   ?

Accuracy���>Nr~�Z       o��	��Vh��A�*L

Loss�\�?

Adam/Loss/raw��?

Accuracy/__raw_  @?

Accuracy��>��B�Z       o��	�MWh��A�*L

Lossa7�?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy�{?��УZ       o��	�zWh��A�*L

Loss$��?

Adam/Loss/raw��{?

Accuracy/__raw_  �?

Accuracyڈ?�t\Z       o��	@�Wh��A�*L

Loss[߱?

Adam/Loss/raw��y?

Accuracy/__raw_  �?

Accuracy��?�#:-Z       o��	g�Wh��A�*L

Loss2��?

Adam/Loss/rawҏ�?

Accuracy/__raw_  �>

Accuracy6�?�嬡Z       o��	�Xh��A�*L

Lossu��?

Adam/Loss/raw�B@

Accuracy/__raw_   >

Accuracy0�?J�uZ       o��	cXh��A�*L

LossoB�?

Adam/Loss/rawd̛?

Accuracy/__raw_  �>

AccuracyxP?TZ       o��	I�Xh��A�*L

Loss;P�?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracyb?$�nyZ       o��	��Xh��A�*L

Loss���?

Adam/Loss/raw��}?

Accuracy/__raw_  �?

Accuracy9�?D�%�Z       o��	�Yh��A�*L

LossL&�?

Adam/Loss/raw�޶?

Accuracy/__raw_   ?

Accuracyg?>��Z       o��	�CYh��A�*L

Loss���?

Adam/Loss/rawtѻ?

Accuracy/__raw_  �>

Accuracy�Z?_gcQZ       o��	�}Yh��A�*L

Loss�Y�?

Adam/Loss/raw4w�?

Accuracy/__raw_  �>

Accuracy��?ћ�Z       o��	K�Yh��A�*L

Loss>C�?

Adam/Loss/raw�*�?

Accuracy/__raw_��*?

Accuracydr
?�(Z       o��	
Zh��A�*L

Loss��?

Adam/Loss/raw���?

Accuracy/__raw_��*?

Accuracy8�?	��Z       o��		gZh��A�*L

Loss�ԯ?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy��?mx��Z       o��	&�Zh��A�*L

Lossҍ�?

Adam/Loss/rawl�j?

Accuracy/__raw_  @?

Accuracy5�?�W2@Z       o��	?�Zh��A�*L

Loss�W�?

Adam/Loss/raw?�?

Accuracy/__raw_   ?

Accuracy��?�Q�Z       o��	��Zh��A�*L

Lossq�?

Adam/Loss/raw�f�?

Accuracy/__raw_���>

Accuracy??���Z       o��	� [h��A�*L

LossI��?

Adam/Loss/rawB�?

Accuracy/__raw_���>

Accuracy�t	?8 هZ       o��	�g[h��A�*L

Lossݲ�?

Adam/Loss/raw��k?

Accuracy/__raw_   ?

Accuracy5>?�u��Z       o��	��[h��A�*L

Loss��?

Adam/Loss/raw�?

Accuracy/__raw_  �>

Accuracy�?����Z       o��	U�[h��A�*L

Loss��?

Adam/Loss/rawXQ�?

Accuracy/__raw_   ?

Accuracy�?�S�Z       o��	�$\h��A�*L

Loss���?

Adam/Loss/raw�Q�?

Accuracy/__raw_��*?

AccuracyQ?ąb[Z       o��	�K\h��A�*L

Lossp�?

Adam/Loss/raw�7�?

Accuracy/__raw_��*?

Accuracyګ	?ȀMZ       o��	!t\h��A�*L

Loss�?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy��?�/�eZ       o��	4�\h��A�*L

Loss5�?

Adam/Loss/raw�ˡ?

Accuracy/__raw_  �>

AccuracyHy?�3�Z       o��	n�\h��A�*L

LossNw�?

Adam/Loss/rawO!�?

Accuracy/__raw_   ?

Accuracy'm?`{B�Z       o��	i�\h��A�*L

Loss�;�?

Adam/Loss/rawc��?

Accuracy/__raw_���>

Accuracy
/?}��/Z       o��	(]h��A�*L

LossdK�?

Adam/Loss/rawy�?

Accuracy/__raw_���>

Accuracy�2?VfYZ       o��	!q]h��A�*L

LossÜ�?

Adam/Loss/rawz�?

Accuracy/__raw_   ?

Accuracy�l�>} ��Z       o��	�]h��A�*L

Lossoñ?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy���>�{ =Z       o��	,�]h��A�*L

LossF��?

Adam/Loss/rawp��?

Accuracy/__raw_  �>

Accuracy���>�3�PZ       o��	��]h��A�*L

Loss}G�?

Adam/Loss/rawK�?

Accuracy/__raw_���>

Accuracy��>�y;6Z       o��	�^h��A�*L

Loss��?

Adam/Loss/rawM��?

Accuracy/__raw_���>

AccuracyD��>�H4�Z       o��	�F^h��A�*L

Lossj
�?

Adam/Loss/raw@ֶ?

Accuracy/__raw_  �>

Accuracy5<�>�-�Z       o��	*�^h��A�*L

Loss�k�?

Adam/Loss/raw>�?

Accuracy/__raw_  @?

Accuracy0��>ů�Z       o��	��^h��A�*L

Lossrͨ?

Adam/Loss/raw&�h?

Accuracy/__raw_  `?

Accuracy���>A&�`Z       o��	_h��A�*L

Loss��?

Adam/Loss/raw���?

Accuracy/__raw_    

Accuracy�H?�0w>Z       o��	�X_h��A�*L

Loss�e�?

Adam/Loss/raw�}�?

Accuracy/__raw_    

Accuracy���>`���Z       o��	܀_h��A�*L

Loss9��?

Adam/Loss/rawR`�?

Accuracy/__raw_  �>

Accuracy�>X�kZ       o��	W�_h��A�*L

Loss"�?

Adam/Loss/raw�޵?

Accuracy/__raw_   ?

Accuracy���>�`�Z       o��	-�_h��A�*L

Loss7ȭ?

Adam/Loss/raw�I�?

Accuracy/__raw_   ?

Accuracy��> ��Z       o��	:`h��A�*L

LossY�?

Adam/Loss/raw}��?

Accuracy/__raw_���>

AccuracyE�>F���Z       o��	4J`h��A�*L

Loss�/�?

Adam/Loss/raw��?

Accuracy/__raw_���>

Accuracy�h�>3مgZ       o��	X�`h��A�*L

Loss�?

Adam/Loss/raw� �?

Accuracy/__raw_  @?

Accuracy	�>�v��Z       o��	��`h��A�*L

Loss�|�?

Adam/Loss/rawXt�?

Accuracy/__raw_  �>

Accuracy�n�><��Z       o��	�ah��A�*L

LossD��?

Adam/Loss/raw�?

Accuracy/__raw_  �>

Accuracy}�>a�s�Z       o��	�,ah��A�*L

LossWӫ?

Adam/Loss/rawql�?

Accuracy/__raw_��*?

Accuracy���>�~��Z       o��	�Wah��A�*L

Loss��?

Adam/Loss/rawue�?

Accuracy/__raw_��*?

Accuracy?��>n�*YZ       o��	�ah��A�*L

Loss��?

Adam/Loss/raw��v?

Accuracy/__raw_   ?

Accuracy[��>�%��Z       o��	��ah��A�*L

LossKE�?

Adam/Loss/rawo�?

Accuracy/__raw_   ?

Accuracy�>tR��Z       o��	Pbh��A�*L

LossO��?

Adam/Loss/raw'�?

Accuracy/__raw_  �>

Accuracy��>5���Z       o��	�Fbh��A�*L

Loss��?

Adam/Loss/rawH�u?

Accuracy/__raw_  �?

Accuracy5��>����Z       o��	ڎbh��A�*L

Loss�e�?

Adam/Loss/raw��t?

Accuracy/__raw_  �?

Accuracy��?��i�Z       o��	ȴbh��A�*L

Loss�M�?

Adam/Loss/rawQ��?

Accuracy/__raw_  �>

Accuracy�3?�[NZ       o��	��bh��A�*L

LossN��?

Adam/Loss/rawiԂ?

Accuracy/__raw_  @?

Accuracy�a?��WZ       o��	�ch��A�*L

Lossꘝ?

Adam/Loss/raw�{�?

Accuracy/__raw_   ?

Accuracy��?սZ       o��	�1ch��A�*L

Loss���?

Adam/Loss/raw+4:?

Accuracy/__raw_  �?

Accuracy.?D_�Z       o��	�Wch��A�*L

Loss��?

Adam/Loss/raw�g8?

Accuracy/__raw_  �?

Accuracyv)?�{Q�Z       o��	�ch��A�*L

Loss.ݒ?

Adam/Loss/raw�͐?

Accuracy/__raw_  �>

Accuracy�'?#�}mZ       o��	.�ch��A�*L

Losss��?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy��?��)Z       o��	_(dh��A�*L

Lossz��?

Adam/Loss/rawf5�?

Accuracy/__raw_   ?

Accuracy��?H���Z       o��	'Rdh��A�*L

Loss��?

Adam/Loss/raw�?

Accuracy/__raw_��*?

Accuracy�G?G��.Z       o��	J{dh��A�*L

Loss���?

Adam/Loss/raw�?

Accuracy/__raw_��*?

Accuracy8?���:Z       o��	�dh��A�*L

Loss�,�?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy��?��(_Z       o��	��dh��A�*L

LossX��?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy�w?-s�HZ       o��	g$eh��A�*L

Loss�*�?

Adam/Loss/raw�u�?

Accuracy/__raw_   >

AccuracyI�?�e/Z       o��	�]eh��A�*L

Loss�K�?

Adam/Loss/rawH�v?

Accuracy/__raw_��*?

Accuracy��	?p�Z       o��	��eh��A�*L

Lossf�?

Adam/Loss/raw	�t?

Accuracy/__raw_��*?

Accuracy�?F��Z       o��	�eh��A�*L

Loss���?

Adam/Loss/raw�ɀ?

Accuracy/__raw_  @?

Accuracy�?��VZ       o��	��eh��A�*L

Loss��?

Adam/Loss/raw�!}?

Accuracy/__raw_   ?

Accuracy;�?�XZ       o��	�fh��A�*L

Loss�?

Adam/Loss/raw�Ä?

Accuracy/__raw_   ?

Accuracy��?��"Z       o��	�Ofh��A�*L

LossA
�?

Adam/Loss/raw4��?

Accuracy/__raw_���>

Accuracy(�?����Z       o��	Cwfh��A�*L

Loss�͔?

Adam/Loss/rawk�?

Accuracy/__raw_���>

Accuracy�a?� CrZ       o��	}�fh��A�*L

LossSԚ?

Adam/Loss/raw"R�?

Accuracy/__raw_   ?

Accuracy�y
?��IZ       o��	˻fh��A�*L

LossNǘ?

Adam/Loss/rawL��?

Accuracy/__raw_   ?

Accuracy��?��Z       o��	4gh��A�*L

Loss�Z�?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracyܐ?Ҭ5�Z       o��	IHgh��A�*L

Loss��?

Adam/Loss/rawHlh?

Accuracy/__raw_  �?

Accuracy,O?R$�4Z       o��	{hgh��A�*L

Loss��?

Adam/Loss/rawC;f?

Accuracy/__raw_  �?

Accuracyuz?��ǌZ       o��	�gh��A�*L

Loss�}�?

Adam/Loss/raw��?

Accuracy/__raw_  �>

AccuracyЇ%?5H�TZ       o��	ڬgh��A�*L

Lossm�?

Adam/Loss/rawl��?

Accuracy/__raw_  @?

AccuracyՓ?�&I�Z       o��	 �gh��A�*L

Lossm�?

Adam/Loss/raw�!�?

Accuracy/__raw_   ?

Accuracys�!?ڊ�Z       o��	. hh��A�*L

LossȒ?

Adam/Loss/raw��?

Accuracy/__raw_��*?

AccuracyN�!?h��Z       o��	�Khh��A�*L

Loss��?

Adam/Loss/raw��?

Accuracy/__raw_��*?

Accuracy$�"?�t�Z       o��	�hh��A�*L

Loss,	�?

Adam/Loss/raw@��?

Accuracy/__raw_  �>

Accuracym#?/ Z       o��	ߦhh��A�*L

Loss��?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy��?o�x�Z       o��	O�hh��A�*L

Loss��?

Adam/Loss/raw九?

Accuracy/__raw_   ?

Accuracy��?ؠȹZ       o��	:	ih��A�*L

Loss�_�?

Adam/Loss/rawh�?

Accuracy/__raw_���>

Accuracy�;?R-��Z       o��	�)ih��A�*L

Loss���?

Adam/Loss/rawc�?

Accuracy/__raw_���>

AccuracyŤ?���Z       o��	�Kih��A�*L

Loss�,�?

Adam/Loss/raw�Y�?

Accuracy/__raw_   ?

Accuracym�
?�O��Z       o��	�tih��A�*L

Loss���?

Adam/Loss/raw�X?

Accuracy/__raw_   ?

Accuracyb�?J��Z       o��	:�ih��A�*L

Lossy~�?

Adam/Loss/raw p�?

Accuracy/__raw_  �>

Accuracy��?�"��Z       o��	عih��A�*L

Loss:��?

Adam/Loss/raw�PF?

Accuracy/__raw_��*?

Accuracy�3?5
+�Z       o��	��ih��A�*L

Loss?��?

Adam/Loss/raw�E?

Accuracy/__raw_��*?

Accuracy}�
?�(��Z       o��	�'jh��A�*L

Loss(7�?

Adam/Loss/raw�.�?

Accuracy/__raw_   ?

Accuracy��?���Z       o��	Q�jh��A�*L

Loss��?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy��?A��Z       o��	�jh��A�*L

Loss��?

Adam/Loss/rawL
y?

Accuracy/__raw_  @?

Accuracy�}?�a�Z       o��	�jh��A�*L

Loss\�?

Adam/Loss/rawsR�?

Accuracy/__raw_���>

Accuracy2q?�Ȩ�Z       o��	Xkh��A�*L

LossL�?

Adam/Loss/raw���?

Accuracy/__raw_���>

Accuracy5;?8�Z       o��	�7kh��A�*L

Loss�"�?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy8�?��Z       o��	��kh��A�*L

Loss���?

Adam/Loss/raw�t�?

Accuracy/__raw_   ?

Accuracy2z ?��O�Z       o��	��kh��A�*L

Loss�u�?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy-�?�ǃFZ       o��	 lh��A�*L

Loss�I�?

Adam/Loss/raw���?

Accuracy/__raw_��*?

Accuracy ?���QZ       o��	\Tlh��A�*L

Loss�?

Adam/Loss/raw�E�?

Accuracy/__raw_��*?

Accuracy�S?�,NZ       o��	^�lh��A�*L

Losss�?

Adam/Loss/raw|p\?

Accuracy/__raw_  @?

Accuracy )?�qZ       o��	v�lh��A�*L

Loss:�?

Adam/Loss/raw��r?

Accuracy/__raw_  �>

Accuracy��?��:Z       o��	��lh��A�*L

Loss$��?

Adam/Loss/rawUQ?

Accuracy/__raw_  @?

Accuracy�+	?���Z       o��	�>mh��A�*L

Loss1��?

Adam/Loss/rawI[?

Accuracy/__raw_��*?

Accuracy2�?_�Z       o��	��mh��A�*L

Loss���?

Adam/Loss/raw��}?

Accuracy/__raw_��*?

AccuracyXt?��F�Z       o��	��mh��A�*L

Loss�_�?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy��?Ga�lZ       o��	<�mh��A�*L

Losspӈ?

Adam/Loss/rawB��?

Accuracy/__raw_   >

Accuracy�-?}8HZ       o��	�!nh��A�*L

LossҊ�?

Adam/Loss/rawZ=?

Accuracy/__raw_   ?

Accuracy�u	?� �Z       o��	�Rnh��A�*L

Loss��?

Adam/Loss/raw��?

Accuracy/__raw_���>

Accuracy۶?OtZ       o��	.�nh��A�*L

Loss���?

Adam/Loss/rawۑ�?

Accuracy/__raw_���>

Accuracy�F?>��0Z       o��	(�nh��A�*L

LossC��?

Adam/Loss/raw��?

Accuracy/__raw_  �>

Accuracy�a?�,Z       o��	�oh��A�*L

Losso�?

Adam/Loss/raw:��?

Accuracy/__raw_   ?

Accuracya�>�pZ       o��	%oh��A�*L

Loss��?

Adam/Loss/raw��p?

Accuracy/__raw_   ?

Accuracyxp?�;J�Z       o��	Igoh��A�*L

Loss��?

Adam/Loss/rawՐ�?

Accuracy/__raw_���>

Accuracy�K?Zw^�Z       o��	��oh��A�*L

Loss�V�?

Adam/Loss/raw�ƪ?

Accuracy/__raw_���>

Accuracyb��>�}�Z       o��	צoh��A�*L

LosscH�?

Adam/Loss/rawn��?

Accuracy/__raw_   ?

Accuracy���>�S3VZ       o��	~�oh��A�*L

Lossˊ�?

Adam/Loss/rawRpe?

Accuracy/__raw_   ?

Accuracy�K�>�c_�Z       o��	��oh��A�*L

LossT��?

Adam/Loss/raw�~�?

Accuracy/__raw_   ?

Accuracy���>^E�Z       o��	$ph��A�*L

Loss~ڌ?

Adam/Loss/rawX2K?

Accuracy/__raw_��*?

Accuracyf� ?��Z       o��	�#ph��A�*L

Loss��?

Adam/Loss/raw HJ?

Accuracy/__raw_��*?

Accuracy�?�i&�Z       o��	�Cph��A�*L

LossiY�?

Adam/Loss/rawxݥ?

Accuracy/__raw_  �>

Accuracy9�?�*�Z       o��	��ph��A�*L

Lossљ�?

Adam/Loss/raw�aK?

Accuracy/__raw_   ?

Accuracy�?.��Z       o��	7�ph��A�*L

Loss"�?

Adam/Loss/raw�؆?

Accuracy/__raw_   ?

Accuracy�?> �Z       o��	%�ph��A�*L

Loss�H�?

Adam/Loss/raw��#?

Accuracy/__raw_��*?

Accuracy1�	? �xZ       o��	�qh��A�*L

Loss�'�?

Adam/Loss/raw�+#?

Accuracy/__raw_��*?

Accuracy�8?^k\Z       o��	�#qh��A�*L

Loss	�v?

Adam/Loss/raw`�V?

Accuracy/__raw_  `?

Accuracy�*?���BZ       o��	1Bqh��A�*L

Loss��s?

Adam/Loss/rawN�?

Accuracy/__raw_  �>

AccuracyG&?H�Z       o��	c`qh��A�*L

Loss<�{?

Adam/Loss/raw�	�?

Accuracy/__raw_   ?

Accuracyو?;�Z       o��	^�qh��A�*L

Loss�8|?

Adam/Loss/raw�W�?

Accuracy/__raw_��*?

Accuracy��?R{�Z       o��	ٯqh��A�*L

Loss�?

Adam/Loss/raw���?

Accuracy/__raw_��*?

Accuracy�(?����Z       o��	i�qh��A�*L

Lossj�?

Adam/Loss/raw�LP?

Accuracy/__raw_  `?

Accuracy�5?k>}KZ       o��	�rh��A�*L

Loss�T�?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy�c? h�Z       o��	�+rh��A�*L

Loss4��?

Adam/Loss/raw8�o?

Accuracy/__raw_  @?

AccuracyNs?O��Z       o��	�irh��A�*L

Lossذ�?

Adam/Loss/raw�*s?

Accuracy/__raw_��*?

Accuracy��"?��IWZ       o��	j�rh��A�*L

Loss��?

Adam/Loss/raw�r?

Accuracy/__raw_���>

Accuracyb�#?ёGZ       o��	��rh��A�*L

Loss��~?

Adam/Loss/raw$�?

Accuracy/__raw_   ?

AccuracyG�?����Z       o��	Vsh��A�*L

Loss�`�?

Adam/Loss/rawFb?

Accuracy/__raw_   ?

Accuracy�?��ZZ       o��	�6sh��A�*L

Loss�}?

Adam/Loss/rawX8�?

Accuracy/__raw_   ?

Accuracy-�?H��Z       o��	[sh��A�*L

Loss�d�?

Adam/Loss/raw��I?

Accuracy/__raw_��*?

Accuracy��?�op{Z       o��	{sh��A�*L

Loss�N{?

Adam/Loss/raw8I?

Accuracy/__raw_��*?

AccuracyC<?%�)�Z       o��	8�sh��A�*L

LossPLv?

Adam/Loss/raw���?

Accuracy/__raw_  �>

Accuracy�z?��Z       o��	�sh��A�*L

Loss
�y?

Adam/Loss/raw�\?

Accuracy/__raw_  `?

Accuracyt!?C��Z       o��	��sh��A�*L

Loss;�v?

Adam/Loss/rawkj?

Accuracy/__raw_   ?

Accuracy�7 ?�шZ       o��	��sh��A�*L

Loss�yu?

Adam/Loss/raw�E�?

Accuracy/__raw_���>

Accuracy��?/Q&Z       o��	eth��A�*L

Loss�?

Adam/Loss/raw؈�?

Accuracy/__raw_���>

Accuracy`�?1��LZ       o��	e7th��A�*L

Loss���?

Adam/Loss/rawji�?

Accuracy/__raw_  @?

AccuracyEa?)��=Z       o��	�Wth��A�*L

LossLk�?

Adam/Loss/raw#�O?

Accuracy/__raw_  @?

Accuracy�=?q?Z       o��	ivth��A�*L

Loss�v�?

Adam/Loss/raw�P�?

Accuracy/__raw_  �>

Accuracy&�?Y��Z       o��	5�th��A�*L

Loss��?

Adam/Loss/raw�.&?

Accuracy/__raw_  �?

Accuracy��?D�� Z       o��	A�th��A�*L

LossxN~?

Adam/Loss/raw52%?

Accuracy/__raw_  �?

Accuracy��?���Z       o��	�th��A�*L

Loss>eu?

Adam/Loss/raw+?e?

Accuracy/__raw_  @?

Accuracy%?��y3Z       o��	uh��A�*L

Loss��s?

Adam/Loss/rawꉔ@

Accuracy/__raw_    

Accuracy-�'?�r�UZ       o��	Luh��A�*L

Loss��?

Adam/Loss/rawK��?

Accuracy/__raw_   ?

Accuracy(�?đ��Z       o��	�luh��A�*L

LossV¥?

Adam/Loss/raw8TK?

Accuracy/__raw_  �?

Accuracy��?-�cjZ       o��	Y�uh��A�*L

Loss�Y�?

Adam/Loss/rawŹJ?

Accuracy/__raw_  �?

Accuracy�N"?=H�Z       o��	��uh��A�*L

Loss��?

Adam/Loss/raw' /?

Accuracy/__raw_  `?

Accuracy5�+?�1VZ       o��	��uh��A�*L

Loss&�?

Adam/Loss/raw���?

Accuracy/__raw_  @?

Accuracy��0?.'G�Z       o��	�vh��A�*L

Loss5�?

Adam/Loss/raw��^?

Accuracy/__raw_  `?

Accuracyk2?����Z       o��	�.vh��A�*L

Loss��?

Adam/Loss/raw� W?

Accuracy/__raw_  �?

Accuracy��6?� �TZ       o��	Nvh��A�*L

Losss�?

Adam/Loss/rawq�U?

Accuracy/__raw_  �?

AccuracyTG>?PP�Z       o��	 lvh��A�*L

LossG��?

Adam/Loss/rawQ�k?

Accuracy/__raw_  `?

Accuracy��D?6�[Z       o��	"�vh��A�*L

Loss^��?

Adam/Loss/raw��?

Accuracy/__raw_   ?

AccuracyѐG?O��?Z       o��	X�vh��A�*L

Loss��?

Adam/Loss/raw2��?

Accuracy/__raw_  @?

Accuracy�C?�wY:Z       o��	�vh��A�*L

LossD��?

Adam/Loss/raw��W?

Accuracy/__raw_��*?

Accuracy�?C?�Y�2Z       o��	�(wh��A�*L

Loss��?

Adam/Loss/raw��V?

Accuracy/__raw_��*?

Accuracy@�@?�<8Z       o��	�Jwh��A�*L

Loss
1�?

Adam/Loss/rawCsn?

Accuracy/__raw_  @?

Accuracy�>?�[Z       o��	�hwh��A�*L

Loss�?

Adam/Loss/raw1* ?

Accuracy/__raw_  `?

AccuracyM�>?[��AZ       o��	��wh��A�*L

Loss��{?

Adam/Loss/raw�5?

Accuracy/__raw_  �?

AccuracyEB?a�vZ       o��	ۦwh��A�*L

Lossq�t?

Adam/Loss/raw��U?

Accuracy/__raw_��*?

Accuracy>>H?}8
Z       o��	��wh��A�*L

Lossv�q?

Adam/Loss/raw�T?

Accuracy/__raw_��*?

AccuracyIE?���Z       o��	��wh��A�*L

Loss��n?

Adam/Loss/rawL�?

Accuracy/__raw_   ?

Accuracy��B?B
�%Z       o��	�xh��A�*L

Loss2w?

Adam/Loss/raw[1V?

Accuracy/__raw_  �?

Accuracy�;?�=?sZ       o��	%\xh��A�*L

Loss��s?

Adam/Loss/rawq,?

Accuracy/__raw_  �?

Accuracy��B?d��'Z       o��	�xh��A�*L

Loss��l?

Adam/Loss/rawy�%?

Accuracy/__raw_��*?

Accuracy|�H?jmgMZ       o��	H�xh��A�*L

Loss��e?

Adam/Loss/raw
%?

Accuracy/__raw_��*?

Accuracy��E?O&#@Z       o��	��xh��A�*L

Loss`_?

Adam/Loss/raw]��?

Accuracy/__raw_  @?

Accuracy}%C?]t�Z       o��	J
yh��A�*L

Loss��b?

Adam/Loss/raw�*�?

Accuracy/__raw_  @?

Accuracy��B?Fă_Z       o��	9)yh��A�*L

Loss��i?

Adam/Loss/rawf�d?

Accuracy/__raw_  @?

Accuracyr�B?���Z       o��	#Iyh��A�*L

Loss]Mi?

Adam/Loss/raw��`?

Accuracy/__raw_��*?

Accuracy3KB?��srZ       o��	�iyh��A�*L

Loss�rh?

Adam/Loss/raw+�^?

Accuracy/__raw_��*?

AccuracyY�??�I�YZ       o��	��yh��A�*L

Loss?�g?

Adam/Loss/rawH�T?

Accuracy/__raw_  @?

Accuracy��=?7fTZ       o��	Ϻyh��A�*L

Loss��e?

Adam/Loss/raw<'�?

Accuracy/__raw_  `?

Accuracy/>?p� Z       o��	��yh��A�*L

Lossn�h?

Adam/Loss/raw�k`?

Accuracy/__raw_   ?

Accuracy�kA?pc��Z       o��	S?zh��A�*L

Loss]�g?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy^>?��|�Z       o��	~zh��A�*L

Lossg-\?

Adam/Loss/raw�{�>

Accuracy/__raw_  �?

Accuracy�D?+��Z       o��	ܝzh��A�*L

LossٻQ?

Adam/Loss/rawvN_?

Accuracy/__raw_   ?

Accuracy��J?̺;�Z       o��	\�zh��A�*L

LossOS?

Adam/Loss/raw t�?

Accuracy/__raw_  `?

Accuracy�$C?��8Z       o��	��zh��A�*L

Loss�xZ?

Adam/Loss/raw�5?

Accuracy/__raw_  `?

Accuracy�F?N�@Z       o��	{h��A�*L

LossغV?

Adam/Loss/raw�6�?

Accuracy/__raw_��*?

Accuracyl�H?n�Z       o��	�/{h��A�*L

Loss'�d?

Adam/Loss/raw��?

Accuracy/__raw_��*?

Accuracyr�E?]���Z       o��	0h{h��A�*L

Losst(q?

Adam/Loss/raw~�B?

Accuracy/__raw_  @?

Accuracy+�B?7Y�Z       o��	��{h��A�*L

LossB�l?

Adam/Loss/raw�W�?

Accuracy/__raw_   ?

Accuracy�B?m��.Z       o��	f�{h��A�*L

Loss=�n?

Adam/Loss/raw|3Y?

Accuracy/__raw_  @?

Accuracy�;?���lZ       o��	8�{h��A�*L

Loss*�l?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracya<?,���Z       o��	3|h��A�*L

Loss�7y?

Adam/Loss/raw�ѳ?

Accuracy/__raw_  �?

Accuracy$$C?�.Z       o��	;|h��A�*L

Loss,!�?

Adam/Loss/raw��h?

Accuracy/__raw_   ?

Accuracy :I?����Z       o��	Z|h��A�*L

Loss⾀?

Adam/Loss/raw
�1?

Accuracy/__raw_  @?

Accuracy�E?���vZ       o��	�z|h��A�*L

Loss1�y?

Adam/Loss/raw
3O?

Accuracy/__raw_  `?

Accuracy
�D?�\�Z       o��	��|h��A�*L

Loss-Fu?

Adam/Loss/raw� �?

Accuracy/__raw_    

Accuracy�UG?!��YZ       o��	��|h��A�*L

Loss",}?

Adam/Loss/raw���?

Accuracy/__raw_    

Accuracy�f3?oyHZ       o��	�|h��A�*L

Loss���?

Adam/Loss/raw�aA?

Accuracy/__raw_   ?

Accuracyv!?#�P�Z       o��	/�|h��A�*L

Loss�R}?

Adam/Loss/rawfRh?

Accuracy/__raw_  `?

Accuracy�P!?��Z       o��	�}h��A�*L

Loss9{?

Adam/Loss/raw�v?

Accuracy/__raw_   ?

AccuracyX�'?,���Z       o��	i}h��A�*L

Loss��z?

Adam/Loss/rawe�?

Accuracy/__raw_  �?

Accuracy�#?��Z       o��	_�}h��A�*L

LossS�~?

Adam/Loss/rawgC�?

Accuracy/__raw_  �?

Accuracy��,?w[�LZ       o��	o�}h��A�*L

LossV܀?

Adam/Loss/raw��?

Accuracy/__raw_   ?

Accuracy!-5?��9,Z       o��	��}h��A�*L

Loss:�?

Adam/Loss/raw�m ?

Accuracy/__raw_  �?

Accuracy��/?7T��Z       o��	4�}h��A�*L

Loss�su?

Adam/Loss/raw�g,?

Accuracy/__raw_  `?

Accuracyo�7?��a%Z       o��	�~h��A�*L

Loss�%n?

Adam/Loss/raw@��?

Accuracy/__raw_���>

Accuracy��;?��6�Z       o��	`9~h��A�*L

Loss�wr?

Adam/Loss/rawA�?

Accuracy/__raw_���>

Accuracy[�1?q�,Z       o��	�g~h��A�*L

Loss2;v?

Adam/Loss/raw-_?

Accuracy/__raw_  @?

Accuracy�f(?"�_Z       o��	��~h��A�*L

Loss��s?

Adam/Loss/raw.�k?

Accuracy/__raw_   ?

Accuracy��*?j��}Z       o��	��~h��A�*L

Loss�s?

Adam/Loss/raw,�]?

Accuracy/__raw_   ?

Accuracy;�)?D��vZ       o��	P�~h��A�*L

LossZ�p?

Adam/Loss/raw%�c?

Accuracy/__raw_���>

AccuracyO�(?�馫Z       o��	h9h��A�*L

Loss��o?

Adam/Loss/raw�b?

Accuracy/__raw_���>

Accuracy�` ?V�{�Z       o��	��h��A�*L

Loss�Nn?

Adam/Loss/rawZ�^?

Accuracy/__raw_  `?

Accuracy��?����Z       o��	��h��A�*L

Loss	�l?

Adam/Loss/raw*�F?

Accuracy/__raw_  @?

Accuracyk�?z�f�Z       o��	��h��A�*L

Loss&�h?

Adam/Loss/raw@��?

Accuracy/__raw_   ?

Accuracy�/#?0{S[Z       o��	��h��A�*L

Loss��k?

Adam/Loss/raw�ώ?

Accuracy/__raw_��*?

Accuracy.�?����Z       o��	d�h��A�*L

Loss��p?

Adam/Loss/raw��?

Accuracy/__raw_��*?

Accuracy�� ?j���Z       o��	RA�h��A�*L

Lossru?

Adam/Loss/raw�2?

Accuracy/__raw_  `?

Accuracy �!?��Z       o��	$d�h��A�*L

LossAfn?

Adam/Loss/raw>Z1?

Accuracy/__raw_  `?

Accuracy��'?~�Z       o��	���h��A�*L

LosstKh?

Adam/Loss/rawP�}?

Accuracy/__raw_  @?

Accuracy��-?��\�Z       o��	2��h��A�*L

LossWrj?

Adam/Loss/rawS5=?

Accuracy/__raw_��*?

Accuracym/?^�:�Z       o��	�̀h��A�*L

Loss=�e?

Adam/Loss/raw��;?

Accuracy/__raw_��*?

Accuracy,�.?�$�Z       o��	��h��A�*L

Loss��a?

Adam/Loss/raw\!?

Accuracy/__raw_  @?

Accuracy��.?i�w�Z       o��	)�h��A�*L

LossI[?

Adam/Loss/raw��b?

Accuracy/__raw_  �?

Accuracy�D0?0��Z       o��	�,�h��A�*L

Loss�\?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy>8?��~�Z       o��	L�h��A�*L

Loss6�U?

Adam/Loss/raw��{?

Accuracy/__raw_  �?

Accuracyk??�bl�Z       o��	�p�h��A�*L

Loss(�Y?

Adam/Loss/raw3z?

Accuracy/__raw_  �?

Accuracy\�E?�^��Z       o��	`��h��A�*L

Lossv�\?

Adam/Loss/raw��`?

Accuracy/__raw_  @?

AccuracyS�K?jJ�Z       o��	%΁h��A�*L

Loss�=]?

Adam/Loss/rawƟc?

Accuracy/__raw_  `?

Accuracy�J?ƫkrZ       o��	��h��A�*L

Loss[�]?

Adam/Loss/raw?t?

Accuracy/__raw_  `?

Accuracy��L?~�kZ       o��	W �h��A�*L

Loss�`?

Adam/Loss/raw}�>

Accuracy/__raw_  �?

Accuracy�N?-�j�Z       o��	?�h��A�*L

Loss��T?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�S?�fZ       o��	���h��A�*L

Loss��I?

Adam/Loss/raw�h?

Accuracy/__raw_  `?

Accuracy��W?�ց6Z       o��	a߂h��A�*L

Loss�M?

Adam/Loss/rawH��@

Accuracy/__raw_  �>

Accuracy��X?�l�Z       o��	��h��A�*L

LossI�?

Adam/Loss/raw%�"?

Accuracy/__raw_  �?

Accuracy��L?���Z       o��	�!�h��A�*L

Loss@�?

Adam/Loss/raw_�,?

Accuracy/__raw_��*?

Accuracy��Q?;�w�Z       o��	�?�h��A�*L

Loss.��?

Adam/Loss/raw�D,?

Accuracy/__raw_��*?

Accuracy��M?D3�YZ       o��	�^�h��A�*L

Loss}l�?

Adam/Loss/rawS}?

Accuracy/__raw_  @?

AccuracyTeJ?��4Z       o��	g��h��A�*L

Loss�؃?

Adam/Loss/raw,hR?

Accuracy/__raw_  @?

Accuracy2[I?�羟Z       o��	w��h��A�*L

Loss�.�?

Adam/Loss/raw���?

Accuracy/__raw_   ?

Accuracy�kH?�z�Z       o��	n��h��A�*L

Loss_V�?

Adam/Loss/rawŮN?

Accuracy/__raw_���>

Accuracy�`D?���XZ       o��	�߃h��A�*L

Loss�y}?

Adam/Loss/rawEN?

Accuracy/__raw_���>

Accuracy&F9? �8fZ       o��	���h��A�*L

Loss��x?

Adam/Loss/raw��(?

Accuracy/__raw_  `?

Accuracy�G/?�[F�Z       o��	��h��A�*L

Loss�p?

Adam/Loss/raw?�.?

Accuracy/__raw_  �?

Accuracy�&4?�A�Z       o��	�@�h��A�*L

LossS"j?

Adam/Loss/raw��6?

Accuracy/__raw_  `?

Accuracy��;?@=�SZ       o��	h_�h��A�*L

Loss��d?

Adam/Loss/rawD�W?

Accuracy/__raw_  �?

Accuracy�\??4��Z       o��	k}�h��A�*L

Loss�c?

Adam/Loss/raw]�V?

Accuracy/__raw_  �?

Accuracy��E?���Z       o��	���h��A�*L

Loss?fb?

Adam/Loss/raw�]`?

Accuracy/__raw_  @?

Accuracy�K?iU^Z       o��	�Ąh��A�*L

Loss02b?

Adam/Loss/raw^<?

Accuracy/__raw_   ?

Accuracy�zJ?S��Z       o��	���h��A�*L

Loss�i^?

Adam/Loss/raw$Ȁ?

Accuracy/__raw_  @?

AccuracyR;F?[m\Z       o��	j3�h��A�*L

Loss��a?

Adam/Loss/rawY��>

Accuracy/__raw_��*?

AccuracyʛE?�lP�Z       o��	�T�h��A�*L

Loss�;V?

Adam/Loss/rawd�>

Accuracy/__raw_��*?

Accuracy�B?���BZ       o��	֐�h��A�*L

Loss[�K?

Adam/Loss/rawV7?

Accuracy/__raw_   ?

AccuracyV}@?>��*Z       o��	�Ѕh��A�*L

Loss��I?

Adam/Loss/raw�f<?

Accuracy/__raw_  �?

Accuracy�==?:N�Z       o��	��h��A�*L

Loss�GH?

Adam/Loss/raw�9C?

Accuracy/__raw_  @?

Accuracy��C?�c�Z       o��	�1�h��A�*L

LossG�G?

Adam/Loss/raw��(?

Accuracy/__raw_  �?

Accuracy`�C?`ΰvZ       o��	�Q�h��A�*L

LossϨD?

Adam/Loss/raw��'?

Accuracy/__raw_  �?

Accuracy��I?&��Z       o��	2q�h��A�*L

Loss0�A?

Adam/Loss/raw�'}?

Accuracy/__raw_   ?

Accuracy�O?	�/CZ       o��	\��h��A�*L

LossŲG?

Adam/Loss/raw%l?

Accuracy/__raw_  �?

AccuracyLPJ?�$�Z       o��	s��h��A�*L

Loss��B?

Adam/Loss/raw@�n?

Accuracy/__raw_  �?

Accuracy��O?D�n�Z       o��	'݆h��A�*L

LossWAG?

Adam/Loss/raw&Q?

Accuracy/__raw_���>

Accuracy��T?(�llZ       o��	&��h��A�*L

Loss�>H?

Adam/Loss/raw��O?

Accuracy/__raw_���>

Accuracy��G?��χZ       o��	)$�h��A�*L

LossmI?

Adam/Loss/raw�e?

Accuracy/__raw_  �?

Accuracy�Y<?_��Z       o��	�O�h��A�*L

Loss�'D?

Adam/Loss/raw0%8?

Accuracy/__raw_  `?

Accuracy`C?�X1.Z       o��	Ku�h��A�*L

LossQ�B?

Adam/Loss/raw��`?

Accuracy/__raw_  `?

Accuracy� F?:�
�Z       o��	�h��A�*L

Loss��E?

Adam/Loss/rawJ*?

Accuracy/__raw_  �?

AccuracyZ�H?�V��Z       o��	`ɇh��A�*L

Loss�A?

Adam/Loss/raw`U?

Accuracy/__raw_  �?

Accuracy�$N?#�O�Z       o��	���h��A�*L

Loss�H>?

Adam/Loss/raw��>?

Accuracy/__raw_  `?

Accuracy� S?��Z       o��	�R�h��A�*L

Loss�Y>?

Adam/Loss/raw�L-?

Accuracy/__raw_  `?

AccuracyajT?d���Z       o��	9��h��A�*L

Loss�<?

Adam/Loss/rawz�;?

Accuracy/__raw_  `?

Accuracy�U?)�6Z       o��	"��h��A�*L

Lossˎ<?

Adam/Loss/raw �e?

Accuracy/__raw_��*?

AccuracyٝV?� �KZ       o��	H��h��A�*L

LossT�@?

Adam/Loss/raw8gc?

Accuracy/__raw_��*?

Accuracy�8R?#�*AZ       o��	,�h��A�*L

Loss�"D?

Adam/Loss/raw�lN?

Accuracy/__raw_  `?

Accuracy DN?f�ozZ       o��	�g�h��A�*L

Loss*E?

Adam/Loss/rawL�?

Accuracy/__raw_  �?

Accuracy
P?��Z       o��	Ǚ�h��A�*L

Loss	pA?

Adam/Loss/raw�C?

Accuracy/__raw_  �?

Accuracy��T?���Z       o��	Gɉh��A�*L

Loss��A?

Adam/Loss/raw��w?

Accuracy/__raw_  �?

Accuracy�&Y?�Z       o��	
�h��A�*L

Loss�G?

Adam/Loss/raw&w?

Accuracy/__raw_  �?

Accuracyl	]?�bW�Z       o��	�i�h��A�*L

Loss�K?

Adam/Loss/raw<�?

Accuracy/__raw_  `?

Accuracy{�`?fY�Z       o��	��h��A�*L

Loss�
G?

Adam/Loss/raw# =?

Accuracy/__raw_  �?

Accuracy�z`?3=�Z       o��	sۊh��A�*L

LossF?

Adam/Loss/raw��/?

Accuracy/__raw_  �?

Accuracy��c?g��Z       o��	��h��A�*L

Loss��C?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�wf?4�Z       o��	vU�h��A�*L

Losso:?

Adam/Loss/raw(��>

Accuracy/__raw_  �?

Accuracy�i?���Z       o��	P��h��A�*L

Loss�'1?

Adam/Loss/raw�9U?

Accuracy/__raw_  `?

Accuracy�Qk?9�]Z       o��	��h��A�*L

LossB�4?

Adam/Loss/raw�F?

Accuracy/__raw_  �?

Accuracy
0j?p*qZ       o��		4�h��A�*L

Loss}6?

Adam/Loss/rawH�?

Accuracy/__raw_  �?

Accuracyo^l?N
�Z       o��	�Z�h��A�*L

Loss(�1?

Adam/Loss/raw�!?

Accuracy/__raw_  �?

Accuracy�Tn?�_�Z       o��	��h��A�*L

Loss�0?

Adam/Loss/raw�?

Accuracy/__raw_  �?

AccuracyKp?��0@Z       o��	B��h��A�*L

Loss�i.?

Adam/Loss/rawad,?

Accuracy/__raw_  �?

Accuracy]�q?��kZ       o��	�̌h��A�*L

Loss,6.?

Adam/Loss/raw&|y?

Accuracy/__raw_  `?

Accuracy�s?�#��Z       o��	��h��A�*L

Loss,�5?

Adam/Loss/raw�?

Accuracy/__raw_  �?

AccuracyA5q?vB\CZ       o��	�2�h��A�*L

Loss�Q3?

Adam/Loss/raw�?

Accuracy/__raw_��*?

Accuracy�r?�1��Z       o��	��h��A�*L

Loss�d0?

Adam/Loss/rawO�?

Accuracy/__raw_��*?

Accuracy4|k?��ZZ       o��	�Ӎh��A�*L

Loss	�-?

Adam/Loss/rawN?

Accuracy/__raw_  �?

Accuracy� e?ҹt�Z       o��	3��h��A�*L

Loss��0?

Adam/Loss/rawl*<?

Accuracy/__raw_  �?

Accuracy��g?L��<Z       o��	��h��A�*L

Loss�2?

Adam/Loss/raw
@?

Accuracy/__raw_  `?

Accuracy�!j?��Z       o��	cG�h��A�*L

Loss�.?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�i?��DZ       o��	5��h��A�*L

Loss��(?

Adam/Loss/raw b�>

Accuracy/__raw_  �?

AccuracyPhk?�ss�Z       o��	��h��A�*L

Loss=!#?

Adam/Loss/raw�C_?

Accuracy/__raw_  �?

Accuracy{wm?�DG�Z       o��	b��h��A�*L

Loss�$)?

Adam/Loss/raw��:?

Accuracy/__raw_  �?

Accuracy�Qo? ��Z       o��	�؏h��A�*L

Loss�*?

Adam/Loss/raw�^*?

Accuracy/__raw_  �?

Accuracy��p?��Z       o��	/�h��A�*L

Loss/�*?

Adam/Loss/rawKs?

Accuracy/__raw_  �?

Accuracy?}r?rrZ       o��	�Q�h��A�*L

Loss�)?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy�s?XC6�Z       o��	ΐh��A�*L

Loss|'(?

Adam/Loss/raw�q?

Accuracy/__raw_  �?

Accuracyiu?t�Z       o��	O�h��A�*L

LossT�/?

Adam/Loss/rawT2�>

Accuracy/__raw_  `?

Accuracy�&v?r�ەZ       o��	77�h��A�*L

LossP]*?

Adam/Loss/rawF�d?

Accuracy/__raw_  �?

Accuracy��s?ч��Z       o��	�s�h��A�*L

Lossi60?

Adam/Loss/rawW�?

Accuracy/__raw_  �?

Accuracy\$u?���SZ       o��	@��h��A�*L

Loss4�)?

Adam/Loss/rawz?

Accuracy/__raw_  �?

AccuracyS:v?�*�{Z       o��	N�h��A�*L

Loss4�)?

Adam/Loss/raw��,?

Accuracy/__raw_  `?

Accuracy~4w?�Ȧ�Z       o��	S�h��A�*L

Loss?�)?

Adam/Loss/rawXj?

Accuracy/__raw_  �?

Accuracyq�t?*��Z       o��	���h��A�*L

Loss��%?

Adam/Loss/raw�*?

Accuracy/__raw_  �?

Accuracy��u?W�E�Z       o��	��h��A�*L

LossY&?

Adam/Loss/raw��9?

Accuracy/__raw_��*?

Accuracy�v?'�0qZ       o��	,�h��A�*L

LossN(?

Adam/Loss/raw�>8?

Accuracy/__raw_  �?

Accuracy]o?Z.Z       o��	�[�h��A�*L

Loss �)?

Adam/Loss/raw�32?

Accuracy/__raw_  �?

Accuracy�q?��d�Z       o��	R��h��A�*L

Loss��*?

Adam/Loss/rawZ ?

Accuracy/__raw_  �?

AccuracyA�r?����Z       o��	!�h��A�*L

Loss
�)?

Adam/Loss/raw�}�>

Accuracy/__raw_  �?

Accuracy;�s?����Z       o��	�Y�h��A�*L

Loss��#?

Adam/Loss/raw�9K?

Accuracy/__raw_  �?

Accuracy�u?pv�3Z       o��	߆�h��A�*L

Loss��'?

Adam/Loss/raw��I?

Accuracy/__raw_  �?

Accuracy#-v?��K�Z       o��	��h��A�*L

Lossk0+?

Adam/Loss/raw9r??

Accuracy/__raw_  `?

Accuracy�(w?���Z       o��	Jؔh��A�*L

Loss 7-?

Adam/Loss/raw�)B?

Accuracy/__raw_  `?

Accuracy��t?�H#�Z       o��	�%�h��A�*L

LossHO/?

Adam/Loss/rawX�?

Accuracy/__raw_  �?

Accuracy/�r?�g��Z       o��	~R�h��A�*L

Loss�_+?

Adam/Loss/raw�?k>

Accuracy/__raw_  �?

Accuracy*t?TY�vZ       o��	�s�h��A�*L

Loss3 ?

Adam/Loss/raw��h>

Accuracy/__raw_  �?

Accuracy?Fu?^٨gZ       o��	걕h��A�*L

Loss��?

Adam/Loss/rawE� ?

Accuracy/__raw_  �?

Accuracy�Xv?��Z       o��	�ҕh��A�*L

Loss�?

Adam/Loss/raw�u?

Accuracy/__raw_  @?

Accuracy�Ow?IwTZ       o��	�h��A�*L

LossIj ?

Adam/Loss/raw?

Accuracy/__raw_  `?

Accuracy��q?-Z�QZ       o��	��h��A�*L

Loss�?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy� p?���Z       o��	6�h��A�*L

Loss�u?

Adam/Loss/raw�)�>

Accuracy/__raw_  �?

AccuracyF�q?��kZ       o��	�T�h��A�*L

Loss߫?

Adam/Loss/rawC�?

Accuracy/__raw_  �?

Accuracy�
s?'.�Z       o��	u�h��A�*L

Lossu?

Adam/Loss/raw/�R?

Accuracy/__raw_  �?

Accuracy�Vt?�$QZ       o��	��h��A�*L

Lossѯ?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�u?,���Z       o��	��h��A�*L

LossD�?

Adam/Loss/raw��$?

Accuracy/__raw_  �?

Accuracy̍v?��@Z       o��	`�h��A�*L

Loss�n?

Adam/Loss/rawo�#?

Accuracy/__raw_  �?

Accuracy�w?��JFZ       o��	�3�h��A�*L

Loss��?

Adam/Loss/rawH�0?

Accuracy/__raw_  `?

AccuracyAYx?ʥ�Z       o��	�V�h��A�*L

Losss?

Adam/Loss/raw/gL?

Accuracy/__raw_  `?

Accuracy��u?ubQ�Z       o��	�v�h��A�*L

Loss ?

Adam/Loss/raw��?

Accuracy/__raw_  `?

Accuracy�s?�f�Z       o��	��h��A�*L

Loss��?

Adam/Loss/raw"T�?

Accuracy/__raw_  �?

Accuracy�q?��Z       o��	���h��A�*L

Loss�".?

Adam/Loss/raw ��?

Accuracy/__raw_  �?

Accuracy�,s? :MZ       o��	ڗh��A�*L

Loss1�;?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy(ut?<�Z       o��	��h��A�*L

Loss�Q3?

Adam/Loss/raw#�)?

Accuracy/__raw_  �?

Accuracy��u?զ��Z       o��	�@�h��A�*L

Loss�`2?

Adam/Loss/raw�?

Accuracy/__raw_  �?

Accuracy��v?��~�Z       o��	�s�h��A�*L

Lossw0/?

Adam/Loss/raw%;?

Accuracy/__raw_  �?

Accuracy�w?ϳ�oZ       o��	���h��A�*L

Loss"�,?

Adam/Loss/raw?�?

Accuracy/__raw_  �?

AccuracyTmx?ͺ؇Z       o��	,՘h��A�*L

Loss��*?

Adam/Loss/raw?

Accuracy/__raw_  �?

Accuracy2/y?���Z       o��	p)�h��A�*L

Loss_P)?

Adam/Loss/raw)?

Accuracy/__raw_  �?

Accuracy��y?�B��Z       o��	nn�h��A�*L

Loss<J)?

Adam/Loss/rawX?

Accuracy/__raw_  �?

Accuracy�zz?M]��Z       o��	h��h��A�*L

Loss��'?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy	{?���Z       o��	R��h��A�*L

Loss}�?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy;�{?��| Z       o��	יh��A�*L

LossL�?

Adam/Loss/raw�#;?

Accuracy/__raw_  �?

Accuracy��{?���"Z       o��	���h��A�*L

LossB?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy�`|?�v\�Z       o��	-&�h��A�*L

Losseb?

Adam/Loss/raw��)?

Accuracy/__raw_  �?

Accuracyw�|?ܿR<Z       o��	�Y�h��A�*L

Loss��?

Adam/Loss/raw��%?

Accuracy/__raw_  �?

Accuracy�}?���'Z       o��	䈚h��A�*L

Loss<�?

Adam/Loss/raw��$?

Accuracy/__raw_  �?

Accuracy\}?�ʖZ       o��	Ҫ�h��A�*L

Loss�r?

Adam/Loss/raw�J�>

Accuracy/__raw_  �?

Accuracy��}?&�UoZ       o��	jܚh��A�*L

Loss,�?

Adam/Loss/raw��"?

Accuracy/__raw_  �?

Accuracyv�}?v��Z       o��	X�h��A�*L

Loss�k?

Adam/Loss/rawj\�>

Accuracy/__raw_  �?

Accuracy7~?�CZ       o��	{6�h��A�*L

Loss��?

Adam/Loss/raw�F�?

Accuracy/__raw_  �?

Accuracy~D~?L��;Z       o��	�u�h��A�*L

LossW�"?

Adam/Loss/raw�j�?

Accuracy/__raw_  �?

Accuracy�p~?��SZ       o��	��h��A�*L

Loss B-?

Adam/Loss/rawSt?

Accuracy/__raw_  �?

Accuracy~?B��Z       o��	�śh��A�*L

Loss��)?

Adam/Loss/rawRɢ@

Accuracy/__raw_   >

Accuracy��~?�vg�Z       o��	�h��A�*L

Loss8��?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy�vh?'�+vZ       o��	N�h��A�*L

Loss ��?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy'�j?τ�Z       o��	Y��h��A�*L

Loss:}?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyp�l?���Z       o��	��h��A�*L

Lossَn?

Adam/Loss/raw��0?

Accuracy/__raw_  �?

Accuracy~�n?T)��Z       o��	�ɜh��A�*L

Loss�`h?

Adam/Loss/raw�?

Accuracy/__raw_  �?

Accuracy��p?ޒ�AZ       o��	��h��A�*L

Loss�^?

Adam/Loss/raw�p�>

Accuracy/__raw_  �?

Accuracyr?st�<Z       o��	�	�h��A�*L

Loss��T?

Adam/Loss/rawװO?

Accuracy/__raw_  �?

Accuracy�}s?��v�Z       o��	,�h��A�*L

Loss�TT?

Adam/Loss/raw�N?

Accuracy/__raw_  �?

Accuracy�t?�Q Z       o��	�L�h��A�*L

Loss��S?

Adam/Loss/raw�*;?

Accuracy/__raw_  �?

AccuracyD�u?��yZ       o��	�m�h��A�*L

Loss�NQ?

Adam/Loss/rawR��>

Accuracy/__raw_  �?

Accuracy��v?�,M�Z       o��	֎�h��A�*L

Loss�G?

Adam/Loss/raw�!�>

Accuracy/__raw_  �?

Accuracy�w?��HZ       o��	_��h��A�*L

Loss�B>?

Adam/Loss/raw�Pd?

Accuracy/__raw_  �?

Accuracy,�x?���Z       o��	�ϝh��A�*L

Loss�B?

Adam/Loss/raweQc?

Accuracy/__raw_  �?

AccuracyAZy?GۤkZ       o��	��h��A�*L

Loss6dE?

Adam/Loss/rawc?

Accuracy/__raw_  �?

Accuracynz?�X٧Z       o��	�h��A�*L

LossL@?

Adam/Loss/raw�m?

Accuracy/__raw_  �?

Accuracy��z?��Z       o��	�2�h��A�*L

Loss)�;?

Adam/Loss/rawR�%?

Accuracy/__raw_  �?

Accuracym'{?��wZ       o��	 W�h��A�*L

Loss��9?

Adam/Loss/raw�?

Accuracy/__raw_  �?

Accuracy|�{?}��mZ       o��	���h��A�*L

Lossܣ4?

Adam/Loss/raw	7?

Accuracy/__raw_  �?

Accuracy#|?�q<�Z       o��	8��h��A�*L

Loss�0?

Adam/Loss/raw|M
?

Accuracy/__raw_  �?

Accuracy�w|?F��~Z       o��	�ޞh��A�*L

LossmQ,?

Adam/Loss/raw?

Accuracy/__raw_  �?

Accuracy�|?I4�Z       o��	��h��A�*L

Lossd�'?

Adam/Loss/rawi�>

Accuracy/__raw_  �?

Accuracyu#}?��Z       o��	ZC�h��A�*L

Loss��!?

Adam/Loss/raw=�T?

Accuracy/__raw_  �?

Accuracy�l}?VV
�Z       o��	l��h��A�*L

Loss��&?

Adam/Loss/rawu�S?

Accuracy/__raw_  �?

Accuracy��}?WAW�Z       o��	�ʟh��A�*L

Loss:Z+?

Adam/Loss/raw�
?

Accuracy/__raw_  �?

Accuracy��}?�Xl�Z       o��	�h��A�*L

LossER'?

Adam/Loss/raw� ?

Accuracy/__raw_  �?

Accuracya~?no�qZ       o��	�
�h��A�*L

Loss��&?

Adam/Loss/raw���>

Accuracy/__raw_  �?

AccuracyqO~?�/>�Z       o��	f*�h��A�*L

Loss��?

Adam/Loss/raw��9?

Accuracy/__raw_  �?

Accuracy�z~?U�!Z       o��	H�h��A�*L

Loss{�"?

Adam/Loss/raw��7?

Accuracy/__raw_  �?

Accuracy��~?��<�Z       o��	8h�h��A�*L

Loss �$?

Adam/Loss/rawg�/?

Accuracy/__raw_  �?

Accuracy��~?e)��Z       o��	߆�h��A�*L

Losst�%?

Adam/Loss/rawy��>

Accuracy/__raw_  �?

Accuracy4�~?�:�aZ       o��	���h��A�*L

Loss��!?

Adam/Loss/raw�2�>

Accuracy/__raw_  �?

Accuracy� ?��tZ       o��	4Ӡh��A�*L

Loss�?

Adam/Loss/raw�V?

Accuracy/__raw_  �?

Accuracy ?���Z       o��	8��h��A�*L

Loss��?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy1?c+�UZ       o��	�h��A�*L

Loss]h?

Adam/Loss/rawD�4?

Accuracy/__raw_  �?

Accuracy�E?�[u�Z       o��	�<�h��A�*L

Loss�?

Adam/Loss/raw���>

Accuracy/__raw_  �?

AccuracylX?��ڌZ       o��	K[�h��A�*L

LossB?

Adam/Loss/rawA�?

Accuracy/__raw_  `?

Accuracy.i?�Bz�Z       o��	�|�h��A�*L

Loss��?

Adam/Loss/rawi�B?

Accuracy/__raw_  �?

AccuracyE|?| �YZ       o��	ʦ�h��A�*L

Lossm1?

Adam/Loss/raw�tA?

Accuracy/__raw_  �?

Accuracy��|?^4��Z       o��	��h��A�*L

Loss^�?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��|?���
Z       o��	E�h��A�*L

Loss�i?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�G}?�y��Z       o��	D3�h��A�*L

Loss�x?

Adam/Loss/raw�?
?

Accuracy/__raw_  `?

Accuracyw�}?m5E{Z       o��		n�h��A�*L

Loss<&?

Adam/Loss/rawaV?

Accuracy/__raw_  �?

Accuracy�z?Â�Z       o��	f��h��A�*L

Loss��?

Adam/Loss/rawm3?

Accuracy/__raw_  �?

Accuracy:#{?`N�Z       o��	��h��A�*L

Loss�?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��{?dj��Z       o��	��h��A�*L

LossOO?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy�|?���Z       o��	s,�h��A�*L

Loss@$?

Adam/Loss/rawL��>

Accuracy/__raw_  �?

Accuracy�t|?�ZB�Z       o��	4M�h��A�*L

Loss��?

Adam/Loss/rawovK?

Accuracy/__raw_  �?

AccuracyN�|?9���Z       o��	jk�h��A�*L

Loss��?

Adam/Loss/raw�MJ?

Accuracy/__raw_  �?

Accuracy� }?WeX'Z       o��		��h��A�*L

Loss[4?

Adam/Loss/rawQD?

Accuracy/__raw_  �?

Accuracyzj}?��$Z       o��	O��h��A�*L

Loss�O?

Adam/Loss/rawJR�@

Accuracy/__raw_   >

Accuracy��}?��Z       o��	pˣh��A�*L

Loss<�~?

Adam/Loss/raw(�?

Accuracy/__raw_  `?

Accuracyāg?/'�Z       o��	�h��A�*L

LossS�s?

Adam/Loss/rawE��>

Accuracy/__raw_  �?

Accuracy��f?JY|�Z       o��	��h��A�*L

LossA*g?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�Gi?|Ps�Z       o��	�1�h��A�*L

Loss\�[?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracys�k?0��Z       o��	8P�h��A�*L

LossУP?

Adam/Loss/raw�?

Accuracy/__raw_  �?

Accuracy�m?�?�Z       o��	mo�h��A�*L

Loss"!I?

Adam/Loss/raw�?

Accuracy/__raw_  �?

Accuracypo?Z�+Z       o��	���h��A�*L

LossEC?

Adam/Loss/raw��!?

Accuracy/__raw_  �?

Accuracyq?Om��Z       o��	��h��A�*L

Loss�??

Adam/Loss/raw�� ?

Accuracy/__raw_  �?

Accuracy��r?#�HZ       o��	l�h��A�*L

Loss��<?

Adam/Loss/raw,��>

Accuracy/__raw_  �?

Accuracy�s?�0��Z       o��	��h��A�*L

Loss[�3?

Adam/Loss/raw!I(A

Accuracy/__raw_   >

Accuracy%"u?����Z       o��	^K�h��A�*L

Lossއ�?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��_?&���Z       o��	vl�h��A�*L

LossM�?

Adam/Loss/raw߆C?

Accuracy/__raw_  �?

Accuracy�	c?ã�9Z       o��	���h��A�*L

Loss�?

Adam/Loss/raw�C?

Accuracy/__raw_  �?

Accuracy*�e?���Z       o��	��h��A�*L

Loss̴?

Adam/Loss/raw6�>

Accuracy/__raw_  `?

Accuracys�h?���Z       o��	.�h��A�*L

Loss���?

Adam/Loss/rawY �>

Accuracy/__raw_  �?

Accuracyίg?�tZ       o��	7N�h��A�*L

LossR%�?

Adam/Loss/raw|��>

Accuracy/__raw_  �?

Accuracy9j?nˌZ       o��	am�h��A�*L

Loss&Ǔ?

Adam/Loss/raw��?

Accuracy/__raw_��*?

AccuracygNl?-kJ�Z       o��	���h��A�*L

Losse�?

Adam/Loss/raw�?

Accuracy/__raw_��*?

Accuracy�e?A�hZ       o��	���h��A�*L

Loss%��?

Adam/Loss/raw�A�>

Accuracy/__raw_  �?

Accuracy��_?����Z       o��	�ͦh��A�*L

LossW�|?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracyc?mMl�Z       o��	�h��A�*L

Loss�Oo?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy6�e?���Z       o��	=�h��A�*L

Loss�f?

Adam/Loss/raw�r�>

Accuracy/__raw_  �?

Accuracy1�h?<.Z       o��	�/�h��A�*L

Loss��Y?

Adam/Loss/raw�!�>

Accuracy/__raw_  �?

Accuracyy�j?j:FsZ       o��	�Y�h��A�*L

Loss�kN?

Adam/Loss/rawd��>

Accuracy/__raw_  `?

Accuracy�m?�,��Z       o��	�h��A�*L

Loss��E?

Adam/Loss/raw�f�@

Accuracy/__raw_  �>

Accuracy��k?����Z       o��	D��h��A�*L

Loss�ѐ?

Adam/Loss/rawuܢ>

Accuracy/__raw_  �?

AccuracyG�]?�Qx.Z       o��	`ǧh��A�*L

Loss�h�?

Adam/Loss/rawp� ?

Accuracy/__raw_  �?

Accuracys)a?:�#~Z       o��	��h��A�*L

Loss� �?

Adam/Loss/raw�?

Accuracy/__raw_  �?

Accuracy�>d?�D��Z       o��	�J�h��A�*L

Loss x?

Adam/Loss/rawF��>

Accuracy/__raw_  �?

Accuracyjg?�\�6Z       o��	$}�h��A�*L

LossÞk?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy߄i?S��Z       o��	k��h��A�*L

Loss��b?

Adam/Loss/raw�"?

Accuracy/__raw_  �?

Accuracyb�k?5׭�Z       o��	�ިh��A�*L

LosseY?

Adam/Loss/raw+�?

Accuracy/__raw_  �?

AccuracyX�m?1��Z       o��	M.�h��A�*L

Lossy�P?

Adam/Loss/rawc?

Accuracy/__raw_  �?

Accuracy��o?QNj�Z       o��	\�h��A�*L

Loss*�H?

Adam/Loss/raw܌�>

Accuracy/__raw_  �?

Accuracy@q?��@�Z       o��	턩h��A�*L

LossJv@?

Adam/Loss/raw	�>

Accuracy/__raw_  �?

Accuracy��r?�a�Z       o��	b��h��A�*L

Loss�w8?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy}t?_��FZ       o��	�éh��A�*L

Loss��1?

Adam/Loss/raw��>

Accuracy/__raw_  �?

AccuracyW?u?G�.Z       o��	��h��A�*L

Loss F,?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�Rv?-�
�Z       o��	!�h��A�*L

Loss�x'?

Adam/Loss/raw��>

Accuracy/__raw_  �?

AccuracyXJw?3j�Z       o��	�#�h��A�*L

Lossg�!?

Adam/Loss/raw6�?

Accuracy/__raw_  �?

AccuracyO)x?~˰�Z       o��	�B�h��A�*L

Lossȱ?

Adam/Loss/rawT'�>

Accuracy/__raw_  �?

Accuracy��x?��|Z       o��	�c�h��A�*L

Loss�{?

Adam/Loss/raw(�>

Accuracy/__raw_  �?

Accuracy��y?�$�Z       o��	e��h��A�*L

Loss��?

Adam/Loss/rawɪ�>

Accuracy/__raw_  �?

AccuracyIz?;/Y�Z       o��	!��h��A�*L

Loss��?

Adam/Loss/rawAa�>

Accuracy/__raw_  �?

Accuracyi�z?,�{�Z       o��	eǪh��A�*L

Loss�{?

Adam/Loss/raw@�?

Accuracy/__raw_  �?

Accuracy_{?4��Z       o��	���h��A�*L

Loss��?

Adam/Loss/rawP�?

Accuracy/__raw_  �?

Accuracy��{?���Z       o��	��h��A�*L

Lossn0?

Adam/Loss/rawa�?

Accuracy/__raw_  �?

Accuracy5@|?�e}�Z       o��	�H�h��A�*L

Loss�%?

Adam/Loss/raw��
?

Accuracy/__raw_  �?

Accuracy0�|?��bZ       o��	Wy�h��A�*L

Loss$?

Adam/Loss/raw�M�>

Accuracy/__raw_  �?

Accuracy��|?K��Z       o��	s��h��A�*L

Loss4�?

Adam/Loss/raw;L3@

Accuracy/__raw_  �>

AccuracyPD}?v\��Z       o��	/«h��A�*L

Lossz�B?

Adam/Loss/raw��>

Accuracy/__raw_  �?

AccuracyH�m?F#��Z       o��	���h��A�*L

Lossw�9?

Adam/Loss/raw(t?

Accuracy/__raw_  �?

Accuracy�bo?I�Z       o��	3�h��A�*L

Loss<�6?

Adam/Loss/raw<?

Accuracy/__raw_  �?

Accuracy+q?��Z       o��	/��h��A�*L

Loss�3?

Adam/Loss/raw�Q?

Accuracy/__raw_  �?

Accuracy�r?@)�Z       o��	�h��A�*L

Losss/?

Adam/Loss/raw"�>

Accuracy/__raw_  �?

Accuracyu�s?��Z       o��	!ʬh��A�*L

Loss�&?

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracy�u?h�3&Z       o��	��h��A�*L

Loss�$?

Adam/Loss/rawK�>

Accuracy/__raw_  �?

Accuracy�0v?W�)�Z       o��	_	�h��A�*L

Loss{�?

Adam/Loss/raw�D�>

Accuracy/__raw_  �?

Accuracy�+w?��9bZ       o��	�(�h��A�*L

Loss��?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�x?t���Z       o��	I�h��A�*L

Lossk�?

Adam/Loss/raw "�>

Accuracy/__raw_  �?

Accuracy*�x?:2�qZ       o��	�h�h��A�*L

LossH�?

Adam/Loss/raw޼?

Accuracy/__raw_  �?

Accuracy?�y?��4jZ       o��	���h��A�*L

Lossqk?

Adam/Loss/raw�_�>

Accuracy/__raw_  �?

Accuracy5z?�9�Z       o��	W��h��A�*L

Loss�
?

Adam/Loss/raw��>

Accuracy/__raw_  �?

AccuracyR�z?:u��Z       o��	{խh��A�*L

Loss�?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�N{?Rj��Z       o��	���h��A�*L

Loss�9?

Adam/Loss/raw�̰>

Accuracy/__raw_  �?

Accuracy��{?��Z       o��	\�h��A�*L

Losse��>

Adam/Loss/raw9��>

Accuracy/__raw_  �?

Accuracy3|?7��Z       o��	�H�h��A�*L

Loss��>

Adam/Loss/raw��?

Accuracy/__raw_  �?

AccuracyQ�|?�.SZ       o��	+��h��A�*L

Lossi��>

Adam/Loss/rawU?

Accuracy/__raw_  �?

Accuracy��|?m�oZ       o��	��h��A�*L

Loss�V ?

Adam/Loss/raw�ơ>

Accuracy/__raw_  �?

Accuracy�:}?���Z       o��	�h��A�*L

Loss�/�>

Adam/Loss/rawj�>

Accuracy/__raw_  `?

Accuracy��}?�)Z       o��	�_�h��A�*L

Loss�h�>

Adam/Loss/rawݺ�>

Accuracy/__raw_  �?

AccuracyD�z?$e�PZ       o��	���h��A�*L

LossY��>

Adam/Loss/raw<V�>

Accuracy/__raw_  �?

Accuracy�{?a��Z       o��	���h��A�*L

Loss�}�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�{?_�@Z       o��	]įh��A�*L

Loss���>

Adam/Loss/raw9�?

Accuracy/__raw_  `?

Accuracy�|?�`:�Z       o��	~�h��A�*L

Loss���>

Adam/Loss/raw���@

Accuracy/__raw_    

Accuracy_:y?[J�!Z       o��	��h��A�*L

LossKO�?

Adam/Loss/raw\L�>

Accuracy/__raw_  `?

Accuracy"N`?n��Z       o��	_$�h��A�*L

Loss�O�?

Adam/Loss/raw��f>

Accuracy/__raw_  �?

AccuracyRF`?6B�Z       o��	�B�h��A�*L

Loss:�s?

Adam/Loss/raw�g>

Accuracy/__raw_  �?

Accuracy}rc?��quZ       o��	�v�h��A�*L

Loss�Ua?

Adam/Loss/rawZ&�>

Accuracy/__raw_  �?

AccuracyqMf?2l�=Z       o��	Cưh��A�*L

Loss�NV?

Adam/Loss/rawx��>

Accuracy/__raw_  �?

AccuracyL�h?���_Z       o��	d�h��A�*L

Lossu�L?

Adam/Loss/raw3T?

Accuracy/__raw_  �?

Accuracy^/k?��|Z       o��	t�h��A�*L

LossnF?

Adam/Loss/rawc��>

Accuracy/__raw_  �?

Accuracy;Dm?�-�Z       o��	�%�h��A�*L

Loss�>?

Adam/Loss/rawdX�>

Accuracy/__raw_  �?

Accuracy�#o?'c��Z       o��	�E�h��A�*L

Loss��6?

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracyn�p?i���Z       o��	�e�h��A�*L

Loss�'.?

Adam/Loss/raw-ڢ>

Accuracy/__raw_  �?

Accuracy�$o?yٟ�Z       o��	j��h��A�*L

Loss��$?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy8�p?H�߶Z       o��	,��h��A�*L

Loss��?

Adam/Loss/raw�w>

Accuracy/__raw_  �?

Accuracy�Xr?=k�Z       o��	��h��A�*L

Loss�
?

Adam/Loss/raw�Xv>

Accuracy/__raw_  �?

Accuracy#�s?���xZ       o��	��h��A�*L

LossM2?

Adam/Loss/raw&B�>

Accuracy/__raw_  `?

Accuracy��t?�rZ       o��	�1�h��A�*L

Lossa=?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��r?�]�7Z       o��	j�h��A�*L

Loss{�?

Adam/Loss/rawZ��>

Accuracy/__raw_  �?

Accuracyb)t?)���Z       o��	���h��A�*L

Loss��?

Adam/Loss/raw˻�>

Accuracy/__raw_  �?

AccuracyrXu?���5Z       o��	j��h��A�*L

Loss��>

Adam/Loss/raw�N�>

Accuracy/__raw_  �?

Accuracy3iv?U��HZ       o��	#�h��A�*L

Loss� �>

Adam/Loss/rawh�>

Accuracy/__raw_  `?

Accuracy�^w?��{�Z       o��	�F�h��A�*L

LossN��>

Adam/Loss/raw�x�>

Accuracy/__raw_  �?

Accuracyiu?�LZ       o��	�t�h��A�*L

Loss�P�>

Adam/Loss/raw���>

Accuracy/__raw_  `?

Accuracy+!v?�-X�Z       o��	ܝ�h��A�*L

Loss���>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��s?�V�Z       o��	A��h��A�*L

Loss޲�>

Adam/Loss/rawA�=

Accuracy/__raw_  �?

Accuracy�u?Z�v&Z       o��	T�h��A�*L

Loss5\�>

Adam/Loss/raw��?

Accuracy/__raw_  �?

Accuracyd6v?8C�sZ       o��	��h��A�*L

Loss���>

Adam/Loss/raw(b�>

Accuracy/__raw_  �?

Accuracy�0w?V/��Z       o��	�F�h��A�*L

Loss��>

Adam/Loss/raw
�?

Accuracy/__raw_  `?

Accuracyux?갛�Z       o��	M~�h��A�*L

LossR��>

Adam/Loss/rawͿa>

Accuracy/__raw_  �?

Accuracy6�u?��n�Z       o��	̰�h��A�*L

Loss���>

Adam/Loss/raw��[>

Accuracy/__raw_  �?

Accuracyʲv?���Z       o��	�ִh��A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�w?+���Z       o��	�
�h��A�*L

Loss�|�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy8wx?7��!Z       o��	B�h��A�*L

Losstʽ>

Adam/Loss/rawJF�>

Accuracy/__raw_  `?

Accuracy8y?�9׹Z       o��	&l�h��A�*L

Losspp�>

Adam/Loss/rawۀ�>

Accuracy/__raw_  �?

Accuracy}�v?�?$�Z       o��	?��h��A�*L

LossG��>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��w?���Z       o��	�͵h��A�*L

Loss9ʻ>

Adam/Loss/raw5�?

Accuracy/__raw_  �?

Accuracy�vx?nyI-Z       o��	:�h��A�*L

Lossq!�>

Adam/Loss/raw(i}>

Accuracy/__raw_  �?

Accuracy�7y?��<�Z       o��	
�h��A�*L

Loss��>

Adam/Loss/raw֐�>

Accuracy/__raw_  �?

Accuracy~�y?��Z       o��	�4�h��A�*L

Loss��>

Adam/Loss/raw�@E?

Accuracy/__raw_��*?

Accuracy��z?�IlZ       o��	�Z�h��A�*L

LossK�>

Adam/Loss/rawC?

Accuracy/__raw_��*?

Accuracyօr?b3eyZ       o��	�y�h��A�*L

Loss"+�>

Adam/Loss/rawt۬>

Accuracy/__raw_  �?

AccuracyRVk?y�J�Z       o��	t��h��A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  �?

AccuracyJgm?ъ�Z       o��	
��h��A�*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy\Co?t���Z       o��	g�h��A�*L

Loss�8�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��p?��[�Z       o��	�H�h��A�*L

LossT�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracyqqr?��Z       o��	�l�h��A�*L

Loss0�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�s?���6Z       o��	X��h��A�*L

Loss��>

Adam/Loss/raw��}>

Accuracy/__raw_  �?

Accuracy�u?7)GZ       o��	q��h��A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�v?,14�Z       o��	.ͷh��A�*L

Loss���>

Adam/Loss/rawyIu>

Accuracy/__raw_  �?

Accuracy�w?���Z       o��	=�h��A�*L

Loss/.�>

Adam/Loss/raw7-s>

Accuracy/__raw_  �?

Accuracy��w?��pZ       o��	.�h��A�*L

Loss�8�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��x?):�gZ       o��	�s�h��A�*L

Loss���>

Adam/Loss/rawv��>

Accuracy/__raw_  �?

Accuracy�y?��MZ       o��	���h��A�*L

Loss6��>

Adam/Loss/rawL��>

Accuracy/__raw_  �?

Accuracy*z?v��Z       o��	~Ƹh��A�*L

Loss뙺>

Adam/Loss/raw�^ ?

Accuracy/__raw_  �?

Accuracyp�z?V�Z       o��	��h��A�*L

Loss���>

Adam/Loss/raw3�>

Accuracy/__raw_  �?

Accuracy�E{?u�]�Z       o��	�+�h��A�*L

LossK��>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�{?�_oZ       o��	{L�h��A�*L

Loss`J�>

Adam/Loss/rawA�>

Accuracy/__raw_  �?

Accuracy�+|?���Z       o��	�v�h��A�*L

Loss]��>

Adam/Loss/raw�E�>

Accuracy/__raw_  �?

Accuracy֍|?�P�Z       o��	喹h��A�*L

LossR:�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�|?�T��Z       o��	J��h��A�*L

Losstb�>

Adam/Loss/raw %�>

Accuracy/__raw_  �?

Accuracyr5}?��mZ       o��	�׹h��A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�|}?M�cTZ       o��	��h��A�*L

Losso��>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy6�}?����Z       o��	�a�h��A�*L

LossdW�>

Adam/Loss/raw$��>

Accuracy/__raw_  �?

Accuracy�}?6֫�Z       o��	���h��A�*L

Lossw��>

Adam/Loss/raw8[�>

Accuracy/__raw_  �?

Accuracy.+~?*�e�Z       o��	f��h��A�*L

Loss�T�>

Adam/Loss/raw=�>

Accuracy/__raw_  �?

AccuracyZ~?���Z       o��	�Ӻh��A�*L

LossB��>

Adam/Loss/raw^��>

Accuracy/__raw_  �?

AccuracyB�~?��B�Z       o��	e�h��A�*L

Loss6�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy;�~?{�c�Z       o��	[�h��A�*L

Loss�
�>

Adam/Loss/raw2�>

Accuracy/__raw_  �?

Accuracyh�~?�Z       o��	���h��A�*L

Losss:�>

Adam/Loss/raw�0�>

Accuracy/__raw_  �?

Accuracy*�~?�u
�Z       o��	!�h��A�*L

LossH��>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�?�Q0Z       o��	��h��A�*L

Loss8Ƽ>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�?�u� Z       o��	�W�h��A�*L

Loss�?�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy06?1�DZ       o��	�{�h��A�*L

Lossg�>

Adam/Loss/raw�3�>

Accuracy/__raw_  �?

Accuracy^J?�4HZ       o��	���h��A�*L

LossVm�>

Adam/Loss/rawu�>

Accuracy/__raw_  �?

Accuracy�\?�u��Z       o��	�ʼh��A�*L

Loss&�>

Adam/Loss/raw�r�>

Accuracy/__raw_  �?

Accuracy�l?(�??Z       o��	��h��A�*L

Loss��>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�{?W�U_Z       o��	�h��A�*L

Loss� �>

Adam/Loss/raw*v�>

Accuracy/__raw_  �?

AccuracyՈ? b�Z       o��	�t�h��A�*L

Lossm)�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��?���Z       o��	���h��A�*L

Loss��>

Adam/Loss/rawH��>

Accuracy/__raw_  �?

Accuracyz�?C,��Z       o��		�h��A�*L

LossԜ�>

Adam/Loss/raw@��>

Accuracy/__raw_  �?

Accuracy!�?W��Z       o��	��h��A�*L

Loss��>

Adam/Loss/rawf��>

Accuracy/__raw_  �?

Accuracyѱ?�+b,Z       o��	�(�h��A�*L

Loss�s�>

Adam/Loss/raw�	l>

Accuracy/__raw_  �?

Accuracy��?�؏�Z       o��	�a�h��A�*L

Loss��>

Adam/Loss/raw�az>

Accuracy/__raw_  �?

Accuracy��?�eZ       o��	�۾h��A�*L

Lossy7�>

Adam/Loss/raw$4�>

Accuracy/__raw_  �?

Accuracy�?e؛�Z       o��	�<�h��A�*L

LossW�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��?VU�Z       o��	s��h��A�*L

Loss~ �>

Adam/Loss/raw�1�>

Accuracy/__raw_  �?

Accuracy��?S�rvZ       o��	W�h��A�*L

Loss6R�>

Adam/Loss/raw[e�>

Accuracy/__raw_  �?

Accuracys�?_c@Z       o��	�v�h��A�*L

Loss���>

Adam/Loss/rawY�\>

Accuracy/__raw_  �?

Accuracy��?�[&CZ       o��	$��h��A�*L

Loss �>

Adam/Loss/raw��>

Accuracy/__raw_  �?

AccuracyX�?#6�]Z       o��	R-�h��A�*L

Lossu��>

Adam/Loss/raw}�>

Accuracy/__raw_  �?

Accuracy��?�d-Z       o��	v�h��A�*L

Loss7�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��?bg��Z       o��	M��h��A�*L

LosscY�>

Adam/Loss/raw)��>

Accuracy/__raw_  �?

Accuracyw�?`s��Z       o��	z7�h��A�*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��? �luZ       o��	:��h��A�*L

LossG��>

Adam/Loss/raw�^�>

Accuracy/__raw_  �?

Accuracy �?_]�5Z       o��	���h��A�*L

Loss"B�>

Adam/Loss/rawU3�>

Accuracy/__raw_  �?

Accuracy�?���"Z       o��	E��h��A�*L

Losst�>

Adam/Loss/raw�/�>

Accuracy/__raw_  �?

Accuracy��?c�nZ       o��	M�h��A�*L

Loss~��>

Adam/Loss/raw��;>

Accuracy/__raw_  �?

Accuracy��?�H�Z       o��	7�h��A�*L

Loss�2�>

Adam/Loss/raw{�>

Accuracy/__raw_  �?

Accuracy��?��Z       o��	XW�h��A�*L

LossV��>

Adam/Loss/raw�X�>

Accuracy/__raw_  �?

AccuracyD�?ug[�Z       o��	�w�h��A�*L

Loss��>

Adam/Loss/raw?��>

Accuracy/__raw_  �?

Accuracyp�?EY�]Z       o��	I��h��A�*L

Loss�>

Adam/Loss/raw �R>

Accuracy/__raw_  �?

Accuracy~�?��Z       o��	���h��A�*L

Lossa��>

Adam/Loss/raw��s>

Accuracy/__raw_  �?

Accuracyq�?t���Z       o��	+�h��A�*L

Loss�>

Adam/Loss/rawŏ>

Accuracy/__raw_  �?

AccuracyL�?��7Z       o��	�3�h��A�*L

Loss�>

Adam/Loss/raw��
>

Accuracy/__raw_  �?

Accuracy�?��M�Z       o��	�T�h��A�*L

Loss�B�>

Adam/Loss/raw!
>

Accuracy/__raw_  �?

Accuracy��?����Z       o��	t�h��A�*L

LossiW�>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracyc�?�Q�Z       o��	G��h��A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��?�#Z�Z       o��	��h��A�*L

Loss�א>

Adam/Loss/raw�T�>

Accuracy/__raw_  �?

Accuracyt�?��(Z       o��	h��h��A�*L

LossⰕ>

Adam/Loss/raw3�>

Accuracy/__raw_  �?

Accuracy��?��TZ       o��	��h��A�*L

Loss�ϔ>

Adam/Loss/raw�ڋ>

Accuracy/__raw_  �?

AccuracyQ�?i	�3Z       o��	�E�h��A�*L

LossQ�>

Adam/Loss/rawn�y>

Accuracy/__raw_  �?

Accuracy��?�.��Z       o��	�d�h��A�*L

Loss���>

Adam/Loss/raw Xt>

Accuracy/__raw_  �?

Accuracy�?�l�Z       o��	��h��A�*L

Loss�B�>

Adam/Loss/raw�t>

Accuracy/__raw_  �?

AccuracyP�?]+]:Z       o��	���h��A�*L

Loss8+�>

Adam/Loss/raw�:>

Accuracy/__raw_  �?

Accuracy��?��C;Z       o��	�'�h��A�*L

Loss�a�>

Adam/Loss/rawgj8>

Accuracy/__raw_  �?

Accuracy��? 1Z       o��	�J�h��A�*L

Loss���>

Adam/Loss/rawv�>

Accuracy/__raw_  �?

Accuracy�?�)�Z       o��	�i�h��A�*L

Lossl�>

Adam/Loss/raw�K�>

Accuracy/__raw_  �?

Accuracy=�?�+��Z       o��	���h��A�*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracyj�?�rBZ       o��	���h��A�*L

Lossj̎>

Adam/Loss/raw S�>

Accuracy/__raw_  �?

Accuracy��?>�,^Z       o��		��h��A�*L

Loss�ٔ>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��?�90Z       o��	��h��A�*L

Losse$�>

Adam/Loss/raw�F>

Accuracy/__raw_  �?

Accuracy��?�+AgZ       o��	}�h��A�*L

Loss"��>

Adam/Loss/rawy�g>

Accuracy/__raw_  �?

Accuracy��?�duZ       o��	 &�h��A�*L

Loss�\�>

Adam/Loss/raw�m�>

Accuracy/__raw_  �?

Accuracy�?���Z       o��	VG�h��A�*L

Loss/x�>

Adam/Loss/raw�W>

Accuracy/__raw_  �?

Accuracy*�?�F��Z       o��	�k�h��A�*L

Loss�f�>

Adam/Loss/raw'FU>

Accuracy/__raw_  �?

Accuracy?�?p�!�Z       o��	��h��A�*L

Loss矌>

Adam/Loss/rawz&R>

Accuracy/__raw_  �?

AccuracyR�?���rZ       o��	��h��A�*L

Loss��>

Adam/Loss/raw�ِ>

Accuracy/__raw_  �?

Accuracyc�?���PZ       o��	���h��A�*L

Lossى>

Adam/Loss/rawO>

Accuracy/__raw_  �?

Accuracys�?a�F�Z       o��	 ��h��A�*L

LossFk�>

Adam/Loss/raw��d>

Accuracy/__raw_  �?

Accuracy��?���Z       o��	Q4�h��A�*L

Loss�l�>

Adam/Loss/raw��b>

Accuracy/__raw_  �?

Accuracy��?���BZ       o��	�y�h��A�*L

LossE��>

Adam/Loss/raw�;b>

Accuracy/__raw_  �?

Accuracy��?L�"Z       o��	ߦ�h��A�*L

Loss�ɀ>

Adam/Loss/raw�Q�>

Accuracy/__raw_  �?

Accuracy��?Ռ]�Z       o��	���h��A�*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy��?�U�Z       o��	��h��A�*L

Loss.��>

Adam/Loss/raw �>

Accuracy/__raw_  �?

Accuracy��?�/�Z       o��	1,�h��A�*L

Loss�>

Adam/Loss/rawḲ>

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�L�h��A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��?F�T+Z       o��	�l�h��A�*L

Lossj�>

Adam/Loss/raw��@>

Accuracy/__raw_  �?

Accuracy��?�5Z       o��	���h��A�*L

Loss���>

Adam/Loss/raw�*�>

Accuracy/__raw_  �?

Accuracy��?�>�BZ       o��	s��h��A�*L

LossA�>

Adam/Loss/raw#*>

Accuracy/__raw_  �?

Accuracy��?�(JZ       o��	���h��A�*L

Loss#��>

Adam/Loss/rawA]&>

Accuracy/__raw_  �?

Accuracy��?��jEZ       o��	��h��A�*L

Lossɝ�>

Adam/Loss/rawE�g>

Accuracy/__raw_  �?

Accuracy��?E��Z       o��	Z�h��A�*L

Loss��~>

Adam/Loss/raw��@

Accuracy/__raw_  �>

Accuracy��?���Z       o��	{�h��A�*L

Loss�Vp?

Adam/Loss/raw ƃ>

Accuracy/__raw_  �?

Accuracy��l?"���Z       o��	t��h��A�*L

Loss��^?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy8�n?;?ZZ       o��	���h��A�*L

Loss\�S?

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�rp?U��Z       o��	���h��A�*L

Loss�YI?

Adam/Loss/rawV�C>

Accuracy/__raw_  �?

Accuracy� r?IM��Z       o��	�h��A�*L

Loss�:?

Adam/Loss/raw�bx>

Accuracy/__raw_  �?

Accuracygs?=�x�Z       o��	*�h��A�*L

Loss,�-?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��t?weZ       o��	Ry�h��A�*L

Loss�; ?

Adam/Loss/raw�s>

Accuracy/__raw_  �?

Accuracy��u?X�
-Z       o��	n��h��A�*L

Loss3�?

Adam/Loss/rawK2>

Accuracy/__raw_  �?

Accuracy�v?a�h:Z       o��	\��h��A�*L

Loss<+?

Adam/Loss/rawDV�>

Accuracy/__raw_  �?

Accuracy�w?����Z       o��	� �h��A�*L

Loss�?

Adam/Loss/rawò�>

Accuracy/__raw_  �?

Accuracy��x?V��Z       o��	�6�h��A�*L

Loss)��>

Adam/Loss/raw��9>

Accuracy/__raw_  �?

Accuracy$Ny?��XgZ       o��	���h��A�*L

Loss��>

Adam/Loss/raw�s>

Accuracy/__raw_  �?

Accuracy��y?���mZ       o��	"��h��A�*L

Loss_n�>

Adam/Loss/rawkEr>

Accuracy/__raw_  �?

AccuracyƓz?q(dZ       o��	���h��A�*L

Loss�>

Adam/Loss/rawb`>

Accuracy/__raw_  �?

Accuracy�{?܃�Z       o��	���h��A�*L

LossR��>

Adam/Loss/raw�G�>

Accuracy/__raw_  �?

Accuracy��{?�q�Z       o��	��h��A�*L

Loss���>

Adam/Loss/raw8p�>

Accuracy/__raw_  �?

Accuracy�|?����Z       o��	�*�h��A�*L

Loss���>

Adam/Loss/raw'Vl>

Accuracy/__raw_  �?

Accuracy0q|?�#ZKZ       o��	@K�h��A�*L

Loss�
�>

Adam/Loss/raw��j>

Accuracy/__raw_  �?

AccuracyE�|?�xM�Z       o��	�j�h��A�*L

LossI��>

Adam/Loss/raw��b>

Accuracy/__raw_  �?

Accuracy>}?pF��Z       o��	��h��A�*L

Lossq;�>

Adam/Loss/rawW�Z>

Accuracy/__raw_  �?

Accuracyh}?�Ǧ�Z       o��	���h��A�*L

Loss���>

Adam/Loss/raw��z>

Accuracy/__raw_  �?

Accuracyk�}?5O��Z       o��	���h��A�*L

Loss���>

Adam/Loss/raw��X>

Accuracy/__raw_  �?

Accuracy-�}?����Z       o��	B��h��A�*L

LossM�>

Adam/Loss/raw��W>

Accuracy/__raw_  �?

Accuracy�~?PJ@Z       o��	��h��A�*L

Loss �>

Adam/Loss/raw|(G>

Accuracy/__raw_  �?

Accuracy]L~?�.�Z       o��	/�h��A�*L

LossS��>

Adam/Loss/raw�ۑ>

Accuracy/__raw_  �?

Accuracy�w~?���>Z       o��	�Q�h��A�*L

Loss%{�>

Adam/Loss/raw�yU>

Accuracy/__raw_  �?

Accuracy"�~?�5Z       o��	��h��A�*L

Lossh�>

Adam/Loss/raw�O^>

Accuracy/__raw_  �?

Accuracyk�~?�a�Z       o��	���h��A�*L

Loss�.�>

Adam/Loss/raw�y[>

Accuracy/__raw_  �?

Accuracy-�~?�d'�Z       o��	��h��A�*L

Loss!#�>

Adam/Loss/raw�ĉ>

Accuracy/__raw_  �?

Accuracy��~?�C�uZ       o��	�I�h��A�*L

LossH3�>

Adam/Loss/raw�l>

Accuracy/__raw_  �?

Accuracy{?�$zZ       o��	k�h��A�*L

LosspH�>

Adam/Loss/rawXV>

Accuracy/__raw_  �?

Accuracy�/?)�}�Z       o��	���h��A�*L

Lossiu�>

Adam/Loss/rawٽ>

Accuracy/__raw_  �?

AccuracyxD?����Z       o��	i��h��A�*L

Loss�}>

Adam/Loss/raw�>>

Accuracy/__raw_  �?

Accuracy9W?�&�`Z       o��	`��h��A�*L

LossFts>

Adam/Loss/rawK�y>

Accuracy/__raw_  �?

Accuracyh?�!U"Z       o��	s��h��A�*L

Loss�t>

Adam/Loss/raw�߆>

Accuracy/__raw_  �?

AccuracyKw?��2�Z       o��	��h��A�*L

Loss]�v>

Adam/Loss/rawت�>

Accuracy/__raw_  �?

Accuracy��?נ�Z       o��	�1�h��A�*L

Loss�!x>

Adam/Loss/raw���>

Accuracy/__raw_  �?

AccuracyE�?�ϥZ       o��	rP�h��A�*L

LossS�>

Adam/Loss/rawՉ�>

Accuracy/__raw_  �?

AccuracyX�?'h�
Z       o��	_��h��A�*L

Loss��>

Adam/Loss/raw�>

Accuracy/__raw_  �?

AccuracyO�?G�
"Z       o��	���h��A�*L

Loss���>

Adam/Loss/rawZ>

Accuracy/__raw_  �?

AccuracyG�?K!5�Z       o��	E��h��A�*L

Loss3Jz>

Adam/Loss/raw��t>

Accuracy/__raw_  �?

AccuracyZ�?��ZZ       o��	��h��A�*L

Loss��y>

Adam/Loss/raw� Y>

Accuracy/__raw_  �?

Accuracy��?ё+YZ       o��	1�h��A�*L

Lossrv>

Adam/Loss/raw��V>

Accuracy/__raw_  �?

Accuracy(�?�]�Z       o��	�P�h��A�*L

Loss#Gs>

Adam/Loss/raw�Ba>

Accuracy/__raw_  �?

Accuracy
�?Y�2Z       o��	�p�h��A�*L

Loss�yq>

Adam/Loss/raw���@

Accuracy/__raw_    

AccuracyV�?V -Z       o��	O��h��A�*L

Lossn�_?

Adam/Loss/raw�?>

Accuracy/__raw_  �?

Accuracy�;f?�p��Z       o��	��h��A�*L

Loss�iM?

Adam/Loss/rawt�>

Accuracy/__raw_  �?

Accuracy&�h?����Z       o��	l	�h��A�*L

LossG@?

Adam/Loss/raw}v�>

Accuracy/__raw_  �?

Accuracy� k?ǆ.�Z       o��	�2�h��A�*L

Loss=l4?

Adam/Loss/rawV:�>

Accuracy/__raw_  �?

Accuracy&7m?�7^�Z       o��	�n�h��A�*L

LossU$)?

Adam/Loss/raw�Q>

Accuracy/__raw_  �?

Accuracy	o?d&�CZ       o��	£�h��A�*L

Losssx?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��p?FS�Z       o��	���h��A�*L

Loss�-?

Adam/Loss/raw$W�>

Accuracy/__raw_  �?

AccuracyYNr?��Z       o��	3�h��A�*L

Lossdm?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�s?.P�Z       o��	z9�h��A�*L

Loss(D?

Adam/Loss/raw�c>

Accuracy/__raw_  �?

Accuracyl�t?�U&Z       o��	�Y�h��A�*L

Loss&�>

Adam/Loss/raw:*>

Accuracy/__raw_  �?

Accuracyav?.���Z       o��	[{�h��A�*L

Loss�[�>

Adam/Loss/raw$�>

Accuracy/__raw_  �?

Accuracy�w?��Z       o��	��h��A�*L

Loss�!�>

Adam/Loss/raw�{>

Accuracy/__raw_  �?

Accuracy��w?�A�Z       o��	��h��A�*L

Loss��>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy��x?Ó�Z       o��	3��h��A�*L

Loss5}�>

Adam/Loss/raw�i>

Accuracy/__raw_  �?

AccuracyBsy?����Z       o��	G��h��A�*L

Lossp�>

Adam/Loss/rawBd->

Accuracy/__raw_  �?

Accuracy�z?еo�Z       o��	��h��A�*L

Loss�)�>

Adam/Loss/raw�?K>

Accuracy/__raw_  �?

Accuracyױz?���Z       o��	�?�h��A�*L

Loss�h�>

Adam/Loss/raw^�>

Accuracy/__raw_  �?

Accuracy�9{?>��Z       o��	^�h��A�*L

Loss��>

Adam/Loss/raw�N�>

Accuracy/__raw_  �?

Accuracy�{?��Z       o��	�{�h��A�*L

Loss`�>

Adam/Loss/raw]�k>

Accuracy/__raw_  �?

Accuracy�!|?��v�Z       o��	��h��A�*L

Losshv�>

Adam/Loss/raw:�@

Accuracy/__raw_    

Accuracy�|?�u�[Z       o��	���h��A�*L

Loss�O�?

Adam/Loss/raw̡L>

Accuracy/__raw_  �?

AccuracylDc?�\fZ       o��	'��h��A�*L

Loss7l?

Adam/Loss/raw;P�>

Accuracy/__raw_  �?

Accuracy�#f?Ԭ�DZ       o��	��h��A�*L

Loss��[?

Adam/Loss/rawrH�>

Accuracy/__raw_  �?

Accuracy��h?e�+Z       o��	?T�h��A�*L

Loss�M?

Adam/Loss/raw��a>

Accuracy/__raw_  �?

Accuracy�k?;��!Z       o��	���h��A�*L

Loss%�>?

Adam/Loss/raw�/>

Accuracy/__raw_  �?

Accuracy&m?�o�nZ       o��	`��h��A�*L

Loss��/?

Adam/Loss/rawj�U>

Accuracy/__raw_  �?

Accuracy�o?�J�CZ       o��	���h��A�*L

Loss�#?

Adam/Loss/raw��|>

Accuracy/__raw_  �?

Accuracy�p?G�b^Z       o��	@�h��A�*L

Loss�?

Adam/Loss/raw\�{>

Accuracy/__raw_  �?

Accuracy�Ar?j�q�Z       o��	�0�h��A�*L

Loss2�?

Adam/Loss/raw�.�>

Accuracy/__raw_  �?

Accuracy��s?/��cZ       o��	�U�h��A�*L

Loss�?

Adam/Loss/rawV��@

Accuracy/__raw_  �>

AccuracyM�t?kF�Z       o��	;u�h��A�*L

Lossd�~?

Adam/Loss/rawcIe>

Accuracy/__raw_  �?

Accuracy�b?�l��Z       o��	B��h��A�*L

Lossc�j?

Adam/Loss/raw��^>

Accuracy/__raw_  �?

Accuracy�e?���Z       o��	���h��A�*L

Loss��X?

Adam/Loss/raw�]>

Accuracy/__raw_  �?

AccuracyBUh?Kqb�Z       o��	���h��A�*L

Loss��H?

Adam/Loss/raw��;>

Accuracy/__raw_  �?

Accuracy"�j?���5Z       o��		7�h��A�*L

Loss�Z9?

Adam/Loss/raw�JU>

Accuracy/__raw_  �?

Accuracyk�l?9��UZ       o��	�W�h��A�*L

Loss�&,?

Adam/Loss/raw�1[>

Accuracy/__raw_  �?

Accuracy-�n?��k3Z       o��	)x�h��A�*L

Lossvj ?

Adam/Loss/raw%��>

Accuracy/__raw_  �?

Accuracy�xp?����Z       o��	��h��A�*L

LossƳ?

Adam/Loss/rawXM�>

Accuracy/__raw_  �?

Accuracy`r?��ǝZ       o��	��h��A�*L

Lossv�?

Adam/Loss/raw�>>

Accuracy/__raw_  �?

Accuracy#ls?:5?5Z       o��	(��h��A�*L

LossC�?

Adam/Loss/raw�6>

Accuracy/__raw_  �?

Accuracy �t?����Z       o��	L��h��A�*L

Lossķ�>

Adam/Loss/raw@hh>

Accuracy/__raw_  �?

Accuracy��u?< ��Z       o��	;:�h��A�*L

Lossg��>

Adam/Loss/rawHI�>

Accuracy/__raw_  �?

Accuracy��v?]��Z       o��	{f�h��A�*L

Loss���>

Adam/Loss/raw�Z�>

Accuracy/__raw_  �?

Accuracys�w?��E\Z       o��	H��h��A�*L

LossC��>

Adam/Loss/rawQhd>

Accuracy/__raw_  �?

Accuracy��x?�oqZ       o��	���h��A�*L

Loss���>

Adam/Loss/raw�`>

Accuracy/__raw_  �?

Accuracy�Py?+m%2Z       o��	���h��A�*L

Lossю�>

Adam/Loss/raw�4'>

Accuracy/__raw_  �?

Accuracy��y?���iZ       o��	�=�h��A�*L

Loss�)�>

Adam/Loss/raw�W>

Accuracy/__raw_  �?

Accuracy��z?k��Z       o��	�v�h��A�*L

Loss�S�>

Adam/Loss/raw�zV>

Accuracy/__raw_  �?

Accuracy� {?'�9�Z       o��	_��h��A�*L

Loss�7�>

Adam/Loss/raw<�`>

Accuracy/__raw_  �?

AccuracyN�{?�T��Z       o��	ط�h��A�*L

Loss�T�>

Adam/Loss/raw:a>

Accuracy/__raw_  �?

Accuracy�|?	9�Z       o��	E��h��A�*L

LossT�>

Adam/Loss/raw�Y>

Accuracy/__raw_  �?

Accuracy�r|?NC�Z       o��	]��h��A�*L

Loss��>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy��|?b�\Z       o��	u�h��A�*L

Loss�j�>

Adam/Loss/raw��
>

Accuracy/__raw_  �?

Accuracyf}?p�b)Z       o��	C;�h��A�*L

LossW��>

Adam/Loss/raw 42>

Accuracy/__raw_  �?

Accuracyi}?:��Z       o��	6]�h��A�*L

Lossi��>

Adam/Loss/rawp�o>

Accuracy/__raw_  �?

AccuracyZ�}?{}�_Z       o��	}�h��A�*L

Loss�[�>

Adam/Loss/rawB�>

Accuracy/__raw_  �?

Accuracy�}?s8�Z       o��	���h��A�*L

Loss�P{>

Adam/Loss/raw�I�>

Accuracy/__raw_  �?

Accuracy�~?b=d�Z       o��	��h��A�*L

Loss2q~>

Adam/Loss/raw,��>

Accuracy/__raw_  �?

AccuracyM~?b���Z       o��	���h��A�*L

Loss���>

Adam/Loss/raw�	l>

Accuracy/__raw_  �?

Accuracy�x~?p��GZ       o��	���h��A�*L

Loss>

Adam/Loss/raw0vH>

Accuracy/__raw_  �?

Accuracy��~?���=Z       o��	7�h��A�*L

Loss��y>

Adam/Loss/raw�\�>

Accuracy/__raw_  �?

Accuracy��~?���Z       o��	�P�h��A�*L

Loss�|>

Adam/Loss/rawl�>

Accuracy/__raw_  �?

Accuracy��~?>���Z       o��	��h��A�*L

Loss�!r>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy)�~?��Z       o��	���h��A�*L

Loss�i>

Adam/Loss/raw5�=

Accuracy/__raw_  �?

Accuracy�?T�Z       o��	,�h��A�*L

Loss9�]>

Adam/Loss/raw�&Q>

Accuracy/__raw_  �?

Accuracy�/?����Z       o��	ƈ�h��A�*L

Loss��\>

Adam/Loss/raw+eo>

Accuracy/__raw_  �?

Accuracy�D?D�q�Z       o��	Ͻ�h��A�*L

Loss�q^>

Adam/Loss/rawq]S>

Accuracy/__raw_  �?

Accuracy}W?�	'Z       o��	���h��A�*L

Loss.V]>

Adam/Loss/rawS�Q>

Accuracy/__raw_  �?

AccuracyWh?Z�yRZ       o��	�	�h��A�*L

Loss2-\>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�w?�t�OZ       o��	�3�h��A�*L

LossɂU>

Adam/Loss/rawl�A

Accuracy/__raw_   >

Accuracy(�?�{XZ       o��	�U�h��A�*L

Loss�D�?

Adam/Loss/rawp9>

Accuracy/__raw_  �?

Accuracy
+i?����Z       o��	�x�h��A�*L

Loss�T�?

Adam/Loss/raw+�C>

Accuracy/__raw_  �?

Accuracy�sk?�Bm�Z       o��	���h��A�*L

LossJJz?

Adam/Loss/rawcw@>

Accuracy/__raw_  �?

Accuracy��m?X�QZ       o��	���h��A�*L

Loss�f?

Adam/Loss/raw&f9>

Accuracy/__raw_  �?

Accuracy[o?͛��Z       o��	v��h��A�*L

LossU�S?

Adam/Loss/raw�`]>

Accuracy/__raw_  �?

Accuracyq?bfZ       o��	S�h��A�*L

Loss�D?

Adam/Loss/rawO�L>

Accuracy/__raw_  �?

Accuracy��r?��� Z       o��	�(�h��A�*L

Loss��5?

Adam/Loss/rawc�{>

Accuracy/__raw_  �?

Accuracy��s?��Z       o��	aQ�h��A�*L

Loss��)?

Adam/Loss/raw�\y>

Accuracy/__raw_  �?

Accuracy`u?t5�FZ       o��	�r�h��A�*L

Loss.�?

Adam/Loss/rawS�,>

Accuracy/__raw_  �?

Accuracy�+v?4QK�Z       o��	ޑ�h��A�*L

Loss�d?

Adam/Loss/raw���@

Accuracy/__raw_   >

Accuracy�'w?imMZ       o��	���h��A�*L

Lossn�?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��a?��Z       o��	-��h��A�*L

LossU��?

Adam/Loss/raw��C>

Accuracy/__raw_  �?

AccuracyԬd?�u�Z       o��	���h��A�*L

Loss�s?

Adam/Loss/raw0d@>

Accuracy/__raw_  �?

AccuracyXhg?��"�Z       o��	��h��A�*L

Loss `?

Adam/Loss/raw��+>

Accuracy/__raw_  �?

Accuracy��i?z9�Z       o��	TT�h��A�*L

Loss�M?

Adam/Loss/raw"�w>

Accuracy/__raw_  �?

Accuracy�l?��$�Z       o��	$��h��A�*L

Loss5�??

Adam/Loss/raw�.3>

Accuracy/__raw_  �?

Accuracyxn?�V�Z       o��	��h��A�*L

Loss��0?

Adam/Loss/raw�F�=

Accuracy/__raw_  �?

Accuracyl�o?���Z       o��	i��h��A�*L

Loss%Q"?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy{zq?���Z       o��	S�h��A�*L

Loss�%?

Adam/Loss/raw�'>

Accuracy/__raw_  �?

Accuracy<�r?[��Z       o��	9&�h��A�*L

Loss�h
?

Adam/Loss/raw31r>

Accuracy/__raw_  �?

Accuracy�<t?�i��Z       o��	|F�h��A�*L

Lossg�?

Adam/Loss/raw��s>

Accuracy/__raw_  �?

Accuracy�iu?]�� Z       o��	l�h��A�*L

LossMN�>

Adam/Loss/rawt�>

Accuracy/__raw_  �?

Accuracy�xv?�S_Z       o��	2��h��A�*L

Loss>�>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�lw?@�"5Z       o��	U��h��A�*L

Loss݊�>

Adam/Loss/raw�A&>

Accuracy/__raw_  �?

Accuracy\Hx?#|��Z       o��	~�h��A�*L

Loss�f�>

Adam/Loss/raw��@

Accuracy/__raw_   >

Accuracy�y?:Ue�Z       o��	�<�h��A�*L

Loss�?

Adam/Loss/raw�5>

Accuracy/__raw_  �?

AccuracyTYc?B��Z       o��	�d�h��A�*L

Loss��z?

Adam/Loss/rawOUY>

Accuracy/__raw_  �?

Accuracy�6f?���;Z       o��	ѕ�h��A�*L

Loss�Mg?

Adam/Loss/raw��X>

Accuracy/__raw_  �?

Accuracy��h?j��Z       o��	���h��A�*L

Loss͘U?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyk?e<Z       o��	�L�h��A�*L

Loss"�C?

Adam/Loss/rawN�\>

Accuracy/__raw_  �?

Accuracy�3m?���Z       o��	��h��A�*L

Loss��5?

Adam/Loss/raw�x@>

Accuracy/__raw_  �?

Accuracy�o?dQ�Z       o��	���h��A�*L

Loss�o(?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�p?f2�`Z       o��	�)�h��A�*L

Loss�y?

Adam/Loss/raw�\�=

Accuracy/__raw_  �?

Accuracy�Kr?ix��Z       o��	�]�h��A�*L

Loss��?

Adam/Loss/rawYY>

Accuracy/__raw_  �?

Accuracy��s?M<�Z       o��	a��h��A�*L

Loss�&?

Adam/Loss/raw@/>

Accuracy/__raw_  �?

Accuracyg�t?���Z       o��	���h��A�*L

LossFo�>

Adam/Loss/raw��S>

Accuracy/__raw_  �?

Accuracy�v?��>Z       o��	�4�h��A�*L

Loss�-�>

Adam/Loss/raw\��=

Accuracy/__raw_  �?

AccuracyNw?:Z       o��	Rb�h��A�*L

Loss~��>

Adam/Loss/raw�
�=

Accuracy/__raw_  �?

Accuracyy�w?<vw�Z       o��	%��h��A�*L

Loss��>

Adam/Loss/raw��g>

Accuracy/__raw_  �?

Accuracy��x?F�rZ       o��	���h��A�*L

Loss���>

Adam/Loss/raw�]>

Accuracy/__raw_  �?

Accuracyry?).��Z       o��	J
�h��A�*L

LossA��>

Adam/Loss/raw��@>

Accuracy/__raw_  �?

Accuracy�z?��]�Z       o��	�H�h��A�*L

Loss�z�>

Adam/Loss/raw{ �>

Accuracy/__raw_  �?

Accuracy߰z?��Z       o��	2u�h��A�*L

LossT;�>

Adam/Loss/rawQؒ>

Accuracy/__raw_  �?

Accuracy�8{?UK�Z       o��	���h��A�*L

Loss��>

Adam/Loss/raw�8>

Accuracy/__raw_  �?

Accuracy�{?)�1Z       o��	d��h��A�*L

Loss���>

Adam/Loss/raw�C�@

Accuracy/__raw_    

Accuracy2!|?UG��Z       o��	V�h��A�*L

Loss/nl?

Adam/Loss/rawp�6>

Accuracy/__raw_  �?

Accuracy��b?c�NZ       o��	4/�h��A�*L

Loss\Y?

Adam/Loss/raw�3>

Accuracy/__raw_  �?

Accuracy5�e?���+Z       o��	�O�h��A�*L

LossLH?

Adam/Loss/rawS�3>

Accuracy/__raw_  �?

AccuracyIqh?5&�Z       o��	rm�h��A�*L

Lossm�8?

Adam/Loss/raw�Ok>

Accuracy/__raw_  �?

Accuracy[�j?C���Z       o��	z��h��A�*L

Loss�,?

Adam/Loss/rawO��=

Accuracy/__raw_  �?

Accuracy�l?�׭Z       o��	���h��A�*L

Loss@�?

Adam/Loss/raw&]c>

Accuracy/__raw_  �?

Accuracy��n?p^n�Z       o��	���h��A�*L

Loss��?

Adam/Loss/rawM�w>

Accuracy/__raw_  �?

Accuracy@�p?��Z       o��	(*�h��A�*L

Loss�H?

Adam/Loss/raw��u>

Accuracy/__raw_  �?

Accuracy�r?���Z       o��	�R�h��A�*L

Loss�?

Adam/Loss/raw6�>

Accuracy/__raw_  �?

Accuracy	{s?��߹Z       o��	eq�h��A�*L

Loss��>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy��t?$��Z       o��	u��h��A�*L

Loss��>

Adam/Loss/raw�6->

Accuracy/__raw_  �?

Accuracy��u?�KqjZ       o��	k��h��A�*L

Lossu�>

Adam/Loss/rawk7v>

Accuracy/__raw_  �?

Accuracy��v?m[VZ       o��	���h��A�*L

Loss�>

Adam/Loss/raw�gt>

Accuracy/__raw_  �?

Accuracy8�w?��5zZ       o��	
��h��A�*L

Loss���>

Adam/Loss/raw%D>

Accuracy/__raw_  �?

Accuracy�x?D(�Z       o��	C!�h��A�*L

LossA�>

Adam/Loss/raw4�>

Accuracy/__raw_  �?

Accuracy�Xy?��X�Z       o��	Y�h��A�*L

Loss#ˮ>

Adam/Loss/raw9��=

Accuracy/__raw_  �?

Accuracyz?���Z       o��	��h��A�*L

Loss��>

Adam/Loss/raw��(>

Accuracy/__raw_  �?

Accuracy]�z?��2Z       o��	ۦ�h��A�*L

Lossk'�>

Adam/Loss/raw\�&>

Accuracy/__raw_  �?

AccuracyT&{?�O��Z       o��	���h��A�*L

Lossr��>

Adam/Loss/raw�}P>

Accuracy/__raw_  �?

Accuracy�{?�{�Z       o��	��h��A�*L

Loss-��>

Adam/Loss/rawW>

Accuracy/__raw_  �?

Accuracy?|?c�Z       o��	�>�h��A�*L

Loss���>

Adam/Loss/rawWC>

Accuracy/__raw_  �?

Accuracy�v|?uK�(Z       o��	I`�h��A�*L

Loss>

Adam/Loss/raw	�g>

Accuracy/__raw_  �?

AccuracyW�|?���Z       o��	I��h��A�*L

Loss�Å>

Adam/Loss/raw1�d>

Accuracy/__raw_  �?

Accuracy�"}?1�QZ       o��	���h��A�*L

Loss�ԃ>

Adam/Loss/raw ��=

Accuracy/__raw_  �?

Accuracy l}?�͜�Z       o��	���h��A�*L

LossT�w>

Adam/Loss/raw�eM>

Accuracy/__raw_  �?

Accuracy�}?x)��Z       o��	���h��A�*L

LossD�s>

Adam/Loss/raw,�M>

Accuracy/__raw_  �?

Accuracy��}?ŧZ       o��	��h��A�*L

Loss��o>

Adam/Loss/raw�S&>

Accuracy/__raw_  �?

Accuracy�~?�PE;Z       o��	�r�h��A�*L

LossDph>

Adam/Loss/rawQ�%>

Accuracy/__raw_  �?

AccuracyO~?aRZ       o��	���h��A�*L

Loss��a>

Adam/Loss/raw�;>

Accuracy/__raw_  �?

AccuracyZz~?���(Z       o��	��h��A�*L

Loss��Y>

Adam/Loss/rawT$>

Accuracy/__raw_  �?

AccuracyQ�~?�Jr�Z       o��	���h��A�*L

LossjAT>

Adam/Loss/raw�I>

Accuracy/__raw_  �?

Accuracyc�~?�A��Z       o��	|��h��A�*L

LossM>

Adam/Loss/rawl~_>

Accuracy/__raw_  �?

Accuracy��~?���Z       o��	��h��A�*L

Loss��N>

Adam/Loss/rawM^>

Accuracy/__raw_  �?

Accuracy[ ?�[�2Z       o��	�<�h��A�*L

LossjP>

Adam/Loss/raw��=>

Accuracy/__raw_  �?

Accuracy�?=��Z       o��	�i�h��A�*L

Loss��N>

Adam/Loss/raw>

Accuracy/__raw_  �?

Accuracy�0?þ�xZ       o��	~��h��A�*L

Loss�I>

Adam/Loss/rawq"o>

Accuracy/__raw_  �?

Accuracy�E?�)Z       o��	���h��A�*L

Loss��L>

Adam/Loss/rawU<�=

Accuracy/__raw_  �?

AccuracyFX?�B�Z       o��	��h��A�*L

Loss	�A>

Adam/Loss/rawc~�=

Accuracy/__raw_  �?

Accuracyi?,
}�Z       o��	7N�h��A�*L

Loss�f7>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy$x?;*4�Z       o��	Ή�h��A�*L

Lossƾ1>

Adam/Loss/raw�n>

Accuracy/__raw_  �?

Accuracy��?e��Z       o��	��h��A�*L

Loss*�/>

Adam/Loss/rawU"=>

Accuracy/__raw_  �?

Accuracy��?�@�Z       o��	���h��A�*L

LossH�0>

Adam/Loss/raw(�6>

Accuracy/__raw_  �?

Accuracy��?�D�Z       o��	���h��A�*L

Loss��1>

Adam/Loss/raw��4>

Accuracy/__raw_  �?

Accuracyݦ?��tPZ       o��	u�h��A�*L

LossE�1>

Adam/Loss/rawOb>

Accuracy/__raw_  �?

Accuracyǯ?����Z       o��	�)�h��A�*L

Loss�:.>

Adam/Loss/raw
�>

Accuracy/__raw_  �?

Accuracyͷ?DgZ       o��	I�h��A�*L

Loss��+>

Adam/Loss/rawO�->

Accuracy/__raw_  �?

Accuracy�?��kZ       o��	'h�h��A�*L

LossZ�+>

Adam/Loss/raw� >

Accuracy/__raw_  �?

Accuracy��?����Z       o��	��h��A�*L

Loss�*>

Adam/Loss/raw�->

Accuracy/__raw_  �?

Accuracy^�?�!�Z       o��	���h��A�*L

Loss�Y)>

Adam/Loss/raw�P;>

Accuracy/__raw_  �?

Accuracy��?����Z       o��	���h��A�*L

Loss�%+>

Adam/Loss/rawyL�=

Accuracy/__raw_  �?

Accuracy^�?�3�Z       o��	���h��A�*L

Loss{r%>

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy��?��͙Z       o��	��h��A�*L

Loss7O">

Adam/Loss/raw�%�=

Accuracy/__raw_  �?

Accuracyw�?셩�Z       o��	�%�h��A�*L

Lossc�>

Adam/Loss/rawت�=

Accuracy/__raw_  �?

Accuracy��?�VZ       o��	[D�h��A�*L

LossJ�>

Adam/Loss/raw\�8>

Accuracy/__raw_  �?

Accuracy�?s���Z       o��	Vf�h��A�*L

Loss2�>

Adam/Loss/raw��*>

Accuracy/__raw_  �?

Accuracy��?��''Z       o��	���h��A�*L

Loss;�>

Adam/Loss/rawS>

Accuracy/__raw_  �?

AccuracyX�?pF_Z       o��	 ��h��A�*L

LossW�>

Adam/Loss/raw�hG>

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��h��A�*L

Lossi>

Adam/Loss/raw�F>

Accuracy/__raw_  �?

Accuracy��?-2��Z       o��	F&�h��A�*L

LossCV#>

Adam/Loss/raw,>8>

Accuracy/__raw_  �?

Accuracy|�?}��AZ       o��	/q�h��A�*L

Losstm%>

Adam/Loss/rawL�=

Accuracy/__raw_  �?

Accuracy#�?9�c�Z       o��	���h��A�*L

Loss�� >

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy��?��9Z       o��	g��h��A�*L

Loss >

Adam/Loss/raw:�=

Accuracy/__raw_  �?

Accuracy��?P��Z       o��	z��h��A�*L

Loss�C>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy*�?�'�Z       o��	h�h��A�*L

Loss�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy?�?g�J"Z       o��	�#�h��A�	*L

Loss'�>

Adam/Loss/raw�>A

Accuracy/__raw_    

Accuracy9�?ĭ�Z       o��	�D�h��A�	*L

Loss��?

Adam/Loss/raw�9>

Accuracy/__raw_  �?

Accuracy�^f?��pZ       o��	�w�h��A�	*L

Loss���?

Adam/Loss/rawh�>

Accuracy/__raw_  �?

Accuracy��h?g��Z       o��	���h��A�	*L

Loss�^�?

Adam/Loss/rawZ�>

Accuracy/__raw_  �?

Accuracy/=k?\'�\Z       o��	��h��A�	*L

LossD�?

Adam/Loss/raw�<3>

Accuracy/__raw_  �?

Accuracy�Pm?�Z       o��	N�h��A�	*L

Loss�k?

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�.o?��1oZ       o��	,,�h��A�	*L

LossG�V?

Adam/Loss/raw9cK>

Accuracy/__raw_  �?

Accuracy�p?���Z       o��	ZI�h��A�	*L

LossqF?

Adam/Loss/rawx�X>

Accuracy/__raw_  �?

Accuracy�`r?9��,Z       o��	�h�h��A�	*L

Loss$8?

Adam/Loss/raw@�W>

Accuracy/__raw_  �?

Accuracy��s?����Z       o��	���h��A�	*L

Loss+?

Adam/Loss/raw`>

Accuracy/__raw_  �?

Accuracy}�t?�Gh�Z       o��	���h��A�	*L

Loss(e?

Adam/Loss/raw���@

Accuracy/__raw_    

Accuracy�v?}K'�Z       o��	0��h��A�	*L

Loss
7�?

Adam/Loss/raw��$>

Accuracy/__raw_  �?

Accuracy�v]?���@Z       o��	&�h��A�	*L

Lossq��?

Adam/Loss/rawX�=

Accuracy/__raw_  �?

Accuracy��`?X
�Z       o��	�;�h��A�	*L

Loss�g�?

Adam/Loss/raw9�=

Accuracy/__raw_  �?

Accuracyld?�f�yZ       o��	w�h��A�	*L

Loss�Z{?

Adam/Loss/rawR�=

Accuracy/__raw_  �?

Accuracy��f?i�0Z       o��	��h��A�	*L

Loss6ee?

Adam/Loss/raw��m@

Accuracy/__raw_  �>

AccuracyWi?��_Z       o��	���h��A�	*L

Lossǖ?

Adam/Loss/rawZ��=

Accuracy/__raw_  �?

Accuracy5�[?��GoZ       o��	j�h��A�	*L

Loss��?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracy�>_?֔։Z       o��	�5�h��A�	*L

Loss�}?

Adam/Loss/raw���>

Accuracy/__raw_  �?

Accuracyf�b?	ў�Z       o��	dU�h��A�	*L

Loss�Fk?

Adam/Loss/raw�">

Accuracy/__raw_  �?

Accuracyxe?��2BZ       o��	�s�h��A�	*L

LossA�W?

Adam/Loss/raw�P">

Accuracy/__raw_  �?

AccuracyAh?
���Z       o��	>��h��A�	*L

Loss�F?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��j?ʴiZ       o��	V��h��A�	*L

Loss�6?

Adam/Loss/raw%�>

Accuracy/__raw_  �?

Accuracy��l?�hhZ       o��	#��h��A�	*L

LossO1'?

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyϗn?�FbyZ       o��	���h��A�	*L

Loss��?

Adam/Loss/rawl�>

Accuracy/__raw_  �?

AccuracynUp?��߃Z       o��	�h��A�	*L

Lossh�?

Adam/Loss/raw�!:>

Accuracy/__raw_  �?

Accuracy}�q?�@'Z       o��	T5�h��A�	*L

LossB?

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyqOs?���Z       o��	�U�h��A�	*L

Loss"a�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

AccuracyL�t?���VZ       o��	�t�h��A�	*L

Loss0��>

Adam/Loss/raw�e�=

Accuracy/__raw_  �?

Accuracy��u?��\Z       o��	���h��A�	*L

Loss��>

Adam/Loss/raw�>

Accuracy/__raw_  �?

AccuracyͿv?	x�-Z       o��	S��h��A�	*L

Loss�7�>

Adam/Loss/raw�{E>

Accuracy/__raw_  �?

Accuracy��w?e��cZ       o��	���h��A�	*L

Loss���>

Adam/Loss/rawKG >

Accuracy/__raw_  �?

Accuracyx?�	3�Z       o��	(�h��A�	*L

Loss�7�>

Adam/Loss/raw�i">

Accuracy/__raw_  �?

Accuracy�Ay?r�=fZ       o��	?7�h��A�	*L

Loss~�>

Adam/Loss/raw� >

Accuracy/__raw_  �?

Accuracy9�y?�Ԑ-Z       o��	�Y�h��A�	*L

Loss�u�>

Adam/Loss/raw`�>

Accuracy/__raw_  �?

Accuracy��z?��.Z       o��	���h��A�	*L

Loss#'�>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyq{?F�pZ       o��	���h��A�	*L

Loss5��>

Adam/Loss/raw|Q2>

Accuracy/__raw_  �?

AccuracyL�{?�;�Z       o��	�'�h��A�	*L

Lossv|�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�|?I\�Z       o��	�K�h��A�	*L

Loss� ~>

Adam/Loss/raw-��=

Accuracy/__raw_  �?

Accuracy�j|?$�<(Z       o��	�r�h��A�	*L

Loss��n>

Adam/Loss/raw���=

Accuracy/__raw_  �?

AccuracyC�|?�@%�Z       o��	���h��A�	*L

Lossa�c>

Adam/Loss/raw�%>

Accuracy/__raw_  �?

Accuracy�}?�[i0Z       o��	ڮ�h��A�	*L

Loss	b]>

Adam/Loss/raw*3>

Accuracy/__raw_  �?

Accuracy'c}?5�+�Z       o��	[��h��A�	*L

LossY�U>

Adam/Loss/raw�PF>

Accuracy/__raw_  �?

Accuracy
�}?�c�Z       o��	���h��A�	*L

LossFOT>

Adam/Loss/rawSGE>

Accuracy/__raw_  �?

Accuracy<�}?<��Z       o��	��h��A�	*L

Lossz�R>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracyi~?�o�Z       o��	�0�h��A�	*L

Loss2�J>

Adam/Loss/raw�;>

Accuracy/__raw_  �?

Accuracy+I~?���Z       o��	�P�h��A�	*L

Loss�oE>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyu~?Y�pZ       o��	�p�h��A�	*L

LossA�<>

Adam/Loss/rawKL�=

Accuracy/__raw_  �?

Accuracy��~?���Z       o��	��h��A�	*L

Loss��4>

Adam/Loss/raw`h�=

Accuracy/__raw_  �?

Accuracy�~?��(@Z       o��	��h��A�	*L

Loss��->

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy�~?�Ϻ:Z       o��	i��h��A�	*L

Loss�+>

Adam/Loss/raw}�9>

Accuracy/__raw_  �?

Accuracy��~?+h�)Z       o��	���h��A�	*L

Loss�&->

Adam/Loss/rawd50>

Accuracy/__raw_  �?

Accuracy�?�6��Z       o��	R+�h��A�	*L

Lossu->

Adam/Loss/raw7�>

Accuracy/__raw_  �?

Accuracy.? i'JZ       o��	�`�h��A�	*L

Loss��)>

Adam/Loss/rawm>

Accuracy/__raw_  �?

AccuracyC?c��aZ       o��	f��h��A�	*L

Loss=&>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy�U?�9�1Z       o��	���h��A�	*L

Loss|-#>

Adam/Loss/raw0�=

Accuracy/__raw_  �?

Accuracy�f? :Z       o��	��h��A�	*L

Loss�>

Adam/Loss/raw��(>

Accuracy/__raw_  �?

AccuracyKv?C&�Z       o��	F&�h��A�	*L

Loss� >

Adam/Loss/rawh:�=

Accuracy/__raw_  �?

Accuracy�?1��Z       o��	<j�h��A�	*L

Loss�>

Adam/Loss/rawT�=

Accuracy/__raw_  �?

Accuracyu�?9�e�Z       o��	���h��A�	*L

Loss��>

Adam/Loss/raw�{
>

Accuracy/__raw_  �?

Accuracy��?�Av�Z       o��	ɬ�h��A�	*L

Loss�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?��-�Z       o��	���h��A�	*L

Lossx:>

Adam/Loss/raw�0�=

Accuracy/__raw_  �?

Accuracy��?יZ�Z       o��	>��h��A�	*L

LossEj>

Adam/Loss/raw�)>

Accuracy/__raw_  �?

AccuracyҶ?��clZ       o��	9�h��A�	*L

Loss��>

Adam/Loss/raw�	(>

Accuracy/__raw_  �?

Accuracy#�?4�\Z       o��	I+�h��A�	*L

LossI�>

Adam/Loss/raw��'>

Accuracy/__raw_  �?

Accuracy��?]* �Z       o��	�J�h��A�	*L

Loss��>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?♹�Z       o��	�l�h��A�	*L

LossR>

Adam/Loss/rawM�>

Accuracy/__raw_  �?

Accuracy��? *��Z       o��	*��h��A�	*L

Loss�\>

Adam/Loss/raw��G>

Accuracy/__raw_  �?

Accuracy��?�iϽZ       o��	���h��A�	*L

Loss�y>

Adam/Loss/rawDTF>

Accuracy/__raw_  �?

Accuracy�?�J@Z       o��	9��h��A�	*L

Loss�>

Adam/Loss/raw܀
>

Accuracy/__raw_  �?

Accuracy �?ݻt�Z       o��	��h��A�	*L

Loss�>

Adam/Loss/raw�_�=

Accuracy/__raw_  �?

Accuracy��?�`t?Z       o��	��h��A�	*L

Loss�.>

Adam/Loss/raw\B�=

Accuracy/__raw_  �?

Accuracy��?_5��Z       o��	(i�h��A�	*L

Lossnm>

Adam/Loss/rawwB:>

Accuracy/__raw_  �?

Accuracy|�?3�+�Z       o��	h��h��A�	*L

Loss�O>

Adam/Loss/raw(8>

Accuracy/__raw_  �?

Accuracy	�?l,VZ       o��	*�h��A�	*L

Loss��>

Adam/Loss/raw�C�=

Accuracy/__raw_  �?

AccuracyU�?��œZ       o��	
b�h��A�	*L

Lossk�>

Adam/Loss/rawI$+>

Accuracy/__raw_  �?

Accuracyf�?�/ Z       o��	���h��A�	*L

LossNC>

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyB�?���FZ       o��	}��h��A�	*L

Loss�>

Adam/Loss/raw1s�=

Accuracy/__raw_  �?

Accuracy��?u'�Z       o��	���h��A�	*L

Loss��>

Adam/Loss/raw�'�=

Accuracy/__raw_  �?

Accuracyq�?���Z       o��	'0�h��A�	*L

Loss
�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?��UZ       o��	���h��A�	*L

Loss�>

Adam/Loss/raw|'>

Accuracy/__raw_  �?

Accuracy�?�^�bZ       o��	`��h��A�	*L

Loss�>

Adam/Loss/rawO>

Accuracy/__raw_  �?

Accuracy�?��(�Z       o��	��h��A�	*L

Loss��>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�?���Z       o��		�h��A�	*L

Loss�		>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?k&6;Z       o��	p'�h��A�	*L

Loss��>

Adam/Loss/rawQ��=

Accuracy/__raw_  �?

Accuracy��?���]Z       o��	�G�h��A�	*L

Loss�Z>

Adam/Loss/raw��)>

Accuracy/__raw_  �?

Accuracy��?� �Z       o��	�o�h��A�	*L

Loss�c>

Adam/Loss/raw��(>

Accuracy/__raw_  �?

Accuracy*�? *�CZ       o��	#��h��A�	*L

LossT�>

Adam/Loss/raw)��=

Accuracy/__raw_  �?

Accuracy��?��~YZ       o��	��h��A�	*L

Loss|>

Adam/Loss/raw�[�=

Accuracy/__raw_  �?

AccuracyF�?]�$Z       o��	n��h��A�	*L

Loss%�=

Adam/Loss/rawq��=

Accuracy/__raw_  �?

Accuracy��?96�/Z       o��	� �h��A�	*L

Loss�-�=

Adam/Loss/raw!>

Accuracy/__raw_  �?

Accuracy,�?<�u�Z       o��	�e�h��A�	*L

Loss\�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	���h��A�	*L

Loss�e�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?�k�(Z       o��	���h��A�	*L

Loss�8�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy5�?ܡ��Z       o��	���h��A�	*L

Loss�)�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy}�?���Z       o��	���h��A�	*L

Loss�"�=

Adam/Loss/rawY�">

Accuracy/__raw_  �?

Accuracy��?�3�Z       o��	� i��A�	*L

Loss���=

Adam/Loss/raw.��=

Accuracy/__raw_  �?

Accuracy��?IM�Z       o��	�" i��A�	*L

Loss��=

Adam/Loss/raw� >

Accuracy/__raw_  �?

Accuracy+�?ݹ,*Z       o��	�B i��A�	*L

Loss�r�=

Adam/Loss/raw�>

Accuracy/__raw_  �?

AccuracyZ�?�J��Z       o��	�c i��A�	*L

Loss��=

Adam/Loss/raw^��=

Accuracy/__raw_  �?

Accuracy��?�Y�QZ       o��	� i��A�	*L

Loss��=

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��?��HZ       o��	F� i��A�	*L

Lossin�=

Adam/Loss/raw�->

Accuracy/__raw_  �?

Accuracy��?�s�-Z       o��	�i��A�	*L

LossG��=

Adam/Loss/rawR>

Accuracy/__raw_  �?

Accuracy��?z���Z       o��	g*i��A�	*L

Loss� >

Adam/Loss/rawk> >

Accuracy/__raw_  �?

Accuracy�?=��Z       o��	bIi��A�	*L

Loss >

Adam/Loss/raw�*>

Accuracy/__raw_  �?

Accuracy �?� �oZ       o��	ii��A�	*L

Loss�H>

Adam/Loss/raw|E�=

Accuracy/__raw_  �?

Accuracy6�?5�[�Z       o��	D�i��A�	*L

Loss#�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyJ�?ҬBZ       o��	��i��A�	*L

LossJ;�=

Adam/Loss/rawh�4>

Accuracy/__raw_  �?

Accuracy\�? �okZ       o��	t�i��A�	*L

Loss�!>

Adam/Loss/raw]�3>

Accuracy/__raw_  �?

Accuracyl�?�g��Z       o��	�i��A�	*L

Loss�>

Adam/Loss/raw;V�=

Accuracy/__raw_  �?

Accuracy{�?��7�Z       o��	0i��A�	*L

LossQ�>

Adam/Loss/rawt<�=

Accuracy/__raw_  �?

Accuracy��? �AZ       o��	�ii��A�	*L

Loss�:>

Adam/Loss/rawN�=

Accuracy/__raw_  �?

Accuracy��?}�3�Z       o��	�i��A�	*L

Loss��=

Adam/Loss/raw��*>

Accuracy/__raw_  �?

Accuracy��?t�gZ       o��	��i��A�	*L

Loss6S>

Adam/Loss/raw��)>

Accuracy/__raw_  �?

Accuracy��?K���Z       o��	&i��A�	*L

Loss>A>

Adam/Loss/rawj	>

Accuracy/__raw_  �?

Accuracy��?���{Z       o��	*=i��A�	*L

LossB�>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?h��dZ       o��	p[i��A�	*L

Loss�}>

Adam/Loss/raw4� >

Accuracy/__raw_  �?

Accuracy��?[0]sZ       o��	o|i��A�	*L

Loss >

Adam/Loss/rawd��=

Accuracy/__raw_  �?

Accuracy��?�
��Z       o��	0�i��A�	*L

Loss-�>

Adam/Loss/raw�j�=

Accuracy/__raw_  �?

Accuracy��?�.�Z       o��	�i��A�	*L

Loss0��=

Adam/Loss/raw̨�=

Accuracy/__raw_  �?

Accuracy��?��mZ       o��	��i��A�	*L

Loss�=

Adam/Loss/raw�x�=

Accuracy/__raw_  �?

Accuracy��?*�Z       o��	��i��A�	*L

Loss�1�=

Adam/Loss/raw2�>

Accuracy/__raw_  �?

Accuracy��?��Z       o��	�i��A�	*L

Loss�=

Adam/Loss/raw�/;=

Accuracy/__raw_  �?

Accuracy��?��VZ       o��	h<i��A�	*L

Loss���=

Adam/Loss/raw��:=

Accuracy/__raw_  �?

Accuracy��?E;4>Z       o��	�\i��A�	*L

Loss-��=

Adam/Loss/raw�]
>

Accuracy/__raw_  �?

Accuracy��?����Z       o��	{i��A�	*L

Loss2��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?O2��Z       o��	x�i��A�	*L

Loss#��=

Adam/Loss/rawi� >

Accuracy/__raw_  �?

Accuracy��?�]ANZ       o��	E�i��A�	*L

Loss��=

Adam/Loss/raw�X>

Accuracy/__raw_  �?

Accuracy��?�C�bZ       o��	��i��A�
*L

Loss���=

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy��?�NlTZ       o��	"i��A�
*L

Losspw�=

Adam/Loss/rawt[�=

Accuracy/__raw_  �?

Accuracy��?�
'Z       o��	�Gi��A�
*L

Loss���=

Adam/Loss/raw�9�=

Accuracy/__raw_  �?

Accuracy��?�-E|Z       o��	�ii��A�
*L

Loss'��=

Adam/Loss/raw�J�=

Accuracy/__raw_  �?

Accuracy��?P�(�Z       o��	7�i��A�
*L

Loss�@�=

Adam/Loss/raw�:�=

Accuracy/__raw_  �?

Accuracy��?-Z��Z       o��		�i��A�
*L

Loss��=

Adam/Loss/raw�L�=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�(i��A�
*L

Loss��=

Adam/Loss/raw�|�=

Accuracy/__raw_  �?

Accuracy��?oB��Z       o��	�Ii��A�
*L

Lossp{�=

Adam/Loss/raw/">

Accuracy/__raw_  �?

Accuracy��?�]U<Z       o��	�ki��A�
*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��? ��Z       o��	�i��A�
*L

LossH��=

Adam/Loss/raw�}�=

Accuracy/__raw_  �?

Accuracy��?�߼Z       o��	&�i��A�
*L

Loss?��=

Adam/Loss/raw�T�=

Accuracy/__raw_  �?

Accuracy��?O�3�Z       o��	%�i��A�
*L

Loss��=

Adam/Loss/raw�)�=

Accuracy/__raw_  �?

Accuracy��?faq3Z       o��	��i��A�
*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?((ɥZ       o��	�i��A�
*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?��9Z       o��	�%i��A�
*L

Losso��=

Adam/Loss/rawud�=

Accuracy/__raw_  �?

Accuracy��?�U�Z       o��	(Fi��A�
*L

Loss#�=

Adam/Loss/raw�q�=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	#ei��A�
*L

Loss���=

Adam/Loss/rawH��=

Accuracy/__raw_  �?

Accuracy��?ή�8Z       o��	�i��A�
*L

Loss�"�=

Adam/Loss/raw3#�=

Accuracy/__raw_  �?

Accuracy��?���%Z       o��	ߦi��A�
*L

Loss1V�=

Adam/Loss/raw�E�=

Accuracy/__raw_  �?

Accuracy��? ��0Z       o��	��i��A�
*L

Loss"��=

Adam/Loss/raw��2>

Accuracy/__raw_  �?

Accuracy��?v���Z       o��	��i��A�
*L

LossK�=

Adam/Loss/raw�~2>

Accuracy/__raw_  �?

Accuracy��?8n9`Z       o��	i��A�
*L

Lossl��=

Adam/Loss/raw2s�=

Accuracy/__raw_  �?

Accuracy��?�me3Z       o��	�Di��A�
*L

Loss3d�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?D�*�Z       o��	wi��A�
*L

Loss{��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?�h_cZ       o��	ؗi��A�
*L

Loss|��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?sfٱZ       o��	��i��A�
*L

Loss6?�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?�M+�Z       o��		i��A�
*L

Loss���=

Adam/Loss/raw%�=

Accuracy/__raw_  �?

Accuracy��?��5Z       o��	Ne	i��A�
*L

Loss;�=

Adam/Loss/raw�%�=

Accuracy/__raw_  �?

Accuracy��?@9�6Z       o��	��	i��A�
*L

Lossެ�=

Adam/Loss/raw�G�=

Accuracy/__raw_  �?

Accuracy��?͎)Z       o��	��	i��A�
*L

Loss.��=

Adam/Loss/raw5B�=

Accuracy/__raw_  �?

Accuracy��?^��Z       o��	-�	i��A�
*L

Loss�N�=

Adam/Loss/raw�G�=

Accuracy/__raw_  �?

Accuracy��?`r��Z       o��	��	i��A�
*L

LossX��=

Adam/Loss/raw�=�=

Accuracy/__raw_  �?

Accuracy��?"�2Z       o��	�
i��A�
*L

Loss�`�=

Adam/Loss/raw��:A

Accuracy/__raw_    

Accuracy��?��%�Z       o��	�-
i��A�
*L

Loss�f�?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracybff?~M�Z       o��	`S
i��A�
*L

LossѢ�?

Adam/Loss/rawEҡ=

Accuracy/__raw_  �?

Accuracy��h?|�{�Z       o��	�s
i��A�
*L

Loss���?

Adam/Loss/raw<�=

Accuracy/__raw_  �?

Accuracy�Ck?�؉Z       o��	��
i��A�
*L

Lossmbq?

Adam/Loss/raw:Z�=

Accuracy/__raw_  �?

AccuracyjVm?a��Z       o��	ȱ
i��A�
*L

Loss \?

Adam/Loss/raw�m�=

Accuracy/__raw_  �?

Accuracy,4o?$��Z       o��	��
i��A�
*L

LossއH?

Adam/Loss/raw㷴=

Accuracy/__raw_  �?

Accuracy(�p?l�N�Z       o��	��
i��A�
*L

Loss��6?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy$er?���Z       o��	�i��A�
*L

Loss�2'?

Adam/Loss/raw,x�=

Accuracy/__raw_  �?

Accuracym�s?��HZ       o��	�4i��A�
*L

Loss�5?

Adam/Loss/rawخ�=

Accuracy/__raw_  �?

Accuracy��t?6\�Z       o��	li��A�
*L

Loss��?

Adam/Loss/raw?c�=

Accuracy/__raw_  �?

Accuracy�v?s��aZ       o��	��i��A�
*L

Loss�[?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�w?�q2;Z       o��	|�i��A�
*L

Loss�~�>

Adam/Loss/rawq,>

Accuracy/__raw_  �?

Accuracyi�w?��K�Z       o��	9
i��A�
*L

Loss�X�>

Adam/Loss/raw��*>

Accuracy/__raw_  �?

Accuracy�x?	^5oZ       o��	*9i��A�
*L

Loss���>

Adam/Loss/raw�M�=

Accuracy/__raw_  �?

Accuracy*~y?ů�Z       o��	P�i��A�
*L

Lossj��>

Adam/Loss/raw'�=

Accuracy/__raw_  �?

Accuracy�$z?��\tZ       o��	��i��A�
*L

Loss&I�>

Adam/Loss/raw�n�=

Accuracy/__raw_  �?

Accuracy��z?�b��Z       o��	N�i��A�
*L

Loss +�>

Adam/Loss/raw!e�=

Accuracy/__raw_  �?

Accuracy�A{?<a��Z       o��	��i��A�
*L

Loss֘>

Adam/Loss/raw-�=

Accuracy/__raw_  �?

Accuracy�{?Y� qZ       o��	Mi��A�
*L

LossGӌ>

Adam/Loss/raw"�=

Accuracy/__raw_  �?

AccuracyX(|?�t��Z       o��	2i��A�
*L

Loss�x�>

Adam/Loss/rawI��=

Accuracy/__raw_  �?

Accuracy��|?�K�[Z       o��	Qi��A�
*L

Losse�w>

Adam/Loss/raw�A�=

Accuracy/__raw_  �?

Accuracy=�|?7��Z       o��	ypi��A�
*L

Loss�i>

Adam/Loss/raw;�Y=

Accuracy/__raw_  �?

Accuracy�2}?�h{GZ       o��	��i��A�
*L

Loss�<W>

Adam/Loss/raw��X=

Accuracy/__raw_  �?

Accuracy�z}?X>�Z       o��	��i��A�
*L

Loss=#G>

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy)�}?��BZ       o��	>�i��A�
*L

Loss�e@>

Adam/Loss/raw�Ǽ=

Accuracy/__raw_  �?

Accuracy?�}?[�g�Z       o��	�i��A�
*L

Lossޘ6>

Adam/Loss/raw�] >

Accuracy/__raw_  �?

Accuracy�)~?�a�Z       o��	Ri��A�
*L

Loss�,1>

Adam/Loss/raw7M�=

Accuracy/__raw_  �?

Accuracy�X~?g�gZ       o��	(*i��A�
*L

Lossȸ(>

Adam/Loss/raw)�=

Accuracy/__raw_  �?

Accuracy�~?��
Z       o��	�Ni��A�
*L

Loss�!>

Adam/Loss/rawi�=

Accuracy/__raw_  �?

Accuracy�~?;���Z       o��	{�i��A�
*L

Loss�S>

Adam/Loss/raw:ѩ=

Accuracy/__raw_  �?

AccuracyR�~?�J:Z       o��	��i��A�
*L

Loss�b>

Adam/Loss/rawe�>

Accuracy/__raw_  �?

Accuracy0�~?�n��Z       o��	��i��A�
*L

Loss��>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�?M���Z       o��	Ci��A�
*L

Loss>Y
>

Adam/Loss/rawA=�=

Accuracy/__raw_  �?

Accuracy�?���3Z       o��	�Ai��A�
*L

Loss�y>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyz5?�/�Z       o��	;�i��A�
*L

Loss�>

Adam/Loss/raw*Ȅ=

Accuracy/__raw_  �?

Accuracy�I?qUZ       o��	��i��A�
*L

Loss�b�=

Adam/Loss/rawn�=

Accuracy/__raw_  �?

Accuracy�[?I �dZ       o��	I�i��A�
*L

Loss���=

Adam/Loss/rawM��=

Accuracy/__raw_  �?

Accuracy]l?��PZ       o��	ji��A�
*L

LossH��=

Adam/Loss/rawKڜ=

Accuracy/__raw_  �?

Accuracy!{?�,P�Z       o��	�8i��A�
*L

Loss/%�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyk�?+��Z       o��	Zi��A�
*L

Loss���=

Adam/Loss/raw�s�=

Accuracy/__raw_  �?

Accuracy`�?"��Z       o��	Vzi��A�
*L

Loss���=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy#�?�V�Z       o��	��i��A�
*L

Loss��=

Adam/Loss/raw'��=

Accuracy/__raw_  �?

AccuracyӨ?9g�?Z       o��	8�i��A�
*L

Loss���=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�"RZ       o��	��i��A�
*L

Loss���=

Adam/Loss/raw�~�=

Accuracy/__raw_  �?

Accuracyd�?Ď0Z       o��	�i��A�
*L

Loss�@�=

Adam/Loss/raw�!�=

Accuracy/__raw_  �?

Accuracyt�?
ą�Z       o��	:"i��A�
*L

Loss3W�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?8�ػZ       o��	%Ai��A�
*L

Loss'�=

Adam/Loss/rawO�=

Accuracy/__raw_  �?

Accuracy��?�p��Z       o��	�_i��A�
*L

Loss�W�=

Adam/Loss/raw'=

Accuracy/__raw_  �?

Accuracy��?k���Z       o��	o�i��A�
*L

Loss��=

Adam/Loss/raw^��=

Accuracy/__raw_  �?

AccuracyO�?k��kZ       o��	[�i��A�
*L

Loss�ɷ=

Adam/Loss/raw�i�=

Accuracy/__raw_  �?

Accuracyz�?s��Z       o��	�i��A�
*L

LossM��=

Adam/Loss/raw�Vm=

Accuracy/__raw_  �?

Accuracy;�?�Cz�Z       o��	ni��A�
*L

Loss7>�=

Adam/Loss/raw�7�=

Accuracy/__raw_  �?

Accuracy��?�­Z       o��	m9i��A�
*L

Loss^
�=

Adam/Loss/raw�Ǚ=

Accuracy/__raw_  �?

Accuracy��?]=�0Z       o��	�vi��A�
*L

Loss�=

Adam/Loss/raw+��=

Accuracy/__raw_  �?

Accuracyb�?���rZ       o��	��i��A�
*L

Loss��=

Adam/Loss/rawvI�=

Accuracy/__raw_  �?

Accuracy��?�l�Z       o��	r�i��A�
*L

Loss�$�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�?�i��Z       o��	�$i��A�
*L

Loss��=

Adam/Loss/raw�ƞ=

Accuracy/__raw_  �?

Accuracy�?�!��Z       o��	�Bi��A�
*L

Lossb\�=

Adam/Loss/raw�5�=

Accuracy/__raw_  �?

Accuracy��?x��Z       o��	Bbi��A�
*L

Lossش=

Adam/Loss/raws<�=

Accuracy/__raw_  �?

Accuracyw�?(O9�Z       o��	��i��A�
*L

Loss��=

Adam/Loss/rawl�=

Accuracy/__raw_  �?

Accuracy��?�5ƳZ       o��	�i��A�
*L

Loss!�=

Adam/Loss/raw�֑=

Accuracy/__raw_  �?

Accuracy:�?��+Z       o��	��i��A�
*L

LossxO�=

Adam/Loss/raw��^=

Accuracy/__raw_  �?

Accuracyg�?:ve�Z       o��	��i��A�
*L

Lossܠ�=

Adam/Loss/raw5�\=

Accuracy/__raw_  �?

Accuracyv�?��!rZ       o��	>i��A�
*L

Lossɀ�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracyj�?,��fZ       o��	$i��A�
*L

Loss��=

Adam/Loss/raw<�=

Accuracy/__raw_  �?

AccuracyF�?gCݥZ       o��	pEi��A�
*L

Loss��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�?��2Z       o��	ei��A�
*L

Loss\ɲ=

Adam/Loss/raw�z�=

Accuracy/__raw_  �?

Accuracy��?%r�Z       o��	��i��A�
*L

Loss���=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy^�? �'Z       o��	��i��A�
*L

Loss�?�=

Adam/Loss/raw�,l=

Accuracy/__raw_  �?

Accuracy��?:�	Z       o��	��i��A�
*L

Lossx��=

Adam/Loss/rawn=�=

Accuracy/__raw_  �?

Accuracyp�??YZ       o��	��i��A�
*L

Loss�ͯ=

Adam/Loss/raw��k=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	<5i��A�
*L

Lossm�=

Adam/Loss/raw�3�=

Accuracy/__raw_  �?

AccuracyN�?��7�Z       o��	�Yi��A�
*L

Loss��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?���dZ       o��	F�i��A�
*L

Lossn�=

Adam/Loss/raw�[�=

Accuracy/__raw_  �?

Accuracy�?M�JmZ       o��	��i��A�
*L

Loss��=

Adam/Loss/rawy�=

Accuracy/__raw_  �?

AccuracyO�?�-�@Z       o��		�i��A�
*L

LossJ�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?��K�Z       o��	�=i��A�
*L

Loss���=

Adam/Loss/raw�m�=

Accuracy/__raw_  �?

Accuracy��?���kZ       o��	�bi��A�
*L

Loss���=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy
�?!}1�Z       o��	Q�i��A�
*L

Loss�H�=

Adam/Loss/raw�]i=

Accuracy/__raw_  �?

Accuracy<�?VIC�Z       o��	��i��A�
*L

Loss��=

Adam/Loss/raw衦=

Accuracy/__raw_  �?

Accuracyi�?M{�Z       o��	��i��A�
*L

LossVƻ=

Adam/Loss/raw��w=

Accuracy/__raw_  �?

Accuracy��?wӠRZ       o��	y�i��A�
*L

Lossa�=

Adam/Loss/raw﫪=

Accuracy/__raw_  �?

Accuracy��?��/qZ       o��	�i��A�
*L

Loss�N�=

Adam/Loss/rawa�=

Accuracy/__raw_  �?

Accuracy��?K0�CZ       o��	�.i��A�
*L

Loss�E�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?4t�Z       o��	LRi��A�
*L

Loss[�=

Adam/Loss/raw-�=

Accuracy/__raw_  �?

Accuracy�?w��cZ       o��	�qi��A�
*L

Loss=�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy)�?�hu	Z       o��	�i��A�
*L

Loss5=�=

Adam/Loss/rawL�<

Accuracy/__raw_  �?

Accuracy?�?�e3]Z       o��	%�i��A�
*L

Loss�x�=

Adam/Loss/raw[�<

Accuracy/__raw_  �?

AccuracyR�?��]Z       o��	h�i��A�
*L

LossYڞ=

Adam/Loss/raw4�=

Accuracy/__raw_  �?

Accuracyc�?� tZ       o��	��i��A�
*L

Loss�ܟ=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracys�?ږ�VZ       o��	�"i��A�
*L

Lossӆ�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?��|	Z       o��	�Ti��A�
*L

Loss��=

Adam/Loss/raw��>

Accuracy/__raw_  �?

Accuracy��?=�lwZ       o��	�}i��A�
*L

Lossѵ=

Adam/Loss/raw�2>

Accuracy/__raw_  �?

Accuracy��?�ח�Z       o��	��i��A�
*L

Loss!�=

Adam/Loss/raw�m�=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	�i��A�
*L

Lossb��=

Adam/Loss/raw��m=

Accuracy/__raw_  �?

Accuracy��?GG��Z       o��	�i��A�*L

Loss�g�=

Adam/Loss/raw�]�=

Accuracy/__raw_  �?

Accuracy��?���$Z       o��	4gi��A�*L

Loss�3�=

Adam/Loss/rawk��=

Accuracy/__raw_  �?

Accuracy��?��]LZ       o��	�i��A�*L

Loss@�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?&l�Z       o��	��i��A�*L

LossG:�=

Adam/Loss/rawo|[=

Accuracy/__raw_  �?

Accuracy��?���NZ       o��	2�i��A�*L

Lossyǰ=

Adam/Loss/rawʭ�=

Accuracy/__raw_  �?

Accuracy��?1V�Z       o��	��i��A�*L

Loss���=

Adam/Loss/raw�N�=

Accuracy/__raw_  �?

Accuracy��?Hߟ�Z       o��	i��A�*L

Loss���=

Adam/Loss/raw�>

Accuracy/__raw_  �?

Accuracy��?_�Z       o��	A'i��A�*L

Loss���=

Adam/Loss/raw�� >

Accuracy/__raw_  �?

Accuracy��?��tVZ       o��	xFi��A�*L

Loss���=

Adam/Loss/raw� �=

Accuracy/__raw_  �?

Accuracy��?�.�Z       o��	�hi��A�*L

Loss�v�=

Adam/Loss/raw�o=

Accuracy/__raw_  �?

Accuracy��?��\�Z       o��	'�i��A�*L

Loss�+�=

Adam/Loss/raw*��=

Accuracy/__raw_  �?

Accuracy��?�a2�Z       o��	Ҫi��A�*L

LossB=�=

Adam/Loss/raw�ɝ=

Accuracy/__raw_  �?

Accuracy��?+�]Z       o��	��i��A�*L

Loss�d�=

Adam/Loss/raw-��=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	:�i��A�*L

Loss8Դ=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?��/Z       o��	�
i��A�*L

Loss��=

Adam/Loss/rawaU�=

Accuracy/__raw_  �?

Accuracy��?�6ZZ       o��	�.i��A�*L

Loss��=

Adam/Loss/raw�.�=

Accuracy/__raw_  �?

Accuracy��?�)�eZ       o��	�fi��A�*L

Loss�ŭ=

Adam/Loss/raw0��=

Accuracy/__raw_  �?

Accuracy��?��YPZ       o��	�i��A�*L

Loss~��=

Adam/Loss/rawh�=

Accuracy/__raw_  �?

Accuracy��?ؽ�Z       o��	�i��A�*L

Loss�f�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?j@�Z       o��	�i��A�*L

Loss��=

Adam/Loss/raw+�=

Accuracy/__raw_  �?

Accuracy��?��9�Z       o��	v9i��A�*L

LossPű=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?��pZ       o��	ׄi��A�*L

Lossv��=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	`�i��A�*L

Loss���=

Adam/Loss/rawע=

Accuracy/__raw_  �?

Accuracy��?�T�Z       o��	��i��A�*L

Loss"Ԟ=

Adam/Loss/raw�i�=

Accuracy/__raw_  �?

Accuracy��?�mZ       o��	��i��A�*L

LossJ�=

Adam/Loss/raw�ԙ=

Accuracy/__raw_  �?

Accuracy��?y��GZ       o��	�i��A�*L

Loss���=

Adam/Loss/raw՗s=

Accuracy/__raw_  �?

Accuracy��?ctPZ       o��	gGi��A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�	qZ       o��	+li��A�*L

Loss�u�=

Adam/Loss/raw,_�=

Accuracy/__raw_  �?

Accuracy��?�yF�Z       o��	T�i��A�*L

LossD@�=

Adam/Loss/rawĈ�=

Accuracy/__raw_  �?

Accuracy��?%֗�Z       o��	8�i��A�*L

Loss�z�=

Adam/Loss/raw�ȓ=

Accuracy/__raw_  �?

Accuracy��?�;�Z       o��	��i��A�*L

Loss�h�=

Adam/Loss/raw��x=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	_i��A�*L

Lossm3�=

Adam/Loss/raw7�=

Accuracy/__raw_  �?

Accuracy��?,��Z       o��	'i��A�*L

Loss�d�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?d�cvZ       o��	�Gi��A�*L

Loss���=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�qi��A�*L

Loss]E�=

Adam/Loss/rawl�=

Accuracy/__raw_  �?

Accuracy��?7���Z       o��	�i��A�*L

Loss=I�=

Adam/Loss/raw�y�=

Accuracy/__raw_  �?

Accuracy��?vYZ       o��	V�i��A�*L

LossL�=

Adam/Loss/raw��q=

Accuracy/__raw_  �?

Accuracy��?��.�Z       o��	/�i��A�*L

Losssc�=

Adam/Loss/raw�p=

Accuracy/__raw_  �?

Accuracy��?j�Z       o��	�6i��A�*L

Loss.�=

Adam/Loss/raw5Ē=

Accuracy/__raw_  �?

Accuracy��?Ou�Z       o��	�yi��A�*L

Loss�	�=

Adam/Loss/rawB�g=

Accuracy/__raw_  �?

Accuracy��?��rZZ       o��	��i��A�*L

Loss4�=

Adam/Loss/raw<]=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	=�i��A�*L

Loss�g�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	� i��A�*L

Loss�t�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?͂�Z       o��	�4 i��A�*L

Loss�ơ=

Adam/Loss/raw�}�=

Accuracy/__raw_  �?

Accuracy��?��B4Z       o��	�X i��A�*L

Loss٥�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?H�&hZ       o��	�} i��A�*L

LossS��=

Adam/Loss/raw��Z=

Accuracy/__raw_  �?

Accuracy��?`=�QZ       o��	�� i��A�*L

Loss҇�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?��8Z       o��	r� i��A�*L

Loss�`�=

Adam/Loss/rawP�=

Accuracy/__raw_  �?

Accuracy��?���WZ       o��	� i��A�*L

Loss�X�=

Adam/Loss/raw�^�=

Accuracy/__raw_  �?

Accuracy��?[v�Z       o��	k!i��A�*L

Loss�r�=

Adam/Loss/raw�0�=

Accuracy/__raw_  �?

Accuracy��?��t�Z       o��	�3!i��A�*L

Loss��=

Adam/Loss/raw��u=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	!V!i��A�*L

Loss��=

Adam/Loss/raw�ȉ=

Accuracy/__raw_  �?

Accuracy��?�G�Z       o��	�{!i��A�*L

Loss$��=

Adam/Loss/rawM�=

Accuracy/__raw_  �?

Accuracy��?,�wZ       o��	h�!i��A�*L

Loss�\�=

Adam/Loss/rawp��=

Accuracy/__raw_  �?

Accuracy��?#D�}Z       o��	��!i��A�*L

LossR��=

Adam/Loss/rawư�=

Accuracy/__raw_  �?

Accuracy��?i5�'Z       o��	�"i��A�*L

Lossw=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	�9"i��A�*L

Loss��=

Adam/Loss/raw�Z�=

Accuracy/__raw_  �?

Accuracy��?&G��Z       o��	6w"i��A�*L

Loss���=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�5١Z       o��	��"i��A�*L

Lossd��=

Adam/Loss/raw��k=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	��"i��A�*L

Loss;��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�%�Z       o��	#i��A�*L

Loss�0�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�X[�Z       o��	C:#i��A�*L

Loss���=

Adam/Loss/raw�w�=

Accuracy/__raw_  �?

Accuracy��?���nZ       o��	`#i��A�*L

Lossf��=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?�)��Z       o��	ӄ#i��A�*L

Loss��=

Adam/Loss/rawR�=

Accuracy/__raw_  �?

Accuracy��?{�xxZ       o��		�#i��A�*L

Lossר�=

Adam/Loss/rawQ�H=

Accuracy/__raw_  �?

Accuracy��?�\!�Z       o��	��#i��A�*L

Loss,�=

Adam/Loss/raw�o=

Accuracy/__raw_  �?

Accuracy��?�z�Z       o��	��#i��A�*L

Loss�=

Adam/Loss/raw6�=

Accuracy/__raw_  �?

Accuracy��?(z��Z       o��	0$i��A�*L

Loss,ޑ=

Adam/Loss/rawLo�=

Accuracy/__raw_  �?

Accuracy��?Q�r�Z       o��	+3$i��A�*L

Loss|��=

Adam/Loss/rawÿ�=

Accuracy/__raw_  �?

Accuracy��?3=��Z       o��	�W$i��A�*L

LossP�=

Adam/Loss/raw�"q=

Accuracy/__raw_  �?

Accuracy��?J���Z       o��	�x$i��A�*L

LossS�=

Adam/Loss/raw��]=

Accuracy/__raw_  �?

Accuracy��?��i�Z       o��	��$i��A�*L

LossQ��=

Adam/Loss/raw'U=

Accuracy/__raw_  �?

Accuracy��?�ДZ       o��	��$i��A�*L

Loss1��=

Adam/Loss/rawݒT=

Accuracy/__raw_  �?

Accuracy��?��@Z       o��	��$i��A�*L

Loss���=

Adam/Loss/raw��n=

Accuracy/__raw_  �?

Accuracy��?��J�Z       o��	�#%i��A�*L

Loss��=

Adam/Loss/raw�Q�=

Accuracy/__raw_  �?

Accuracy��?�B~:Z       o��	�I%i��A�*L

Loss�ǌ=

Adam/Loss/raw�Zo=

Accuracy/__raw_  �?

Accuracy��?�znZ       o��	�j%i��A�*L

Loss���=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?�J��Z       o��	<�%i��A�*L

Loss׎�=

Adam/Loss/raw6~=

Accuracy/__raw_  �?

Accuracy��?��2�Z       o��	[�%i��A�*L

LossB��=

Adam/Loss/raw'�=

Accuracy/__raw_  �?

Accuracy��?+_�EZ       o��	�&i��A�*L

Loss{��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?ψ��Z       o��	�K&i��A�*L

LossRȊ=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?���dZ       o��	�j&i��A�*L

Loss���=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?��TZ       o��	@�&i��A�*L

Loss=��=

Adam/Loss/rawʺ�=

Accuracy/__raw_  �?

Accuracy��?eYVZ       o��	�&i��A�*L

Loss1��=

Adam/Loss/raw�R=

Accuracy/__raw_  �?

Accuracy��?��oZ       o��	?�&i��A�*L

LossK�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�d�Z       o��	}�&i��A�*L

Loss���=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?R��BZ       o��		'i��A�*L

Loss���=

Adam/Loss/rawEڎ=

Accuracy/__raw_  �?

Accuracy��?V��Z       o��	+'i��A�*L

Losst��=

Adam/Loss/rawO�=

Accuracy/__raw_  �?

Accuracy��?ʧ�Z       o��	VJ'i��A�*L

Loss�8�=

Adam/Loss/raw�6�=

Accuracy/__raw_  �?

Accuracy��?��kPZ       o��	/k'i��A�*L

Loss2R�=

Adam/Loss/rawb�j=

Accuracy/__raw_  �?

Accuracy��?�f�Z       o��	ۋ'i��A�*L

Lossr:�=

Adam/Loss/raw�ӥ=

Accuracy/__raw_  �?

Accuracy��?�hd�Z       o��	u�'i��A�*L

Loss20�=

Adam/Loss/rawu��=

Accuracy/__raw_  �?

Accuracy��?L�w�Z       o��	�'i��A�*L

Loss�׋=

Adam/Loss/rawm��=

Accuracy/__raw_  �?

Accuracy��?L���Z       o��	s�'i��A�*L

LossbO�=

Adam/Loss/rawJM�=

Accuracy/__raw_  �?

Accuracy��?z���Z       o��	@-(i��A�*L

Loss,ώ=

Adam/Loss/rawRa=

Accuracy/__raw_  �?

Accuracy��?�>@Z       o��	](i��A�*L

LossR��=

Adam/Loss/raw�A=

Accuracy/__raw_  �?

Accuracy��?9��tZ       o��	>)i��A�*L

Loss�1�=

Adam/Loss/raw�� >

Accuracy/__raw_  �?

Accuracy��?Es��Z       o��	͓)i��A�*L

Loss�Ϗ=

Adam/Loss/rawQ9 >

Accuracy/__raw_  �?

Accuracy��?4��Z       o��	�)i��A�*L

Loss$�=

Adam/Loss/raw�t�=

Accuracy/__raw_  �?

Accuracy��?U���Z       o��	�*i��A�*L

LossJ��=

Adam/Loss/raw��G=

Accuracy/__raw_  �?

Accuracy��?�w%SZ       o��	>*i��A�*L

Lossv�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?�k�Z       o��	�n*i��A�*L

Lossؓ=

Adam/Loss/raw�J}=

Accuracy/__raw_  �?

Accuracy��?O��aZ       o��	��*i��A�*L

Loss��=

Adam/Loss/raw�Y{=

Accuracy/__raw_  �?

Accuracy��?IP�Z       o��	�G+i��A�*L

Loss��=

Adam/Loss/raw�?=

Accuracy/__raw_  �?

Accuracy��?�Kz Z       o��	5�+i��A�*L

LossF�=

Adam/Loss/raw=�=

Accuracy/__raw_  �?

Accuracy��?U<RZ       o��	'K,i��A�*L

Loss�Ό=

Adam/Loss/raw`q�=

Accuracy/__raw_  �?

Accuracy��?��_Z       o��	�v,i��A�*L

Loss�ގ=

Adam/Loss/raw{i =

Accuracy/__raw_  �?

Accuracy��?e�5�Z       o��	�,i��A�*L

Loss���=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?Ȯ��Z       o��	O�,i��A�*L

LossF߂=

Adam/Loss/raw��K=

Accuracy/__raw_  �?

Accuracy��?�ՇZ       o��	�-i��A�*L

Loss��=

Adam/Loss/raw,��=

Accuracy/__raw_  �?

Accuracy��?�3߻Z       o��	(*-i��A�*L

Loss�*�=

Adam/Loss/raw��;=

Accuracy/__raw_  �?

Accuracy��?p��Z       o��	v�-i��A�*L

Loss�L{=

Adam/Loss/rawM��=

Accuracy/__raw_  �?

Accuracy��?�tZ_Z       o��	��-i��A�*L

Loss�|=

Adam/Loss/raw]�=

Accuracy/__raw_  �?

Accuracy��?�ɠZ       o��	��-i��A�*L

Loss��}=

Adam/Loss/rawzn�=

Accuracy/__raw_  �?

Accuracy��?�t�Z       o��	F.i��A�*L

Loss6�=

Adam/Loss/raw�̒=

Accuracy/__raw_  �?

Accuracy��?�O� Z       o��	>'.i��A�*L

Loss�݁=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?Q(4�Z       o��	$I.i��A�*L

LossQ{�=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�v.i��A�*L

Loss'h�=

Adam/Loss/raw_�=

Accuracy/__raw_  �?

Accuracy��?�,3`Z       o��	G�.i��A�*L

Loss�ڍ=

Adam/Loss/raw�H=

Accuracy/__raw_  �?

Accuracy��?�D�Z       o��	��.i��A�*L

LossR��=

Adam/Loss/rawL�$=

Accuracy/__raw_  �?

Accuracy��?$��Z       o��	��.i��A�*L

Loss�!�=

Adam/Loss/raw�T=

Accuracy/__raw_  �?

Accuracy��?h��{Z       o��	T7/i��A�*L

LossZ��=

Adam/Loss/raw9K�=

Accuracy/__raw_  �?

Accuracy��?�%��Z       o��	�V/i��A�*L

Loss�f�=

Adam/Loss/raw�o�=

Accuracy/__raw_  �?

Accuracy��?@Z       o��	}v/i��A�*L

Loss Έ=

Adam/Loss/raw�x=

Accuracy/__raw_  �?

Accuracy��?)I��Z       o��	\�/i��A�*L

LossO��=

Adam/Loss/raw��z=

Accuracy/__raw_  �?

Accuracy��?��H�Z       o��	?�/i��A�*L

Loss���=

Adam/Loss/raw覟=

Accuracy/__raw_  �?

Accuracy��?2ෙZ       o��	C0i��A�*L

Loss��=

Adam/Loss/rawg�Y=

Accuracy/__raw_  �?

Accuracy��?C�03Z       o��	X;0i��A�*L

Loss�:�=

Adam/Loss/raw��X=

Accuracy/__raw_  �?

Accuracy��?�`GZ       o��	�`0i��A�*L

Loss���=

Adam/Loss/rawVtf=

Accuracy/__raw_  �?

Accuracy��?�-=�Z       o��	߅0i��A�*L

Loss_�=

Adam/Loss/raw
�E=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	��0i��A�*L

Loss��}=

Adam/Loss/raw?�E=

Accuracy/__raw_  �?

Accuracy��?�ʞ�Z       o��	��0i��A�*L

Loss�+x=

Adam/Loss/rawݲ-=

Accuracy/__raw_  �?

Accuracy��?�`:(Z       o��	��0i��A�*L

Loss)�p=

Adam/Loss/rawإ,=

Accuracy/__raw_  �?

Accuracy��?��xZ       o��	s1i��A�*L

Lossn�i=

Adam/Loss/raw�m=

Accuracy/__raw_  �?

Accuracy��?ͤ]�Z       o��	�01i��A�*L

LossdFj=

Adam/Loss/raw\��=

Accuracy/__raw_  �?

Accuracy��?�-��Z       o��	�P1i��A�*L

Lossm�r=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?�L��Z       o��	S}1i��A�*L

Loss|�w=

Adam/Loss/raw =

Accuracy/__raw_  �?

Accuracy��?�oT�Z       o��	G�1i��A�*L

Lossi�n=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?ѡ�Z       o��	&�1i��A�*L

Loss8�f=

Adam/Loss/rawv5K=

Accuracy/__raw_  �?

Accuracy��?�ô�Z       o��	�2i��A�*L

Lossqd=

Adam/Loss/rawF�~=

Accuracy/__raw_  �?

Accuracy��?��"Z       o��	�82i��A�*L

LossS�f=

Adam/Loss/raw�yl=

Accuracy/__raw_  �?

Accuracy��?r뿼Z       o��	�q2i��A�*L

LossHg=

Adam/Loss/raw9]p=

Accuracy/__raw_  �?

Accuracy��?�K�Z       o��	�2i��A�*L

Loss�0h=

Adam/Loss/rawP-o=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	$�2i��A�*L

Losst�h=

Adam/Loss/raw��7=

Accuracy/__raw_  �?

Accuracy��?��^2Z       o��	x�2i��A�*L

Loss��c=

Adam/Loss/rawPp�=

Accuracy/__raw_  �?

Accuracy��?y,DZ       o��	�,3i��A�*L

Loss�>j=

Adam/Loss/raw<g=

Accuracy/__raw_  �?

Accuracy��?�L��Z       o��	[3i��A�*L

Loss��i=

Adam/Loss/raw0�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	�y3i��A�*L

Loss]q=

Adam/Loss/raw�s�=

Accuracy/__raw_  �?

Accuracy��?@I�1Z       o��	o�3i��A�*L

Loss��w=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?9_�Z       o��	'�3i��A�*L

Loss�4m=

Adam/Loss/rawp��=

Accuracy/__raw_  �?

Accuracy��?�B=Z       o��	��3i��A�*L

Loss� t=

Adam/Loss/raw�X=

Accuracy/__raw_  �?

Accuracy��?%��Z       o��	Y�3i��A�*L

LossM5q=

Adam/Loss/raw��_=

Accuracy/__raw_  �?

Accuracy��?��%�Z       o��	4i��A�*L

Loss�ro=

Adam/Loss/raw��]=

Accuracy/__raw_  �?

Accuracy��?�u�PZ       o��	�:4i��A�*L

Lossq�m=

Adam/Loss/raw��[=

Accuracy/__raw_  �?

Accuracy��?��OZ       o��	�X4i��A�*L

Loss��k=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?��=�Z       o��	�w4i��A�*L

Loss�|n=

Adam/Loss/rawBOW=

Accuracy/__raw_  �?

Accuracy��?&��_Z       o��	ٗ4i��A�*L

LossO+l=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?F���Z       o��	��4i��A�*L

Lossƌ_=

Adam/Loss/raw}G�<

Accuracy/__raw_  �?

Accuracy��?C��pZ       o��	F�4i��A�*L

Loss�(T=

Adam/Loss/raw.�V=

Accuracy/__raw_  �?

Accuracy��?��A|Z       o��	35i��A�*L

Loss�pT=

Adam/Loss/rawі=

Accuracy/__raw_  �?

Accuracy��?��d�Z       o��	�?5i��A�*L

Loss\]=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?뎠Z       o��	�a5i��A�*L

Loss��d=

Adam/Loss/raw-�T=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	a�5i��A�*L

Loss�c=

Adam/Loss/raw?T=

Accuracy/__raw_  �?

Accuracy��?�)�Z       o��	��5i��A�*L

Loss+�a=

Adam/Loss/raw8E=

Accuracy/__raw_  �?

Accuracy��?s�;�Z       o��	S�5i��A�*L

Loss��^=

Adam/Loss/rawպC=

Accuracy/__raw_  �?

Accuracy��?�� Z       o��	�6i��A�*L

Loss�\=

Adam/Loss/raw�w�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	;6i��A�*L

Loss��a=

Adam/Loss/rawf�=

Accuracy/__raw_  �?

Accuracy��?K�bvZ       o��	·6i��A�*L

Loss�8f=

Adam/Loss/raw�Ć=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��6i��A�*L

LossT'j=

Adam/Loss/raw_=

Accuracy/__raw_  �?

Accuracy��?(#�Z       o��	1�6i��A�*L

Loss�	i=

Adam/Loss/raw$�=

Accuracy/__raw_  �?

Accuracy��?��V�Z       o��	��6i��A�*L

Loss9ka=

Adam/Loss/raw3Ka=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	|7i��A�*L

Lossha=

Adam/Loss/raw�r)=

Accuracy/__raw_  �?

Accuracy��?�u��Z       o��	M27i��A�*L

Loss��[=

Adam/Loss/raw��(=

Accuracy/__raw_  �?

Accuracy��?�e2Z       o��	CT7i��A�*L

LossַV=

Adam/Loss/rawq�=

Accuracy/__raw_  �?

Accuracy��?���{Z       o��	�r7i��A�*L

Lossވ]=

Adam/Loss/raw܅1=

Accuracy/__raw_  �?

Accuracy��?�"'Z       o��	u�7i��A�*L

Loss+"Y=

Adam/Loss/raw�*�=

Accuracy/__raw_  �?

Accuracy��?g��Z       o��	��7i��A�*L

LossO�]=

Adam/Loss/rawہ=

Accuracy/__raw_  �?

Accuracy��?4�^Z       o��	��7i��A�*L

Loss�ua=

Adam/Loss/rawf!�=

Accuracy/__raw_  �?

Accuracy��?�gZ       o��	��7i��A�*L

LossN�d=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?a��Z       o��	�8i��A�*L

Loss��\=

Adam/Loss/raw��&A

Accuracy/__raw_   >

Accuracy��?ȵ6�Z       o��	EJ8i��A�*L

Loss���?

Adam/Loss/raw��L=

Accuracy/__raw_  �?

Accuracy��i?ڱ��Z       o��	��8i��A�*L

LossO�|?

Adam/Loss/raw�]=

Accuracy/__raw_  �?

Accuracy�k?�o�UZ       o��	ʿ8i��A�*L

LossM�d?

Adam/Loss/raw��[=

Accuracy/__raw_  �?

Accuracy �m?����Z       o��	�9i��A�*L

Loss�8O?

Adam/Loss/raw_��=

Accuracy/__raw_  �?

Accuracy��o?����Z       o��	B9i��A�*L

LossY+<?

Adam/Loss/raw�2A

Accuracy/__raw_  �>

Accuracy�Mq?�L��Z       o��	ǿ9i��A�*L

Loss� �?

Adam/Loss/raw�W�=

Accuracy/__raw_  �?

Accuracy��b?]�Z       o��	��9i��A�*L

Loss��?

Adam/Loss/raw�'%=

Accuracy/__raw_  �?

Accuracy��b?/�oZ       o��	Q,:i��A�*L

Loss'��?

Adam/Loss/raw�a$=

Accuracy/__raw_  �?

Accuracy�e?����Z       o��	S\:i��A�*L

Loss�w�?

Adam/Loss/raw-aQ=

Accuracy/__raw_  �?

AccuracyX\h?���$Z       o��	'�:i��A�*L

Loss`�?

Adam/Loss/raw-=

Accuracy/__raw_  �?

Accuracy��j?~l��Z       o��	_�:i��A�*L

Loss�?

Adam/Loss/raw�
�=

Accuracy/__raw_  �?

Accuracy(�l?�54�Z       o��	K�:i��A�*L

Loss
�w?

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyW�n?��QUZ       o��	�;i��A�*L

Loss^:a?

Adam/Loss/raw1�=

Accuracy/__raw_  �?

Accuracy�}p?x���Z       o��	 V;i��A�*L

Loss��L?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�
r?Ȯ�Z       o��	B�;i��A�*L

Loss*X9?

Adam/Loss/raw.�h=

Accuracy/__raw_  �?

Accuracy�os?v�bZ       o��	��;i��A�*L

LossdC(?

Adam/Loss/rawlvs=

Accuracy/__raw_  �?

Accuracy��t?�L^UZ       o��	�[<i��A�*L

Lossd�?

Adam/Loss/raw<��<

Accuracy/__raw_  �?

Accuracy��u?�R��Z       o��	�<i��A�*L

Loss:r
?

Adam/Loss/raw�Y�<

Accuracy/__raw_  �?

Accuracyw�v?��9�Z       o��	��<i��A�*L

Loss���>

Adam/Loss/rawC_=

Accuracy/__raw_  �?

Accuracy��w?���]Z       o��	m=i��A�*L

Loss�z�>

Adam/Loss/raw@�A

Accuracy/__raw_    

Accuracy�x?��4{Z       o��	�$=i��A�*L

Lossڻ�?

Adam/Loss/raw��.=

Accuracy/__raw_  �?

Accuracy;�_?P��Z       o��	�I=i��A�*L

Loss5�?

Adam/Loss/raw�+=

Accuracy/__raw_  �?

Accuracy��b?|nkZ       o��	�j=i��A�*L

Loss�8�?

Adam/Loss/raw��-=

Accuracy/__raw_  �?

Accuracy(�e?�*�Z       o��	 �=i��A�*L

Loss_Hm?

Adam/Loss/rawb�L=

Accuracy/__raw_  �?

Accuracyqxh?0O�eZ       o��	��=i��A�*L

Loss��V?

Adam/Loss/raw<��=

Accuracy/__raw_  �?

Accuracy��j?�R�EZ       o��	#�=i��A�*L

LossArC?

Adam/Loss/rawz�K=

Accuracy/__raw_  �?

Accuracy��l?��Z       o��	H�=i��A�*L

Loss-1?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��n?�SiqZ       o��	D>i��A�*L

LossDR!?

Adam/Loss/raw⹔=

Accuracy/__raw_  �?

Accuracy�p?{�Z       o��	+6>i��A�*L

Loss]?

Adam/Loss/rawEQ�=

Accuracy/__raw_  �?

Accuracy'r?����Z       o��	,b>i��A�*L

Loss�?

Adam/Loss/raw�3F=

Accuracy/__raw_  �?

Accuracy�~s?%��Z       o��	�>i��A�*L

Loss���>

Adam/Loss/raw�S=

Accuracy/__raw_  �?

Accuracy��t?�F4�Z       o��	��>i��A�*L

Loss(�>

Adam/Loss/raw{i=

Accuracy/__raw_  �?

Accuracy�u?�(3-Z       o��	(�>i��A�*L

Loss���>

Adam/Loss/raw]3j=

Accuracy/__raw_  �?

AccuracyZ�v?�4z~Z       o��	�?i��A�*L

Loss%n�>

Adam/Loss/raw�?m=

Accuracy/__raw_  �?

Accuracy��w?��Y�Z       o��	�N?i��A�*L

LossTک>

Adam/Loss/rawM>�=

Accuracy/__raw_  �?

Accuracy��x?@�8bZ       o��	Tr?i��A�*L

Loss��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�Zy?��TZ       o��	�?i��A�*L

LossY�>

Adam/Loss/raw�[=

Accuracy/__raw_  �?

Accuracy�z?�a��Z       o��	ݷ?i��A�*L

Loss2܂>

Adam/Loss/raw%�[=

Accuracy/__raw_  �?

Accuracy�z?UqJ'Z       o��	<@i��A�*L

Loss�	q>

Adam/Loss/raw�{=

Accuracy/__raw_  �?

Accuracy�'{?�hJ�Z       o��	�>@i��A�*L

Loss6_>

Adam/Loss/rawU^�=

Accuracy/__raw_  �?

Accuracyӣ{?U9UTZ       o��	�^@i��A�*L

Loss��P>

Adam/Loss/rawv�w=

Accuracy/__raw_  �?

Accuracyq|?�u�:Z       o��	@i��A�*L

Loss��A>

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�w|?�T�Z       o��	+�@i��A�*L

LosssJ7>

Adam/Loss/raw"�=

Accuracy/__raw_  �?

AccuracyO�|?�H�oZ       o��	��@i��A�*L

Loss�->

Adam/Loss/raw��'=

Accuracy/__raw_  �?

Accuracy�#}?Ǿ95Z       o��	��@i��A�*L

Loss�� >

Adam/Loss/raw��m=

Accuracy/__raw_  �?

Accuracy�l}?sw�+Z       o��	� Ai��A�*L

Loss�o>

Adam/Loss/rawC5M=

Accuracy/__raw_  �?

AccuracyҮ}?���Z       o��	zAi��A�*L

Loss�>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy#�}?P'��Z       o��	>Ai��A�*L

LossR�>

Adam/Loss/raw�0=

Accuracy/__raw_  �?

Accuracy�~?Us��Z       o��	-^Ai��A�*L

Loss��=

Adam/Loss/raw�U]=

Accuracy/__raw_  �?

Accuracy�O~?U"_WZ       o��	��Ai��A�*L

Loss���=

Adam/Loss/raw*�~=

Accuracy/__raw_  �?

Accuracy�z~?���Z       o��	s�Ai��A�*L

Loss���=

Adam/Loss/rawh�=

Accuracy/__raw_  �?

Accuracy��~?X]N�Z       o��	.Bi��A�*L

Loss#_�=

Adam/Loss/raw�Q'=

Accuracy/__raw_  �?

Accuracy��~?�V��Z       o��	�$Bi��A�*L

Loss���=

Adam/Loss/raw&=

Accuracy/__raw_  �?

AccuracyH�~?GkM�Z       o��	_cBi��A�*L

LossY�=

Adam/Loss/raw�0�=

Accuracy/__raw_  �?

Accuracy� ?��QZ       o��	z�Bi��A�*L

Loss�(�=

Adam/Loss/raw�G�=

Accuracy/__raw_  �?

Accuracy0?1�U�Z       o��	>�Bi��A�*L

Loss�+�=

Adam/Loss/raw�PP=

Accuracy/__raw_  �?

Accuracy+1?ٹ1cZ       o��	=�Bi��A�*L

Loss	Ū=

Adam/Loss/rawc��=

Accuracy/__raw_  �?

Accuracy�E?�Z       o��	�Ci��A�*L

Loss�)�=

Adam/Loss/raw3�=

Accuracy/__raw_  �?

AccuracywX?�G�uZ       o��	{Ci��A�*L

Loss�w�=

Adam/Loss/raw�\D=

Accuracy/__raw_  �?

Accuracy8i?����Z       o��	��Ci��A�*L

Loss�V�=

Adam/Loss/rawlj=

Accuracy/__raw_  �?

AccuracyLx?���Z       o��	`�Ci��A�*L

Losshӝ=

Adam/Loss/raw JA=

Accuracy/__raw_  �?

Accuracyޅ?���Z       o��	w�Ci��A�*L

Loss,��=

Adam/Loss/rawc^z=

Accuracy/__raw_  �?

Accuracy�?�E�Z       o��	�Di��A�*L

Loss-�=

Adam/Loss/raw'�y=

Accuracy/__raw_  �?

Accuracy�?MmH?Z       o��	�DDi��A�*L

Loss*��=

Adam/Loss/raw�Rl=

Accuracy/__raw_  �?

Accuracy��?)I�Z       o��	�iDi��A�*L

Loss�ˏ=

Adam/Loss/raw�\`=

Accuracy/__raw_  �?

Accuracy߯?{�/�Z       o��	G�Di��A�*L

Loss���=

Adam/Loss/raw�U&=

Accuracy/__raw_  �?

Accuracy�?Ԩ$hZ       o��	��Di��A�*L

Lossw�=

Adam/Loss/rawA�=

Accuracy/__raw_  �?

Accuracy�?��Z       o��	��Di��A�*L

Loss�|�=

Adam/Loss/raw�I�=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	�Ei��A�*L

Lossh�=

Adam/Loss/raw�;=

Accuracy/__raw_  �?

Accuracym�?5��Z       o��	uBEi��A�*L

Loss��=

Adam/Loss/raw޺�=

Accuracy/__raw_  �?

Accuracy��?1{WZ       o��	tcEi��A�*L

Loss%b�=

Adam/Loss/raw�m�=

Accuracy/__raw_  �?

Accuracyj�?�$_�Z       o��	��Ei��A�*L

Loss�Ƀ=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?[��aZ       o��	��Ei��A�*L

Loss?��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?H��Z       o��	��Ei��A�*L

Loss�É=

Adam/Loss/raw� :=

Accuracy/__raw_  �?

Accuracy��?V�@^Z       o��	yFi��A�*L

Loss[K�=

Adam/Loss/raw�_=

Accuracy/__raw_  �?

Accuracy�?�,OZ       o��	_(Fi��A�*L

Loss�*=

Adam/Loss/raw�FH=

Accuracy/__raw_  �?

Accuracy��?�܁Z       o��	�|Fi��A�*L

Loss��y=

Adam/Loss/raw�י=

Accuracy/__raw_  �?

Accuracy^�?�<c�Z       o��	��Fi��A�*L

Loss�z=

Adam/Loss/rawv��=

Accuracy/__raw_  �?

Accuracy��?@0�)Z       o��	��Fi��A�*L

Loss"9�=

Adam/Loss/raw)Rc=

Accuracy/__raw_  �?

Accuracy��?t�}�Z       o��	��Fi��A�*L

Loss!��=

Adam/Loss/raw�0=

Accuracy/__raw_  �?

Accuracy��?tZ       o��	}Gi��A�*L

Loss:y=

Adam/Loss/raw$T=

Accuracy/__raw_  �?

Accuracy&�?���Z       o��	�#Gi��A�*L

Loss�Tu=

Adam/Loss/rawA�V=

Accuracy/__raw_  �?

Accuracy��?�k��Z       o��	xEGi��A�*L

Loss�Kr=

Adam/Loss/raw�V=

Accuracy/__raw_  �?

Accuracy��?~���Z       o��	VeGi��A�*L

Loss �o=

Adam/Loss/raw/m=

Accuracy/__raw_  �?

Accuracy,�?�z�!Z       o��	@�Gi��A�*L

Loss�Lo=

Adam/Loss/raw0�4=

Accuracy/__raw_  �?

AccuracyA�?t�&Z       o��	+�Gi��A�*L

Loss�mi=

Adam/Loss/raw2Ǉ=

Accuracy/__raw_  �?

Accuracy;�?Nr�Z       o��	�Gi��A�*L

Loss�=m=

Adam/Loss/raw�&.=

Accuracy/__raw_  �?

Accuracy�?^�EZ       o��	u�Gi��A�*L

Loss��f=

Adam/Loss/raw��-=

Accuracy/__raw_  �?

Accuracy��?�+Z       o��	/Hi��A�*L

Loss�4a=

Adam/Loss/raw�a =

Accuracy/__raw_  �?

Accuracy��?�N�Z       o��	5FHi��A�*L

Loss
�Z=

Adam/Loss/raw�M=

Accuracy/__raw_  �?

Accuracy@�?`�GZ       o��	��Hi��A�*L

LosseZY=

Adam/Loss/raw�aA=

Accuracy/__raw_  �?

Accuracy��?�!�Z       o��	��Hi��A�*L

Loss��V=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyX�?��Z       o��	R�Hi��A�*L

Loss��a=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?$�w Z       o��	�Ii��A�*L

Losse�k=

Adam/Loss/rawc�b=

Accuracy/__raw_  �?

Accuracy:�?��^Z       o��	o.Ii��A�*L

Loss2�j=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	�MIi��A�*L

Loss�b=

Adam/Loss/rawk��=

Accuracy/__raw_  �?

Accuracy��?X[�|Z       o��	¨Ii��A�*L

Loss"�h=

Adam/Loss/raw5<=

Accuracy/__raw_  �?

Accuracy@�?s�Z       o��	��Ii��A�*L

Loss=A`=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	R�Ii��A�*L

Loss�X=

Adam/Loss/raw�B=

Accuracy/__raw_  �?

Accuracy��?�*Z       o��	�Ji��A�*L

LossoV=

Adam/Loss/raw#�=

Accuracy/__raw_  �?

Accuracy��?�	�Z       o��	h>Ji��A�*L

Loss��O=

Adam/Loss/rawP�.=

Accuracy/__raw_  �?

Accuracy1�?'��Z       o��	�eJi��A�*L

LossިL=

Adam/Loss/raw�ו=

Accuracy/__raw_  �?

Accuracy_�?�J�$Z       o��	m�Ji��A�*L

Loss�)V=

Adam/Loss/raw%Ԕ=

Accuracy/__raw_  �?

Accuracy��?�a0�Z       o��	��Ji��A�*L

Loss�^=

Adam/Loss/raw�a=

Accuracy/__raw_  �?

Accuracy��?6=��Z       o��	��Ji��A�*L

Loss��^=

Adam/Loss/rawBV$=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	W�Ji��A�*L

Loss��X=

Adam/Loss/raw�je=

Accuracy/__raw_  �?

Accuracy��?}[��Z       o��	NKi��A�*L

Loss<Z=

Adam/Loss/raw4,�=

Accuracy/__raw_  �?

Accuracy
�?G�hZ       o��	@7Ki��A�*L

Loss�_=

Adam/Loss/raw�܄=

Accuracy/__raw_  �?

Accuracy#�?N���Z       o��	oKi��A�*L

Loss4Pc=

Adam/Loss/raw��1=

Accuracy/__raw_  �?

Accuracy9�?Ql�WZ       o��	Z�Ki��A�*L

Loss\Y^=

Adam/Loss/raw��@

Accuracy/__raw_   >

AccuracyM�?<jM*Z       o��	��Ki��A�*L

Loss_I?

Adam/Loss/rawU�9=

Accuracy/__raw_  �?

Accuracy��i?�_2Z       o��	�Li��A�*L

Losse6?

Adam/Loss/raw�B�<

Accuracy/__raw_  �?

Accuracyy�k?��j�Z       o��	/Li��A�*L

Loss��$?

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy��m?���Z       o��	HNLi��A�*L

Loss��?

Adam/Loss/raw�N=

Accuracy/__raw_  �?

Accuracy*�o?��kRZ       o��	+lLi��A�*L

Loss��?

Adam/Loss/raw��}=

Accuracy/__raw_  �?

Accuracy?Mq?��NDZ       o��	��Li��A�*L

Loss��>

Adam/Loss/raw��~=

Accuracy/__raw_  �?

Accuracy��r?bp)�Z       o��	��Li��A�*L

LossV��>

Adam/Loss/raw �=

Accuracy/__raw_  �?

Accuracy,t?ihZ�Z       o��	Mi��A�*L

Loss ��>

Adam/Loss/rawS.�=

Accuracy/__raw_  �?

Accuracy�Hu? ���Z       o��	�0Mi��A�*L

Loss��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyB[v?��4Z       o��	zQMi��A�*L

Loss@��>

Adam/Loss/raw�v2=

Accuracy/__raw_  �?

Accuracy"Rw?�Z       o��	KpMi��A�*L

Loss�>

Adam/Loss/rawc6=

Accuracy/__raw_  �?

AccuracyR0x?��m�Z       o��	�Mi��A�*L

Loss�\�>

Adam/Loss/raw���=

Accuracy/__raw_  �?

AccuracyJ�x?�dAZ       o��	�Mi��A�*L

Loss��>

Adam/Loss/raw���=

Accuracy/__raw_  �?

AccuracyC�y?Me�Z       o��	��Mi��A�*L

Lossj�v>

Adam/Loss/raw�:S=

Accuracy/__raw_  �?

Accuracy<Nz?��Z       o��	��Mi��A�*L

Loss�{c>

Adam/Loss/raw��2=

Accuracy/__raw_  �?

Accuracy�z?k�Z       o��	
Ni��A�*L

Loss85Q>

Adam/Loss/raw�Q[=

Accuracy/__raw_  �?

Accuracy6c{?��$Z       o��	.Ni��A�*L

Loss$�A>

Adam/Loss/raw߈=

Accuracy/__raw_  �?

AccuracyJ�{?� �Z       o��	HPNi��A�*L

Loss�<5>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�C|?8��Z       o��	�Ni��A�*L

LossC�)>

Adam/Loss/raw��/=

Accuracy/__raw_  �?

Accuracy4�|?�KqZ       o��	5�Ni��A�*L

LosszO>

Adam/Loss/raw��<=

Accuracy/__raw_  �?

AccuracyH�|?�"S�Z       o��	�Ni��A�*L

Loss�J>

Adam/Loss/raw3~=

Accuracy/__raw_  �?

Accuracy�F}?��\Z       o��	uOi��A�*L

Loss�
>

Adam/Loss/rawD�>=

Accuracy/__raw_  �?

Accuracy{�}?�	�]Z       o��	i:Oi��A�*L

Lossj� >

Adam/Loss/raw��>=

Accuracy/__raw_  �?

Accuracy<�}?����Z       o��	S\Oi��A�*L

Loss���=

Adam/Loss/rawF�1=

Accuracy/__raw_  �?

Accuracy�~?p�Y7Z       o��	x|Oi��A�*L

Lossq�=

Adam/Loss/raw�G6A

Accuracy/__raw_   >

Accuracy�6~?Į~�Z       o��	$�Oi��A�*L

Loss���?

Adam/Loss/raw�8=

Accuracy/__raw_  �?

Accuracy��g?2�4�Z       o��	��Oi��A�*L

Loss'H�?

Adam/Loss/raw�̂=

Accuracy/__raw_  �?

Accuracydj?�o�Z       o��	Pi��A�*L

LosskŁ?

Adam/Loss/rawg@�=

Accuracy/__raw_  �?

Accuracy��l?�Z       o��	�:Pi��A�*L

Loss[7k?

Adam/Loss/raw�RV=

Accuracy/__raw_  �?

Accuracy|n?�WϛZ       o��	2[Pi��A�*L

Loss�U?

Adam/Loss/rawV�<=

Accuracy/__raw_  �?

Accuracy�?p?�@�Z       o��	c�Pi��A�*L

LossF�@?

Adam/Loss/rawˑR=

Accuracy/__raw_  �?

Accuracy��q?�X�3Z       o��	��Pi��A�*L

Loss��.?

Adam/Loss/raw��v=

Accuracy/__raw_  �?

Accuracy�=s?�Z       o��	+�Pi��A�*L

Loss?�?

Adam/Loss/raw�$u=

Accuracy/__raw_  �?

AccuracyU�t?�wZ       o��	��Pi��A�*L

Losss�?

Adam/Loss/raw�09=

Accuracy/__raw_  �?

AccuracyM�u?_߿�Z       o��	�Qi��A�*L

Loss�P?

Adam/Loss/rawP=

Accuracy/__raw_  �?

Accuracy߲v?#�*>Z       o��	%'Qi��A�*L

Loss���>

Adam/Loss/raw8v>=

Accuracy/__raw_  �?

Accuracy��w?!�M�Z       o��	ZGQi��A�*L

Loss�s�>

Adam/Loss/raw'�Q=

Accuracy/__raw_  �?

AccuracyIwx?�;(�Z       o��	�gQi��A�*L

Loss�S�>

Adam/Loss/raw%�Q=

Accuracy/__raw_  �?

Accuracy(8y?�/��Z       o��	.�Qi��A�*L

Loss$�>

Adam/Loss/raw�yu=

Accuracy/__raw_  �?

Accuracy��y?��(|Z       o��	�Qi��A�*L

Loss&�>

Adam/Loss/raw��@

Accuracy/__raw_  �>

Accuracy��z?JY��Z       o��	x�Qi��A�*L

Loss\�}?

Adam/Loss/raw�9=

Accuracy/__raw_  �?

Accuracy�k?(��Z       o��	HRi��A�*L

Lossb�e?

Adam/Loss/raw;�b=

Accuracy/__raw_  �?

Accuracy�&m?�z�Z       o��	X;Ri��A�*L

Loss��O?

Adam/Loss/rawk�a=

Accuracy/__raw_  �?

Accuracy>	o?L��Z       o��	wRi��A�*L

Loss�<?

Adam/Loss/rawT/=

Accuracy/__raw_  �?

Accuracy��p?����Z       o��	��Ri��A�*L

Loss{�*?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy^Br?GϙZ       o��	Y�Ri��A�*L

Loss��?

Adam/Loss/raw�SU=

Accuracy/__raw_  �?

Accuracy!�s?��A%Z       o��	^�Ri��A�*L

Loss\?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��t?��KZ       o��	�*Si��A�*L

Loss4;?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��u?�+�*Z       o��	C[Si��A�*L

LossD��>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�v?+�Z       o��	[zSi��A�*L

LossSM�>

Adam/Loss/rawR6�=

Accuracy/__raw_  �?

Accuracy��w?)<��Z       o��	-�Si��A�*L

LossY-�>

Adam/Loss/rawO�S=

Accuracy/__raw_  �?

Accuracy��x?iy��Z       o��	��Si��A�*L

Loss�4�>

Adam/Loss/raw5��=

Accuracy/__raw_  �?

Accuracy�my?�\�'Z       o��	�Si��A�*L

Loss���>

Adam/Loss/raw<�=

Accuracy/__raw_  �?

Accuracy�z?��AZ       o��	f�Si��A�*L

Loss��>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy2�z?�A��Z       o��	'Ti��A�*L

Loss�6�>

Adam/Loss/raw
�v=

Accuracy/__raw_  �?

Accuracyz5{?��*�Z       o��	�:Ti��A�*L

Lossn�~>

Adam/Loss/raw��v=

Accuracy/__raw_  �?

Accuracy!�{?lbkZ       o��	�YTi��A�*L

LossH�k>

Adam/Loss/raw9"I=

Accuracy/__raw_  �?

Accuracy�|?�C��Z       o��	xTi��A�*L

LosshY>

Adam/Loss/raw4�G=

Accuracy/__raw_  �?

Accuracy݁|?ʃ|Z       o��	ĖTi��A�*L

LossLaH>

Adam/Loss/raw	�>=

Accuracy/__raw_  �?

AccuracyG�|?�u�Z       o��	��Ti��A�*L

Loss�9>

Adam/Loss/raw�;=

Accuracy/__raw_  �?

Accuracy�+}?&2CZ       o��	��Ti��A�*L

Loss2H+>

Adam/Loss/raw��>=

Accuracy/__raw_  �?

Accuracy-t}?e���Z       o��	&Ui��A�*L

Loss��>

Adam/Loss/raw[~=

Accuracy/__raw_  �?

Accuracy\�}?�C��Z       o��	EUi��A�*L

LossWb>

Adam/Loss/raw̾~=

Accuracy/__raw_  �?

Accuracy�}?t��Z       o��	]iUi��A�*L

Lossz�>

Adam/Loss/raw�F=

Accuracy/__raw_  �?

Accuracy�$~?�-OZ       o��	H�Ui��A�*L

Loss9�>

Adam/Loss/raw�dR=

Accuracy/__raw_  �?

AccuracyWT~?�,�Z       o��	��Ui��A�*L

Loss=��=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy~?L�a�Z       o��	�Ui��A�*L

Loss���=

Adam/Loss/raw᰹=

Accuracy/__raw_  �?

Accuracy��~?�j~dZ       o��	�Vi��A�*L

LossM��=

Adam/Loss/rawh׸=

Accuracy/__raw_  �?

Accuracy<�~?R&Z       o��	�*Vi��A�*L

Loss��=

Adam/Loss/raw�X=

Accuracy/__raw_  �?

Accuracyi�~?��^Z       o��	�}Vi��A�*L

Loss�p�=

Adam/Loss/rawTLQ=

Accuracy/__raw_  �?

Accuracyx?h6EZ       o��	Q�Vi��A�*L

Loss&��=

Adam/Loss/raw�cD=

Accuracy/__raw_  �?

Accuracy�?~��Z       o��	K�Vi��A�*L

Loss��=

Adam/Loss/raw��>=

Accuracy/__raw_  �?

Accuracys3?�J��Z       o��	��Vi��A�*L

Loss߉�=

Adam/Loss/raw�==

Accuracy/__raw_  �?

Accuracy�G?_d�Z       o��	�Wi��A�*L

Loss
�=

Adam/Loss/raw�B=

Accuracy/__raw_  �?

AccuracyQZ?���Z       o��	�/Wi��A�*L

Lossꭣ=

Adam/Loss/raw�$Z=

Accuracy/__raw_  �?

Accuracy�j?��J>Z       o��	rPWi��A�*L

Loss�7�=

Adam/Loss/raw��j=

Accuracy/__raw_  �?

Accuracy�y?�aOtZ       o��	:uWi��A�*L

Loss�"�=

Adam/Loss/raw�K�<

Accuracy/__raw_  �?

Accuracy8�?~�Z       o��	�Wi��A�*L

Loss���=

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyL�?M��rZ       o��	��Wi��A�*L

LossY߇=

Adam/Loss/raw�Fr=

Accuracy/__raw_  �?

Accuracy+�?#�Z       o��	=�Wi��A�*L

Loss&f�=

Adam/Loss/rawc�A

Accuracy/__raw_  �>

Accuracy��?m!=�Z       o��	0�Wi��A�*L

LossTx?

Adam/Loss/raw��[=

Accuracy/__raw_  �?

Accuracy�}l?Q��QZ       o��	.Xi��A�*L

Loss��`?

Adam/Loss/raw�ކ=

Accuracy/__raw_  �?

Accuracy qn?���Z       o��	eUXi��A�*L

Loss��K?

Adam/Loss/raw�I�=

Accuracy/__raw_  �?

Accuracy�2p?9�!�Z       o��	��Xi��A�*L

Loss(9?

Adam/Loss/rawҌ?=

Accuracy/__raw_  �?

Accuracy�q?#vMZ       o��	�Xi��A�*L

Loss��'?

Adam/Loss/raw$3)=

Accuracy/__raw_  �?

Accuracy%3s?0YJZ       o��	�Xi��A�*L

Loss�?

Adam/Loss/raw�C4=

Accuracy/__raw_  �?

Accuracy�zt?��E�Z       o��	�Yi��A�*L

Loss 
?

Adam/Loss/raw��K=

Accuracy/__raw_  �?

Accuracy��u?(�|HZ       o��	|-Yi��A�*L

Loss���>

Adam/Loss/raw �K=

Accuracy/__raw_  �?

Accuracy-�v?/��Z       o��	�OYi��A�*L

Lossr�>

Adam/Loss/rawu�I=

Accuracy/__raw_  �?

Accuracy�w?�8B_Z       o��	�Yi��A�*L

Loss5�>

Adam/Loss/rawͮl=

Accuracy/__raw_  �?

Accuracyqx?XH,Z       o��	��Yi��A�*L

Loss�D�>

Adam/Loss/raw�8V=

Accuracy/__raw_  �?

Accuracy�2y?�l��Z       o��	!�Yi��A�*L

LossP�>

Adam/Loss/rawˮ�=

Accuracy/__raw_  �?

Accuracy��y?�a��Z       o��	;Zi��A�*L

LossZ�>

Adam/Loss/raw�~�=

Accuracy/__raw_  �?

Accuracym}z?Z-�Z       o��	�;Zi��A�*L

Loss�P�>

Adam/Loss/raw�+[=

Accuracy/__raw_  �?

Accuracy|
{?�U�zZ       o��	�\Zi��A�*L

Loss�R�>

Adam/Loss/raw�%=

Accuracy/__raw_  �?

Accuracyp�{?}�:Z       o��	�}Zi��A�*L

LossE�w>

Adam/Loss/rawg�d=

Accuracy/__raw_  �?

Accuracy��{?Z       o��	
�Zi��A�*L

Loss��d>

Adam/Loss/raw%�+=

Accuracy/__raw_  �?

Accuracy�b|?u9�Z       o��	��Zi��A�*L

LossfR>

Adam/Loss/raw�+=

Accuracy/__raw_  �?

Accuracy�|?�/�Z       o��	��Zi��A�*L

Loss	^A>

Adam/Loss/raw�MG=

Accuracy/__raw_  �?

Accuracy^}?t�IZ       o��	��Zi��A�*L

Loss^3>

Adam/Loss/raw�Q=

Accuracy/__raw_  �?

AccuracyU]}?���Z       o��	�[i��A�*L

Loss�Y&>

Adam/Loss/raw��>=

Accuracy/__raw_  �?

Accuracy͠}?� ��Z       o��	�S[i��A�*L

Lossb}>

Adam/Loss/raw�ey=

Accuracy/__raw_  �?

Accuracy��}?��6Z       o��	�[i��A�*L

Loss�F>

Adam/Loss/rawA|w=

Accuracy/__raw_  �?

Accuracy+~?h��Z       o��	��[i��A�*L

Lossp�>

Adam/Loss/raw"l�=

Accuracy/__raw_  �?

AccuracyZE~?�_-Z       o��	��[i��A�*L

LossMC>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�q~?�V��Z       o��	m\i��A�*L

Loss	)�=

Adam/Loss/raw�(=

Accuracy/__raw_  �?

Accuracyu�~?�;�Z       o��	�;\i��A�*L

Loss�z�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyP�~?�(��Z       o��	u[\i��A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��~?#6/Z       o��	z\i��A�*L

Loss���=

Adam/Loss/raw�^U=

Accuracy/__raw_  �?

Accuracy��~?�)��Z       o��	A�\i��A�*L

Lossͣ�=

Adam/Loss/raw��y=

Accuracy/__raw_  �?

Accuracy�?|��Z       o��	0�\i��A�*L

Loss�B�=

Adam/Loss/raw��/=

Accuracy/__raw_  �?

AccuracyI,?��/Z       o��	�]i��A�*L

Lossլ=

Adam/Loss/raw5"=

Accuracy/__raw_  �?

AccuracyuA? w��Z       o��	�>]i��A�*L

Loss֨�=

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy�T?�F��Z       o��	�k]i��A�*L

Loss0T�=

Adam/Loss/rawY�{=

Accuracy/__raw_  �?

Accuracy�e?���Z       o��	{�]i��A�*L

Loss�d�=

Adam/Loss/raw`#E=

Accuracy/__raw_  �?

Accuracyu?�4�Z       o��	N�]i��A�*L

Loss��=

Adam/Loss/rawz�==

Accuracy/__raw_  �?

Accuracy��?��I�Z       o��	��]i��A�*L

Loss̍=

Adam/Loss/rawp��=

Accuracy/__raw_  �?

Accuracy|�?��BTZ       o��	�0^i��A�*L

LosseI�=

Adam/Loss/raw�_�=

Accuracy/__raw_  �?

Accuracy��?��
�Z       o��	��^i��A�*L

Lossk��=

Adam/Loss/raw�I/=

Accuracy/__raw_  �?

Accuracyܤ?Q|�Z       o��	K_i��A�*L

Lossx�=

Adam/Loss/rawu�?=

Accuracy/__raw_  �?

Accuracy��?а6�Z       o��	M�_i��A�*L

Loss?��=

Adam/Loss/raw^z =

Accuracy/__raw_  �?

Accuracy-�?2ZoZ       o��	�`i��A�*L

Loss�)�=

Adam/Loss/raw�C=

Accuracy/__raw_  �?

Accuracy��?�;EZ       o��	�\`i��A�*L

Loss�|=

Adam/Loss/raw��B=

Accuracy/__raw_  �?

Accuracy4�?�1��Z       o��	Q�`i��A�*L

Loss�Vv=

Adam/Loss/raw$=C=

Accuracy/__raw_  �?

Accuracy/�?��Z       o��	r�`i��A�*L

Loss~:q=

Adam/Loss/raw�gl=

Accuracy/__raw_  �?

Accuracy��?y5=Z       o��	�`i��A�*L

Loss�p=

Adam/Loss/rawo�==

Accuracy/__raw_  �?

Accuracyi�?�͖.Z       o��	��`i��A�*L

Loss��k=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?�Z       o��	\ai��A�*L

Lossѣc=

Adam/Loss/raw߻=

Accuracy/__raw_  �?

Accuracy��?Z4�{Z       o��	�Oai��A�*L

LosslY\=

Adam/Loss/rawO==

Accuracy/__raw_  �?

Accuracy9�?=��Z       o��	�{ai��A�*L

Loss�>Y=

Adam/Loss/rawWn]=

Accuracy/__raw_  �?

Accuracyg�?�v�Z       o��	B�ai��A�*L

Loss�Y=

Adam/Loss/raw*$E=

Accuracy/__raw_  �?

AccuracyC�?WAN�Z       o��	\�ai��A�*L

Loss��W=

Adam/Loss/rawúK=

Accuracy/__raw_  �?

Accuracy��?%3�Z       o��	��bi��A�*L

LossclV=

Adam/Loss/rawЯJ=

Accuracy/__raw_  �?

Accuracy'�?J��Z       o��	��bi��A�*L

Loss�?U=

Adam/Loss/raw$�6=

Accuracy/__raw_  �?

Accuracy=�?ӼB�Z       o��		tci��A�*L

Loss�3R=

Adam/Loss/raw��C=

Accuracy/__raw_  �?

Accuracy�?F�l�Z       o��	n�ci��A�*L

Loss��P=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?���?Z       o��	"�ci��A�*L

LossY�K=

Adam/Loss/raw_7=

Accuracy/__raw_  �?

AccuracyR�?x�h�Z       o��	kDdi��A�*L

Loss&�I=

Adam/Loss/raw��5=

Accuracy/__raw_  �?

Accuracy��?2�MZ       o��	+jdi��A�*L

LossM�G=

Adam/Loss/rawf?N=

Accuracy/__raw_  �?

Accuracy��?Y�|�Z       o��	��di��A�*L

Loss�LH=

Adam/Loss/raw[�T=

Accuracy/__raw_  �?

Accuracy�?��t:Z       o��	��di��A�*L

Loss�I=

Adam/Loss/raw<!K=

Accuracy/__raw_  �?

Accuracy�?�wRZ       o��	�ei��A�*L

Loss��I=

Adam/Loss/raw�o=

Accuracy/__raw_  �?

Accuracy��?�t��Z       o��	?9ei��A�*L

LossqM=

Adam/Loss/rawۂm=

Accuracy/__raw_  �?

Accuracy��? ��Z       o��	�]ei��A�*L

Loss�P=

Adam/Loss/rawJ�.=

Accuracy/__raw_  �?

Accuracyu�?'4�7Z       o��	=�ei��A�*L

Loss=M=

Adam/Loss/raw�*=

Accuracy/__raw_  �?

Accuracy�?��|�Z       o��	�ei��A�*L

Loss߸I=

Adam/Loss/rawޤ =

Accuracy/__raw_  �?

Accuracy��?�@�Z       o��	��ei��A�*L

LossjB=

Adam/Loss/rawx]h=

Accuracy/__raw_  �?

Accuracy<�?+&/Z       o��	��ei��A�*L

Loss�5F=

Adam/Loss/rawWVg=

Accuracy/__raw_  �?

Accuracy��??#�Z       o��	M1fi��A�*L

Loss��I=

Adam/Loss/raw�T$=

Accuracy/__raw_  �?

Accuracy$�?����Z       o��	�|fi��A�*L

Loss��E=

Adam/Loss/raw>#y=

Accuracy/__raw_  �?

Accuracy��?�E��Z       o��	Ҧfi��A�*L

Loss��J=

Adam/Loss/raw�0 =

Accuracy/__raw_  �?

Accuracy��?mP��Z       o��	��fi��A�*L

Losst�F=

Adam/Loss/raw��M=

Accuracy/__raw_  �?

Accuracy0�? 3#Z       o��	d�fi��A�*L

LossvbG=

Adam/Loss/rawPM=

Accuracy/__raw_  �?

Accuracyx�?�Io�Z       o��	�gi��A�*L

LossY�G=

Adam/Loss/raw�bI=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	'gi��A�*L

Loss�H=

Adam/Loss/raw��6=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	cGgi��A�*L

Loss(aF=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy(�?ԭCZ       o��	hgi��A�*L

Loss˂A=

Adam/Loss/raw�%�=

Accuracy/__raw_  �?

AccuracyW�?3�zBZ       o��	/�gi��A�*L

Loss�L=

Adam/Loss/rawV,�=

Accuracy/__raw_  �?

Accuracy��?���4Z       o��	��gi��A�*L

LossžV=

Adam/Loss/raw�K=

Accuracy/__raw_  �?

Accuracy��?��aZ       o��	e�gi��A�*L

Loss��U=

Adam/Loss/raw�~=

Accuracy/__raw_  �?

Accuracy��?�
�RZ       o��	��gi��A�*L

Loss�N=

Adam/Loss/raw�|=

Accuracy/__raw_  �?

Accuracy��?A0�nZ       o��	�hi��A�*L

Loss�I=

Adam/Loss/raw�%�=

Accuracy/__raw_  �?

Accuracy�?6�(�Z       o��	�Phi��A�*L

Loss�@U=

Adam/Loss/raw�O�=

Accuracy/__raw_  �?

Accuracy�?>���Z       o��	uxhi��A�*L

Loss�_=

Adam/Loss/raw�3<=

Accuracy/__raw_  �?

Accuracy5�?�Ui�Z       o��	g�hi��A�*L

Loss-\=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyI�?�AZ       o��	_�hi��A�*L

Loss��T=

Adam/Loss/raw��)=

Accuracy/__raw_  �?

Accuracy[�?jѢZ       o��	��hi��A�*L

Loss�qP=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracyl�?�ɂ\Z       o��	?ii��A�*L

Loss�1K=

Adam/Loss/raw�v=

Accuracy/__raw_  �?

Accuracy{�?)ȅ�Z       o��	�6ii��A�*L

Loss�kF=

Adam/Loss/rawe#F=

Accuracy/__raw_  �?

Accuracy��?�=iZ       o��	�Wii��A�*L

Loss�dF=

Adam/Loss/raw��,=

Accuracy/__raw_  �?

Accuracy��?�\��Z       o��	Ѵii��A�*L

Loss��C=

Adam/Loss/rawށ=

Accuracy/__raw_  �?

Accuracy��?��|Z       o��	��ii��A�*L

Loss�G>=

Adam/Loss/rawۆ=

Accuracy/__raw_  �?

Accuracy��?�ʞVZ       o��	?�ii��A�*L

LossO9F=

Adam/Loss/raw o�=

Accuracy/__raw_  �?

Accuracy��?�n$Z       o��	d"ji��A�*L

Loss�IM=

Adam/Loss/raw�A=

Accuracy/__raw_  �?

Accuracy��?��tZ       o��	�Aji��A�*L

LossOL=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?:�OZ       o��	�aji��A�*L

Loss!lG=

Adam/Loss/raw*xE=

Accuracy/__raw_  �?

Accuracy��?0��Z       o��	Y�ji��A�*L

Loss":G=

Adam/Loss/raw<�9=

Accuracy/__raw_  �?

Accuracy��?�6��Z       o��	�ji��A�*L

Loss��E=

Adam/Loss/rawh�8=

Accuracy/__raw_  �?

Accuracy��?\V�Z       o��	,�ji��A�*L

Loss��D=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�8��Z       o��	ki��A�*L

Lossp<;=

Adam/Loss/raw�W=

Accuracy/__raw_  �?

Accuracy��?۽�Z       o��	=,ki��A�*L

Loss�>=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?w.�BZ       o��	p\ki��A�*L

Loss�i9=

Adam/Loss/raw(�=

Accuracy/__raw_  �?

Accuracy��?X�/Z       o��	�ki��A�*L

Loss�@=

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy��?�(�nZ       o��	e�ki��A�*L

Loss�'G=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?&��`Z       o��	��ki��A�*L

Loss�B=

Adam/Loss/raw�?=

Accuracy/__raw_  �?

Accuracy��?�m�8Z       o��	�/li��A�*L

Loss@�A=

Adam/Loss/raw��z=

Accuracy/__raw_  �?

Accuracy��?d�{�Z       o��	�Rli��A�*L

LosscsG=

Adam/Loss/raw�&=

Accuracy/__raw_  �?

Accuracy��?�.��Z       o��	Grli��A�*L

Loss�-D=

Adam/Loss/raw7�%=

Accuracy/__raw_  �?

Accuracy��?>7�Z       o��	P�li��A�*L

Loss�'A=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?GW�Z       o��	��li��A�*L

Loss�e;=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?O�Y�Z       o��	mmi��A�*L

Loss�5=

Adam/Loss/raw�"=

Accuracy/__raw_  �?

Accuracy��?.+XZ       o��	�>mi��A�*L

Lossu+1=

Adam/Loss/raw�n=

Accuracy/__raw_  �?

Accuracy��?�GiZ       o��	 ami��A�*L

LossRO7=

Adam/Loss/raw��m=

Accuracy/__raw_  �?

Accuracy��?Q�ݒZ       o��	E�mi��A�*L

Lossy�<=

Adam/Loss/raw*�(=

Accuracy/__raw_  �?

Accuracy��?��T:Z       o��	��mi��A�*L

Loss��:=

Adam/Loss/raw�|=A

Accuracy/__raw_   >

Accuracy��?Q���Z       o��	��mi��A�*L

Loss�ל?

Adam/Loss/rawF =

Accuracy/__raw_  �?

Accuracy��i?[ƞZ       o��	��mi��A�*L

Loss֨�?

Adam/Loss/raw��8=

Accuracy/__raw_  �?

Accuracy�k?�E�TZ       o��	Cni��A�*L

Loss>�?

Adam/Loss/rawE�8=

Accuracy/__raw_  �?

Accuracy�m?R��JZ       o��	�$ni��A�*L

Loss&�g?

Adam/Loss/raw|�=

Accuracy/__raw_  �?

Accuracy��o?)*Z       o��	cDni��A�*L

Loss��Q?

Adam/Loss/rawK�4=

Accuracy/__raw_  �?

Accuracy�Mq?{B#(Z       o��	�gni��A�*L

Loss��=?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��r?H���Z       o��	��ni��A�*L

Loss�+?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy}t?�Z       o��	��ni��A�*L

Loss��?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy=Iu?KM�fZ       o��	b�ni��A�*L

Loss�?

Adam/Loss/raw�RH=

Accuracy/__raw_  �?

Accuracy�[v?V��Z       o��	�4oi��A�*L

Loss�E�>

Adam/Loss/rawp<=

Accuracy/__raw_  �?

Accuracy]Rw?�
�Z       o��	]Toi��A�*L

LossY3�>

Adam/Loss/rawl�C=

Accuracy/__raw_  �?

Accuracy�0x?�N}Z       o��	luoi��A�*L

Loss��>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracyz�x?_b8iZ       o��	!�oi��A�*L

Loss4@�>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracyn�y?�1�Z       o��	 �oi��A�*L

Loss��>

Adam/Loss/raw��<

Accuracy/__raw_  �?

AccuracycNz?N�w�Z       o��	�pi��A�*L

Loss_�>

Adam/Loss/rawq�H=

Accuracy/__raw_  �?

Accuracy&�z?���cZ       o��	"7pi��A�*L

LossMȐ>

Adam/Loss/rawĻ=

Accuracy/__raw_  �?

AccuracyUc{?���{Z       o��	�Vpi��A�*L

Loss8@�>

Adam/Loss/raw��&=

Accuracy/__raw_  �?

Accuracyf�{?���cZ       o��	[vpi��A�*L

Loss�7r>

Adam/Loss/raw��%=

Accuracy/__raw_  �?

Accuracy�C|?��NZ       o��	�pi��A�*L

Loss�"^>

Adam/Loss/raw�O=

Accuracy/__raw_  �?

AccuracyK�|?����Z       o��	дpi��A�*L

LossbM>

Adam/Loss/raw86=

Accuracy/__raw_  �?

Accuracy]�|?EA�Z       o��	�pi��A�*L

Loss3X<>

Adam/Loss/raw �8=

Accuracy/__raw_  �?

Accuracy�F}?s*��Z       o��	�qi��A�*L

Loss�!.>

Adam/Loss/rawlށ=

Accuracy/__raw_  �?

Accuracy��}?���\Z       o��	�%qi��A�*L

Loss%6#>

Adam/Loss/raw@|�=

Accuracy/__raw_  �?

AccuracyK�}?�eV�Z       o��	cIqi��A�*L

LossX]>

Adam/Loss/rawSJ=

Accuracy/__raw_  �?

Accuracy�~?���{Z       o��	�iqi��A�*L

Loss޵>

Adam/Loss/raw=

Accuracy/__raw_  �?

Accuracy�6~?��5Z       o��	��qi��A�*L

Lossa>

Adam/Loss/raw2I=

Accuracy/__raw_  �?

AccuracyUd~?��Z       o��	��qi��A�*L

Loss$��=

Adam/Loss/raw�O=

Accuracy/__raw_  �?

Accuracy��~?ƴw�Z       o��	��qi��A�*L

Loss`��=

Adam/Loss/raw��N=

Accuracy/__raw_  �?

Accuracy��~?��
pZ       o��	~ri��A�*L

Loss���=

Adam/Loss/rawL�:=

Accuracy/__raw_  �?

Accuracy��~?��g�Z       o��	�<ri��A�*L

LossS��=

Adam/Loss/raw�H=

Accuracy/__raw_  �?

Accuracy��~?�]5&Z       o��	pyri��A�*L

Loss;��=

Adam/Loss/raw�W=

Accuracy/__raw_  �?

Accuracy�?�[�TZ       o��	��ri��A�*L

Lossf~�=

Adam/Loss/raw\
=

Accuracy/__raw_  �?

Accuracy9%?�ǣZ       o��	��ri��A�*L

Loss��=

Adam/Loss/rawe�=

Accuracy/__raw_  �?

Accuracy;?��LZ       o��	��ri��A�*L

Loss��=

Adam/Loss/raw<X=

Accuracy/__raw_  �?

Accuracy�N?'"��Z       o��	�#si��A�*L

Loss���=

Adam/Loss/raw ��@

Accuracy/__raw_   >

Accuracy�`?E�6Z       o��	9dsi��A�*L

Loss��Q?

Adam/Loss/raw�m=

Accuracy/__raw_  �?

Accuracy
i?r�Z       o��	׈si��A�*L

Loss��=?

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy�Uk?�L�Z       o��	��si��A�*L

Loss�+?

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy�fm?u�+Z       o��	 �si��A�*L

Loss�B?

Adam/Loss/rawq"U=

Accuracy/__raw_  �?

Accuracy�Bo?Q��|Z       o��	h�si��A�*L

Loss�?

Adam/Loss/raw�/=

Accuracy/__raw_  �?

Accuracy|�p?��@lZ       o��	�	ti��A�*L

Loss� ?

Adam/Loss/raw�p=

Accuracy/__raw_  �?

Accuracy#qr?m��IZ       o��	�*ti��A�*L

Loss�B�>

Adam/Loss/raw@D=

Accuracy/__raw_  �?

Accuracy9�s?�oZ       o��	bJti��A�*L

Loss�|�>

Adam/Loss/raw�!D=

Accuracy/__raw_  �?

Accuracy�u?"�A)Z       o��	�hti��A�*L

Lossp��>

Adam/Loss/raw$=

Accuracy/__raw_  �?

Accuracy�v?�q�Z       o��	��ti��A�*L

Loss.��>

Adam/Loss/raw�A=

Accuracy/__raw_  �?

Accuracy�w?QB>Z       o��	Ƨti��A�*L

Lossn�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy~�w?��0bZ       o��	��ti��A�*L

Loss#9�>

Adam/Loss/rawאN=

Accuracy/__raw_  �?

Accuracyq�x?F4��Z       o��	�ui��A�*L

Loss�.�>

Adam/Loss/raw�N=

Accuracy/__raw_  �?

Accuracy�y?Ɉ�\Z       o��	�+ui��A�*L

Lossj�v>

Adam/Loss/raw.9=

Accuracy/__raw_  �?

Accuracy�)z?؀AVZ       o��	�Mui��A�*L

Loss �b>

Adam/Loss/raw@G$=

Accuracy/__raw_  �?

AccuracyR�z?���VZ       o��	]nui��A�*L

Loss~P>

Adam/Loss/rawkV=

Accuracy/__raw_  �?

Accuracy�E{?��kvZ       o��	\�ui��A�*L

LossҢ@>

Adam/Loss/raw��@=

Accuracy/__raw_  �?

AccuracyϾ{?�bZ       o��	v�ui��A�*L

Loss�/2>

Adam/Loss/raw�?=

Accuracy/__raw_  �?

Accuracy�+|?�m�Z       o��	2�ui��A�*L

Loss2%%>

Adam/Loss/raw&=

Accuracy/__raw_  �?

Accuracy��|?���Z       o��	�vi��A�*L

Loss�n>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��|?<��Z       o��	�*vi��A�*L

Loss��>

Adam/Loss/raw�7m=

Accuracy/__raw_  �?

Accuracyb5}?D��'Z       o��	�~vi��A�*L

Loss2i>

Adam/Loss/rawA=

Accuracy/__raw_  �?

Accuracy�|}?���Z       o��	�vi��A�*L

Lossj��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy)�}?�7#PZ       o��	�vi��A�*L

Loss�	�=

Adam/Loss/raw8��<

Accuracy/__raw_  �?

Accuracy�}?�qL@Z       o��	��vi��A�*L

Loss�=

Adam/Loss/raw*�=

Accuracy/__raw_  �?

Accuracy$+~?���Z       o��	�wi��A�*L

Loss#��=

Adam/Loss/rawYoJ=

Accuracy/__raw_  �?

AccuracyZ~?iWN�Z       o��	�)wi��A�*L

Loss1ʼ=

Adam/Loss/raw�"�<

Accuracy/__raw_  �?

Accuracy:�~?ٯ��Z       o��	�Kwi��A�*L

Loss=��=

Adam/Loss/raww��<

Accuracy/__raw_  �?

Accuracy4�~?�,�&Z       o��	�lwi��A�*L

Loss���=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracyb�~?:+�Z       o��	~�wi��A�*L

Loss�7�=

Adam/Loss/raw�f=

Accuracy/__raw_  �?

Accuracy%�~?��Z       o��	(�wi��A�*L

Loss���=

Adam/Loss/raw6=

Accuracy/__raw_  �?

Accuracy�?���Z       o��	8�wi��A�*L

LossM�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�?~�DZ       o��	�xi��A�*L

Loss�܃=

Adam/Loss/raw-�<

Accuracy/__raw_  �?

Accuracy-6?}�Z       o��	�Uxi��A�*L

Loss}�x=

Adam/Loss/raw��6=

Accuracy/__raw_  �?

Accuracy\J?¼Z       o��	�~xi��A�*L

LossBr=

Adam/Loss/rawz�:=

Accuracy/__raw_  �?

Accuracy�\?��Z       o��	0�xi��A�*L

Loss[�l=

Adam/Loss/rawp�K=

Accuracy/__raw_  �?

Accuracy�l?A�uZ       o��	�xi��A�*L

Loss�oi=

Adam/Loss/raw�о<

Accuracy/__raw_  �?

Accuracy�{?�Z4Z       o��	+�xi��A�*L

Loss!�[=

Adam/Loss/raw��<

Accuracy/__raw_  �?

AccuracyԈ?�|�Z       o��	�yi��A�*L

Loss�*O=

Adam/Loss/rawv��<

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�6yi��A�*L

Loss�~F=

Adam/Loss/raw�,@=

Accuracy/__raw_  �?

Accuracyy�?���Z       o��	[yi��A�*L

Loss�E=

Adam/Loss/rawV�,=

Accuracy/__raw_  �?

Accuracy �?�Q��Z       o��	>�yi��A�*L

Loss�UC=

Adam/Loss/raws�U=

Accuracy/__raw_  �?

Accuracyб?�bKZ       o��	b�yi��A�*L

Loss+E=

Adam/Loss/raw��T=

Accuracy/__raw_  �?

Accuracy��?��?(Z       o��	tzi��A�*L

Loss`�F=

Adam/Loss/raw%�=

Accuracy/__raw_  �?

Accuracy��?VxZ       o��	0zi��A�*L

Loss@[@=

Adam/Loss/rawJ�=

Accuracy/__raw_  �?

Accuracy �?�q26Z       o��	Pzi��A�*L

Loss'==

Adam/Loss/raw49=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	�qzi��A�*L

Loss8=

Adam/Loss/rawűp=

Accuracy/__raw_  �?

Accuracy��?X��Z       o��	S�zi��A�*L

LossT�==

Adam/Loss/raw=�o=

Accuracy/__raw_  �?

Accuracyr�?=V��Z       o��	Ůzi��A�*L

Loss�B=

Adam/Loss/raw��9=

Accuracy/__raw_  �?

Accuracy��?�{(lZ       o��	�zi��A�*L

Loss_�A=

Adam/Loss/rawFu:A

Accuracy/__raw_    

AccuracyW�?5�xCZ       o��	��zi��A�*L

LossB��?

Adam/Loss/raw�3�<

Accuracy/__raw_  �?

AccuracyHf?�M��Z       o��	c{i��A�*L

LossPy�?

Adam/Loss/raw��	=

Accuracy/__raw_  �?

Accuracy�h?D��Z       o��	.?{i��A�*L

Loss��{?

Adam/Loss/raw�j=

Accuracy/__raw_  �?

Accuracy+k?x�`Z       o��	�r{i��A�*L

Loss%�c?

Adam/Loss/raw�g=

Accuracy/__raw_  �?

AccuracyX@m?$HhZ       o��	@�{i��A�*L

Loss�BN?

Adam/Loss/rawU )=

Accuracy/__raw_  �?

AccuracyO o?�W�LZ       o��	r�{i��A�*L

Loss��:?

Adam/Loss/rawLb=

Accuracy/__raw_  �?

AccuracyG�p?|�D�Z       o��	H�{i��A�*L

LossPo)?

Adam/Loss/raw�<

Accuracy/__raw_  �?

AccuracyUr?��ٯZ       o��	j|i��A�*L

Loss2,?

Adam/Loss/raw�Q�<

Accuracy/__raw_  �?

Accuracy�s?�oIZ       o��	�J|i��A�*L

Loss��
?

Adam/Loss/raw� =

Accuracy/__raw_  �?

Accuracy��t?*�/Z       o��	�l|i��A�*L

Loss���>

Adam/Loss/raw\�"=

Accuracy/__raw_  �?

AccuracyD	v?��>�Z       o��	��|i��A�*L

Loss���>

Adam/Loss/raw�g=

Accuracy/__raw_  �?

AccuracyWw?����Z       o��	��|i��A�*L

Loss_��>

Adam/Loss/raw��^=

Accuracy/__raw_  �?

Accuracy��w?��U�Z       o��	�}i��A�*L

Loss�>

Adam/Loss/raw�q^=

Accuracy/__raw_  �?

Accuracy��x?��Z       o��	V,}i��A�*L

Loss�ά>

Adam/Loss/raw{>=

Accuracy/__raw_  �?

Accuracywvy?\��qZ       o��	�L}i��A�*L

Loss?�>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�z?�&�Z       o��	�l}i��A�*L

Loss��>

Adam/Loss/raw�+=

Accuracy/__raw_  �?

Accuracyp�z?+l�Z       o��	ō}i��A�*L

Loss�΃>

Adam/Loss/raw�i=

Accuracy/__raw_  �?

Accuracy�;{?��l�Z       o��	��}i��A�*L

Loss�s>

Adam/Loss/raw\�g=

Accuracy/__raw_  �?

Accuracy��{?>�7Z       o��	 �}i��A�*L

Loss
�`>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�#|?�W�{Z       o��	��}i��A�*L

Loss�M>

Adam/Loss/raw� =

Accuracy/__raw_  �?

Accuracy��|?� YZ       o��	�~i��A�*L

Loss�1=>

Adam/Loss/raw�dE=

Accuracy/__raw_  �?

Accuracy��|?5v|OZ       o��	=C~i��A�*L

Loss�5/>

Adam/Loss/raw�*	=

Accuracy/__raw_  �?

Accuracy�/}?�n�Z       o��	8�~i��A�*L

Loss!>

Adam/Loss/rawP�=

Accuracy/__raw_  �?

Accuracy�w}?���_Z       o��	��~i��A�*L

Lossm>

Adam/Loss/rawCv =

Accuracy/__raw_  �?

Accuracyy�}?\ƢZ       o��	h�~i��A�*L

LossQ�	>

Adam/Loss/raw8,=

Accuracy/__raw_  �?

Accuracy��}?=Q�Z       o��	t
i��A�*L

Loss�m�=

Adam/Loss/rawr�=

Accuracy/__raw_  �?

AccuracyX'~?A'tZ       o��	^Fi��A�*L

Loss��=

Adam/Loss/raw0�2=

Accuracy/__raw_  �?

Accuracy�V~?jۢ�Z       o��	�fi��A�*L

Loss���=

Adam/Loss/raw�"2=

Accuracy/__raw_  �?

Accuracy&�~?�E�Z       o��	��i��A�*L

Loss�h�=

Adam/Loss/raw��%=

Accuracy/__raw_  �?

Accuracyo�~?f�γZ       o��	u�i��A�*L

LossC��=

Adam/Loss/raw��(=

Accuracy/__raw_  �?

Accuracy��~?��1�Z       o��	S�i��A�*L

Loss���=

Adam/Loss/raw�
�<

Accuracy/__raw_  �?

Accuracy��~?�ϊZ       o��	�.�i��A�*L

Loss(U�=

Adam/Loss/raw^3=

Accuracy/__raw_  �?

Accuracy�?$�ʜZ       o��	PO�i��A�*L

LossX�=

Adam/Loss/raw�82=

Accuracy/__raw_  �?

Accuracy�?׻J�Z       o��	u�i��A�*L

Lossr��=

Adam/Loss/raw�p=

Accuracy/__raw_  �?

Accuracy�4?)A��Z       o��	m��i��A�*L

Loss
c�=

Adam/Loss/raw2�v=

Accuracy/__raw_  �?

Accuracy�H?H���Z       o��	���i��A�*L

Loss%��=

Adam/Loss/rawrU�<

Accuracy/__raw_  �?

Accuracy2[?��h7Z       o��	JӀi��A�*L

Lossޱ�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�k?Z�5�Z       o��	��i��A�*L

Loss#2~=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�z?r���Z       o��	��i��A�*L

Loss��l=

Adam/Loss/rawhm}=

Accuracy/__raw_  �?

Accuracyۇ?D��Z       o��	�2�i��A�*L

Loss��n=

Adam/Loss/rawt�=

Accuracy/__raw_  �?

Accuracyߓ?�	J�Z       o��	nS�i��A�*L

LossMd=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?$|��Z       o��	t�i��A�*L

LossE�W=

Adam/Loss/raw�j=

Accuracy/__raw_  �?

Accuracyj�?|}^�Z       o��	t��i��A�*L

Loss'�Y=

Adam/Loss/rawoi=

Accuracy/__raw_  �?

Accuracy,�?�%�Z       o��	�ցi��A�*L

Lossa'[=

Adam/Loss/raw�/:=

Accuracy/__raw_  �?

Accuracy�?�j�qZ       o��	��i��A�*L

Lossk�W=

Adam/Loss/raw:"=

Accuracy/__raw_  �?

Accuracy&�?�`}Z       o��	+�i��A�*L

Loss�{R=

Adam/Loss/raw~*=

Accuracy/__raw_  �?

Accuracy��?I�`Z       o��	'g�i��A�*L

LossD�L=

Adam/Loss/rawS,8=

Accuracy/__raw_  �?

AccuracyH�?�)�	Z       o��	]��i��A�*L

Loss��J=

Adam/Loss/raw��6=

Accuracy/__raw_  �?

Accuracyt�?)��Z       o��	몂i��A�*L

LossD�H=

Adam/Loss/rawS=

Accuracy/__raw_  �?

Accuracy�?��ɔZ       o��	�΂i��A�*L

Loss��C=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyL�?"`n�Z       o��	'��i��A�*L

Loss:@=

Adam/Loss/raw'�!=

Accuracy/__raw_  �?

Accuracy�?���)Z       o��	�`�i��A�*L

Lossk==

Adam/Loss/raw{�<=

Accuracy/__raw_  �?

Accuracyv�?�]a_Z       o��	��i��A�*L

Loss==

Adam/Loss/rawO+<=

Accuracy/__raw_  �?

Accuracy��?9�h�Z       o��	C��i��A�*L

Loss'�<=

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyD�?��/cZ       o��	�ʃi��A�*L

Loss�J6=

Adam/Loss/rawG�*=

Accuracy/__raw_  �?

Accuracy��?%�LhZ       o��	,��i��A�*L

Lossy%5=

Adam/Loss/raw<�,=

Accuracy/__raw_  �?

Accuracy��?��a�Z       o��	��i��A�*L

Loss&S4=

Adam/Loss/raw��2=

Accuracy/__raw_  �?

Accuracy��?e}%�Z       o��	�?�i��A�*L

Lossd/4=

Adam/Loss/raw��1=

Accuracy/__raw_  �?

Accuracy��?O$>�Z       o��	�d�i��A�*L

Loss�3=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracye�?(�r�Z       o��	p��i��A�*L

Loss�.=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?v�QZ       o��	/߄i��A�*L

Loss��,=

Adam/Loss/rawA=

Accuracy/__raw_  �?

Accuracy,�?��wZ       o��	@�i��A�*L

Loss?�.=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy[�?����Z       o��	�O�i��A�*L

Loss��+=

Adam/Loss/raw�
=

Accuracy/__raw_  �?

Accuracyl�?���cZ       o��	�q�i��A�*L

Loss1�(=

Adam/Loss/raw8=

Accuracy/__raw_  �?

Accuracya�?�;��Z       o��	��i��A�*L

Loss�7%=

Adam/Loss/rawX�6A

Accuracy/__raw_   >

Accuracy>�?j�fZ       o��	�хi��A�*L

Lossі?

Adam/Loss/raw<==

Accuracy/__raw_  �?

Accuracy��i?0��Z       o��	��i��A�*L

Loss�&�?

Adam/Loss/raw�:�<

Accuracy/__raw_  �?

Accuracy��k?ػxZ       o��	U�i��A�*L

Loss��u?

Adam/Loss/raw�h�<

Accuracy/__raw_  �?

Accuracy{�m?r���Z       o��	kF�i��A�*L

Loss]?

Adam/Loss/raw�^K=

Accuracy/__raw_  �?

Accuracy��o?;�[Z       o��	З�i��A�*L

Loss߸H?

Adam/Loss/raw	p=

Accuracy/__raw_  �?

AccuracyIq?>�.�Z       o��	ආi��A�*L

Loss|�5?

Adam/Loss/raw+1"=

Accuracy/__raw_  �?

Accuracy��r?�cmZ       o��	�ކi��A�*L

Lossqp$?

Adam/Loss/rawA�=

Accuracy/__raw_  �?

Accuracy�t?���Z       o��	���i��A�*L

Loss��?

Adam/Loss/rawO�=

Accuracy/__raw_  �?

Accuracy�Eu?���Z       o��	�i��A�*L

Loss?

Adam/Loss/raw��;=

Accuracy/__raw_  �?

Accuracy�Xv?�`�dZ       o��	�=�i��A�*L

Lossn��>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�Ow?��fZ       o��	�^�i��A�*L

Loss~�>

Adam/Loss/raw^o=

Accuracy/__raw_  �?

Accuracy.x?s�,�Z       o��	�~�i��A�*L

Loss
��>

Adam/Loss/raw�==

Accuracy/__raw_  �?

AccuracyL�x?̢��Z       o��	_��i��A�*L

Loss��>

Adam/Loss/raw�===

Accuracy/__raw_  �?

Accuracyx�y?z{!Z       o��	���i��A�*L

Loss!�>

Adam/Loss/raw�*�<

Accuracy/__raw_  �?

Accuracy�Lz?�E�xZ       o��	�ۇi��A�*L

Loss�ژ>

Adam/Loss/raw��A

Accuracy/__raw_    

Accuracy��z?@�UZ       o��	��i��A�*L

Lossm�?

Adam/Loss/raw�Lf=

Accuracy/__raw_  �?

AccuracyM�a?>-�Z       o��	�D�i��A�*L

Lossl�?

Adam/Loss/raw[T)=

Accuracy/__raw_  �?

Accuracy��d?���RZ       o��	�m�i��A�*L

Loss��?

Adam/Loss/raw�)=

Accuracy/__raw_  �?

Accuracy�g?S^�(Z       o��	v��i��A�*L

Loss�)k?

Adam/Loss/rawt��<

Accuracy/__raw_  �?

Accuracy��i?�r��Z       o��	�Ɉi��A�*L

LossYdT?

Adam/Loss/raw^�=

Accuracy/__raw_  �?

Accuracy�,l?��Z       o��	��i��A�*L

Loss� @?

Adam/Loss/raw\�?=

Accuracy/__raw_  �?

Accuracy&(n?�t[�Z       o��	t�i��A�*L

Loss) .?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��o?_�y�Z       o��	�,�i��A�*L

Loss�E?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy
�q?���Z       o��	�K�i��A�*L

LossH7?

Adam/Loss/raw�!2=

Accuracy/__raw_  �?

Accuracy	�r?7g��Z       o��	���i��A�*L

Loss�?

Adam/Loss/raw	�=

Accuracy/__raw_  �?

AccuracyKt?�?�qZ       o��	U׉i��A�*L

Loss�M�>

Adam/Loss/rawÎ/=

Accuracy/__raw_  �?

Accuracy�vu?bT��Z       o��	Z��i��A�*L

Loss��>

Adam/Loss/raw�M=

Accuracy/__raw_  �?

Accuracyt�v?�Zp�Z       o��	��i��A�*L

LossOS�>

Adam/Loss/raw�M=

Accuracy/__raw_  �?

Accuracy5ww?ܵ|�Z       o��	U6�i��A�*L

Loss�t�>

Adam/Loss/rawyy =

Accuracy/__raw_  �?

Accuracy�Qx?�hތZ       o��	2V�i��A�*L

LossQ�>

Adam/Loss/raw�l:=

Accuracy/__raw_  �?

AccuracyRy?�z[�Z       o��	!z�i��A�*L

Loss�>

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyJ�y?�B�8Z       o��	���i��A�*L

Loss��>

Adam/Loss/rawG�'=

Accuracy/__raw_  �?

Accuracy�fz?-?��Z       o��	���i��A�*L

Loss�v>

Adam/Loss/raw�&=

Accuracy/__raw_  �?

Accuracy��z?ݥ��Z       o��	܊i��A�*L

Loss�b>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�v{?&ٱ�Z       o��	���i��A�*L

Loss�vN>

Adam/Loss/raw��g=

Accuracy/__raw_  �?

Accuracy�{?�G�Z       o��	�1�i��A�*L

Loss�?>

Adam/Loss/raw)a=

Accuracy/__raw_  �?

Accuracy�S|?���MZ       o��	R~�i��A�*L

Loss	n0>

Adam/Loss/rawL�>=

Accuracy/__raw_  �?

Accuracy��|?����Z       o��	���i��A�*L

Loss*�#>

Adam/Loss/raw�/>=

Accuracy/__raw_  �?

Accuracy6}?���Z       o��	��i��A�*L

Loss>�>

Adam/Loss/raw0y�<

Accuracy/__raw_  �?

AccuracydR}?��Z       o��	�3�i��A�*L

Loss�T>

Adam/Loss/raw�dc=

Accuracy/__raw_  �?

Accuracy��}?�8��Z       o��	yY�i��A�*L

Loss>

Adam/Loss/raw�f�<

Accuracy/__raw_  �?

Accuracy��}?��Z       o��	���i��A�*L

Loss$"�=

Adam/Loss/raw�	�<

Accuracy/__raw_  �?

Accuracy1~?�"��Z       o��	*�i��A�*L

Loss���=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy,>~?��/Z       o��	��i��A�*L

Loss�y�=

Adam/Loss/raw��Z=

Accuracy/__raw_  �?

Accuracy(k~?̉�WZ       o��	80�i��A�*L

Loss���=

Adam/Loss/raw��0=

Accuracy/__raw_  �?

Accuracy��~?�݄�Z       o��	lV�i��A�*L

LossK �=

Adam/Loss/rawsB=

Accuracy/__raw_  �?

Accuracy�~?@�HKZ       o��	�w�i��A�*L

LossV�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��~?�tmpZ       o��	��i��A�*L

Loss�C�=

Adam/Loss/raw�i�<

Accuracy/__raw_  �?

Accuracyb�~?���Z       o��	���i��A�*L

LossQy�=

Adam/Loss/raw*S=

Accuracy/__raw_  �?

Accuracy�?�/�Z       o��	�؍i��A�*L

Loss�$�=

Adam/Loss/raw�S'=

Accuracy/__raw_  �?

Accuracy�(?��˟Z       o��	0��i��A�*L

LossG�=

Adam/Loss/rawb�
=

Accuracy/__raw_  �?

Accuracy^>?��!OZ       o��	��i��A�*L

Loss�9�=

Adam/Loss/raw?=

Accuracy/__raw_  �?

Accuracy�Q?o��gZ       o��	�5�i��A�*L

Loss�P=

Adam/Loss/raw�]>=

Accuracy/__raw_  �?

Accuracy(c?|�d�Z       o��	Y�i��A�*L

Loss��x=

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy�r?y-�mZ       o��	���i��A�*L

LossBp=

Adam/Loss/raw��/=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	�i��A�*L

Loss͙i=

Adam/Loss/rawF��<

Accuracy/__raw_  �?

Accuracy��?$^�RZ       o��	��i��A�*L

Loss�_=

Adam/Loss/raw��J=

Accuracy/__raw_  �?

Accuracy�?P-|�Z       o��	d�i��A�*L

Loss�]=

Adam/Loss/raw[�I=

Accuracy/__raw_  �?

Accuracyb�?����Z       o��	gE�i��A�*L

Loss�[=

Adam/Loss/raw$�-=

Accuracy/__raw_  �?

Accuracy��?��<Z       o��	�f�i��A�*L

LossҊV=

Adam/Loss/raw ##=

Accuracy/__raw_  �?

Accuracy��?ϕŝZ       o��	ۇ�i��A�*L

Loss�fQ=

Adam/Loss/raw|"=

Accuracy/__raw_  �?

Accuracy|�?rNc�Z       o��	;��i��A�*L

Loss��L=

Adam/Loss/rawx_�<

Accuracy/__raw_  �?

Accuracy<�?y�(�Z       o��	��i��A�*L

Loss �B=

Adam/Loss/raw;��<

Accuracy/__raw_  �?

AccuracyP�?!l��Z       o��	�2�i��A�*L

Loss9�9=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?\��Z       o��	LQ�i��A�*L

Loss��3=

Adam/Loss/raw<@Q=

Accuracy/__raw_  �?

Accuracy��?�m\GZ       o��	�o�i��A�*L

Loss�~6=

Adam/Loss/raw�;=

Accuracy/__raw_  �?

Accuracy"�?ٶ�Z       o��	`��i��A�*L

Loss��2=

Adam/Loss/rawu��<

Accuracy/__raw_  �?

Accuracy�?�=!Z       o��	O��i��A�*L

Loss{E*=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?���WZ       o��	9ѐi��A�*L

LossB�"=

Adam/Loss/rawnR=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��i��A�*L

Loss"U'=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?1�*�Z       o��	��i��A�*L

Lossz�$=

Adam/Loss/raw`�=

Accuracy/__raw_  �?

Accuracyw�?�!��Z       o��	3�i��A�*L

Loss��"=

Adam/Loss/raw}��<

Accuracy/__raw_  �?

Accuracy��?jKc�Z       o��	'R�i��A�*L

Loss��=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?	�Z       o��	 q�i��A�*L

Loss�	=

Adam/Loss/rawLw=

Accuracy/__raw_  �?

Accuracy��?�W[Z       o��	��i��A�*L

Loss1�=

Adam/Loss/raw�#2=

Accuracy/__raw_  �?

Accuracy��?^�iZ       o��	Lȑi��A�*L

Loss�=

Adam/Loss/raw1=

Accuracy/__raw_  �?

Accuracy�?5%15Z       o��	���i��A�*L

Loss��=

Adam/Loss/raw	t�<

Accuracy/__raw_  �?

Accuracy~�?zy��Z       o��	T7�i��A�*L

Loss�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?��;Z       o��	�q�i��A�*L

Loss�!=

Adam/Loss/raw" 
=

Accuracy/__raw_  �?

Accuracy��?�@d�Z       o��	嶒i��A�*L

Loss.n=

Adam/Loss/raw2�P=

Accuracy/__raw_  �?

Accuracy��?^�aZ       o��	�גi��A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?V���Z       o��	���i��A�*L

Loss`W=

Adam/Loss/raw�|=

Accuracy/__raw_  �?

Accuracy��?%�Z       o��	HQ�i��A�*L

Loss��=

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyZ�?66��Z       o��	�{�i��A�*L

Loss�v=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?,W�LZ       o��	؛�i��A�*L

Loss�K=

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy��?T��"Z       o��	���i��A�*L

Loss�<=

Adam/Loss/raw�-=

Accuracy/__raw_  �?

Accuracy'�?v��Z       o��	H�i��A�*L

Loss�T=

Adam/Loss/rawۀ�<

Accuracy/__raw_  �?

Accuracy��?��UZ       o��	��i��A�*L

LossF�=

Adam/Loss/raw�s�<

Accuracy/__raw_  �?

Accuracy�?�0��Z       o��	�$�i��A�*L

Loss�l=

Adam/Loss/rawo=

Accuracy/__raw_  �?

Accuracyx�?�p��Z       o��	JE�i��A�*L

LossӰ=

Adam/Loss/rawUd0=

Accuracy/__raw_  �?

Accuracy��??15]Z       o��	�c�i��A�*L

Loss`�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy#�?�v��Z       o��	���i��A�*L

Loss��=

Adam/Loss/raw@v=

Accuracy/__raw_  �?

Accuracyl�?�R�5Z       o��	���i��A�*L

LosscH=

Adam/Loss/raw��t=

Accuracy/__raw_  �?

Accuracy��?lX�Z       o��	qǔi��A�*L

Loss�k"=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?[�Z       o��	v��i��A�*L

LossV@ =

Adam/Loss/rawR�+=

Accuracy/__raw_  �?

Accuracy�?N9%�Z       o��	'+�i��A�*L

Loss�f!=

Adam/Loss/raw�0�<

Accuracy/__raw_  �?

AccuracyO�?��V>Z       o��	2S�i��A�*L

Loss��=

Adam/Loss/raw/ϕ<

Accuracy/__raw_  �?

Accuracyz�?͏�Z       o��	i��i��A�*L

Loss^�=

Adam/Loss/raw�R�<

Accuracy/__raw_  �?

Accuracy��?I���Z       o��	G��i��A�*L

Loss[�=

Adam/Loss/rawRuH=

Accuracy/__raw_  �?

Accuracy��?i]DZ       o��	�ѕi��A�*L

Loss'�=

Adam/Loss/raw
�9A

Accuracy/__raw_   >

Accuracy��?�;,�Z       o��	��i��A�*L

Loss様?

Adam/Loss/raw��@=

Accuracy/__raw_  �?

Accuracy��i?��Z       o��	��i��A�*L

Loss���?

Adam/Loss/rawck�<

Accuracy/__raw_  �?

Accuracy$�k?��c�Z       o��	&T�i��A�*L

Loss�x?

Adam/Loss/rawI�<

Accuracy/__raw_  �?

AccuracyT�m?�ۚ,Z       o��	1��i��A�*L

Loss��`?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�o?���vZ       o��	j��i��A�*L

Loss�K?

Adam/Loss/raw���@

Accuracy/__raw_    

AccuracyMq?Q2�sZ       o��	�ؖi��A�*L

Loss���?

Adam/Loss/raw�|=

Accuracy/__raw_  �?

Accuracy�+Y?R��pZ       o��	���i��A�*L

Loss;�?

Adam/Loss/raw87�<

Accuracy/__raw_  �?

Accuracy�]?qlsLZ       o��	��i��A�*L

Loss1K�?

Adam/Loss/raw�Q�<

Accuracy/__raw_  �?

Accuracy\�`??=�Z       o��	�4�i��A�*L

Loss3�?

Adam/Loss/raw�?=

Accuracy/__raw_  �?

Accuracy��c?~vw�Z       o��	�W�i��A�*L

Loss�m?

Adam/Loss/raw6Q%=

Accuracy/__raw_  �?

Accuracy,�f?�ht=Z       o��	�w�i��A�*L

Loss3oV?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy[i?r2��Z       o��	��i��A�*L

Loss��A?

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyR]k?-J��Z       o��	մ�i��A�*L

LosszG/?

Adam/Loss/raw��	=

Accuracy/__raw_  �?

Accuracy�mm?�Tv�Z       o��	oҗi��A�*L

Loss��?

Adam/Loss/raw8�(=

Accuracy/__raw_  �?

AccuracyIo?=\0�Z       o��	���i��A�*L

Losst�?

Adam/Loss/rawF�D=

Accuracy/__raw_  �?

Accuracy��p?;�q�Z       o��	� �i��A�*L

Lossק?

Adam/Loss/rawc6(=

Accuracy/__raw_  �?

Accuracy	vr?13�Z       o��	�Z�i��A�*L

LossdH�>

Adam/Loss/raw@!/=

Accuracy/__raw_  �?

Accuracy��s?���Z       o��	f��i��A�*L

Loss^��>

Adam/Loss/raw��.=

Accuracy/__raw_  �?

Accuracy�u??׳�Z       o��	���i��A�*L

LossvZ�>

Adam/Loss/raw\��<

Accuracy/__raw_  �?

AccuracyP!v?�#�!Z       o��	
Ԙi��A�*L

Loss9�>

Adam/Loss/raw�I=

Accuracy/__raw_  �?

Accuracy�w?�	�"Z       o��	{�i��A�*L

Loss��>

Adam/Loss/raw�T=

Accuracy/__raw_  �?

Accuracybx?�y$>Z       o��	Q2�i��A�*L

Loss9��>

Adam/Loss/raw��9=

Accuracy/__raw_  �?

Accuracy�x?ףRZ       o��	nS�i��A�*L

Loss�>

Adam/Loss/raw;S9=

Accuracy/__raw_  �?

Accuracy=�y?Ι�Z       o��	S��i��A�*L

Lossxy>

Adam/Loss/rawW\I=

Accuracy/__raw_  �?

Accuracy,z?�ʺZ       o��	���i��A�*L

Lossc�e>

Adam/Loss/raw�c=

Accuracy/__raw_  �?

Accuracy7�z?LySsZ       o��	.�i��A�*L

Loss��Q>

Adam/Loss/rawt%^=

Accuracy/__raw_  �?

Accuracy~G{?j{��Z       o��	-"�i��A�*L

LossQsB>

Adam/Loss/raw��]=

Accuracy/__raw_  �?

AccuracyX�{?]Z��Z       o��	NE�i��A�*L

Lossn�4>

Adam/Loss/raw��\=

Accuracy/__raw_  �?

Accuracy-|?S"�CZ       o��	
e�i��A�*L

Lossu(>

Adam/Loss/raw̕�<

Accuracy/__raw_  �?

Accuracy �|?(B�Z       o��	,��i��A�*L

Lossb0>

Adam/Loss/raw޵=

Accuracy/__raw_  �?

Accuracy�|?2S#FZ       o��	8��i��A�*L

LossJ#>

Adam/Loss/rawlK=

Accuracy/__raw_  �?

Accuracyd6}?[��	Z       o��	�Úi��A�*L

Lossv>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�}}?Y�b9Z       o��	��i��A�*L

Loss2E�=

Adam/Loss/rawW��<

Accuracy/__raw_  �?

Accuracy��}?�˹�Z       o��	m�i��A�*L

Losso��=

Adam/Loss/raw��/=

Accuracy/__raw_  �?

Accuracy��}?�s6Z       o��	�(�i��A�*L

Loss���=

Adam/Loss/rawR=

Accuracy/__raw_  �?

Accuracy�+~?�'�Z       o��	�V�i��A�*L

Loss��=

Adam/Loss/raw�o"=

Accuracy/__raw_  �?

Accuracy�Z~?��4LZ       o��	a��i��A�*L

Loss�M�=

Adam/Loss/rawS�=

Accuracy/__raw_  �?

Accuracy~?B���Z       o��	��i��A�*L

Lossm�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��~?� +Z       o��	t̛i��A�*L

Loss��=

Adam/Loss/raw&�8=

Accuracy/__raw_  �?

Accuracy��~?�A�+Z       o��	�
�i��A�*L

Lossxd�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��~?�H�uZ       o��	_*�i��A�*L

Lossj�=

Adam/Loss/raw5$!=

Accuracy/__raw_  �?

Accuracy/?���Z       o��	@I�i��A�*L

LossH=�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy ?��ܟZ       o��	bg�i��A�*L

Lossh �=

Adam/Loss/raw9 =

Accuracy/__raw_  �?

Accuracyv6?����Z       o��	f��i��A�*L

Loss�Y�=

Adam/Loss/raw$*�<

Accuracy/__raw_  �?

Accuracy�J?:���Z       o��	��i��A�*L

Loss��u=

Adam/Loss/raw5�Q=

Accuracy/__raw_  �?

Accuracy�\?
t�5Z       o��	L�i��A�*L

LossQr=

Adam/Loss/raw��M=

Accuracy/__raw_  �?

Accuracym?� �(Z       o��	&7�i��A�*L

Loss��n=

Adam/Loss/raw��!=

Accuracy/__raw_  �?

Accuracy�{?x��=Z       o��	KW�i��A�*L

Loss��f=

Adam/Loss/rawÀ =

Accuracy/__raw_  �?

Accuracy��?Wi��Z       o��	uv�i��A�*L

Loss>�_=

Adam/Loss/rawN4�<

Accuracy/__raw_  �?

Accuracy�?L�*YZ       o��	���i��A�*L

Loss�U=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?�&ݯZ       o��	���i��A�*L

LossLZO=

Adam/Loss/rawP�=

Accuracy/__raw_  �?

Accuracy?�?�8��Z       o��	b؝i��A�*L

Loss́I=

Adam/Loss/raw�T=

Accuracy/__raw_  �?

Accuracy�?�Z       o��	���i��A�*L

Loss�J=

Adam/Loss/raw�T=

Accuracy/__raw_  �?

Accuracy��?�ZZ       o��	��i��A�*L

Loss]�K=

Adam/Loss/raw��(=

Accuracy/__raw_  �?

Accuracy��?�9�Z       o��	~6�i��A�*L

LossmH=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�?�%��Z       o��	�V�i��A�*L

Loss_�A=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�S<LZ       o��	���i��A�*L

LossU�<=

Adam/Loss/raw�O=

Accuracy/__raw_  �?

Accuracy��?��eZ       o��	�ʞi��A�*L

Loss�>=

Adam/Loss/raw�N=

Accuracy/__raw_  �?

Accuracy��?tgi�Z       o��	6�i��A�*L

LossmN@=

Adam/Loss/rawg�<

Accuracy/__raw_  �?

Accuracy��?�	Z       o��	�F�i��A�*L

Loss�99=

Adam/Loss/raw:�A

Accuracy/__raw_   >

Accuracyc�?q��Z       o��		j�i��A�*L

Loss
?

Adam/Loss/rawb�=

Accuracy/__raw_  �?

AccuracyY{i?3p�Z       o��	���i��A�*L

Loss�sf?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyлk?��Z       o��	.��i��A�*L

Loss�2P?

Adam/Loss/raw7= =

Accuracy/__raw_  �?

Accuracy��m?�,� Z       o��	��i��A�*L

Loss�-<?

Adam/Loss/rawҾ	=

Accuracy/__raw_  �?

Accuracy��o?��̀Z       o��	~;�i��A�*L

Loss�8*?

Adam/Loss/raw$�I=

Accuracy/__raw_  �?

Accuracy�9q?���!Z       o��	=]�i��A�*L

Loss�u?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�r?��!Z       o��	��i��A�*L

Lossy�?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracynt?m���Z       o��	n��i��A�*L

Loss,��>

Adam/Loss/rawk��<

Accuracy/__raw_  �?

Accuracy�:u?gk��Z       o��	�Ġi��A�*L

Loss���>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�Nv?��BZ       o��	`�i��A�*L

Loss}��>

Adam/Loss/raw�z=

Accuracy/__raw_  �?

Accuracy�Fw?�dZ       o��	)�i��A�*L

Loss�*�>

Adam/Loss/raw,�"=

Accuracy/__raw_  �?

Accuracy�%x?5j�zZ       o��	�%�i��A�*L

Loss�.�>

Adam/Loss/rawOKQ=

Accuracy/__raw_  �?

Accuracy��x?7r�Z       o��	5E�i��A�*L

Loss�z�>

Adam/Loss/rawiPQ=

Accuracy/__raw_  �?

Accuracy�y?��x�Z       o��	�c�i��A�*L

Loss�?�>

Adam/Loss/raw*<�<

Accuracy/__raw_  �?

Accuracy�Fz?��0oZ       o��	���i��A�*L

Loss��>

Adam/Loss/rawr�E=

Accuracy/__raw_  �?

Accuracy=�z?ۼ�~Z       o��	���i��A�*L

Lossb�r>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy]{?I*�8Z       o��	G�i��A�*L

Loss��]>

Adam/Loss/raw;�<

Accuracy/__raw_  �?

Accuracy��{?;F�Z       o��	��i��A�*L

Loss��J>

Adam/Loss/raw�6�<

Accuracy/__raw_  �?

Accuracy�>|?��<^Z       o��	41�i��A�*L

LossT9>

Adam/Loss/rawR�9=

Accuracy/__raw_  �?

Accuracy|?��c�Z       o��	el�i��A�*L

Loss7+>

Adam/Loss/raw<�-=

Accuracy/__raw_  �?

AccuracyH�|?�+�Z       o��	���i��A�*L

Lossfp>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy'C}?�5q�Z       o��	\��i��A�*L

Loss��>

Adam/Loss/rawG0�<

Accuracy/__raw_  �?

Accuracy=�}?i �bZ       o��	1΢i��A�*L

Loss	�>

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyQ�}?���ZZ       o��	t�i��A�*L

Loss�z�=

Adam/Loss/rawڤR=

Accuracy/__raw_  �?

Accuracy~?���%Z       o��	=D�i��A�*L

Loss�v�=

Adam/Loss/raw�/,=

Accuracy/__raw_  �?

Accuracy-4~?>kZ       o��	�q�i��A�*L

Loss<��=

Adam/Loss/raw��A=

Accuracy/__raw_  �?

Accuracy)b~?;��Z       o��	��i��A�*L

Loss��=

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy��~?�X��Z       o��	鱣i��A�*L

LossH0�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyʰ~?�nZ       o��	�ڣi��A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyO�~?F�"�Z       o��	Q��i��A�*L

Loss��=

Adam/Loss/raw�+=

Accuracy/__raw_  �?

Accuracyz�~?Db,>Z       o��	6�i��A�*L

Lossk�=

Adam/Loss/rawE�
=

Accuracy/__raw_  �?

Accuracy�?p|�eZ       o��	�@�i��A�*L

Loss^��=

Adam/Loss/raw�~L=

Accuracy/__raw_  �?

Accuracy$?��)Z       o��	}`�i��A�*L

Lossu��=

Adam/Loss/rawk�K=

Accuracy/__raw_  �?

Accuracy:?�2`Z       o��	��i��A�*L

Loss�Ƌ=

Adam/Loss/rawTd$=

Accuracy/__raw_  �?

Accuracy�M?���Z       o��	���i��A�*L

Loss~�=

Adam/Loss/rawo�=

Accuracy/__raw_  �?

Accuracy�_?��Z       o��	�Ȥi��A�*L

Lossw�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�o?,�Z       o��	���i��A�*L

LossO�t=

Adam/Loss/rawq�C=

Accuracy/__raw_  �?

Accuracy"~?@=`�Z       o��	�'�i��A�*L

Loss�p=

Adam/Loss/raw9�B=

Accuracy/__raw_  �?

Accuracy�?d�8Z       o��	�X�i��A�*L

Lossy�k=

Adam/Loss/raw�&=

Accuracy/__raw_  �?

Accuracyϖ?����Z       o��	i��A�*L

LossS�d=

Adam/Loss/raw:�	=

Accuracy/__raw_  �?

AccuracyT�?LS�Z       o��	P�i��A�*L

Loss7�[=

Adam/Loss/raw�+=

Accuracy/__raw_  �?

Accuracy̪?�aHNZ       o��	��i��A�*L

Loss*�V=

Adam/Loss/raw�U=

Accuracy/__raw_  �?

AccuracyQ�?��w�Z       o��	Y�i��A�*L

Loss
�V=

Adam/Loss/raw��T=

Accuracy/__raw_  �?

Accuracy��?)�D�Z       o��	 ��i��A�*L

LossenV=

Adam/Loss/rawO�<

Accuracy/__raw_  �?

Accuracy��?��O@Z       o��	`ͦi��A�*L

Loss�I=

Adam/Loss/rawloA

Accuracy/__raw_  �>

Accuracy�?�G�Z       o��	��i��A�*L

Loss�tj?

Adam/Loss/raw�v=

Accuracy/__raw_  �?

Accuracy}�l?��|Z       o��	��i��A�*L

LossG T?

Adam/Loss/rawo�=

Accuracy/__raw_  �?

Accuracy
�n?��#:Z       o��	n4�i��A�*L

Loss��??

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�Ip?;��>Z       o��	~U�i��A�*L

Loss�B-?

Adam/Loss/raw�?=

Accuracy/__raw_  �?

Accuracy$�q?KE�Z       o��	-w�i��A�*L

Loss��?

Adam/Loss/raw �&=

Accuracy/__raw_  �?

Accuracy Fs?,Z       o��	���i��A�*L

Loss8?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�t?`��Z       o��	ж�i��A�*L

Loss�� ?

Adam/Loss/rawŅC=

Accuracy/__raw_  �?

Accuracy�u?���Z       o��	�էi��A�*L

Loss�w�>

Adam/Loss/raw��D=

Accuracy/__raw_  �?

Accuracy�v?��6Z       o��	?��i��A�*L

Loss�z�>

Adam/Loss/raw<B,=

Accuracy/__raw_  �?

Accuracy��w?��-Z       o��	j2�i��A�*L

Loss�H�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyB|x?�Z       o��	s`�i��A�*L

Lossh��>

Adam/Loss/rawԼ<

Accuracy/__raw_  �?

Accuracy�<y?%�
mZ       o��	���i��A�*L

Loss�$�>

Adam/Loss/rawY�=

Accuracy/__raw_  �?

Accuracy��y?�?'�Z       o��	���i��A�*L

Loss8�>

Adam/Loss/raw5�=

Accuracy/__raw_  �?

Accuracy��z?�u�Z       o��	C�i��A�*L

Loss@�>

Adam/Loss/raw�6'=

Accuracy/__raw_  �?

Accuracy�{?���Z       o��	��i��A�*L

Loss��s>

Adam/Loss/raw٪Z=

Accuracy/__raw_  �?

Accuracy�{?ix.0Z       o��	x#�i��A�*L

LossR�`>

Adam/Loss/raw�U:=

Accuracy/__raw_  �?

Accuracy�|?<���Z       o��	kB�i��A�*L

Loss�N>

Adam/Loss/raw�+�<

Accuracy/__raw_  �?

Accuracy�g|?����Z       o��	�z�i��A�*L

Loss�G=>

Adam/Loss/raw�U�<

Accuracy/__raw_  �?

Accuracy��|?�L'�Z       o��	�̩i��A�*L

Lossr[->

Adam/Loss/raw�2I=

Accuracy/__raw_  �?

Accuracy�}?;NuZ       o��	��i��A�*L

Loss+!>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy<a}?&���Z       o��	#�i��A�*L

Loss$g>

Adam/Loss/raw��?=

Accuracy/__raw_  �?

AccuracyP�}?���Z       o��	/1�i��A�*L

Loss9u	>

Adam/Loss/rawM6�<

Accuracy/__raw_  �?

Accuracy��}?����Z       o��	�Q�i��A�*L

Loss�:�=

Adam/Loss/rawL��<

Accuracy/__raw_  �?

Accuracy~?o�F�Z       o��	�t�i��A�*L

Loss*��=

Adam/Loss/raw6D�<

Accuracy/__raw_  �?

Accuracy�G~?j�R.Z       o��	-��i��A�*L

Loss��=

Adam/Loss/raw��4=

Accuracy/__raw_  �?

Accuracy�s~?�VZ       o��	��i��A�*L

Loss_'�=

Adam/Loss/raw�<�<

Accuracy/__raw_  �?

Accuracy��~?�J��Z       o��	�תi��A�*L

Loss�Q�=

Adam/Loss/rawy�<

Accuracy/__raw_  �?

Accuracy-�~?���Z       o��	���i��A�*L

Losss�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyB�~?�o-!Z       o��	� �i��A�*L

Loss�٣=

Adam/Loss/raw��-=

Accuracy/__raw_  �?

Accuracy"�~?��c*Z       o��	�R�i��A�*L

Lossf)�=

Adam/Loss/raw��1=

Accuracy/__raw_  �?

Accuracy?���Z       o��	���i��A�*L

Lossfo�=

Adam/Loss/raw�7�<

Accuracy/__raw_  �?

Accuracy�-?k���Z       o��	S��i��A�*L

Loss٘�=

Adam/Loss/rawv}=

Accuracy/__raw_  �?

Accuracy�B?)N�4Z       o��	��i��A�*L

Loss�5�=

Adam/Loss/raw)|=

Accuracy/__raw_  �?

Accuracy�U?:��2Z       o��	�4�i��A�*L

Loss��=

Adam/Loss/rawr<=

Accuracy/__raw_  �?

Accuracy�f?MTZ       o��	W\�i��A�*L

Loss���=

Adam/Loss/rawl�A

Accuracy/__raw_  �>

Accuracy�u?�V}Z       o��	|��i��A�*L

Lossw��?

Adam/Loss/rawLY:=

Accuracy/__raw_  �?

Accuracy�Pl?ĺ9Z       o��	G�i��A�*L

Loss��o?

Adam/Loss/raw��<

Accuracy/__raw_  �?

AccuracyuHn?�*)3Z       o��	@�i��A�*L

Loss^|X?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyp?GX��Z       o��	�3�i��A�*L

Loss��C?

Adam/Loss/rawخ�<

Accuracy/__raw_  �?

Accuracy6�q?���Z       o��	�S�i��A�*L

Lossē0?

Adam/Loss/rawh`I=

Accuracy/__raw_  �?

Accuracy�s?2)H�Z       o��	�s�i��A�*L

Loss�- ?

Adam/Loss/raw��H=

Accuracy/__raw_  �?

Accuracy;`t?kd��Z       o��	��i��A�*L

Loss�j?

Adam/Loss/raw�H�=

Accuracy/__raw_  �?

Accuracyωu?�?j�Z       o��	���i��A�*L

LossA�?

Adam/Loss/raw�n�=

Accuracy/__raw_  �?

Accuracy��v?6�lZ       o��	Qݭi��A�*L

Loss��>

Adam/Loss/raw~ =

Accuracy/__raw_  �?

Accuracy��w?xAZ       o��	a��i��A�*L

LossT�>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�_x?7�B�Z       o��	u�i��A�*L

Loss� �>

Adam/Loss/raw�<	=

Accuracy/__raw_  �?

Accuracy�"y?k�q�Z       o��	�@�i��A�*L

Loss.�>

Adam/Loss/raw��8=

Accuracy/__raw_  �?

Accuracy��y?6u$dZ       o��	�f�i��A�*L

Loss&�>

Adam/Loss/rawם8=

Accuracy/__raw_  �?

Accuracy�pz?7�38Z       o��	1��i��A�*L

Loss�>

Adam/Loss/raw��2=

Accuracy/__raw_  �?

Accuracy�z?��{Z       o��	Nͮi��A�*L

Loss�>

Adam/Loss/rawA

Accuracy/__raw_   >

Accuracy!{?�~�Z       o��	��i��A�*L

Loss��?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�e?6�Z       o��	+�i��A�*L

Loss���?

Adam/Loss/raw<z=

Accuracy/__raw_  �?

Accuracy71h?��ZZ       o��	PO�i��A�*L

Loss[Gq?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��j?����Z       o��	?q�i��A�*L

LossZ?

Adam/Loss/raw
(=

Accuracy/__raw_  �?

Accuracy:�l?t&)Z       o��	O��i��A�*L

Loss[E?

Adam/Loss/raw�1P=

Accuracy/__raw_  �?

Accuracy�n?JZ�Z       o��	%��i��A�*L

Loss��2?

Adam/Loss/raw�?=

Accuracy/__raw_  �?

Accuracy6ap?�$޷Z       o��	��i��A�*L

Loss9"?

Adam/Loss/raw��q=

Accuracy/__raw_  �?

Accuracy�q?B��Z       o��	�9�i��A�*L

Loss�?

Adam/Loss/raw\t=

Accuracy/__raw_  �?

Accuracy�Xs?
��Z       o��	�Z�i��A�*L

LossaI?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�t?���1Z       o��	�y�i��A�*L

Loss=7�>

Adam/Loss/rawAa,=

Accuracy/__raw_  �?

Accuracye�u?z�mZ       o��	꘰i��A�*L

Loss��>

Adam/Loss/rawؙ!=

Accuracy/__raw_  �?

Accuracy��v?���Z       o��	���i��A�*L

Loss���>

Adam/Loss/rawI��<

Accuracy/__raw_  �?

Accuracy�w?�\P0Z       o��	�۰i��A�*L

LossP�>

Adam/Loss/raw�9�<

Accuracy/__raw_  �?

Accuracyd�x?�孴Z       o��	7��i��A�*L

LossW�>

Adam/Loss/raw�Fe=

Accuracy/__raw_  �?

Accuracy�Fy?�AE�Z       o��	��i��A�*L

Loss�j�>

Adam/Loss/rawjH�@

Accuracy/__raw_  �>

Accuracy��y?|bK�Z       o��	69�i��A�*L

Loss�)i?

Adam/Loss/rawVv9=

Accuracy/__raw_  �?

Accuracy��j?�C!Z       o��	XW�i��A�*L

Loss�S?

Adam/Loss/raw��*=

Accuracy/__raw_  �?

Accuracy��l?�}3Z       o��	�u�i��A�*L

Lossf�>?

Adam/Loss/raw	�+=

Accuracy/__raw_  �?

Accuracyݠn?���Z       o��	���i��A�*L

Lossu�,?

Adam/Loss/raw%7\=

Accuracy/__raw_  �?

Accuracy�]p?��5zZ       o��	�Աi��A�*L

LossA?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��q?���FZ       o��	��i��A�*L

Loss�?

Adam/Loss/raw��#=

Accuracy/__raw_  �?

Accuracy
Vs?^~5
Z       o��	�(�i��A�*L

LossD� ?

Adam/Loss/raw� 4=

Accuracy/__raw_  �?

Accuracy<�t?�b�dZ       o��	�k�i��A�*L

Loss�+�>

Adam/Loss/raw�2=

Accuracy/__raw_  �?

Accuracy�u?9�@!Z       o��	���i��A�*L

Loss*��>

Adam/Loss/rawxI=

Accuracy/__raw_  �?

Accuracy��v?�"�Z       o��	���i��A�*L

Lossr4�>

Adam/Loss/raw�{=

Accuracy/__raw_  �?

Accuracy�w?i�ŧZ       o��	�ֲi��A�*L

LossY��>

Adam/Loss/raw�{#=

Accuracy/__raw_  �?

Accuracy��x?���Z       o��	j��i��A�*L

Loss�
�>

Adam/Loss/rawK=

Accuracy/__raw_  �?

AccuracyEy?�9=XZ       o��	pB�i��A�*L

Loss�ɒ>

Adam/Loss/rawX5=

Accuracy/__raw_  �?

Accuracyb�y?�bZ       o��	:v�i��A�*L

Lossh��>

Adam/Loss/rawS�1=

Accuracy/__raw_  �?

Accuracyr�z?��}^Z       o��	 ��i��A�*L

Loss�u>

Adam/Loss/raw�\7=

Accuracy/__raw_  �?

Accuracy {?�z��Z       o��	{��i��A�*L

Lossa>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��{?�uv�Z       o��	Uسi��A�*L

Loss��N>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�|?ݼ�mZ       o��	���i��A�*L

Loss|=>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy`l|?��$�Z       o��	��i��A�*L

Loss+�->

Adam/Loss/raw�k*=

Accuracy/__raw_  �?

Accuracy��|?TM�Z       o��	�@�i��A�*L

Loss
� >

Adam/Loss/raw|3H=

Accuracy/__raw_  �?

AccuracyX}?	� Z       o��	=_�i��A�*L

LossR�>

Adam/Loss/raw��Q=

Accuracy/__raw_  �?

Accuracy�d}?#��Z       o��	�~�i��A�*L

Loss�>

Adam/Loss/raw/g�<

Accuracy/__raw_  �?

AccuracyB�}?�&lNZ       o��	0��i��A�*L

Loss�>

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyU�}?����Z       o��	'��i��A�*L

Lossd��=

Adam/Loss/raw.\/=

Accuracy/__raw_  �?

Accuracyf~?���8Z       o��	��i��A�*L

Loss�=

Adam/Loss/raw:l=

Accuracy/__raw_  �?

AccuracyJ~?67�YZ       o��	�%�i��A�*L

Loss�)�=

Adam/Loss/raw��I=

Accuracy/__raw_  �?

Accuracy�u~?�o��Z       o��	L�i��A�*L

Loss/r�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyD�~?FUo�Z       o��	~n�i��A�*L

Loss/Ҷ=

Adam/Loss/raw�_�<

Accuracy/__raw_  �?

Accuracy��~?`S:"Z       o��	��i��A�*L

Loss���=

Adam/Loss/raw��)=

Accuracy/__raw_  �?

Accuracy��~?���Z       o��	�͵i��A�*L

Loss�.�=

Adam/Loss/raw<��@

Accuracy/__raw_   >

Accuracyf�~?�OZ       o��	��i��A�*L

Lossc3?

Adam/Loss/raw��,=

Accuracy/__raw_  �?

Accuracyܰh?��(�Z       o��	x�i��A�*L

Loss-�"?

Adam/Loss/raw�?=

Accuracy/__raw_  �?

Accuracy�k?��Z       o��	E/�i��A�*L

LossB-?

Adam/Loss/rawq<=

Accuracy/__raw_  �?

Accuracy�m?l2|�Z       o��	k��i��A�*L

Loss�_?

Adam/Loss/raw1=

Accuracy/__raw_  �?

Accuracy�o?K�Z       o��	ګ�i��A�*L

LossS��>

Adam/Loss/raw�g:=

Accuracy/__raw_  �?

Accuracy��p?`��>Z       o��	�˶i��A�*L

Loss��>

Adam/Loss/raws=

Accuracy/__raw_  �?

Accuracyw<r?�!#iZ       o��	��i��A�*L

Loss���>

Adam/Loss/raw 5=

Accuracy/__raw_  �?

AccuracyҜs?�qJ�Z       o��	_�i��A�*L

Lossް�>

Adam/Loss/raw�P=

Accuracy/__raw_  �?

Accuracy��t?�:+�Z       o��	
-�i��A�*L

Loss�y�>

Adam/Loss/raw�z?=

Accuracy/__raw_  �?

AccuracyX�u?�@��Z       o��	@O�i��A�*L

LossWR�>

Adam/Loss/raw��9=

Accuracy/__raw_  �?

Accuracy6�v?���7Z       o��	Pp�i��A�*L

Loss���>

Adam/Loss/rawP�F=

Accuracy/__raw_  �?

Accuracyd�w?#1NZ       o��	!��i��A�*L

Loss�J~>

Adam/Loss/raw+��<

Accuracy/__raw_  �?

Accuracyt�x?I�йZ       o��	)��i��A�*L

Loss��g>

Adam/Loss/raw=�<

Accuracy/__raw_  �?

Accuracy�jy?&�2�Z       o��	 ѷi��A�*L

Loss�,S>

Adam/Loss/raw�*<=

Accuracy/__raw_  �?

Accuracy=z?��G�Z       o��	���i��A�*L

Loss��B>

Adam/Loss/raw؁=

Accuracy/__raw_  �?

Accuracy�z?Ŗ{�Z       o��	,*�i��A�*L

Loss��2>

Adam/Loss/rawl�b=

Accuracy/__raw_  �?

Accuracyl3{?��KZ       o��	�j�i��A�*L

Lossګ&>

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyH�{??C�PZ       o��	���i��A�*L

Loss��>

Adam/Loss/raw�S=

Accuracy/__raw_  �?

Accuracy�|?Q�aLZ       o��	�i��A�*L

Loss0�>

Adam/Loss/rawJ��<

Accuracy/__raw_  �?

Accuracy^�|?K�]�Z       o��	��i��A�*L

Loss��>

Adam/Loss/raw��.=

Accuracy/__raw_  �?

Accuracy��|?(�aBZ       o��	�J�i��A�*L

Loss��=

Adam/Loss/raw1=

Accuracy/__raw_  �?

Accuracy�*}?�x��Z       o��	�i��A�*L

Loss�6�=

Adam/Loss/raw�\'=

Accuracy/__raw_  �?

Accuracys}?R��Z       o��	�@�i��A�*L

Loss���=

Adam/Loss/raw�%=

Accuracy/__raw_  �?

Accuracy`�}?/*vZ       o��	�i��A�*L

Loss��=

Adam/Loss/rawz40=

Accuracy/__raw_  �?

Accuracy#�}?�D��Z       o��	4��i��A�*L

Losszg�=

Adam/Loss/raw�?=

Accuracy/__raw_  �?

Accuracy$~?tݺZ       o��	.�i��A�*L

Loss�9�=

Adam/Loss/raw��H=

Accuracy/__raw_  �?

Accuracy�S~?�w��Z       o��	�c�i��A�*L

Loss�r�=

Adam/Loss/raw��L=

Accuracy/__raw_  �?

Accuracyv~~?@�vlZ       o��	<�i��A�*L

Loss���=

Adam/Loss/raw��K=

Accuracy/__raw_  �?

Accuracy�~?����Z       o��	m�i��A�*L

Loss�s�=

Adam/Loss/raw[g=

Accuracy/__raw_  �?

Accuracy��~?Q�|�Z       o��	K��i��A�*L

Loss?m�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��~?��!Z       o��	�i��A�*L

LossPV�=

Adam/Loss/rawu*T=

Accuracy/__raw_  �?

Accuracy?�7GSZ       o��	��i��A�*L

Loss�ω=

Adam/Loss/raw0=

Accuracy/__raw_  �?

AccuracyY?��Z       o��	�(�i��A�*L

Loss���=

Adam/Loss/raw�d=

Accuracy/__raw_  �?

Accuracy3?8h�.Z       o��	<H�i��A�*L

Loss�h}=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�G?���qZ       o��	+h�i��A�*L

Loss]Qo=

Adam/Loss/raw*�0=

Accuracy/__raw_  �?

AccuracyZ?�%�4Z       o��	·�i��A�*L

Loss�i=

Adam/Loss/raw�0%=

Accuracy/__raw_  �?

Accuracy�j?C��Z       o��	^��i��A�*L

LossGb=

Adam/Loss/raws��<

Accuracy/__raw_  �?

Accuracy�y?s��Z       o��	��i��A�*L

Loss�V=

Adam/Loss/rawq��<

Accuracy/__raw_  �?

Accuracy�?�8�Z       o��	�)�i��A�*L

Loss�L=

Adam/Loss/rawؤ�<

Accuracy/__raw_  �?

Accuracy�?�X�Z       o��	DI�i��A�*L

Loss`HC=

Adam/Loss/rawN>g=

Accuracy/__raw_  �?

Accuracy�?E[r�Z       o��	;��i��A�*L

Loss��F=

Adam/Loss/raw�@=

Accuracy/__raw_  �?

AccuracyΧ?�d�Z       o��	��i��A�*L

Loss �A=

Adam/Loss/raw7~m=

Accuracy/__raw_  �?

Accuracy��?E��Z       o��	:�i��A�*L

Loss��E=

Adam/Loss/raw��k=

Accuracy/__raw_  �?

Accuracy��?`^ ;Z       o��	1�i��A�*L

Loss͵I=

Adam/Loss/raw��.=

Accuracy/__raw_  �?

Accuracy��?���xZ       o��	�F�i��A�*L

Loss�F=

Adam/Loss/rawZ�
=

Accuracy/__raw_  �?

Accuracy#�?��E)Z       o��	�f�i��A�*L

Loss��@=

Adam/Loss/raw��#=

Accuracy/__raw_  �?

Accuracy��?�fSZ       o��	���i��A�*L

Lossi	>=

Adam/Loss/raw�]
=

Accuracy/__raw_  �?

Accuracy!�?Hx�AZ       o��	��i��A�*L

Loss��8=

Adam/Loss/raw��	=

Accuracy/__raw_  �?

Accuracy��?-���Z       o��	��i��A�*L

Loss�(4=

Adam/Loss/rawL=

Accuracy/__raw_  �?

Accuracy	�?6���Z       o��	:A�i��A�*L

LossK_1=

Adam/Loss/raw��+=

Accuracy/__raw_  �?

Accuracy��?�xUZ       o��	(c�i��A�*L

Loss&�0=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy@�?@	�Z       o��	���i��A�*L

Loss��(=

Adam/Loss/raw��B=

Accuracy/__raw_  �?

AccuracyS�?��+�Z       o��	&��i��A�*L

Loss��+=

Adam/Loss/raw�B=

Accuracy/__raw_  �?

Accuracy�?
��Z       o��	���i��A�*L

LossQ�-=

Adam/Loss/rawB<B=

Accuracy/__raw_  �?

Accuracy��?
2z�Z       o��	���i��A�*L

Loss��/=

Adam/Loss/raw��'=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	g	�i��A�*L

LossK/=

Adam/Loss/raw �=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	g(�i��A�*L

Loss��,=

Adam/Loss/raw$j;=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	gF�i��A�*L

Loss|?.=

Adam/Loss/raw:=

Accuracy/__raw_  �?

AccuracyK�?<�ÝZ       o��	�e�i��A�*L

Lossm/=

Adam/Loss/rawY�=

Accuracy/__raw_  �?

Accuracy��?�MrZ       o��	@��i��A�*L

Loss�-=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�?˚�>Z       o��	4��i��A�*L

LossC+=

Adam/Loss/raw�v	=

Accuracy/__raw_  �?

AccuracyH�?���SZ       o��	���i��A�*L

Lossg�'=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyZ�?�p�Z       o��	�
�i��A�*L

Loss-%=

Adam/Loss/raw�Y=

Accuracy/__raw_  �?

AccuracyQ�?F{ZfZ       o��	0�i��A�*L

Loss��"=

Adam/Loss/rawg�1=

Accuracy/__raw_  �?

Accuracy/�?���Z       o��	zk�i��A�*L

Loss�`$=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�Dv?Z       o��	���i��A�*L

Loss��"=

Adam/Loss/rawώ=

Accuracy/__raw_  �?

Accuracy��?iN�Z       o��		��i��A�*L

LossU@!=

Adam/Loss/rawP�<

Accuracy/__raw_  �?

AccuracyM�?��]Z       o��	���i��A�*L

LossІ=

Adam/Loss/rawLs�<

Accuracy/__raw_  �?

Accuracy��?=j�OZ       o��	���i��A�*L

Loss%=

Adam/Loss/rawas=

Accuracy/__raw_  �?

Accuracyb�?(vR�Z       o��	<�i��A�*L

Loss|�=

Adam/Loss/raw��*=

Accuracy/__raw_  �?

Accuracy��?s��&Z       o��	�h�i��A�*L

LossN�=

Adam/Loss/rawr'=

Accuracy/__raw_  �?

AccuracyB�?/�i�Z       o��	 ��i��A�*L

Lossc�=

Adam/Loss/rawY�d=

Accuracy/__raw_  �?

Accuracy��?3Ĳ�Z       o��	��i��A�*L

Lossb�#=

Adam/Loss/raw%�c=

Accuracy/__raw_  �?

Accuracy��?K-/!Z       o��	���i��A�*L

Loss�U*=

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyF�?R���Z       o��	���i��A�*L

Loss�(=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?P�Z       o��	��i��A�*L

Loss��!=

Adam/Loss/raw =

Accuracy/__raw_  �?

Accuracy��?˞dTZ       o��	�+�i��A�*L

Loss�� =

Adam/Loss/raw�|{=

Accuracy/__raw_  �?

Accuracy�?�i|Z       o��	�N�i��A�*L

Loss{�)=

Adam/Loss/raw�Kz=

Accuracy/__raw_  �?

Accuracy7�?c�(�Z       o��	\o�i��A�*L

LossI�1=

Adam/Loss/raw"=

Accuracy/__raw_  �?

Accuracye�?�|�Z       o��	���i��A�*L

Loss /=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?xK��Z       o��	T��i��A�*L

Loss�c(=

Adam/Loss/raw��/=

Accuracy/__raw_  �?

Accuracy��?P�Z       o��	f��i��A�*L

Loss�%)=

Adam/Loss/rawwe�<

Accuracy/__raw_  �?

Accuracy��?�}=kZ       o��	%�i��A�*L

Loss#'#=

Adam/Loss/raw� �<

Accuracy/__raw_  �?

Accuracy��?��Q�Z       o��	/�i��A�*L

Loss߼=

Adam/Loss/raw �&=

Accuracy/__raw_  �?

Accuracy�?^�/�Z       o��	P�i��A�*L

Loss��=

Adam/Loss/rawP.�<

Accuracy/__raw_  �?

Accuracy%�?�9�-Z       o��	�q�i��A�*L

Loss�=

Adam/Loss/rawɉ=

Accuracy/__raw_  �?

Accuracy;�?���-Z       o��	C��i��A�*L

LossE?=

Adam/Loss/raw2	=

Accuracy/__raw_  �?

AccuracyO�?P�bJZ       o��	��i��A�*L

Loss�=

Adam/Loss/rawEW=

Accuracy/__raw_  �?

Accuracya�?���Z       o��	���i��A�*L

LossH�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyq�?H��+Z       o��	�i��A�*L

Loss�=

Adam/Loss/raw�RA

Accuracy/__raw_   >

Accuracy�?>R��Z       o��	4��i��A�*L

LossZ�]?

Adam/Loss/raw #�<

Accuracy/__raw_  �?

Accuracy%�i?�݁�Z       o��	���i��A�*L

Loss qH?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��k?c�%�Z       o��	���i��A�*L

Loss[]5?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��m? ���Z       o��	R�i��A�*L

Loss�0$?

Adam/Loss/raw�� =

Accuracy/__raw_  �?

AccuracyJ�o?��Z       o��	7�i��A�*L

Loss��?

Adam/Loss/rawR�=

Accuracy/__raw_  �?

Accuracy\Mq?��Z       o��	�Z�i��A�*L

LossY�?

Adam/Loss/rawp�=

Accuracy/__raw_  �?

Accuracy��r?���Z       o��	~�i��A�*L

Loss��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyCt?`\,�Z       o��	���i��A�*L

Lossb@�>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy	Iu?M�'�Z       o��	��i��A�*L

Loss��>

Adam/Loss/rawsw=

Accuracy/__raw_  �?

AccuracyU[v?T��<Z       o��	��i��A�*L

Lossi��>

Adam/Loss/raw���@

Accuracy/__raw_  �>

Accuracy3Rw?I��wZ       o��	K�i��A�*L

Loss�`?

Adam/Loss/raw�l=

Accuracy/__raw_  �?

Accuracy.�d?j1FZ       o��	jN�i��A�*L

LossowK?

Adam/Loss/raw]�C=

Accuracy/__raw_  �?

Accuracy��g?�] �Z       o��	=~�i��A�*L

Loss�W8?

Adam/Loss/raw�OC=

Accuracy/__raw_  �?

Accuracy�j?�!�Z       o��	���i��A�*L

Loss!'?

Adam/Loss/raw�+=

Accuracy/__raw_  �?

AccuracyOl?����Z       o��	7��i��A�*L

Loss }?

Adam/Loss/rawB��<

Accuracy/__raw_  �?

Accuracy0Gn?�Ь�Z       o��	� �i��A�*L

Loss.	?

Adam/Loss/rawd�=

Accuracy/__raw_  �?

Accuracy�p?XU�Z       o��	> �i��A�*L

Lossԩ�>

Adam/Loss/rawi@3=

Accuracy/__raw_  �?

Accuracy.�q?~Z       o��	�>�i��A�*L

Loss�	�>

Adam/Loss/raw�h3=

Accuracy/__raw_  �?

Accuracy�s?.��.Z       o��	�^�i��A�*L

Loss1��>

Adam/Loss/raw6�>=

Accuracy/__raw_  �?

Accuracye_t?ɞ�"Z       o��	���i��A�*L

Lossl~�>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�u?��)Z       o��	���i��A�*L

Loss�W�>

Adam/Loss/raw��H=

Accuracy/__raw_  �?

Accuracy�v?vJM�Z       o��	��i��A�*L

Loss�ћ>

Adam/Loss/raw�==

Accuracy/__raw_  �?

Accuracy�w?}̏Z       o��	�,�i��A�*L

Loss8�>

Adam/Loss/raw�L=

Accuracy/__raw_  �?

Accuracy_x?(��Z       o��	RK�i��A�*L

Loss(>

Adam/Loss/raw�_*=

Accuracy/__raw_  �?

AccuracyY"y?�1ٯZ       o��	�l�i��A�*L

Loss�m>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�y?�>fZ       o��	���i��A�*L

Loss&�X>

Adam/Loss/rawz1=

Accuracy/__raw_  �?

AccuracyMpz?����Z       o��	v��i��A�*L

Loss��G>

Adam/Loss/raw�J=

Accuracy/__raw_  �?

Accuracy��z?F�ϤZ       o��	���i��A�*L

Loss��7>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�~{?0A�Z       o��	���i��A�*L

Loss�)>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy �{?g��<Z       o��	��i��A�*L

Loss�>

Adam/Loss/raw�  =

Accuracy/__raw_  �?

Accuracy�Y|?��PZ       o��	�1�i��A�*L

Loss�Y>

Adam/Loss/raw�;=

Accuracy/__raw_  �?

AccuracyS�|?1�֌Z       o��	�_�i��A�*L

Loss��>

Adam/Loss/raw	h=

Accuracy/__raw_  �?

Accuracyd}?�1��Z       o��	m��i��A�*L

Loss_��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyW}?ue-Z       o��	��i��A�*L

LossR��=

Adam/Loss/raw�b�<

Accuracy/__raw_  �?

Accuracy%�}?7�rnZ       o��	���i��A�*L

Loss��=

Adam/Loss/raw%9=

Accuracy/__raw_  �?

Accuracyn�}?���Z       o��	8�i��A�*L

Loss�T�=

Adam/Loss/raw�#=

Accuracy/__raw_  �?

Accuracy�~?���_Z       o��	4�i��A�*L

Loss�I�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy:A~?�=0�Z       o��	�S�i��A�*L

LossU�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�m~?S���Z       o��	�s�i��A�*L

Losseʦ=

Adam/Loss/raw��8=

Accuracy/__raw_  �?

Accuracy�~?��0Z       o��	���i��A�*L

Loss�Z�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyM�~?�u�Z       o��	�i��A�*L

LossLh�=

Adam/Loss/rawL�&=

Accuracy/__raw_  �?

Accuracy��~?�J�GZ       o��	k*�i��A�*L

Lossⱏ=

Adam/Loss/raw�u�<

Accuracy/__raw_  �?

Accuracy/�~?�jc�Z       o��	8O�i��A�*L

Loss���=

Adam/Loss/raw{T�<

Accuracy/__raw_  �?

Accuracy�?�L�}Z       o��	�n�i��A�*L

Loss]1~=

Adam/Loss/raw�9J=

Accuracy/__raw_  �?

AccuracyO*?�q�Z       o��	.��i��A�*L

Loss��x=

Adam/Loss/rawd!�<

Accuracy/__raw_  �?

Accuracy�??ǒv�Z       o��	���i��A�*L

Loss�3l=

Adam/Loss/raw7b(=

Accuracy/__raw_  �?

Accuracy�R?t`��Z       o��	$��i��A�*L

Loss�ke=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy8d?��V�Z       o��	���i��A�*L

Loss��[=

Adam/Loss/raw�6=

Accuracy/__raw_  �?

Accuracy�s?JZ       o��	Z�i��A�*L

Loss��R=

Adam/Loss/raw��;=

Accuracy/__raw_  �?

Accuracyс?��IgZ       o��	-�i��A�*L

Loss�`P=

Adam/Loss/raw,��<

Accuracy/__raw_  �?

Accuracyo�?��4Z       o��	wL�i��A�*L

Loss�G=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyʙ?���Z       o��	9{�i��A�*L

Loss�4B=

Adam/Loss/rawĨ*=

Accuracy/__raw_  �?

Accuracy�?єS;Z       o��	��i��A�*L

Loss��?=

Adam/Loss/rawI,*=

Accuracy/__raw_  �?

Accuracy6�?z��[Z       o��	���i��A�*L

Loss�==

Adam/Loss/raw�#=

Accuracy/__raw_  �?

Accuracy}�?�6�Z       o��	B�i��A�*L

Loss�m:=

Adam/Loss/raw��A

Accuracy/__raw_  �>

Accuracy�?��f�Z       o��	.6�i��A�*L

LossARr?

Adam/Loss/raw�P=

Accuracy/__raw_  �?

Accuracyr�l?��<Z       o��	�W�i��A�*L

Loss��Z?

Adam/Loss/raw|x=

Accuracy/__raw_  �?

Accuracy �n?5���Z       o��	w�i��A�*L

LossnF?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�Ap?}x� Z       o��	}��i��A�*L

LossY.3?

Adam/Loss/raw��8=

Accuracy/__raw_  �?

Accuracy��q?��	bZ       o��	ĳ�i��A�*L

Loss�j"?

Adam/Loss/rawH&	=

Accuracy/__raw_  �?

Accuracy�?s?��ÂZ       o��	���i��A�*L

Loss>?

Adam/Loss/raw�'?=

Accuracy/__raw_  �?

Accuracy��t?�y��Z       o��	�5�i��A�*L

Loss�?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyɫu?C��Z       o��	W�i��A�*L

Lossw-�>

Adam/Loss/rawi=

Accuracy/__raw_  �?

Accuracy5�v?HG� Z       o��	u�i��A�*L

Loss��>

Adam/Loss/raw�L=

Accuracy/__raw_  �?

Accuracy0�w?���Z       o��	1��i��A�*L

Loss���>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy^xx?䠗Z       o��	��i��A�*L

Loss�t�>

Adam/Loss/rawpN=

Accuracy/__raw_  �?

Accuracy!9y?��\Z       o��	h��i��A�*L

Loss�0�>

Adam/Loss/raw�?�=

Accuracy/__raw_  �?

Accuracy��y?�i3Z       o��	���i��A�*L

Loss�3�>

Adam/Loss/raw\3�=

Accuracy/__raw_  �?

Accuracy��z?o&��Z       o��	��i��A�*L

Loss��>

Adam/Loss/rawm\=

Accuracy/__raw_  �?

AccuracyG{?�oeZ       o��	n/�i��A�*L

Loss��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��{?�$.Z       o��	N�i��A�*L

Loss�Uj>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��{?~M!$Z       o��	�m�i��A�*L

LossC�V>

Adam/Loss/rawq)=

Accuracy/__raw_  �?

Accuracyf|?�|�Z       o��	��i��A�*L

Loss�E>

Adam/Loss/rawH5(=

Accuracy/__raw_  �?

Accuracy7�|?�O�vZ       o��	���i��A�*L

Loss�6>

Adam/Loss/rawPt:=

Accuracy/__raw_  �?

Accuracy2}?��Z       o��	���i��A�*L

Lossbz(>

Adam/Loss/rawk��<

Accuracy/__raw_  �?

Accuracy�_}?D�CZ       o��	o�i��A�*L

Loss3�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�}?���Z       o��	~7�i��A�*L

Loss�>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��}?hr��Z       o��	�n�i��A�*L

Loss�^>

Adam/Loss/rawy��<

Accuracy/__raw_  �?

Accuracy~?��qZ       o��	���i��A�*L

LossD��=

Adam/Loss/raw�/O=

Accuracy/__raw_  �?

AccuracyG~?66�UZ       o��	*��i��A�*L

Loss �=

Adam/Loss/rawu=

Accuracy/__raw_  �?

Accuracys~?.fZ       o��	���i��A�*L

Loss���=

Adam/Loss/raw��!=

Accuracy/__raw_  �?

AccuracyΚ~?���Z       o��	6��i��A�*L

Loss���=

Adam/Loss/raw��z<

Accuracy/__raw_  �?

Accuracy��~?v>lWZ       o��	t=�i��A�*L

Loss��=

Adam/Loss/raw�z<

Accuracy/__raw_  �?

Accuracy��~?6��0Z       o��	�u�i��A�*L

Loss= �=

Adam/Loss/raw4�=

Accuracy/__raw_  �?

Accuracy��~?�ؼ�Z       o��	���i��A�*L

Loss��=

Adam/Loss/rawt�5=

Accuracy/__raw_  �?

Accuracy�?����Z       o��	3��i��A�*L

Loss�<�=

Adam/Loss/rawk��<

Accuracy/__raw_  �?

Accuracy-?���aZ       o��	���i��A�*L

LossEn�=

Adam/Loss/raw�)�<

Accuracy/__raw_  �?

Accuracy-B?�q�DZ       o��	>�i��A�*L

Loss�݅=

Adam/Loss/raw�4�<

Accuracy/__raw_  �?

Accuracy)U?1xZ       o��	x&�i��A�*L

Loss9E|=

Adam/Loss/raw�2=

Accuracy/__raw_  �?

Accuracy?f?�d{qZ       o��	F�i��A�*L

Loss��t=

Adam/Loss/raw�]'=

Accuracy/__raw_  �?

Accuracy�u?�+v�Z       o��	
f�i��A�*L

Loss~'m=

Adam/Loss/rawV)=

Accuracy/__raw_  �?

Accuracyv�?�H�#Z       o��	��i��A�*L

Loss��b=

Adam/Loss/raw�)�<

Accuracy/__raw_  �?

Accuracy�?Wv��Z       o��	ۢ�i��A�*L

Lossz�W=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�?��&�Z       o��	��i��A�*L

Loss-N=

Adam/Loss/raw0(=

Accuracy/__raw_  �?

Accuracy6�?[�I�Z       o��	g��i��A�*L

Loss�CJ=

Adam/Loss/raw��iA

Accuracy/__raw_    

AccuracyJ�?w�YZ       o��	l"�i��A�*L

Loss���?

Adam/Loss/rawF�(=

Accuracy/__raw_  �?

Accuracy�f?��Z       o��	�G�i��A�*L

LossG�?

Adam/Loss/raw�M�<

Accuracy/__raw_  �?

Accuracy��h?4�ȕZ       o��	�h�i��A�*L

Loss+�?

Adam/Loss/rawUD�<

Accuracy/__raw_  �?

Accuracyk?)H�Z       o��	Ƥ�i��A�*L

LossB��?

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy� m?ރ2�Z       o��	*��i��A�*L

Loss��?

Adam/Loss/raw~�=

Accuracy/__raw_  �?

Accuracy�o?��KZ       o��	���i��A�*L

Loss�*g?

Adam/Loss/raw0%�<

Accuracy/__raw_  �?

Accuracy��p?+A�'Z       o��	���i��A�*L

Loss��P?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy>r?��bZ       o��	��i��A�*L

Loss��<?

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyC�s?pR�PZ       o��	m�i��A�*L

Loss��*?

Adam/Loss/raw�&=

Accuracy/__raw_  �?

Accuracy<�t?��cZ       o��	���i��A�*L

Loss��?

Adam/Loss/raw�bA=

Accuracy/__raw_  �?

Accuracy��u?4+�kZ       o��	��i��A�*L

Loss�?

Adam/Loss/rawp�;=

Accuracy/__raw_  �?

AccuracyC�v?�0Z       o��	���i��A�*L

Loss%��>

Adam/Loss/rawA�<

Accuracy/__raw_  �?

AccuracyV�w?�?phZ       o��	� �i��A�*L

LossnS�>

Adam/Loss/rawߗ�<

Accuracy/__raw_  �?

AccuracyM�x?�+�rZ       o��	[ �i��A�*L

Losso��>

Adam/Loss/raw(#=

Accuracy/__raw_  �?

Accuracyyky?cm��Z       o��	�A�i��A�*L

Loss.��>

Adam/Loss/raw	[�@

Accuracy/__raw_    

Accuracy�z?k�o{Z       o��	=c�i��A�*L

Loss	
�?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�a?;3��Z       o��	���i��A�*L

Loss�!�?

Adam/Loss/raw��f=

Accuracy/__raw_  �?

Accuracy�)d?g�J�Z       o��	{��i��A�*L

LossW�i?

Adam/Loss/raw;�h=

Accuracy/__raw_  �?

Accuracy]�f?�+Z       o��	���i��A�*L

Lossf�S?

Adam/Loss/raw�7=

Accuracy/__raw_  �?

Accuracy�si?g�:LZ       o��	q��i��A�*L

Lossd�??

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��k?��Z       o��	��i��A�*L

Lossq�-?

Adam/Loss/rawR<3=

Accuracy/__raw_  �?

Accuracyu�m?O�;EZ       o��	$B�i��A�*L

Losse?

Adam/Loss/raw{R_=

Accuracy/__raw_  �?

Accuracy�o?���Z       o��	ap�i��A�*L

Loss?

Adam/Loss/raw\�_=

Accuracy/__raw_  �?

Accuracy�4q?��u�Z       o��	��i��A�*L

Loss�$?

Adam/Loss/rawĖ=

Accuracy/__raw_  �?

Accuracy��r?^@��Z       o��	S��i��A�*L

LossY��>

Adam/Loss/rawV^$=

Accuracy/__raw_  �?

Accuracyat?L�Z       o��	t��i��A�*L

Loss~[�>

Adam/Loss/raw�:7=

Accuracy/__raw_  �?

Accuracy$7u?���Z       o��	^�i��A�*L

LossG6�>

Adam/Loss/raw�݄=

Accuracy/__raw_  �?

Accuracy:Kv?w�Z       o��	�,�i��A�*L

Loss2�>

Adam/Loss/rawC��=

Accuracy/__raw_  �?

Accuracy�Cw?�"F�Z       o��	�K�i��A�*L

LossNm�>

Adam/Loss/raw|��<

Accuracy/__raw_  �?

AccuracyU#x?�vN�Z       o��	��i��A�*L

Loss?��>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��x?��Z       o��	j��i��A�*L

Loss�w�>

Adam/Loss/rawH@]=

Accuracy/__raw_  �?

Accuracy��y?�줭Z       o��	��i��A�*L

Lossq,{>

Adam/Loss/raw�i�<

Accuracy/__raw_  �?

Accuracy�Dz?p
u`Z       o��	�*�i��A�*L

Loss��c>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy}�z?�Z       o��	�L�i��A�*L

Loss0�N>

Adam/Loss/rawO�=

Accuracy/__raw_  �?

Accuracy�[{?�~WKZ       o��	�r�i��A�*L

Loss��=>

Adam/Loss/raw�R=

Accuracy/__raw_  �?

Accuracyc�{?�*%�Z       o��	ԙ�i��A�*L

Loss�.>

Adam/Loss/raw�&=

Accuracy/__raw_  �?

AccuracyY=|?��0dZ       o��	ӽ�i��A�*L

Lossё!>

Adam/Loss/raw;��<

Accuracy/__raw_  �?

Accuracy��|?�HK#Z       o��	n��i��A�*L

Lossƈ>

Adam/Loss/raw�<

Accuracy/__raw_  �?

AccuracyA�|?����Z       o��	��i��A�*L

Loss%�>

Adam/Loss/raw=C�<

Accuracy/__raw_  �?

Accuracy;B}?��I)Z       o��	��i��A�*L

LossW��=

Adam/Loss/raw�  A

Accuracy/__raw_   >

Accuracyh�}?�H��Z       o��	�N�i��A�*L

Loss�%i?

Adam/Loss/raw{�>=

Accuracy/__raw_  �?

Accuracy*ag?�vo�Z       o��	���i��A�*L

Loss�S?

Adam/Loss/rawԊL=

Accuracy/__raw_  �?

Accuracys�i?y�AZ       o��	7��i��A�*L

Loss�3??

Adam/Loss/raw��N=

Accuracy/__raw_  �?

Accuracy�l?�꯸Z       o��	��i��A�*L

Loss�_-?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy<n?:�:kZ       o��	t�i��A�*L

Loss��?

Adam/Loss/raw�mA

Accuracy/__raw_   >

Accuracy��o?g���Z       o��	*�i��A�*L

Loss�?

Adam/Loss/rawp�'=

Accuracy/__raw_  �?

Accuracy�[?���Z       o��	(I�i��A�*L

Loss��?

Adam/Loss/rawk�H<

Accuracy/__raw_  �?

Accuracyu�^?_iA�Z       o��	#g�i��A�*L

Loss�Ô?

Adam/Loss/raw�nH<

Accuracy/__raw_  �?

Accuracy�b?'4�^Z       o��	D��i��A�*L

Lossm�?

Adam/Loss/raw<�Z=

Accuracy/__raw_  �?

Accuracyve?J"cZ       o��	��i��A�*L

Lossѥr?

Adam/Loss/rawX%4=

Accuracy/__raw_  �?

Accuracy��g?�_ͿZ       o��	��i��A�*L

LossD�[?

Adam/Loss/raw`=

Accuracy/__raw_  �?

Accuracy<0j?���Z       o��	�5�i��A�*L

LossH�F?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�^l?ƫZ       o��	�V�i��A�*L

Lossd�3?

Adam/Loss/raw7�<

Accuracy/__raw_  �?

Accuracy&Un?	K��Z       o��	�t�i��A�*L

Loss�L"?

Adam/Loss/raw�9=

Accuracy/__raw_  �?

Accuracyop?��PLZ       o��	T��i��A�*L

Loss�9?

Adam/Loss/raw�5=

Accuracy/__raw_  �?

Accuracy~�q?�n�Z       o��	���i��A�*L

Lossr|?

Adam/Loss/raw_0=

Accuracy/__raw_  �?

Accuracy�s?U�2*Z       o��	f��i��A�*L

Loss�z�>

Adam/Loss/raw{�l=

Accuracy/__raw_  �?

Accuracy�ht?���Z       o��	���i��A�*L

Loss�0�>

Adam/Loss/rawE�l=

Accuracy/__raw_  �?

AccuracyN�u?��Z       o��	��i��A�*L

Loss��>

Adam/Loss/rawF�7=

Accuracy/__raw_  �?

Accuracy`�v?���tZ       o��	dA�i��A�*L

Loss� �>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��w?S�-�Z       o��	@i�i��A�*L

LossR��>

Adam/Loss/rawC=

Accuracy/__raw_  �?

Accuracyex?��YZ       o��	��i��A�*L

Loss-a�>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�'y?\�OZ       o��	���i��A�*L

Loss�2�>

Adam/Loss/raw}�<

Accuracy/__raw_  �?

Accuracy��y?��K5Z       o��	�i��A�*L

Lossl�|>

Adam/Loss/raw�e=

Accuracy/__raw_  �?

Accuracy�tz?Z��Z       o��	8.�i��A�*L

Loss�Ki>

Adam/Loss/rawNz=

Accuracy/__raw_  �?

Accuracy�{?(�E�Z       o��	�[�i��A�*L

Loss��U>

Adam/Loss/rawĨ'=

Accuracy/__raw_  �?

Accuracy[�{?-�Z       o��	�{�i��A�*L

Loss1�D>

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyR�{?E�jZ       o��	��i��A�*L

LossR<4>

Adam/Loss/rawc=

Accuracy/__raw_  �?

Accuracy�\|?�Z       o��	���i��A�*L

Loss��%>

Adam/Loss/raw$�3=

Accuracy/__raw_  �?

Accuracy�|?gof�Z       o��	��i��A�*L

Lossl|>

Adam/Loss/raw|&R=

Accuracy/__raw_  �?

Accuracy�}?�A�kZ       o��	d<�i��A�*L

Loss$d>

Adam/Loss/raw� A=

Accuracy/__raw_  �?

Accuracy&Y}?�<��Z       o��	�^�i��A�*L

Loss��>

Adam/Loss/rawE�<

Accuracy/__raw_  �?

Accuracy	�}?B���Z       o��	Å�i��A�*L

Loss���=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy"�}?�Sl�Z       o��	��i��A�*L

LossI:�=

Adam/Loss/rawr�!=

Accuracy/__raw_  �?

Accuracy~?3���Z       o��	 ��i��A�*L

Loss�{�=

Adam/Loss/raw,�M=

Accuracy/__raw_  �?

Accuracy�B~?D�Z       o��	=��i��A�*L

Loss�i�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy&o~?����Z       o��	��i��A�*L

Loss��=

Adam/Loss/raw�*$=

Accuracy/__raw_  �?

Accuracy<�~?����Z       o��	:8�i��A�*L

Loss�6�=

Adam/Loss/raw��#=

Accuracy/__raw_  �?

AccuracyP�~?pMZ       o��	�X�i��A�*L

Loss�{�=

Adam/Loss/raw �N=

Accuracy/__raw_  �?

Accuracy��~?!�BZ       o��	�z�i��A�*L

Lossf�=

Adam/Loss/raw�,
A

Accuracy/__raw_  �>

Accuracy�~?1��fZ       o��	ۥ�i��A�*L

Loss�fo?

Adam/Loss/rawb�9=

Accuracy/__raw_  �?

Accuracy�k?;���Z       o��	Z��i��A�*L

Loss|�X?

Adam/Loss/raw8�<

Accuracy/__raw_  �?

AccuracyK�m?W��Z       o��	P �i��A�*L

LossOmC?

Adam/Loss/raw5ӕ<

Accuracy/__raw_  �?

Accuracy��o?g]�Z       o��	�#�i��A�*L

Loss=Z0?

Adam/Loss/raw�fc=

Accuracy/__raw_  �?

AccuracyETq?m5UZ       o��	�[�i��A�*L

Losst# ?

Adam/Loss/raw�!=

Accuracy/__raw_  �?

Accuracy��r?�;Z       o��	�}�i��A�*L

Lossz"?

Adam/Loss/raw �*=

Accuracy/__raw_  �?

Accuracy�t?;�
Z       o��	��i��A�*L

Loss	�?

Adam/Loss/raw�[=

Accuracy/__raw_  �?

AccuracyNu?}]��Z       o��	<��i��A�*L

Loss���>

Adam/Loss/raw?�]=

Accuracy/__raw_  �?

Accuracy�_v?j"SZ       o��	���i��A�*L

Loss���>

Adam/Loss/rawm�C=

Accuracy/__raw_  �?

AccuracyHVw?��-�Z       o��	"��i��A�*L

Loss�*�>

Adam/Loss/raw�1=

Accuracy/__raw_  �?

Accuracy4x?��E!Z       o��	 R�i��A�*L

Loss�v�>

Adam/Loss/rawڀR=

Accuracy/__raw_  �?

Accuracy��x?G��*Z       o��	��i��A�*L

Loss��>

Adam/Loss/rawo�s=

Accuracy/__raw_  �?

AccuracyI�y?�_�TZ       o��	���i��A�*L

Losshf�>

Adam/Loss/raw�ss=

Accuracy/__raw_  �?

Accuracy�Pz?�Q�2Z       o��	v��i��A�*L

Loss4�>

Adam/Loss/raw��	=

Accuracy/__raw_  �?

Accuracyv�z?՞Z       o��	���i��A�*L

Loss��>

Adam/Loss/raw�OA=

Accuracy/__raw_  �?

Accuracyje{?}�	)Z       o��	���i��A�*L

Lossk>

Adam/Loss/rawTNK=

Accuracy/__raw_  �?

AccuracyF�{?�&��Z       o��	 �i��A�*L

Loss��X>

Adam/Loss/raw݊b=

Accuracy/__raw_  �?

AccuracyYE|?�׍yZ       o��	�A�i��A�*L

Loss��H>

Adam/Loss/raw��a=

Accuracy/__raw_  �?

AccuracyФ|?7ɞ#Z       o��	�_�i��A�*L

Loss{9:>

Adam/Loss/raw2�V=

Accuracy/__raw_  �?

Accuracy��|?���Z       o��	W~�i��A�*L

Lossp�,>

Adam/Loss/rawjc =

Accuracy/__raw_  �?

AccuracyH}?��yZ       o��	��i��A�*L

Loss.�>

Adam/Loss/raw��R=

Accuracy/__raw_  �?

Accuracy��}?rxp)Z       o��	E��i��A�*L

Loss�B>

Adam/Loss/raw{-=

Accuracy/__raw_  �?

AccuracyJ�}?8�"dZ       o��	��i��A�*L

Loss

	>

Adam/Loss/raw�(=

Accuracy/__raw_  �?

Accuracy�~?�J�Z       o��	*�i��A�*L

Loss��=

Adam/Loss/rawt .=

Accuracy/__raw_  �?

Accuracye7~?���^Z       o��	�E�i��A�*L

Loss�&�=

Adam/Loss/raw��==

Accuracy/__raw_  �?

Accuracye~?A��Z       o��	h�i��A�*L

Loss���=

Adam/Loss/raw�=2=

Accuracy/__raw_  �?

Accuracy&�~?��sXZ       o��	��i��A�*L

Loss3��=

Adam/Loss/rawi��<

Accuracy/__raw_  �?

Accuracy"�~?���AZ       o��	Y��i��A�*L

Loss���=

Adam/Loss/raw�c�<

Accuracy/__raw_  �?

Accuracyk�~?� IZ       o��	i��i��A�*L

Loss_�=

Adam/Loss/raw m =

Accuracy/__raw_  �?

Accuracy`�~?��u�Z       o��	� �i��A�*L

Loss�t�=

Adam/Loss/rawh�t=

Accuracy/__raw_  �?

AccuracyV?Ζ��Z       o��	u�i��A�*L

Loss���=

Adam/Loss/rawM\5=

Accuracy/__raw_  �?

Accuracy�%?�P8@Z       o��	
c�i��A�*L

Loss�T�=

Adam/Loss/raw8�G<

Accuracy/__raw_  �?

Accuracyq;?i���Z       o��	���i��A�*L

LossR�=

Adam/Loss/rawAG<

Accuracy/__raw_  �?

AccuracyO?�	Z       o��	D��i��A�*L

Loss-�=

Adam/Loss/raw8�T=

Accuracy/__raw_  �?

Accuracy�`?�~SZ       o��	p��i��A�*L

Loss���=

Adam/Loss/raw��I=

Accuracy/__raw_  �?

Accuracy�p?Y���Z       o��	k�i��A�*L

Loss m}=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy
?�==�Z       o��	�3�i��A�*L

Loss�t=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?�<0�Z       o��	�V�i��A�*L

Loss�ij=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�c=Z       o��	�|�i��A�*L

Loss �a=

Adam/Loss/raw�Z=

Accuracy/__raw_  �?

Accuracy��?��GZ       o��	'��i��A�*L

Loss��`=

Adam/Loss/raw��/=

Accuracy/__raw_  �?

Accuracyc�?C�Z       o��	���i��A�*L

Loss%�[=

Adam/Loss/raw�b=

Accuracy/__raw_  �?

Accuracyٳ?ur�[Z       o��	2��i��A�*L

Loss6�\=

Adam/Loss/rawᔹ<

Accuracy/__raw_  �?

Accuracyw�?E��Z       o��	��i��A�*L

LossU�O=

Adam/Loss/rawܸ<

Accuracy/__raw_  �?

AccuracyR�?3�a>Z       o��	�=�i��A�*L

LossS?D=

Adam/Loss/raw,(=

Accuracy/__raw_  �?

Accuracy}�?$z~Z       o��	em�i��A�*L

Lossi�?=

Adam/Loss/raw�<=

Accuracy/__raw_  �?

Accuracy
�?�?��Z       o��	:��i��A�*L

LossFZ?=

Adam/Loss/raw!3=

Accuracy/__raw_  �?

Accuracy	�?G},aZ       o��	���i��A�*L

LossY!>=

Adam/Loss/raw�4=

Accuracy/__raw_  �?

Accuracy��?��,Z       o��	� �i��A�*L

Loss�2==

Adam/Loss/raw�Z4=

Accuracy/__raw_  �?

Accuracy��?,n"Z       o��	� �i��A�*L

Loss{P<=

Adam/Loss/rawz�O=

Accuracy/__raw_  �?

Accuracy8�?^F�Z       o��	A�i��A�*L

Loss.?>=

Adam/Loss/rawX
=

Accuracy/__raw_  �?

Accuracy�?��åZ       o��	ji�i��A�*L

Lossw9=

Adam/Loss/raw��1=

Accuracy/__raw_  �?

Accuracyr�?@�OZ       o��	��i��A�*L

Loss�U8=

Adam/Loss/raw^B=

Accuracy/__raw_  �?

Accuracy�?C�"�Z       o��	��i��A�*L

LosswV9=

Adam/Loss/raw�A=

Accuracy/__raw_  �?

Accuracy~�?Vߢ�Z       o��	B�i��A�*L

Loss�*:=

Adam/Loss/raw�4=

Accuracy/__raw_  �?

Accuracy��?N ��Z       o��	�&�i��A�*L

Loss��9=

Adam/Loss/rawt�=

Accuracy/__raw_  �?

Accuracy��?Q�D�Z       o��	�K�i��A�*L

LossP�6=

Adam/Loss/raw{�&=

Accuracy/__raw_  �?

AccuracyS�?c�˃Z       o��	ak�i��A�*L

Loss�4=

Adam/Loss/raw]]�<

Accuracy/__raw_  �?

Accuracy��?Gk��Z       o��	��i��A�*L

Loss�/=

Adam/Loss/raw'��<

Accuracy/__raw_  �?

AccuracyM�?%_Z       o��		��i��A�*L

Loss��)=

Adam/Loss/raw~�/=

Accuracy/__raw_  �?

Accuracy��?��`9Z       o��	���i��A�*L

Loss
D*=

Adam/Loss/rawH��@

Accuracy/__raw_  �>

Accuracy��?�jZ       o��	���i��A�*L

Loss��
?

Adam/Loss/rawD�=

Accuracy/__raw_  �?

Accuracy��l?P�Z       o��	��i��A�*L

Loss8	�>

Adam/Loss/raw�PQ=

Accuracy/__raw_  �?

Accuracy��n?K/�Z       o��	�*�i��A�*L

Loss�r�>

Adam/Loss/rawS�N=

Accuracy/__raw_  �?

Accuracy1kp?��JZ       o��	�X�i��A�*L

Loss(�>

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy�q?_��Z       o��	
��i��A�*L

Lossl��>

Adam/Loss/raw� c=

Accuracy/__raw_  �?

Accuracyas?�m��Z       o��	���i��A�*L

Loss���>

Adam/Loss/raw�xD=

Accuracy/__raw_  �?

Accuracy)�t?�ӹZ       o��	���i��A�*L

Lossp��>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��u?&�2hZ       o��	o�i��A�*L

Loss��>

Adam/Loss/raw?M�<

Accuracy/__raw_  �?

Accuracy��v?O(�Z       o��	z0�i��A�*L

Loss��>

Adam/Loss/rawp0=

Accuracy/__raw_  �?

Accuracy0�w?Zx�Z       o��	�P�i��A�*L

Loss��o>

Adam/Loss/raw��B=

Accuracy/__raw_  �?

Accuracy+�x?P�L�Z       o��	p�i��A�*L

Loss(�\>

Adam/Loss/rawD�G=

Accuracy/__raw_  �?

Accuracy�Jy?"S�dZ       o��	���i��A�*L

Lossy�K>

Adam/Loss/raw�{6=

Accuracy/__raw_  �?

Accuracy��y? �8nZ       o��	���i��A�*L

Loss��;>

Adam/Loss/raw�T6=

Accuracy/__raw_  �?

Accuracy1�z?�.�kZ       o��	{�i��A�*L

Loss,�->

Adam/Loss/raw�	4=

Accuracy/__raw_  �?

AccuracyF{?Ey�Z       o��	�@�i��A�*L

Loss� >

Adam/Loss/rawM�=

Accuracy/__raw_  �?

Accuracyr�{?����Z       o��	a�i��A�*L

Loss_)>

Adam/Loss/raw9=

Accuracy/__raw_  �?

Accuracy
|?()t|Z       o��	���i��A�*L

Loss��	>

Adam/Loss/raweT=

Accuracy/__raw_  �?

Accuracy~o|?\S�Z       o��	��i��A�*L

Loss���=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��|?��K�Z       o��	:��i��A�*L

Loss���=

Adam/Loss/raw�S=

Accuracy/__raw_  �?

Accuracy�}?/�)Z       o��	2��i��A�*L

Loss���=

Adam/Loss/raw�T=

Accuracy/__raw_  �?

Accuracy�f}?��OwZ       o��	�
�i��A�*L

Loss��=

Adam/Loss/raw�W =

Accuracy/__raw_  �?

AccuracyN�}?91$�Z       o��	�)�i��A�*L

Loss�8�=

Adam/Loss/raw�)M=

Accuracy/__raw_  �?

Accuracy-�}?悇Z       o��	EI�i��A�*L

Loss�ۺ=

Adam/Loss/raw�]L=

Accuracy/__raw_  �?

Accuracy~?�^�MZ       o��	}v�i��A�*L

Loss�c�=

Adam/Loss/rawU�=

Accuracy/__raw_  �?

Accuracy�K~?�f�Z       o��	C��i��A�*L

LossK��=

Adam/Loss/raw��M=

Accuracy/__raw_  �?

Accuracy3w~?a54�Z       o��	���i��A�*L

Loss·�=

Adam/Loss/rawf�=

Accuracy/__raw_  �?

Accuracy{�~?׊�BZ       o��	 �i��A�*L

Loss·�=

Adam/Loss/raw�IT=

Accuracy/__raw_  �?

Accuracy��~?^4�aZ       o��	K9�i��A�*L

Loss{�=

Adam/Loss/raw
S=

Accuracy/__raw_  �?

Accuracy��~?����Z       o��	tY�i��A�*L

LossoΏ=

Adam/Loss/raw]�=

Accuracy/__raw_  �?

AccuracyI�~?p��tZ       o��	y�i��A�*L

Loss5 �=

Adam/Loss/raw�,U=

Accuracy/__raw_  �?

Accuracy?����Z       o��	$��i��A�*L

Loss9�=

Adam/Loss/rawJ�G=

Accuracy/__raw_  �?

AccuracyA/?'B\Z       o��	��i��A�*L

Lossݿ�=

Adam/Loss/raw�#=

Accuracy/__raw_  �?

Accuracy!D?sE��Z       o��	���i��A�*L

Loss�y=

Adam/Loss/raw�L#=

Accuracy/__raw_  �?

Accuracy�V?�y��Z       o��	�7�i��A�*L

LossNDq=

Adam/Loss/raw6��<

Accuracy/__raw_  �?

Accuracy�g?�D��Z       o��	W�i��A�*L

Lossbpe=

Adam/Loss/rawb5<=

Accuracy/__raw_  �?

Accuracyw?g��4Z       o��	�u�i��A�*L

Loss�Pa=

Adam/Loss/raw�G�<

Accuracy/__raw_  �?

Accuracy��?����Z       o��	���i��A�*L

Loss�%W=

Adam/Loss/raw\Jq=

Accuracy/__raw_  �?

Accuracy�?:.�qZ       o��	��i��A�*L

Loss:�Y=

Adam/Loss/raw�p=

Accuracy/__raw_  �?

Accuracy)�?��I8Z       o��	w��i��A�*L

Loss��[=

Adam/Loss/raw��'=

Accuracy/__raw_  �?

Accuracy%�?ط=Z       o��	���i��A�*L

Loss��V=

Adam/Loss/rawH�6=

Accuracy/__raw_  �?

Accuracy!�?��#�Z       o��	�i��A�*L

Losse�S=

Adam/Loss/raw�#=

Accuracy/__raw_  �?

Accuracy7�?-�<Z       o��	b3�i��A�*L

Lossw�N=

Adam/Loss/rawb.=

Accuracy/__raw_  �?

Accuracy~�?_wʳZ       o��	P�i��A�*L

Loss�K=

Adam/Loss/rawE�-=

Accuracy/__raw_  �?

Accuracy�?�i��Z       o��	?q�i��A�*L

LossC�H=

Adam/Loss/raw�8=

Accuracy/__raw_  �?

Accuracy��?hN��Z       o��	���i��A�*L

Loss��F=

Adam/Loss/rawB=

Accuracy/__raw_  �?

Accuracy>�?9yDbZ       o��	���i��A�*L

Loss�kA=

Adam/Loss/raw�}1=

Accuracy/__raw_  �?

Accuracy�?��L{Z       o��	���i��A�*L

Loss
�?=

Adam/Loss/rawO�7=

Accuracy/__raw_  �?

AccuracyQ�?0JZ       o��	��i��A�*L

Loss�?=

Adam/Loss/raw��6=

Accuracy/__raw_  �?

Accuracy/�?���Z       o��	�<�i��A�*L

Loss�0>=

Adam/Loss/raw��)=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	)w�i��A�*L

Loss=*<=

Adam/Loss/raw�N=

Accuracy/__raw_  �?

Accuracy��?��tZ       o��	���i��A�*L

Loss��6=

Adam/Loss/rawL�#=

Accuracy/__raw_  �?

Accuracy��?��rZ       o��	}��i��A�*L

LossH�4=

Adam/Loss/raw�H=

Accuracy/__raw_  �?

Accuracy(�?�&#_Z       o��	��i��A�*L

Losst�6=

Adam/Loss/rawK�F=

Accuracy/__raw_  �?

Accuracyq�?�P�Z       o��	���i��A�*L

Loss#i8=

Adam/Loss/rawO�B=

Accuracy/__raw_  �?

Accuracy�?���Z       o��	J�i��A�*L

Loss�q9=

Adam/Loss/raw��<

Accuracy/__raw_  �?

AccuracyY�?��2Z       o��	>v�i��A�*L

Loss��1=

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy�?�-cZ       o��	>��i��A�*L

Loss`0=

Adam/Loss/raw	��<

Accuracy/__raw_  �?

Accuracy��?�o�Z       o��	���i��A�*L

Loss$5*=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�\0�Z       o��	4��i��A�*L

Loss��$=

Adam/Loss/rawY��<

Accuracy/__raw_  �?

Accuracy�?�s�0Z       o��	��i��A�*L

Lossx!=

Adam/Loss/raw��K=

Accuracy/__raw_  �?

Accuracy+�?��ϴZ       o��	��i��A�*L

Loss�V%=

Adam/Loss/rawn�<

Accuracy/__raw_  �?

Accuracy'�?��Z       o��	�E�i��A�*L

Loss� =

Adam/Loss/rawW0)=

Accuracy/__raw_  �?

Accuracy
�?Ccw�Z       o��	�g�i��A�*L

Loss$� =

Adam/Loss/rawZK(=

Accuracy/__raw_  �?

Accuracy��?rb:�Z       o��	'��i��A�*L

LossC�!=

Adam/Loss/rawm,.=

Accuracy/__raw_  �?

Accuracy��?3�%Z       o��	���i��A�*L

Loss�"=

Adam/Loss/rawPd2=

Accuracy/__raw_  �?

Accuracy2�?�7wZ       o��	���i��A�*L

Loss�y$=

Adam/Loss/raw"5=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�$�i��A�*L

Losss!=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyM�?����Z       o��	,a�i��A�*L

Loss� =

Adam/Loss/rawޭ=

Accuracy/__raw_  �?

Accuracy��?��jZ       o��	b��i��A�*L

Loss�> =

Adam/Loss/raw��(=

Accuracy/__raw_  �?

Accuracy1�?<~v�Z       o��	��i��A�*L

Losss!=

Adam/Loss/raw!"=

Accuracy/__raw_  �?

Accuracy��?|���Z       o��	A�i��A�*L

Loss�6!=

Adam/Loss/raw\�=

Accuracy/__raw_  �?

Accuracy��?t3
Z       o��	�/�i��A�*L

Lossb+ =

Adam/Loss/rawG�)=

Accuracy/__raw_  �?

Accuracy:�?�e)xZ       o��	%��i��A�*L

Loss,!=

Adam/Loss/rawt(=

Accuracy/__raw_  �?

Accuracy��?�r�@Z       o��	���i��A�*L

Loss)�!=

Adam/Loss/raw�^=

Accuracy/__raw_  �?

Accuracy��?�"�%Z       o��	��i��A�*L

Loss3�=

Adam/Loss/rawA+=

Accuracy/__raw_  �?

Accuracy��?�)��Z       o��	��i��A�*L

Loss�4 =

Adam/Loss/raw_=

Accuracy/__raw_  �?

Accuracy/�?�Km-Z       o��	�:�i��A�*L

Loss�=

Adam/Loss/rawh�X=

Accuracy/__raw_  �?

Accuracy^�?�M�Z       o��	yZ�i��A�*L

Loss�#=

Adam/Loss/raw3�W=

Accuracy/__raw_  �?

Accuracy��?	�ΩZ       o��	1~�i��A�*L

Loss�(=

Adam/Loss/rawd��<

Accuracy/__raw_  �?

Accuracy��?8�Z       o��	{��i��A�*L

Loss�A$=

Adam/Loss/raw�+=

Accuracy/__raw_  �?

Accuracy��?u9��Z       o��	g��i��A�*L

Lossm%=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?��j�Z       o��	#��i��A�*L

Lossw =

Adam/Loss/raws<�<

Accuracy/__raw_  �?

Accuracy	�?�8�Z       o��	��i��A�*L

Loss>�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy"�?c�zZ       o��	�;�i��A�*L

Loss[�=

Adam/Loss/raweM=

Accuracy/__raw_  �?

Accuracy8�?�wuBZ       o��	�h�i��A�*L

LossH=

Adam/Loss/rawP�=

Accuracy/__raw_  �?

AccuracyL�?��Z       o��	H��i��A�*L

Loss�==

Adam/Loss/raw��$=

Accuracy/__raw_  �?

Accuracy^�?4�[IZ       o��	7��i��A�*L

Loss�E=

Adam/Loss/raw=n�<

Accuracy/__raw_  �?

Accuracyn�?�A8�Z       o��	��i��A�*L

Loss��=

Adam/Loss/raw�#�<

Accuracy/__raw_  �?

Accuracy}�?��lZ       o��	��i��A�*L

Loss�.=

Adam/Loss/raw�7=

Accuracy/__raw_  �?

Accuracy��?T��;Z       o��	�'�i��A�*L

Loss�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	�F�i��A�*L

Loss�=

Adam/Loss/rawXW=

Accuracy/__raw_  �?

Accuracy��?&��Z       o��	#g�i��A�*L

Loss�1=

Adam/Loss/rawhQ=

Accuracy/__raw_  �?

Accuracy��?���wZ       o��	&��i��A�*L

Loss��=

Adam/Loss/raw'HO=

Accuracy/__raw_  �?

Accuracy��?bXZ       o��	���i��A�*L

Loss|'=

Adam/Loss/raw�V=

Accuracy/__raw_  �?

Accuracy��?B�hZ       o��	(�i��A�*L

Loss�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�[��Z       o��	w0�i��A�*L

Loss�v=

Adam/Loss/raw^�=

Accuracy/__raw_  �?

Accuracy��?�˂Z       o��	]P�i��A�*L

Loss"c=

Adam/Loss/raw�R=

Accuracy/__raw_  �?

Accuracy��?n��VZ       o��	�r�i��A�*L

Loss|Y=

Adam/Loss/rawU�Q=

Accuracy/__raw_  �?

Accuracy��?ڝ^�Z       o��	��i��A�*L

Loss_�!=

Adam/Loss/raw8�2=

Accuracy/__raw_  �?

Accuracy��?kuc�Z       o��	'��i��A�*L

Loss�d#=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�]�Z       o��	q��i��A�*L

Loss� =

Adam/Loss/rawNL3=

Accuracy/__raw_  �?

Accuracy��?�f�Z       o��	��i��A�*L

Loss�;=

Adam/Loss/raw�c@=

Accuracy/__raw_  �?

Accuracy��?�H�Z       o��	�5�i��A�*L

Loss^�"=

Adam/Loss/raw��?=

Accuracy/__raw_  �?

Accuracy��?3n�2Z       o��	���i��A�*L

Loss�x%=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�#4#Z       o��	{��i��A�*L

Loss҆ =

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?,U�NZ       o��	���i��A�*L

Loss|=

Adam/Loss/raww��<

Accuracy/__raw_  �?

Accuracy��?v�m�Z       o��	2�i��A�*L

Lossv�=

Adam/Loss/raw(=

Accuracy/__raw_  �?

Accuracy��?o�G!Z       o��	�:�i��A�*L

Loss�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?��x�Z       o��	�Z�i��A�*L

LossdH=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?'��Z       o��	Kz�i��A�*L

Lossj=

Adam/Loss/raw"�=

Accuracy/__raw_  �?

Accuracy��?���OZ       o��	���i��A�*L

Loss�=

Adam/Loss/rawY=

Accuracy/__raw_  �?

Accuracy��?��RZ       o��	0��i��A�*L

Lossϲ=

Adam/Loss/raw@��<

Accuracy/__raw_  �?

Accuracy��?�m�'Z       o��	!�i��A�*L

Loss$\=

Adam/Loss/rawY,�<

Accuracy/__raw_  �?

Accuracy��?>�Z       o��	�L�i��A�*L

LossX�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?��$Z       o��	�l�i��A�*L

Loss�=

Adam/Loss/raw4�#=

Accuracy/__raw_  �?

Accuracy��?��@Z       o��	���i��A�*L

Loss1�	=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?�b(�Z       o��	��i��A�*L

LossS�
=

Adam/Loss/raw��.=

Accuracy/__raw_  �?

Accuracy��?q��Z       o��	���i��A�*L

Loss��=

Adam/Loss/raw�n.=

Accuracy/__raw_  �?

Accuracy��?''�Z       o��	���i��A�*L

Loss%�=

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy��?�D:Z       o��	��i��A�*L

Loss<P=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?�;p_Z       o��	�.�i��A�*L

Loss�'=

Adam/Loss/raw0�<

Accuracy/__raw_  �?

Accuracy��?���OZ       o��	nR�i��A�*L

Loss�
=

Adam/Loss/raw�t=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	���i��A�*L

Lossg�
=

Adam/Loss/raw��
=

Accuracy/__raw_  �?

Accuracy��?�ǌ�Z       o��	e��i��A�*L

Loss��
=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?��<�Z       o��	���i��A�*L

LossP=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?T�m(Z       o��	��i��A�*L

Loss{F=

Adam/Loss/raw�i�<

Accuracy/__raw_  �?

Accuracy��?����Z       o��	jJ�i��A�*L

Loss�D=

Adam/Loss/raw�W=

Accuracy/__raw_  �?

Accuracy��?�ެ�Z       o��	�h�i��A�*L

Loss-	=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?1�Z       o��	C��i��A�*L

Lossf�	=

Adam/Loss/raw~=

Accuracy/__raw_  �?

Accuracy��?H&pOZ       o��	;��i��A�*L

Lossw�	=

Adam/Loss/raw��2=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��i��A�*L

Losse�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	n j��A�*L

Loss�)=

Adam/Loss/raw�U�<

Accuracy/__raw_  �?

Accuracy��?�^Z       o��	�I j��A�*L

Loss$�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�:��Z       o��	�j j��A�*L

LossT�<

Adam/Loss/raw3�5=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	&� j��A�*L

Loss�=

Adam/Loss/rawbP�<

Accuracy/__raw_  �?

Accuracy��?��H�Z       o��	`� j��A�*L

Lossü=

Adam/Loss/raw�8(=

Accuracy/__raw_  �?

Accuracy��?�v�(Z       o��	.� j��A�*L

Lossb|=

Adam/Loss/rawY;�<

Accuracy/__raw_  �?

Accuracy��?��Z       o��	,� j��A�*L

Loss�r=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?��
�Z       o��	�j��A�*L

Lossُ�<

Adam/Loss/rawb�=

Accuracy/__raw_  �?

Accuracy��?��OZ       o��	�=j��A�*L

Lossߖ =

Adam/Loss/rawPt�<

Accuracy/__raw_  �?

Accuracy��?��Z       o��	�dj��A�*L

Loss��<

Adam/Loss/raw==

Accuracy/__raw_  �?

Accuracy��?-lC�Z       o��	�j��A�*L

Loss���<

Adam/Loss/raw��*=

Accuracy/__raw_  �?

Accuracy��?�m�Z       o��	��j��A�*L

Lossf-=

Adam/Loss/raw8*=

Accuracy/__raw_  �?

Accuracy��?O�x}Z       o��	 �j��A�*L

Loss��=

Adam/Loss/raw�=�<

Accuracy/__raw_  �?

Accuracy��?��F�Z       o��	�#j��A�*L

Lossb=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�:��Z       o��	paj��A�*L

Loss�=

Adam/Loss/raw_l=

Accuracy/__raw_  �?

Accuracy��?0��sZ       o��	��j��A�*L

Loss��=

Adam/Loss/raw�	=

Accuracy/__raw_  �?

Accuracy��?�(�Z       o��	��j��A�*L

Lossv�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�>��Z       o��	��j��A�*L

LossK=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�Z       o��	��j��A�*L

Lossc�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?��-^Z       o��	m�j��A�*L

Loss��=

Adam/Loss/rawn�"=

Accuracy/__raw_  �?

Accuracy��?b��}Z       o��	<Qj��A�*L

Loss$�=

Adam/Loss/raw7�<

Accuracy/__raw_  �?

Accuracy��?�*zZ       o��	~j��A�*L

Loss��=

Adam/Loss/raw1߯<

Accuracy/__raw_  �?

Accuracy��?
��Z       o��	��j��A�*L

Loss�#�<

Adam/Loss/raw�>�<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	]�j��A�*L

LossO��<

Adam/Loss/raw%�<

Accuracy/__raw_  �?

Accuracy��?Lu!	Z       o��	��j��A�*L

Loss��<

Adam/Loss/rawW�=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	��j��A�*L

Lossq�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?��Z       o��	�j��A�*L

LossI��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�ԧ�Z       o��	�@j��A�*L

Loss8��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�_��Z       o��	�cj��A�*L

Loss�h�<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�̑Z       o��	�j��A�*L

Loss���<

Adam/Loss/raw΃�<

Accuracy/__raw_  �?

Accuracy��?�16Z       o��	U�j��A�*L

Loss88�<

Adam/Loss/raw�("=

Accuracy/__raw_  �?

Accuracy��?I�<�Z       o��	\�j��A�*L

Loss�C=

Adam/Loss/raw'U!=

Accuracy/__raw_  �?

Accuracy��?Ϸ]4Z       o��	�j��A�*L

Loss�x=

Adam/Loss/raw6=

Accuracy/__raw_  �?

Accuracy��?�Z       o��	�3j��A�*L

Loss
r=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?���pZ       o��	[j��A�*L

Loss��=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�h��Z       o��	Йj��A�*L

Loss�g�<

Adam/Loss/raw]E =

Accuracy/__raw_  �?

Accuracy��?߫��Z       o��	��j��A�*L

Loss�� =

Adam/Loss/rawI�=

Accuracy/__raw_  �?

Accuracy��?l{�Z       o��	��j��A�*L

Loss��=

Adam/Loss/rawsR�<

Accuracy/__raw_  �?

Accuracy��?wg��Z       o��	L�j��A�*L

Loss�=

Adam/Loss/raw:*=

Accuracy/__raw_  �?

Accuracy��?CkZ�Z       o��	rj��A�*L

Loss±=

Adam/Loss/rawz��<

Accuracy/__raw_  �?

Accuracy��?���DZ       o��	AGj��A�*L

Loss��=

Adam/Loss/raw�	�<

Accuracy/__raw_  �?

Accuracy��?p��.Z       o��	1�j��A�*L

LossG�=

Adam/Loss/raw#m�<

Accuracy/__raw_  �?

Accuracy��?0)�pZ       o��	s�j��A�*L

Lossh� =

Adam/Loss/rawP=

Accuracy/__raw_  �?

Accuracy��?�>��Z       o��	��j��A�*L

Loss̜ =

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	e�j��A�*L

Loss�g=

Adam/Loss/raw�M�<

Accuracy/__raw_  �?

Accuracy��?���xZ       o��	�j��A�*L

Lossnu�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�c��Z       o��	�<j��A�*L

Loss=I�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�"��Z       o��	dj��A�*L

Loss��<

Adam/Loss/raw}�=

Accuracy/__raw_  �?

Accuracy��?	��1Z       o��	z�j��A�*L

Loss� =

Adam/Loss/raw6Q�<

Accuracy/__raw_  �?

Accuracy��?kX|�Z       o��	>�j��A�*L

Losscf�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?|�4BZ       o��	�j��A�*L

Loss�l�<

Adam/Loss/raw#��<

Accuracy/__raw_  �?

Accuracy��?\@�Z       o��	]4j��A�*L

Loss{s�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?,���Z       o��	��j��A�*L

LossX��<

Adam/Loss/rawY=

Accuracy/__raw_  �?

Accuracy��?�?�vZ       o��	#�j��A�*L

Loss���<

Adam/Loss/raw.Z�<

Accuracy/__raw_  �?

Accuracy��?R{��Z       o��	��j��A�*L

Loss���<

Adam/Loss/raw�t�<

Accuracy/__raw_  �?

Accuracy��?�$}LZ       o��	�+	j��A�*L

Loss��<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?� ݺZ       o��	R	j��A�*L

Loss���<

Adam/Loss/rawC1=

Accuracy/__raw_  �?

Accuracy��?m�"Z       o��	��	j��A�*L

Loss���<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?��:�Z       o��	9�	j��A�*L

Loss�l�<

Adam/Loss/raw( =

Accuracy/__raw_  �?

Accuracy��?�^��Z       o��	�
j��A�*L

Loss���<

Adam/Loss/rawl�<

Accuracy/__raw_  �?

Accuracy��?0�7hZ       o��	�/
j��A�*L

Lossg��<

Adam/Loss/raw0N�<

Accuracy/__raw_  �?

Accuracy��?�8oZ       o��	�Q
j��A�*L

Loss���<

Adam/Loss/raw� �<

Accuracy/__raw_  �?

Accuracy��?��pZ       o��	�t
j��A�*L

LossW��<

Adam/Loss/rawT]=

Accuracy/__raw_  �?

Accuracy��?�`�Z       o��	��
j��A�*L

Loss���<

Adam/Loss/raw�A

Accuracy/__raw_   >

Accuracy��?,Ճ�Z       o��	��
j��A�*L

Loss�hs?

Adam/Loss/rawL=

Accuracy/__raw_  �?

Accuracy��i?�n�Z       o��	��
j��A�*L

Lossi�[?

Adam/Loss/rawhS�<

Accuracy/__raw_  �?

Accuracy�k?��QOZ       o��	*j��A�*L

Loss��F?

Adam/Loss/rawe�<

Accuracy/__raw_  �?

Accuracy �m?�TެZ       o��	)j��A�*L

Loss��3?

Adam/Loss/raw,N�<

Accuracy/__raw_  �?

Accuracy��o?_"<�Z       o��	�{j��A�*L

Loss�`"?

Adam/Loss/rawJv�<

Accuracy/__raw_  �?

Accuracy�Mq?�٤qZ       o��	��j��A�*L

Loss&�?

Adam/Loss/raw6��<

Accuracy/__raw_  �?

Accuracy��r?4Kd�Z       o��	��j��A�*L

Loss��?

Adam/Loss/rawQ�3<

Accuracy/__raw_  �?

Accuracy�t?8!3OZ       o��	?j��A�*L

Loss���>

Adam/Loss/rawD�3<

Accuracy/__raw_  �?

Accuracy@Iu?�o�)Z       o��	�;j��A�*L

Loss/�>

Adam/Loss/raw!�(=

Accuracy/__raw_  �?

Accuracy�[v?�w�Z       o��	�]j��A�*L

Loss��>

Adam/Loss/rawV�=

Accuracy/__raw_  �?

Accuracy_Rw?��Z       o��	�~j��A�*L

LossP��>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�0x?e���Z       o��	+�j��A�*L

Losst-�>

Adam/Loss/raw�M
=

Accuracy/__raw_  �?

Accuracy{�x?rh\Z       o��	��j��A�*L

LossH��>

Adam/Loss/raw�
=

Accuracy/__raw_  �?

Accuracyo�y?�N�kZ       o��	�j��A�*L

Loss=��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracydNz?KF��Z       o��	nMj��A�*L

Loss��u>

Adam/Loss/rawu��<

Accuracy/__raw_  �?

Accuracy'�z?�}��Z       o��	�pj��A�*L

Loss�$`>

Adam/Loss/rawG=

Accuracy/__raw_  �?

AccuracyVc{?���Z       o��	d�j��A�*L

Loss?M>

Adam/Loss/raw(�<

Accuracy/__raw_  �?

Accuracyg�{?Fb>�Z       o��	��j��A�*L

Loss0;>

Adam/Loss/raw�r�<

Accuracy/__raw_  �?

Accuracy�C|?�0��Z       o��	��j��A�*L

Loss�+>

Adam/Loss/rawB/�<

Accuracy/__raw_  �?

AccuracyL�|?حG�Z       o��	~�j��A�*L

Loss�>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy^�|?j��Z       o��	4)j��A�*L

Loss�O>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�F}?,�m�Z       o��	qTj��A�*L

Loss��>

Adam/Loss/raw`-=

Accuracy/__raw_  �?

Accuracy��}?����Z       o��	Ӆj��A�*L

Loss�\�=

Adam/Loss/raw�\,=

Accuracy/__raw_  �?

AccuracyL�}?�[*fZ       o��	B�j��A�*L

Loss�>�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�~?�T�WZ       o��	d�j��A�*L

Loss�N�=

Adam/Loss/rawR��<

Accuracy/__raw_  �?

Accuracy�6~?G��%Z       o��	 j��A�*L

Loss���=

Adam/Loss/rawP��<

Accuracy/__raw_  �?

AccuracyUd~?2J��Z       o��	�Aj��A�*L

Loss�ͷ=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��~?���Z       o��	�gj��A�*L

Loss���=

Adam/Loss/rawy��<

Accuracy/__raw_  �?

Accuracy��~?Wz�Z       o��	��j��A�*L

Loss���=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��~?-�r�Z       o��	��j��A�*L

LossG�=

Adam/Loss/rawS�=

Accuracy/__raw_  �?

Accuracy��~?x�m�Z       o��	�j��A�*L

Loss�n�=

Adam/Loss/rawYI�<

Accuracy/__raw_  �?

Accuracy�?Z�F,Z       o��	�j��A�*L

Loss�e�=

Adam/Loss/raw�j#=

Accuracy/__raw_  �?

Accuracy9%?��%Z       o��	UJj��A�*L

Loss�~=

Adam/Loss/rawы"=

Accuracy/__raw_  �?

Accuracy;?d5�Z       o��	�ij��A�*L

Lossru=

Adam/Loss/raw�}
=

Accuracy/__raw_  �?

Accuracy�N?�Q�Z       o��	��j��A�*L

Loss	�j=

Adam/Loss/rawdF�<

Accuracy/__raw_  �?

Accuracy�`?7�,{Z       o��	H�j��A�*L

LossZ�]=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracywp?ʠ}Z       o��	��j��A�*L

LossF�V=

Adam/Loss/raw4&f<

Accuracy/__raw_  �?

Accuracy�~?#ia�Z       o��	��j��A�*L

Lossf�F=

Adam/Loss/raw�ee<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	j��A�*L

Lossν8=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy]�?�Y��Z       o��	�1j��A�*L

Lossm�0=

Adam/Loss/raw�'�<

Accuracy/__raw_  �?

Accuracyԡ?1�lZ       o��	�Tj��A�*L

Lossw�+=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy?�?MTo�Z       o��	�sj��A�*L

Loss��&=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?˼k�Z       o��	��j��A�*L

Loss�� =

Adam/Loss/raw�:�<

Accuracy/__raw_  �?

AccuracyZ�?�?�Z       o��	>�j��A�*L

Lossc=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy7�?��Z       o��	�j��A�*L

Loss��=

Adam/Loss/rawر�<

Accuracy/__raw_  �?

Accuracye�?��!�Z       o��	�j��A�*L

Loss]�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?��D"Z       o��	�Zj��A�*L

Lossk=

Adam/Loss/raw7��<

Accuracy/__raw_  �?

Accuracy��?��Z       o��	�|j��A�*L

Loss�U=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracyw�?V�G�Z       o��	Ǜj��A�*L

Loss��=

Adam/Loss/rawT�<

Accuracy/__raw_  �?

Accuracy��?#�x�Z       o��	�j��A�*L

Loss-�=

Adam/Loss/raw̞%A

Accuracy/__raw_    

Accuracy+�?ꊶZ       o��	o�j��A�*L

Loss;C�?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�Hf?�}��Z       o��	��j��A�*L

Loss��u?

Adam/Loss/rawW��<

Accuracy/__raw_  �?

Accuracy+�h?��� Z       o��	�Tj��A�*L

Loss��]?

Adam/Loss/rawh��<

Accuracy/__raw_  �?

Accuracy�+k?����Z       o��	tj��A�*L

Lossy`H?

Adam/Loss/raw�@#=

Accuracy/__raw_  �?

Accuracy�@m?daO�Z       o��	��j��A�*L

Loss\5?

Adam/Loss/raw.�&A

Accuracy/__raw_   >

Accuracy� o?�t�Z       o��	<�j��A�*L

Loss���?

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyQjZ?1vp�Z       o��	/�j��A�*L

Loss:��?

Adam/Loss/raw2M$=

Accuracy/__raw_  �?

Accuracy|,^?막,Z       o��	�j��A�*L

Loss%��?

Adam/Loss/rawE�$=

Accuracy/__raw_  �?

Accuracyp�a?�S��Z       o��	>$j��A�*L

Loss���?

Adam/Loss/raw
�<

Accuracy/__raw_  �?

Accuracy˙d?rq��Z       o��	ZGj��A�*L

Loss��?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy7Wg?��Z       o��	�mj��A�*L

Loss��?

Adam/Loss/rawmN=

Accuracy/__raw_  �?

Accuracy~�i?�G�Z       o��	�j��A�*L

Losswvh?

Adam/Loss/rawg=

Accuracy/__raw_  �?

Accuracy�l?j-dZ       o��	��j��A�*L

Lossn'R?

Adam/Loss/rawO]=

Accuracy/__raw_  �?

Accuracy�n?��TZ       o��	��j��A�*L

Lossx>?

Adam/Loss/raw9R=

Accuracy/__raw_  �?

Accuracy/�o?qScUZ       o��	?9j��A�*L

Loss��+?

Adam/Loss/raw"��<

Accuracy/__raw_  �?

Accuracy^pq?��kZ       o��	�]j��A�*L

Loss]?

Adam/Loss/rawn�'=

Accuracy/__raw_  �?

Accuracy!�r?9#�Z       o��	�~j��A�*L

Loss�?

Adam/Loss/raw5~=

Accuracy/__raw_  �?

Accuracy�4t?~�Z       o��	s�j��A�*L

LossX�>

Adam/Loss/raw�S=

Accuracy/__raw_  �?

Accuracy�bu?
n�{Z       o��	D�j��A�*L

Loss���>

Adam/Loss/raw	2�<

Accuracy/__raw_  �?

AccuracyMrv?��\Z       o��	��j��A�*L

Loss���>

Adam/Loss/raw�eA

Accuracy/__raw_    

Accuracy�fw?o��Z       o��	6j��A�*L

Loss��?

Adam/Loss/raw�R�<

Accuracy/__raw_  �?

Accuracyb�^?̞<�Z       o��	�Mj��A�*L

Loss{-�?

Adam/Loss/rawk=

Accuracy/__raw_  �?

Accuracy��a?6���Z       o��	"�j��A�*L

LossG0z?

Adam/Loss/rawo=

Accuracy/__raw_  �?

Accuracy��d?N�@�Z       o��	��j��A�*L

Loss��b?

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyD�g?�QIZ       o��	��j��A�*L

LossĵL?

Adam/Loss/rawr�=

Accuracy/__raw_  �?

Accuracyp j?��a�Z       o��	l	j��A�*L

Loss*9?

Adam/Loss/raw
[=

Accuracy/__raw_  �?

AccuracyePl?�¶BZ       o��	Z*j��A�*L

Loss�'?

Adam/Loss/raw4�<

Accuracy/__raw_  �?

Accuracy[Hn?c.��Z       o��	�Kj��A�*L

Loss�R?

Adam/Loss/raw�F�<

Accuracy/__raw_  �?

Accuracy�p?���Z       o��	kj��A�*L

Lossg�?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy!�q?-s�9Z       o��	Ɋj��A�*L

Loss���>

Adam/Loss/rawL'=

Accuracy/__raw_  �?

Accuracy�s?ۄ�'Z       o��	g�j��A�*L

Loss��>

Adam/Loss/raw8��<

Accuracy/__raw_  �?

Accuracy*`t?�/2�Z       o��	��j��A�*L

Loss'��>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��u?^<��Z       o��	��j��A�*L

LossA�>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��v?Y��Z       o��	�$j��A�*L

Loss5ҧ>

Adam/Loss/raw<=

Accuracy/__raw_  �?

Accuracy��w?��N�Z       o��	iRj��A�*L

Loss��>

Adam/Loss/rawT�>=

Accuracy/__raw_  �?

Accuracy�_x?>�q�Z       o��	�zj��A�*L

Loss{��>

Adam/Loss/rawҒ=

Accuracy/__raw_  �?

Accuracy�"y?^M�zZ       o��	0�j��A�*L

LossUG>

Adam/Loss/raw}�<=

Accuracy/__raw_  �?

Accuracy��y?�J��Z       o��	f�j��A�*L

LossOwj>

Adam/Loss/raw(�;=

Accuracy/__raw_  �?

Accuracy�pz?ޯ~oZ       o��	�j��A�*L

Loss�W>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��z?�goZ       o��	�j��A�*L

LossUoE>

Adam/Loss/raw �!=

Accuracy/__raw_  �?

Accuracy{?��*PZ       o��	:j��A�*L

Losss�5>

Adam/Loss/raw�H=

Accuracy/__raw_  �?

Accuracyc�{?]Y<�Z       o��	�`j��A�*L

Loss��(>

Adam/Loss/rawx��<

Accuracy/__raw_  �?

Accuracy&Z|?���wZ       o��	��j��A�*L

Loss��>

Adam/Loss/rawel�<

Accuracy/__raw_  �?

Accuracy��|?�	
Z       o��	%�j��A�*L

Loss9@>

Adam/Loss/rawJ��<

Accuracy/__raw_  �?

Accuracy�}?+�MZ       o��	1j��A�*L

Loss�>

Adam/Loss/raw:2=

Accuracy/__raw_  �?

Accuracy9W}?��Z       o��	�'j��A�*L

Loss�A�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyM�}?�gv2Z       o��	Jj��A�*L

Loss��=

Adam/Loss/raw�P=

Accuracy/__raw_  �?

Accuracy��}?X��Z       o��	�ij��A�*L

Loss�-�=

Adam/Loss/raw�~=

Accuracy/__raw_  �?

Accuracy�~?7F��Z       o��	j�j��A�*L

Loss+��=

Adam/Loss/raw�Q=

Accuracy/__raw_  �?

AccuracyXA~? �T�Z       o��	�j��A�*L

Loss���=

Adam/Loss/raw�r�<

Accuracy/__raw_  �?

Accuracyn~?���Z       o��	��j��A�*L

Loss��=

Adam/Loss/raw�.=

Accuracy/__raw_  �?

Accuracy5�~?$<-�Z       o��	�j��A�*L

LossbY�=

Adam/Loss/rawө�<

Accuracy/__raw_  �?

Accuracyc�~?t0��Z       o��	j��A�*L

Loss��=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��~?�%cZ       o��	�Jj��A�*L

Loss_@�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyA�~?{I��Z       o��	N�j��A�*L

Lossӆ=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?�ȣ~Z       o��	��j��A�*L

Loss��=

Adam/Loss/raw�U�<

Accuracy/__raw_  �?

Accuracy^*?�JiZ       o��	Pj��A�*L

Loss��q=

Adam/Loss/raw�l>=

Accuracy/__raw_  �?

Accuracy�??&�Z       o��	oCj��A�*L

Losse�l=

Adam/Loss/raw�J==

Accuracy/__raw_  �?

Accuracy�R?ﰠAZ       o��	�bj��A�*L

Loss��g=

Adam/Loss/raw�F=

Accuracy/__raw_  �?

AccuracyCd?7�ǦZ       o��	�j��A�*L

Loss��]=

Adam/Loss/raw�_ =

Accuracy/__raw_  �?

Accuracy�s?/�Z       o��	r�j��A�*L

Loss+�W=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyځ?��PZ       o��	��j��A�*L

Loss 'M=

Adam/Loss/rawI*=

Accuracy/__raw_  �?

Accuracyw�?�BM�Z       o��	6 j��A�*L

Loss׍F=

Adam/Loss/raw_�
=

Accuracy/__raw_  �?

Accuracyҙ?��Z       o��	�>j��A�*L

Loss1�@=

Adam/Loss/raw]z-=

Accuracy/__raw_  �?

Accuracy
�?GEZ       o��	�]j��A�*L

Lossi�>=

Adam/Loss/raw�| =

Accuracy/__raw_  �?

Accuracy<�?L�Z       o��	�{j��A�*L

Loss�q8=

Adam/Loss/raw�!=

Accuracy/__raw_  �?

Accuracy��?�s�Z       o��	z�j��A�*L

Loss�'6=

Adam/Loss/raw�kt<

Accuracy/__raw_  �?

Accuracy��?����Z       o��	��j��A�*L

Loss�*=

Adam/Loss/raw�jt<

Accuracy/__raw_  �?

Accuracy��?x�tZ       o��	��j��A�*L

Loss�'=

Adam/Loss/rawr+=

Accuracy/__raw_  �?

Accuracy��?� T�Z       o��	�j��A�*L

Loss�c =

Adam/Loss/rawɴ�<

Accuracy/__raw_  �?

Accuracy!�? ��Z       o��	�&j��A�*L

Loss��=

Adam/Loss/raw]\'=

Accuracy/__raw_  �?

Accuracy�?�|�Z       o��	RFj��A�*L

Loss��=

Adam/Loss/raw]��<

Accuracy/__raw_  �?

Accuracyj�?�v�Z       o��	�mj��A�*L

Loss�,=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy_�?�$]�Z       o��	�j��A�*L

Loss�=

Adam/Loss/raw(�=

Accuracy/__raw_  �?

Accuracy��?��jBZ       o��	�j��A�*L

Lossn=

Adam/Loss/raw��	A

Accuracy/__raw_  �>

Accuracy$�?�Y9�Z       o��	�j��A�*L

Loss��d?

Adam/Loss/raw�Z=

Accuracy/__raw_  �?

AccuracyӲl?Yv��Z       o��	,j��A�*L

Loss.�N?

Adam/Loss/raw�g=

Accuracy/__raw_  �?

Accuracy�n?�B*�Z       o��	�Lj��A�*L

LossO�:?

Adam/Loss/rawߑ=

Accuracy/__raw_  �?

Accuracy�]p?�&Z       o��	lj��A�*L

Loss�)?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��q?cꚫZ       o��	.�j��A�*L

Loss��?

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyVs?�3��Z       o��	�j��A�*L

Loss9o
?

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyI�t??��Z       o��	��j��A�*L

LossP��>

Adam/Loss/raw7�=

Accuracy/__raw_  �?

Accuracy�u?	$�iZ       o��	+ j��A�*L

Loss���>

Adam/Loss/raw<F=

Accuracy/__raw_  �?

Accuracy��v?����Z       o��	�M j��A�*L

Loss���>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��w?䩽*Z       o��	Xm j��A�*L

Losse�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��x? �Z       o��	ޏ j��A�*L

Loss\֪>

Adam/Loss/raw�Y=

Accuracy/__raw_  �?

AccuracyEy?Mq��Z       o��	 � j��A�*L

Loss�n�>

Adam/Loss/rawC�=

Accuracy/__raw_  �?

Accuracyi�y?��eZ       o��	�� j��A�*L

Loss���>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracyx�z?ҧRZ       o��	x� j��A�*L

Loss�a�>

Adam/Loss/raw�v=

Accuracy/__raw_  �?

Accuracy{?�N:�Z       o��	�!j��A�*L

Loss�El>

Adam/Loss/rawj
=

Accuracy/__raw_  �?

Accuracy��{?��"Z       o��	//!j��A�*L

LossqrX>

Adam/Loss/raw�y=

Accuracy/__raw_  �?

Accuracy�|?��`�Z       o��	�N!j��A�*L

Loss=F>

Adam/Loss/rawAA=

Accuracy/__raw_  �?

Accuracyel|?� 
Z       o��	�n!j��A�*L

Loss� 7>

Adam/Loss/raw�@=

Accuracy/__raw_  �?

Accuracy��|?�wx�Z       o��	��!j��A�*L

Loss`�)>

Adam/Loss/raw � =

Accuracy/__raw_  �?

Accuracy]}?7ʸ�Z       o��	%�!j��A�*L

Loss��>

Adam/Loss/rawN2=

Accuracy/__raw_  �?

Accuracy�d}?A�mtZ       o��	y"j��A�*L

Loss��>

Adam/Loss/raw��#=

Accuracy/__raw_  �?

AccuracyF�}?]0�Z       o��	�?"j��A�*L

Loss|�>

Adam/Loss/raw>==

Accuracy/__raw_  �?

AccuracyY�}?~���Z       o��	�z"j��A�*L

Loss"�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyj~?��yZ       o��	�"j��A�*L

Loss��=

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyJ~?H���Z       o��	x�"j��A�*L

Loss[h�=

Adam/Loss/rawi�=

Accuracy/__raw_  �?

Accuracy�u~?��Z       o��	D�"j��A�*L

Loss���=

Adam/Loss/raw�C�<

Accuracy/__raw_  �?

AccuracyH�~?~yAEZ       o��	y�"j��A�*L

Loss�8�=

Adam/Loss/rawOc=

Accuracy/__raw_  �?

Accuracy��~?��Z       o��	aL#j��A�*L

Loss�Q�=

Adam/Loss/rawOB=

Accuracy/__raw_  �?

Accuracy��~?��%Z       o��	��#j��A�*L

Loss���=

Adam/Loss/rawN�=

Accuracy/__raw_  �?

Accuracyi�~?]���Z       o��	+�#j��A�*L

LossR��=

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyE?�,�Z       o��	��#j��A�*L

Loss��=

Adam/Loss/rawD�<

Accuracy/__raw_  �?

Accuracy�.?��Z       o��	��#j��A�*L

Loss7��=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy}C?�e�)Z       o��	$j��A�*L

Loss�=

Adam/Loss/rawc��<

Accuracy/__raw_  �?

AccuracyWV?��YKZ       o��	$$j��A�*L

Loss�gp=

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyNg?�q�Z       o��	�C$j��A�*L

Losss�g=

Adam/Loss/rawX�=

Accuracy/__raw_  �?

Accuracy�v?b��Z       o��	Ib$j��A�*L

Loss��_=

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyQ�?N��Z       o��	�$j��A�*L

Loss��S=

Adam/Loss/raw�NP=

Accuracy/__raw_  �?

Accuracy��?�Z       o��	M�$j��A�*L

Loss�S=

Adam/Loss/rawE�O=

Accuracy/__raw_  �?

Accuracyћ?귎Z       o��	3�$j��A�*L

Loss�;S=

Adam/Loss/raw5a�<

Accuracy/__raw_  �?

Accuracy֥?\&RZ       o��	��$j��A�*L

LossQ�I=

Adam/Loss/rawrI=

Accuracy/__raw_  �?

Accuracyڮ?<V(Z       o��	�-%j��A�*L

Lossn�D=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?J]JWZ       o��	?T%j��A�*L

Loss�;=

Adam/Loss/raw[�<

Accuracy/__raw_  �?

AccuracyE�?���Z       o��	i�%j��A�*L

Loss#F2=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�ұ8Z       o��	[�%j��A�*L

Loss]�)=

Adam/Loss/rawj*=

Accuracy/__raw_  �?

Accuracy��?_�B�Z       o��	��%j��A�*L

LossT�)=

Adam/Loss/rawz�A

Accuracy/__raw_   >

Accuracy�?��/kZ       o��	��%j��A�*L

Loss	Co?

Adam/Loss/raw�e�<

Accuracy/__raw_  �?

Accuracyyni?�:�mZ       o��	A&j��A�*L

Loss�W?

Adam/Loss/raw�_=

Accuracy/__raw_  �?

Accuracy:�k?C/��Z       o��	f2&j��A�*L

LossWSC?

Adam/Loss/raw|V=

Accuracy/__raw_  �?

Accuracy4�m?�+ �Z       o��	�&j��A�*L

Loss%�0?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy/�o?K��Z       o��	��&j��A�*L

Loss�
 ?

Adam/Loss/rawk�
=

Accuracy/__raw_  �?

Accuracy^1q?|���Z       o��	s�&j��A�*L

Loss��?

Adam/Loss/raw`�%=

Accuracy/__raw_  �?

Accuracyn�r?$�ԭZ       o��	'�&j��A�*L

Loss�s?

Adam/Loss/raw`��<

Accuracy/__raw_  �?

Accuracy�t?�<�Z       o��	''j��A�*L

LossS��>

Adam/Loss/raw),�<

Accuracy/__raw_  �?

Accuracy�4u?v���Z       o��	�6'j��A�*L

Loss�g�>

Adam/Loss/raw�@=

Accuracy/__raw_  �?

Accuracy�Hv?�[�Z       o��	PX'j��A�*L

Lossk��>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�Aw?�e�_Z       o��	Kx'j��A�*L

Loss�k�>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�!x?�p.,Z       o��	y�'j��A�*L

Loss�+�>

Adam/Loss/raw{a<

Accuracy/__raw_  �?

Accuracy��x?ι��Z       o��	��'j��A�*L

Loss>

Adam/Loss/raw��`<

Accuracy/__raw_  �?

AccuracyA�y?�|�Z       o��	��'j��A�*L

Loss��>

Adam/Loss/raw�h,=

Accuracy/__raw_  �?

AccuracynCz?iqOZ       o��	��'j��A�*L

Loss�q>

Adam/Loss/raw=��@

Accuracy/__raw_  �>

AccuracyI�z?���kZ       o��	�2(j��A�*L

Loss|1%?

Adam/Loss/raw�_=

Accuracy/__raw_  �?

AccuracyuZk?�ߠ�Z       o��	/l(j��A�*L

LossU�?

Adam/Loss/raw!��<

Accuracy/__raw_  �?

Accuracykm?Z       o��	��(j��A�*L

Loss�?

Adam/Loss/raw�/�<

Accuracy/__raw_  �?

Accuracy�Fo?W��OZ       o��	R�(j��A�*L

Loss� �>

Adam/Loss/rawB{�<

Accuracy/__raw_  �?

Accuracy��p?�T"zZ       o��	�)j��A�*L

LossW!�>

Adam/Loss/raw*(=

Accuracy/__raw_  �?

Accuracy(tr?���Z       o��	�>)j��A�*L

Lossb�>

Adam/Loss/rawi� =

Accuracy/__raw_  �?

Accuracy��s?���Z       o��	�k)j��A�*L

Loss��>

Adam/Loss/rawa=

Accuracy/__raw_  �?

Accuracyu?����Z       o��	e�)j��A�*L

LossS��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�v?�%=�Z       o��	2�)j��A�*L

Lossࠗ>

Adam/Loss/rawÛ�<

Accuracy/__raw_  �?

Accuracy�w?(�a�Z       o��	h"*j��A�*L

Loss��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyF x?)�q�Z       o��	bG*j��A�*L

Lossy�{>

Adam/Loss/raw�}�<

Accuracy/__raw_  �?

Accuracy�x?X*zZ       o��	gf*j��A�*L

Loss�!e>

Adam/Loss/rawk�=

Accuracy/__raw_  �?

AccuracyX�y?�;~�Z       o��	�*j��A�*L

Losse�Q>

Adam/Loss/raw>=

Accuracy/__raw_  �?

Accuracy6+z?K׵�Z       o��	�*j��A�*L

LossN�@>

Adam/Loss/raw�%=

Accuracy/__raw_  �?

Accuracy}�z?��X)Z       o��	��*j��A�*L

Lossm�1>

Adam/Loss/rawA8A

Accuracy/__raw_    

Accuracy�F{?��7Z       o��	��*j��A�*L

Loss�=�?

Adam/Loss/raw�d=

Accuracy/__raw_  �?

Accuracy(&b?��Z       o��	>	+j��A�*L

Loss}��?

Adam/Loss/raw�F<

Accuracy/__raw_  �?

AccuracyW"e?�j`Z       o��	�E+j��A�*L

Loss��?

Adam/Loss/rawݶH<

Accuracy/__raw_  �?

Accuracy�g?�ahZ       o��	!�+j��A�*L

Loss9'u?

Adam/Loss/rawd�!=

Accuracy/__raw_  �?

Accuracy=j?�B�Z       o��	��+j��A�*L

Loss��]?

Adam/Loss/raw�4/=

Accuracy/__raw_  �?

Accuracy/jl?Q[C�Z       o��	�,j��A�*L

Loss��H?

Adam/Loss/rawt�=

Accuracy/__raw_  �?

Accuracy�_n?��h�Z       o��	�W,j��A�*L

Loss�\5?

Adam/Loss/raw�u�<

Accuracy/__raw_  �?

Accuracy�"p?/�A+Z       o��	Έ,j��A�*L

Loss8�#?

Adam/Loss/raw�Q�<

Accuracy/__raw_  �?

Accuracy�q?_7ǶZ       o��	��,j��A�*L

Loss�]?

Adam/Loss/raw��,=

Accuracy/__raw_  �?

Accuracyp&s?Jߊ�Z       o��	?8-j��A�*L

Loss��?

Adam/Loss/raw��@

Accuracy/__raw_   >

Accuracyeot?�_cZ       o��	oa-j��A�*L

Lossu�?

Adam/Loss/rawT{=

Accuracy/__raw_  �?

Accuracy1_?��w�Z       o��	,�-j��A�*L

Lossd�k?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�xb?�^��Z       o��	a�-j��A�*L

Loss]�U?

Adam/Loss/raw���=

Accuracy/__raw_  �?

Accuracy�le?���Z       o��	�-j��A�*L

Loss"#B?

Adam/Loss/raw�w=

Accuracy/__raw_  �?

Accuracy,h?����Z       o��	-.j��A�*L

Loss��/?

Adam/Loss/rawn��<

Accuracy/__raw_  �?

Accuracytyj? ʏZ       o��	 #.j��A�*L

Loss��?

Adam/Loss/rawՇ==

Accuracy/__raw_  �?

Accuracy��l?kΚ�Z       o��	�C.j��A�*L

Loss�,?

Adam/Loss/rawxZ�<

Accuracy/__raw_  �?

Accuracyu�n?�u��Z       o��	n.j��A�*L

LossQU?

Adam/Loss/raw�ø<

Accuracy/__raw_  �?

Accuracy�Np?�a�Z       o��	��.j��A�*L

Loss1��>

Adam/Loss/raw*=

Accuracy/__raw_  �?

Accuracy��q?��M�Z       o��	�/j��A�*L

Loss��>

Adam/Loss/raw6�#=

Accuracy/__raw_  �?

AccuracyJs?��FZ       o��	S/j��A�*L

Loss���>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyx�t?O�V{Z       o��	ty/j��A�*L

Lossݰ>

Adam/Loss/raw��I=

Accuracy/__raw_  �?

AccuracyR�u?���Z       o��	�/j��A�*L

Loss���>

Adam/Loss/raw$�H=

Accuracy/__raw_  �?

Accuracy�v?�BfZ       o��	�/j��A�*L

Loss+
�>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�w?t�ѭZ       o��	��/j��A�*L

Loss")�>

Adam/Loss/raw��*=

Accuracy/__raw_  �?

Accuracy�~x?�<\�Z       o��	�.0j��A�*L

Loss�w>

Adam/Loss/rawE�=

Accuracy/__raw_  �?

Accuracy�>y?(
�Z       o��	Z0j��A�*L

Loss'b>

Adam/Loss/raw �<

Accuracy/__raw_  �?

Accuracy��y?Z       o��	|}0j��A�*L

Loss��M>

Adam/Loss/rawd@�<

Accuracy/__raw_  �?

AccuracyJ�z?�OG
Z       o��	�0j��A�*L

Loss<b;>

Adam/Loss/raw�;?=

Accuracy/__raw_  �?

Accuracy\{?ʥaZ       o��	�0j��A�*L

Lossm->

Adam/Loss/raw*�0=

Accuracy/__raw_  �?

Accuracyl�{?�q�kZ       o��	2�0j��A�*L

Loss� >

Adam/Loss/raw}=

Accuracy/__raw_  �?

Accuracy�|?�86:Z       o��	q1j��A�*L

Loss�1>

Adam/Loss/raw�L�<

Accuracy/__raw_  �?

Accuracy�h|?��*Z       o��	W#1j��A�*L

Loss'T>

Adam/Loss/raw,��<

Accuracy/__raw_  �?

Accuracy��|?3�NZ       o��	�A1j��A�*L

Loss�H�=

Adam/Loss/raw �<=

Accuracy/__raw_  �?

Accuracy�}?_�Z       o��	�b1j��A�*L

Loss���=

Adam/Loss/raw0�=

Accuracy/__raw_  �?

Accuracyb}?�"qZ       o��	�1j��A�*L

Loss��=

Adam/Loss/raw�6=

Accuracy/__raw_  �?

Accuracy�}?��5Z       o��	��1j��A�*L

Loss0��=

Adam/Loss/raw��M=

Accuracy/__raw_  �?

AccuracyW�}?��k�Z       o��	p�1j��A�*L

Loss�K�=

Adam/Loss/rawqM=

Accuracy/__raw_  �?

Accuracy�~?�5Z       o��		2j��A�*L

Loss=�=

Adam/Loss/raw�o�<

Accuracy/__raw_  �?

AccuracyrH~?'r=!Z       o��	L82j��A�*L

Loss·�=

Adam/Loss/raw��@

Accuracy/__raw_  �>

Accuracygt~?Q�;Z       o��	�s2j��A�*L

Loss/�?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��n?�92Z       o��	��2j��A�*L

Loss��>

Adam/Loss/rawF=

Accuracy/__raw_  �?

Accuracy*Yp?�\A�Z       o��	��2j��A�*L

Losse�>

Adam/Loss/raw�6G=

Accuracy/__raw_  �?

Accuracy��q?���0Z       o��	��2j��A�*L

Loss
b�>

Adam/Loss/rawе!=

Accuracy/__raw_  �?

AccuracywRs?g���Z       o��	��2j��A�*L

Loss�*�>

Adam/Loss/rawv=

Accuracy/__raw_  �?

Accuracy�t?�aVZ       o��	�93j��A�*L

Loss��>

Adam/Loss/raw�X=

Accuracy/__raw_  �?

Accuracy�u?)&�Z       o��	�y3j��A�*L

Loss���>

Adam/Loss/raw1@;=

Accuracy/__raw_  �?

Accuracy�v?wam�Z       o��	5�3j��A�*L

Lossρ�>

Adam/Loss/raw�%:=

Accuracy/__raw_  �?

Accuracy��w?��^^Z       o��	k�3j��A�*L

LossȀ>

Adam/Loss/raw�+=

Accuracy/__raw_  �?

Accuracy��x?��Z       o��	��3j��A�*L

Loss�l>

Adam/Loss/rawNƢ<

Accuracy/__raw_  �?

Accuracy1Cy?-�f>Z       o��	��3j��A�*L

LossׂV>

Adam/Loss/raw�-=

Accuracy/__raw_  �?

Accuracy��y?C�,Z       o��	G4j��A�*L

Loss��D>

Adam/Loss/rawg�=

Accuracy/__raw_  �?

Accuracy�z?W(R*Z       o��	�:4j��A�*L

Loss��4>

Adam/Loss/raw=F=

Accuracy/__raw_  �?

Accuracy�{?����Z       o��	Z4j��A�*L

Loss�3&>

Adam/Loss/raw��$=

Accuracy/__raw_  �?

Accuracy[�{?��fHZ       o��	>z4j��A�*L

Loss��>

Adam/Loss/raw�}$=

Accuracy/__raw_  �?

Accuracy�|?qCZ       o��	��4j��A�*L

Loss�q>

Adam/Loss/raw:%=

Accuracy/__raw_  �?

Accuracy^k|?I���Z       o��	��4j��A�*L

Loss�T>

Adam/Loss/rawq`=

Accuracy/__raw_  �?

Accuracy�|?^[�Z       o��	F�4j��A�*L

Loss6��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�}?�)�Z       o��	�(5j��A�*L

LossJ�=

Adam/Loss/raw�e)=

Accuracy/__raw_  �?

Accuracy�c}?��2'Z       o��	U5j��A�*L

LossY��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��}?ߴ�Z       o��	�w5j��A�*L

Loss��=

Adam/Loss/rawo/�<

Accuracy/__raw_  �?

Accuracy��}?�#¾Z       o��	c�5j��A�*L

Loss��=

Adam/Loss/raw�|=

Accuracy/__raw_  �?

Accuracy�~?�:�Z       o��	Q�5j��A�*L

Loss���=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�I~?s���Z       o��	w�5j��A�*L

LossG,�=

Adam/Loss/rawR8=

Accuracy/__raw_  �?

Accuracylu~?�!Z       o��	n6j��A�*L

Loss��=

Adam/Loss/raw=$c=

Accuracy/__raw_  �?

Accuracy�~?Ӿ�3Z       o��	\86j��A�*L

Lossi��=

Adam/Loss/rawDw$=

Accuracy/__raw_  �?

Accuracyd�~?q��'Z       o��	��6j��A�*L

Loss�N�=

Adam/Loss/rawq��=

Accuracy/__raw_  �?

AccuracyZ�~?�%�NZ       o��	Q�6j��A�*L

Loss�
�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�~?��pZ       o��	
�6j��A�*L

Lossk��=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy?!W�Z       o��		�6j��A�*L

Loss,
�=

Adam/Loss/raw�b�<

Accuracy/__raw_  �?

AccuracyN.?��$Z       o��	%7j��A�*L

Loss�}=

Adam/Loss/raw �	=

Accuracy/__raw_  �?

AccuracyFC?S�`Z       o��	u@7j��A�*L

Loss�Ir=

Adam/Loss/raw�P:=

Accuracy/__raw_  �?

Accuracy%V?��|=Z       o��	�a7j��A�*L

LossӰl=

Adam/Loss/raw�;9=

Accuracy/__raw_  �?

Accuracy!g?H�H=Z       o��	��7j��A�*L

Loss��g=

Adam/Loss/rawhO/=

Accuracy/__raw_  �?

Accuracykv?
��Z       o��	��7j��A�*L

Loss��a=

Adam/Loss/raw�:=

Accuracy/__raw_  �?

Accuracy-�?DM�Z       o��	��7j��A�*L

Loss��X=

Adam/Loss/raw;:=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	O�7j��A�*L

Loss/3P=

Adam/Loss/raw��%=

Accuracy/__raw_  �?

Accuracy��?�/�:Z       o��	�8j��A�*L

Loss]�K=

Adam/Loss/raw�$=

Accuracy/__raw_  �?

Accuracy��?\�OZ       o��	M8j��A�*L

Loss�H=

Adam/Loss/rawC1=

Accuracy/__raw_  �?

Accuracyî?O�Z       o��	�z8j��A�*L

Loss�E=

Adam/Loss/rawW�	=

Accuracy/__raw_  �?

Accuracy�?��j(Z       o��	��8j��A�*L

Loss��?=

Adam/Loss/raw�8=

Accuracy/__raw_  �?

Accuracy3�?^�z�Z       o��	�8j��A�*L

Losss<=

Adam/Loss/raw�$�<

Accuracy/__raw_  �?

Accuracy��?�d�Z       o��	��8j��A�*L

LossZ3=

Adam/Loss/rawe��<

Accuracy/__raw_  �?

Accuracy��?��L�Z       o��	n9j��A�*L

Loss��*=

Adam/Loss/raw �"=

Accuracy/__raw_  �?

Accuracy�?�N��Z       o��	r59j��A�*L

Loss�%*=

Adam/Loss/raw|.=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	�U9j��A�*L

Loss��'=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy%�?�c��Z       o��	Z�9j��A�*L

Loss�r&=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�?�_*�Z       o��	��9j��A�*L

LossD�"=

Adam/Loss/raw	��<

Accuracy/__raw_  �?

Accuracy��?]��Z       o��	�:j��A�*L

Loss��=

Adam/Loss/raw/V =

Accuracy/__raw_  �?

Accuracy��?�m'�Z       o��	%%:j��A�*L

Lossn�=

Adam/Loss/raw��"=

Accuracy/__raw_  �?

Accuracy��?�}�Z       o��	=E:j��A�*L

Loss��=

Adam/Loss/raw�o�<

Accuracy/__raw_  �?

Accuracy�?���Z       o��	�e:j��A�*L

Loss4x=

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyZ�?��x0Z       o��	;�:j��A�*L

Loss��=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracyk�?����Z       o��	�:j��A�*L

Loss��=

Adam/Loss/raw<�=

Accuracy/__raw_  �?

AccuracyG�?^=��Z       o��	��:j��A�*L

Lossy=

Adam/Loss/raw�8=

Accuracy/__raw_  �?

Accuracy��?�([Z       o��	g�:j��A�*L

Loss9=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyt�?�xM�Z       o��	g;j��A�*L

Loss�=

Adam/Loss/rawG�=

Accuracy/__raw_  �?

Accuracy��?�%wCZ       o��	�5;j��A�*L

LossF[=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?�	;Z       o��	�e;j��A�*L

Loss�2=

Adam/Loss/raw@\�<

Accuracy/__raw_  �?

Accuracy �?��{Z       o��	h�;j��A�*L

Loss�=

Adam/Loss/raw��@

Accuracy/__raw_   >

Accuracy�?pLg�Z       o��	v�;j��A�*L

Loss��>?

Adam/Loss/rawB =

Accuracy/__raw_  �?

Accuracy��i?P�#>Z       o��	��;j��A�*L

Loss�,?

Adam/Loss/raw�!=

Accuracy/__raw_  �?

Accuracy��k?;�Z       o��	z5<j��A�*L

Loss�S?

Adam/Loss/raw�U!=

Accuracy/__raw_  �?

Accuracy��m?� �YZ       o��	^e<j��A�*L

Loss��?

Adam/Loss/raw��<=

Accuracy/__raw_  �?

Accuracyʥo?	�}Z       o��	��<j��A�*L

Loss�� ?

Adam/Loss/raw��0A

Accuracy/__raw_   >

AccuracyiHq?��Z       o��	��<j��A�*L

Loss8 �?

Adam/Loss/rawJ�=

Accuracy/__raw_  �?

Accuracy�Z\?9�4Z       o��	��<j��A�*L

Lossq��?

Adam/Loss/raw��)=

Accuracy/__raw_  �?

AccuracyK�_?���Z       o��	�.=j��A�*L

LossA7�?

Adam/Loss/raw�,=

Accuracy/__raw_  �?

Accuracy� c?�?T�Z       o��	M�=j��A�*L

Loss.��?

Adam/Loss/rawb|�<

Accuracy/__raw_  �?

Accuracy�f?g{��Z       o��	ض=j��A�*L

Loss[B�?

Adam/Loss/raw�&1=

Accuracy/__raw_  �?

Accuracy�h?��IZ       o��	#�=j��A�*L

Loss{,o?

Adam/Loss/rawҸ%=

Accuracy/__raw_  �?

Accuracy��j?����Z       o��	��=j��A�*L

Loss�JX?

Adam/Loss/rawE��<

Accuracy/__raw_  �?

Accuracy{m?!�kzZ       o��	�>j��A�*L

LossHC?

Adam/Loss/raw86�<

Accuracy/__raw_  �?

Accuracyo�n?4 =Z       o��	�>>j��A�*L

Losst_0?

Adam/Loss/rawj	�<

Accuracy/__raw_  �?

Accuracy�p?8"�Z       o��	�a>j��A�*L

LossVp?

Adam/Loss/rawvR=

Accuracy/__raw_  �?

Accuracy�0r?����Z       o��	՗>j��A�*L

Lossp�?

Adam/Loss/raw,�=

Accuracy/__raw_  �?

Accuracy<�s?�?YZ       o��	T�>j��A�*L

Loss�K?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyi�t?��ZgZ       o��	��>j��A�*L

Loss�T�>

Adam/Loss/rawIf=

Accuracy/__raw_  �?

Accuracy��u?�!\�Z       o��		?j��A�*L

Loss�}�>

Adam/Loss/raw<�=

Accuracy/__raw_  �?

Accuracy~�v?e���Z       o��	&T?j��A�*L

Loss��>

Adam/Loss/raw`5=

Accuracy/__raw_  �?

Accuracyq�w?Mo��Z       o��	�u?j��A�*L

Loss&�>

Adam/Loss/raw5#=

Accuracy/__raw_  �?

Accuracy3�x?ĥ��Z       o��	і?j��A�*L

Loss���>

Adam/Loss/raw�f.=

Accuracy/__raw_  �?

Accuracyey?����Z       o��	c�?j��A�*L

Loss���>

Adam/Loss/raw��-=

Accuracy/__raw_  �?

Accuracy,z?Z;VZ       o��	��?j��A�*L

Loss1*�>

Adam/Loss/raw��$=

Accuracy/__raw_  �?

Accuracy[�z?��Y�Z       o��	�*@j��A�*L

Loss�5y>

Adam/Loss/raw�$=

Accuracy/__raw_  �?

AccuracyR/{?�Ӌ�Z       o��	�[@j��A�*L

Loss-gd>

Adam/Loss/raw�>�<

Accuracy/__raw_  �?

Accuracy��{?�#AZ       o��	V{@j��A�*L

Loss؀P>

Adam/Loss/raw9!=

Accuracy/__raw_  �?

Accuracy�|?Z�<Z       o��	�@j��A�*L

Loss�?>

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracya}|?�=PZ       o��	��@j��A�*L

Loss��0>

Adam/Loss/raw�O=

Accuracy/__raw_  �?

Accuracy>�|?��P�Z       o��	��@j��A�*L

Loss�$>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy(}?@1�Z       o��	&�@j��A�*L

Loss�c>

Adam/Loss/rawF�=

Accuracy/__raw_  �?

Accuracy�p}?�V�Z       o��	) Aj��A�*L

Loss�8>

Adam/Loss/rawY�=

Accuracy/__raw_  �?

Accuracyj�}?��{�Z       o��	�?Aj��A�*L

Loss�>

Adam/Loss/raw5=

Accuracy/__raw_  �?

Accuracy_�}?+h��Z       o��	F^Aj��A�*L

Loss���=

Adam/Loss/raw=�=

Accuracy/__raw_  �?

Accuracyo"~?㈋kZ       o��	�|Aj��A�*L

Loss��=

Adam/Loss/rawS'=

Accuracy/__raw_  �?

Accuracy1R~?�[r�Z       o��	~�Aj��A�*L

Loss��=

Adam/Loss/raw��%=

Accuracy/__raw_  �?

Accuracy,}~?L�Z       o��	��Aj��A�*L

Lossr�=

Adam/Loss/raw?7T=

Accuracy/__raw_  �?

Accuracyۣ~?z��Z       o��	�Bj��A�*L

Loss��=

Adam/Loss/raw��R=

Accuracy/__raw_  �?

Accuracy��~?~A�zZ       o��	'0Bj��A�*L

Loss4��=

Adam/Loss/rawX�=

Accuracy/__raw_  �?

Accuracy�~?$?�Z       o��	��Bj��A�*L

Loss2�=

Adam/Loss/raw�V�<

Accuracy/__raw_  �?

Accuracy4?���QZ       o��	#�Bj��A�*L

LossC��=

Adam/Loss/raw�t'=

Accuracy/__raw_  �?

Accuracy�?��xZ       o��	��Bj��A�*L

Loss���=

Adam/Loss/raw��:=

Accuracy/__raw_  �?

Accuracym2?�ӀZ       o��	��Cj��A�*L

Loss� �=

Adam/Loss/rawp�9=

Accuracy/__raw_  �?

Accuracy�F?�Hp�Z       o��	j�Cj��A�*L

LossЌ=

Adam/Loss/rawwR=

Accuracy/__raw_  �?

Accuracy|Y?��?,Z       o��	��Cj��A�*L

Loss�e�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy#j?�q-�Z       o��	�aDj��A�*L

Loss1�~=

Adam/Loss/raw�.�<

Accuracy/__raw_  �?

Accuracy y?����Z       o��	_�Dj��A�*L

Loss�?p=

Adam/Loss/raw�A=

Accuracy/__raw_  �?

Accuracy��?HNj&Z       o��	��Dj��A�*L

Loss�Yg=

Adam/Loss/raw-�=

Accuracy/__raw_  �?

Accuracy��?W%�tZ       o��	2!Ej��A�*L

Loss�I_=

Adam/Loss/rawaw4=

Accuracy/__raw_  �?

Accuracy��?N�k�Z       o��	�MEj��A�*L

LossP[=

Adam/Loss/raw.#=

Accuracy/__raw_  �?

Accuracy��?�SZ       o��	�nEj��A�*L

Loss1lU=

Adam/Loss/raw��'=

Accuracy/__raw_  �?

Accuracy\�?��Z       o��	�Ej��A�*L

Loss��P=

Adam/Loss/raw=

Accuracy/__raw_  �?

AccuracyS�?h��)Z       o��	h�Ej��A�*L

Loss��J=

Adam/Loss/raw�.=

Accuracy/__raw_  �?

Accuracy~�?�}�AZ       o��	��Ej��A�*L

Loss�eE=

Adam/Loss/raw/�=

Accuracy/__raw_  �?

Accuracy��?G���Z       o��	`Fj��A�*L

Loss��>=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?:���Z       o��	dFj��A�*L

LossR�:=

Adam/Loss/rawʷ1=

Accuracy/__raw_  �?

Accuracy��?Zn(�Z       o��	%�Fj��A�*L

Loss��9=

Adam/Loss/raw�@=

Accuracy/__raw_  �?

Accuracy��?|�*Z       o��	�Fj��A�*L

Loss��:=

Adam/Loss/rawe�?=

Accuracy/__raw_  �?

Accuracy��?N�m�Z       o��	��Fj��A�*L

Loss�	;=

Adam/Loss/rawE��<

Accuracy/__raw_  �?

Accuracy��?�0`/Z       o��	�Gj��A�*L

Loss�3=

Adam/Loss/raw�}=

Accuracy/__raw_  �?

Accuracy&�?h�Z       o��	 DGj��A�*L

Loss�8/=

Adam/Loss/raw��#=

Accuracy/__raw_  �?

Accuracy<�?3�Z�Z       o��	+iGj��A�*L

Loss�.=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�?Rx��Z       o��	��Gj��A�*L

Loss��*=

Adam/Loss/rawHB=

Accuracy/__raw_  �?

Accuracy��?p�$Z       o��	d�Gj��A�*L

Loss��'=

Adam/Loss/rawv��<

Accuracy/__raw_  �?

Accuracy��?r0�Z       o��	1�Gj��A�*L

Lossl�#=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�5�Z       o��	)�Gj��A�*L

Loss�k"=

Adam/Loss/raw�K=

Accuracy/__raw_  �?

Accuracy��?��$�Z       o��	�9Hj��A�*L

Loss&�!=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy?�?":W�Z       o��	Q�Hj��A�*L

Loss�"!=

Adam/Loss/rawW\=

Accuracy/__raw_  �?

Accuracy��?�$(Z       o��	P�Hj��A�*L

Loss�� =

Adam/Loss/raw�%=

Accuracy/__raw_  �?

Accuracy�?L�K�Z       o��	��Hj��A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy?�?�n Z       o��	�DIj��A�*L

Loss�=

Adam/Loss/raw��.=

Accuracy/__raw_  �?

AccuracyR�?���Z       o��	T�Ij��A�*L

Loss��=

Adam/Loss/raw�S
=

Accuracy/__raw_  �?

AccuracyJ�?���bZ       o��	T Jj��A�*L

Loss;�=

Adam/Loss/raw%�	=

Accuracy/__raw_  �?

Accuracy)�?��8�Z       o��	�:Jj��A�*L

Loss�-=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�JZ       o��	\ZJj��A�*L

LossY�=

Adam/Loss/raw�o�<

Accuracy/__raw_  �?

Accuracy��?����Z       o��	Z�Jj��A�*L

Loss	=

Adam/Loss/raw"�=

Accuracy/__raw_  �?

AccuracyJ�?�D�Z       o��	��Jj��A�*L

Loss)=

Adam/Loss/raw4�=

Accuracy/__raw_  �?

Accuracy��?��Z       o��	>�Jj��A�*L

Loss*^=

Adam/Loss/raw�J=

Accuracy/__raw_  �?

Accuracy`�?��;(Z       o��	�Jj��A�*L

Loss��=

Adam/Loss/rawT��<

Accuracy/__raw_  �?

Accuracy��?i0u Z       o��	)Kj��A�*L

Loss\�=

Adam/Loss/raw57"=

Accuracy/__raw_  �?

AccuracyA�?�)xZ       o��	�HKj��A�*L

Loss��=

Adam/Loss/raw�.=

Accuracy/__raw_  �?

Accuracy��?���|Z       o��	�Kj��A�*L

Loss��=

Adam/Loss/raw�D=

Accuracy/__raw_  �?

Accuracy��?��DZ       o��	��Kj��A�*L

Lossc�=

Adam/Loss/raw�HC=

Accuracy/__raw_  �?

AccuracyE�?� ��Z       o��	�XLj��A�*L

Loss�\=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?\�v*Z       o��	-�Lj��A�*L

Loss��=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?��_mZ       o��	�Mj��A�*L

Loss,=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�?����Z       o��	�RMj��A�*L

Loss
�=

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy6�?h���Z       o��	ӊMj��A�*L

Loss��
=

Adam/Loss/raw�Z�<

Accuracy/__raw_  �?

Accuracyd�?�`�Z       o��	�Mj��A�*L

Loss��=

Adam/Loss/rawT9!=

Accuracy/__raw_  �?

Accuracy��?ʁ�Z       o��	w�Mj��A�*L

Lossl�=

Adam/Loss/rawb.=

Accuracy/__raw_  �?

Accuracy��?��v�Z       o��	��Mj��A�*L

Loss�l=

Adam/Loss/raw(�=

Accuracy/__raw_  �?

Accuracy��?���]Z       o��	�Nj��A�*L

Loss�=

Adam/Loss/raw85�<

Accuracy/__raw_  �?

Accuracy��?v�(Z       o��	p<Nj��A�*L

Loss%�=

Adam/Loss/rawS��<

Accuracy/__raw_  �?

Accuracy�?����Z       o��	�bNj��A�*L

Loss�'	=

Adam/Loss/raw�\=

Accuracy/__raw_  �?

Accuracy$�?p���Z       o��	9�Nj��A�*L

Loss_�=

Adam/Loss/raw[;=

Accuracy/__raw_  �?

Accuracy:�?qV�Z       o��	��Nj��A�*L

Loss��=

Adam/Loss/raw��<

Accuracy/__raw_  �?

AccuracyN�?(�Z       o��	g�Nj��A�*L

Loss4=

Adam/Loss/raw��
=

Accuracy/__raw_  �?

Accuracy`�?��/dZ       o��	Z+Oj��A�*L

Lossx�=

Adam/Loss/rawI
=

Accuracy/__raw_  �?

Accuracyp�?[/�Z       o��	#MOj��A�*L

Loss��=

Adam/Loss/raw=

Accuracy/__raw_  �?

Accuracy~�?�7�Z       o��	�kOj��A�*L

Loss.�=

Adam/Loss/raw�E=

Accuracy/__raw_  �?

Accuracy��?v-<*Z       o��	ΌOj��A�*L

Loss<�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?��(�Z       o��	��Oj��A�*L

Loss]r
=

Adam/Loss/raw_�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��Oj��A�*L

Lossݐ=

Adam/Loss/rawA=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	IPj��A�*L

Loss��=

Adam/Loss/raw�r�<

Accuracy/__raw_  �?

Accuracy��?ܚ��Z       o��	�hPj��A�*L

Loss��=

Adam/Loss/raw#�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��Pj��A�*L

Losso�=

Adam/Loss/rawb�=

Accuracy/__raw_  �?

Accuracy��?89��Z       o��	��Pj��A�*L

Loss^=

Adam/Loss/rawS�E=

Accuracy/__raw_  �?

Accuracy��?�{ �Z       o��	!�Pj��A�*L

Loss(=

Adam/Loss/rawC
E=

Accuracy/__raw_  �?

Accuracy��?��v�Z       o��	|�Pj��A�*L

Lossx�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?]	�HZ       o��	�Qj��A�*L

Loss,�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�gN	Z       o��	5Qj��A�*L

Loss��=

Adam/Loss/rawhx=

Accuracy/__raw_  �?

Accuracy��?2]fZ       o��	UQj��A�*L

Lossj�=

Adam/Loss/raw�p�<

Accuracy/__raw_  �?

Accuracy��?��tZ       o��	>sQj��A�*L

Loss0	=

Adam/Loss/raw�J�<

Accuracy/__raw_  �?

Accuracy��?7��|Z       o��	>�Qj��A�*L

Loss;"=

Adam/Loss/rawR�=

Accuracy/__raw_  �?

Accuracy��?�wˊZ       o��	�Qj��A�*L

Loss�2=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?��
Z       o��	b�Qj��A�*L

Loss�}=

Adam/Loss/raw�U�<

Accuracy/__raw_  �?

Accuracy��?M&uZ       o��	$Rj��A�*L

Loss�=

Adam/Loss/raw=]�<

Accuracy/__raw_  �?

Accuracy��?¬�Z       o��	cHRj��A�*L

Loss�k =

Adam/Loss/raw�|�<

Accuracy/__raw_  �?

Accuracy��?ڠ|�Z       o��	#�Rj��A�*L

Lossm�<

Adam/Loss/rawJC�<

Accuracy/__raw_  �?

Accuracy��?j�Z       o��	M�Rj��A�*L

Loss6��<

Adam/Loss/raw\b=

Accuracy/__raw_  �?

Accuracy��?\6ʻZ       o��	��Rj��A�*L

LossH� =

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?��"-Z       o��	��Rj��A�*L

Lossڹ =

Adam/Loss/raw �<

Accuracy/__raw_  �?

Accuracy��?̇IZ       o��	HSj��A�*L

Loss�N�<

Adam/Loss/raw�R�<

Accuracy/__raw_  �?

Accuracy��??�*�Z       o��	�ZSj��A�*L

Loss���<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�=1WZ       o��	�Sj��A�*L

Loss���<

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy��?)�Z       o��	פSj��A�*L

Loss���<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�P�'Z       o��	z�Sj��A�*L

Loss"��<

Adam/Loss/raw/0=

Accuracy/__raw_  �?

Accuracy��?>ŊZ       o��	_�Sj��A�*L

LossPb=

Adam/Loss/raw�t/=

Accuracy/__raw_  �?

Accuracy��?��ғZ       o��	�Tj��A�*L

Loss-�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�d�Z       o��	�*Tj��A�*L

Loss0W=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�\�Z       o��	=KTj��A�*L

LossuK=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?<�XZ       o��	nkTj��A�*L

Lossp�=

Adam/Loss/rawSW�<

Accuracy/__raw_  �?

Accuracy��?$|4lZ       o��	�Tj��A�*L

LossR��<

Adam/Loss/rawL��<

Accuracy/__raw_  �?

Accuracy��?V��KZ       o��	q�Tj��A�*L

LossQ��<

Adam/Loss/raw;}�<

Accuracy/__raw_  �?

Accuracy��?a_��Z       o��	[�Tj��A�*L

Lossh*�<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?a���Z       o��	�Uj��A�*L

Loss}��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?]��Z       o��	 9Uj��A�*L

Loss9��<

Adam/Loss/raw�t=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	p[Uj��A�*L

Loss_��<

Adam/Loss/rawS�=

Accuracy/__raw_  �?

Accuracy��?f�цZ       o��	͔Uj��A�*L

Loss���<

Adam/Loss/raw
��<

Accuracy/__raw_  �?

Accuracy��?,�OZ       o��	��Uj��A�*L

Loss���<

Adam/Loss/raw I
=

Accuracy/__raw_  �?

Accuracy��?����Z       o��	��Uj��A�*L

Loss�"�<

Adam/Loss/rawEP =

Accuracy/__raw_  �?

Accuracy��?tRWmZ       o��	�Uj��A�*L

Loss�b�<

Adam/Loss/raw�R=

Accuracy/__raw_  �?

Accuracy��?���BZ       o��	:Vj��A�*L

Loss~=

Adam/Loss/raww�=

Accuracy/__raw_  �?

Accuracy��?iX�Z       o��	�cVj��A�*L

Loss�~=

Adam/Loss/raw�j�<

Accuracy/__raw_  �?

Accuracy��?Q���Z       o��	9�Vj��A�*L

Loss�=

Adam/Loss/raw8�<

Accuracy/__raw_  �?

Accuracy��?rВZ       o��	��Vj��A�*L

Loss�"=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?4��Z       o��	%Wj��A�*L

Loss$�<

Adam/Loss/raw!K=

Accuracy/__raw_  �?

Accuracy��?&�ctZ       o��	�$Wj��A�*L

Loss#> =

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�O�Z       o��	cEWj��A�*L

Loss2� =

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�a��Z       o��	jmWj��A�*L

Loss8��<

Adam/Loss/raw}=

Accuracy/__raw_  �?

Accuracy��?�#I�Z       o��	��Wj��A�*L

Loss�	 =

Adam/Loss/rawЈ=

Accuracy/__raw_  �?

Accuracy��?5#gZ       o��	կWj��A�*L

Loss� =

Adam/Loss/raw�}�<

Accuracy/__raw_  �?

Accuracy��?t��Z       o��	�Wj��A�*L

Lossd�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�車Z       o��	�Wj��A�*L

LossC�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?T�ךZ       o��	�)Xj��A�*L

Loss��<

Adam/Loss/raw\\�<

Accuracy/__raw_  �?

Accuracy��?
5�Z       o��	�VXj��A�*L

Loss���<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�O�Z       o��	,�Xj��A�*L

Loss���<

Adam/Loss/rawQr=

Accuracy/__raw_  �?

Accuracy��?e��Z       o��	��Xj��A�*L

Loss��<

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?�|ZZ       o��	�Xj��A�*L

Loss]@�<

Adam/Loss/rawCɻ<

Accuracy/__raw_  �?

Accuracy��?&q��Z       o��	�Xj��A�*L

Loss�g�<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?��;Z       o��	� Yj��A�*L

Loss��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?"��Z       o��	_BYj��A�*L

Loss?i�<

Adam/Loss/rawCP�<

Accuracy/__raw_  �?

Accuracy��?)�ևZ       o��	5`Yj��A�*L

Loss&��<

Adam/Loss/raw˯�<

Accuracy/__raw_  �?

Accuracy��?~�ӳZ       o��	��Yj��A�*L

Loss�c�<

Adam/Loss/rawmR=

Accuracy/__raw_  �?

Accuracy��?S!�Z       o��	��Yj��A�*L

LossQ��<

Adam/Loss/raw�#A

Accuracy/__raw_   >

Accuracy��?d=�Z       o��	Zj��A�*L

Loss"fe?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��i?0��<Z       o��	�-Zj��A�*L

Loss8>O?

Adam/Loss/raw�>=

Accuracy/__raw_  �?

Accuracy�k?8��Z       o��	�OZj��A�*L

Loss��;?

Adam/Loss/raws[<=

Accuracy/__raw_  �?

Accuracy �m?l�/2Z       o��	�oZj��A�*L

Loss*?

Adam/Loss/raw#}�<

Accuracy/__raw_  �?

Accuracy��o?[�dAZ       o��	P�Zj��A�*L

Loss!�?

Adam/Loss/raw���@

Accuracy/__raw_  �>

Accuracy�Mq?|]F�Z       o��	W�Zj��A�*L

Loss ١?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��b?7�g�Z       o��	�Zj��A�*L

Loss2�?

Adam/Loss/raw�\=

Accuracy/__raw_  �?

Accuracy�e?��#�Z       o��	�Zj��A�*L

Loss��?

Adam/Loss/raw*n=

Accuracy/__raw_  �?

Accuracy}Sh?�<w�Z       o��	�[j��A�*L

Loss�`n?

Adam/Loss/raw0�<

Accuracy/__raw_  �?

Accuracy��j?�>�Z       o��	�4[j��A�*L

Loss�AW?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��l?w9�Z       o��	�e[j��A�*L

Loss�oB?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�n?0wu�Z       o��	��[j��A�*L

Loss��/?

Adam/Loss/raw�@'=

Accuracy/__raw_  �?

Accuracy�wp?�?��Z       o��	��[j��A�*L

Loss�g?

Adam/Loss/raw�'=

Accuracy/__raw_  �?

AccuracyTr?�v�Z       o��	��[j��A�*L

LossW�?

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy2ks?0�UkZ       o��	m\j��A�*L

Loss�?

Adam/Loss/raw~��<

Accuracy/__raw_  �?

AccuracyG�t?��hZ       o��	~=\j��A�*L

Loss���>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy&�u?ɣ(^Z       o��	%^\j��A�*L

Loss��>

Adam/Loss/raw�S-=

Accuracy/__raw_  �?

Accuracy	�v?&���Z       o��	A\j��A�*L

Lossh��>

Adam/Loss/raw�,=

Accuracy/__raw_  �?

Accuracyվw?�%e�Z       o��	>�\j��A�*L

LossZS�>

Adam/Loss/raw�p�<

Accuracy/__raw_  �?

Accuracy&�x?4�YgZ       o��	a]j��A�*L

Loss��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyUPy?BHg0Z       o��	u>]j��A�*L

Loss�2�>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��y?�_�Z       o��	�f]j��A�*L

LossG�>

Adam/Loss/raw�+=

Accuracy/__raw_  �?

Accuracy��z?��6�Z       o��	�]j��A�*L

Loss>�u>

Adam/Loss/raw��*=

Accuracy/__raw_  �?

Accuracy2 {?|5SKZ       o��	>�]j��A�*L

Loss\?a>

Adam/Loss/rawb��<

Accuracy/__raw_  �?

Accuracy��{?R,6Z       o��	�]j��A�*L

Loss��M>

Adam/Loss/raw�a=

Accuracy/__raw_  �?

AccuracyG|?��CZ       o��	�^j��A�*L

Loss �<>

Adam/Loss/raw� =

Accuracy/__raw_  �?

AccuracyZr|?���Z       o��	�)^j��A�*L

Loss��->

Adam/Loss/raw5"�<

Accuracy/__raw_  �?

AccuracyQ�|??0tMZ       o��	NJ^j��A�*L

Loss/�>

Adam/Loss/raw5�<

Accuracy/__raw_  �?

Accuracy/}?�2�Z       o��	_|^j��A�*L

Loss1�>

Adam/Loss/raw}Y�<

Accuracy/__raw_  �?

Accuracy�h}?a�v�Z       o��	G�^j��A�*L

Loss�a>

Adam/Loss/raw�G
=

Accuracy/__raw_  �?

Accuracy.�}?�!\�Z       o��	��^j��A�*L

Loss���=

Adam/Loss/raw/=

Accuracy/__raw_  �?

Accuracy��}?�^xZ       o��	��^j��A�*L

Loss���=

Adam/Loss/raw�q<

Accuracy/__raw_  �?

Accuracy�~?ee�!Z       o��	�6_j��A�*L

Loss_n�=

Adam/Loss/raw�p<

Accuracy/__raw_  �?

Accuracy�L~?k
	�Z       o��	�V_j��A�*L

Lossf2�=

Adam/Loss/raw@��<

Accuracy/__raw_  �?

Accuracynx~?g�Z       o��	?w_j��A�*L

Loss�X�=

Adam/Loss/raw*�	=

Accuracy/__raw_  �?

Accuracy��~?&���Z       o��	�_j��A�*L

Loss�3�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��~?5�w Z       o��	|�_j��A�*L

Loss<�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��~?��CZ       o��	��_j��A�*L

Loss��=

Adam/Loss/rawC=

Accuracy/__raw_  �?

Accuracy�~?s(eZ       o��	&3`j��A�*L

Loss_1�=

Adam/Loss/raw�x=

Accuracy/__raw_  �?

Accuracy�?eZ       o��	�]`j��A�*L

Loss�%�=

Adam/Loss/raw�B�<

Accuracy/__raw_  �?

Accuracy�/?��b�Z       o��	}`j��A�*L

Loss�-}=

Adam/Loss/rawwO=

Accuracy/__raw_  �?

Accuracy�D?;*+oZ       o��	�`j��A�*L

Loss"ds=

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyrW?�R��Z       o��	�`j��A�*L

LossK�c=

Adam/Loss/raw�Q�<

Accuracy/__raw_  �?

AccuracyMh?D䖃Z       o��	��`j��A�*L

Loss\�U=

Adam/Loss/rawZ��<

Accuracy/__raw_  �?

Accuracyyw?�رYZ       o��	P�`j��A�*L

Loss�@K=

Adam/Loss/raw$�=

Accuracy/__raw_  �?

Accuracy �?)�FZ       o��	�aj��A�*L

Loss�E=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyj�?��޶Z       o��	�<aj��A�*L

Lossd>=

Adam/Loss/raw%��<

Accuracy/__raw_  �?

Accuracyy�?ב�vZ       o��	�[aj��A�*L

Loss݇5=

Adam/Loss/raw�(�<

Accuracy/__raw_  �?

Accuracym�?g�C�Z       o��	�{aj��A�*L

Loss�-=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyb�?��"Z       o��	�aj��A�*L

Loss.(=

Adam/Loss/raw(j=

Accuracy/__raw_  �?

Accuracyr�?��\�Z       o��	@�aj��A�*L

LossA�%=

Adam/Loss/rawN�=

Accuracy/__raw_  �?

Accuracy��?A9+Z       o��	Rbj��A�*L

LossuH"=

Adam/Loss/raw4V�<

Accuracy/__raw_  �?

Accuracy;�?>��Z       o��	=.bj��A�*L

LossR�=

Adam/Loss/raw�ǩ<

Accuracy/__raw_  �?

Accuracy�?tZ�SZ       o��	�hbj��A�*L

Lossz�=

Adam/Loss/raw<�=

Accuracy/__raw_  �?

Accuracyf�?@ ]�Z       o��	ډbj��A�*L

Loss�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy)�?��VZ       o��	�bj��A�*L

Loss��=

Adam/Loss/raw"��<

Accuracy/__raw_  �?

Accuracyr�?.n�?Z       o��	2�bj��A�*L

LossGm=

Adam/Loss/raw(�=

Accuracy/__raw_  �?

AccuracyM�?�i�pZ       o��	F�bj��A�*L

Loss*�=

Adam/Loss/raw�C=

Accuracy/__raw_  �?

Accuracy��?(�a�Z       o��	^cj��A�*L

Loss�L=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?�	h�Z       o��	�kcj��A�*L

Loss�,=

Adam/Loss/rawZ��<

Accuracy/__raw_  �?

Accuracy��?�'�Z       o��	��cj��A�*L

Loss{
=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy=�?r|�Z       o��	��cj��A�*L

Loss��
=

Adam/Loss/raw)�<

Accuracy/__raw_  �?

Accuracy��?J>}�Z       o��	�cj��A�*L

Loss�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�1q�Z       o��	Adj��A�*L

Losst�<

Adam/Loss/rawB��<

Accuracy/__raw_  �?

Accuracyh�?cߺ@Z       o��	�/dj��A�*L

Loss��<

Adam/Loss/raw��A

Accuracy/__raw_    

Accuracy�?���Z       o��	)Ydj��A�*L

Loss�)�?

Adam/Loss/raw�s=

Accuracy/__raw_  �?

Accuracy�Xf?��x�Z       o��	}xdj��A�*L

Loss��g?

Adam/Loss/rawC�=

Accuracy/__raw_  �?

Accuracy��h?���Z       o��	�dj��A�*L

Loss�YQ?

Adam/Loss/raw]b=

Accuracy/__raw_  �?

Accuracy�8k?��FZ       o��	��dj��A�*L

Loss�O=?

Adam/Loss/raw�/�<

Accuracy/__raw_  �?

Accuracy�Lm?�F�Z       o��	��dj��A�*L

Loss�+?

Adam/Loss/rawF7�<

Accuracy/__raw_  �?

Accuracy]+o?3WSZ       o��	�ej��A�*L

Loss��?

Adam/Loss/rawL"=

Accuracy/__raw_  �?

Accuracy:�p?6z6pZ       o��	gDej��A�*L

LossN?

Adam/Loss/rawә�<

Accuracy/__raw_  �?

Accuracy^r?�B�Z       o��	Rgej��A�*L

Loss�n�>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�s?��+�Z       o��	��ej��A�*L

Loss�f�>

Adam/Loss/raw~8 =

Accuracy/__raw_  �?

Accuracy�t?��Z       o��	�ej��A�*L

LossE�>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�v?�w��Z       o��	��ej��A�*L

Loss�Ѽ>

Adam/Loss/raw�o�<

Accuracy/__raw_  �?

Accuracy8w?�3o�Z       o��	hfj��A�*L

Loss�u�>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy2�w?��cZ       o��	�"fj��A�*L

Loss���>

Adam/Loss/rawq�=

Accuracy/__raw_  �?

AccuracyG�x?�U�IZ       o��	-Xfj��A�*L

Loss_
�>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�zy?��X5Z       o��	�fj��A�*L

LossRi�>

Adam/Loss/raw�	=

Accuracy/__raw_  �?

Accuracy�!z?�{ �Z       o��	�fj��A�*L

LossE^l>

Adam/Loss/rawct�<

Accuracy/__raw_  �?

Accuracy�z?����Z       o��	X�fj��A�*L

Loss�W>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy?{?�vXZ       o��	�gj��A�*L

Loss�zD>

Adam/Loss/rawl&�<

Accuracy/__raw_  �?

Accuracyϸ{?A��Z       o��	�$gj��A�*L

Loss�3>

Adam/Loss/raw"b�<

Accuracy/__raw_  �?

AccuracyT&|?��:Z       o��	�Cgj��A�*L

Loss4X$>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�|?�,vZ       o��	Eegj��A�*L

Loss�>

Adam/Loss/rawr�<

Accuracy/__raw_  �?

Accuracy��|?��|oZ       o��	΅gj��A�*L

LossM�>

Adam/Loss/raw_��<

Accuracy/__raw_  �?

Accuracyr1}?�n�Z       o��	פgj��A�*L

LossSF >

Adam/Loss/rawS��<

Accuracy/__raw_  �?

AccuracyMy}?JU#(Z       o��	H�gj��A�*L

Loss�0�=

Adam/Loss/raw¦=

Accuracy/__raw_  �?

Accuracy��}?�C��Z       o��	~�gj��A�*L

Loss\g�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy-�}?#�=Z       o��	:hj��A�*L

Loss�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�(~?���Z       o��	�<hj��A�*L

Loss�@�=

Adam/Loss/raw%=

Accuracy/__raw_  �?

Accuracy�W~?dw�Z       o��	ohj��A�*L

Loss舱=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy"�~?A9�lZ       o��	�hj��A�*L

Loss���=

Adam/Loss/rawj=

Accuracy/__raw_  �?

AccuracyR�~?2��Z       o��	��hj��A�*L

Loss�=�=

Adam/Loss/raw4��<

Accuracy/__raw_  �?

Accuracy��~?\x�XZ       o��	��hj��A�*L

Loss���=

Adam/Loss/raw%�=

Accuracy/__raw_  �?

Accuracy��~?Ϣ*�Z       o��	9ij��A�*L

Loss�u�=

Adam/Loss/rawh��<

Accuracy/__raw_  �?

Accuracyu?�5��Z       o��	�1ij��A�*L

Loss�Ǆ=

Adam/Loss/raw�Z�<

Accuracy/__raw_  �?

Accuracy�?�"��Z       o��	USij��A�*L

Loss�{=

Adam/Loss/rawb2�<

Accuracy/__raw_  �?

Accuracy5?�NuZ       o��	ܚij��A�*L

Loss�*o=

Adam/Loss/raw6�lA

Accuracy/__raw_    

Accuracy[I?��h�Z       o��	P�ij��A�*L

Loss��?

Adam/Loss/raw��	=

Accuracy/__raw_  �?

Accuracy�e?Yl��Z       o��	�jj��A�*L

Loss�ذ?

Adam/Loss/raw
l=

Accuracy/__raw_  �?

Accuracy�ah?����Z       o��	�,jj��A�*L

Lossr��?

Adam/Loss/raw�F=

Accuracy/__raw_  �?

Accuracyo�j?07�4Z       o��	bKjj��A�*L

Loss.�?

Adam/Loss/rawVZ�<

Accuracy/__raw_  �?

Accuracy��l?��x�Z       o��	�jjj��A�*L

Losss�?

Adam/Loss/raw�&�@

Accuracy/__raw_  �>

AccuracyU�n?I��Z       o��	��jj��A�*L

Loss��?

Adam/Loss/raw	b�<

Accuracy/__raw_  �?

Accuracy�M]? �AZ       o��	ıjj��A�*L

Loss��?

Adam/Loss/raw�ZD=

Accuracy/__raw_  �?

Accuracy�`?`�Z       o��	�jj��A�*L

Loss��?

Adam/Loss/raw��E=

Accuracy/__raw_  �?

Accuracy��c?&���Z       o��	��jj��A�*L

Loss�ӎ?

Adam/Loss/rawG�=

Accuracy/__raw_  �?

Accuracy�f?��9LZ       o��	gkj��A�*L

Loss��?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracyt<i?�� �Z       o��	&4kj��A�*L

Loss��h?

Adam/Loss/rawT=

Accuracy/__raw_  �?

Accuracy5�k?|w�Z       o��	�lkj��A�*L

Loss^�R?

Adam/Loss/raw�{/=

Accuracy/__raw_  �?

Accuracy��m?ЍДZ       o��	%�kj��A�*L

LossN�>?

Adam/Loss/raw�/=

Accuracy/__raw_  �?

Accuracy�go?�lZ       o��	0�kj��A�*L

Loss�,?

Adam/Loss/raw�Z�<

Accuracy/__raw_  �?

Accuracy�q?�#��Z       o��	��kj��A�*L

Loss3,?

Adam/Loss/raw��hA

Accuracy/__raw_    

Accuracy�r?����Z       o��	�lj��A�*L

Loss�V @

Adam/Loss/rawb>�<

Accuracy/__raw_  �?

AccuracyfMZ?W)��Z       o��	7lj��A�*L

Lossqh�?

Adam/Loss/raw%�)=

Accuracy/__raw_  �?

Accuracyu^?**ޔZ       o��	�Wlj��A�*L

Loss��?

Adam/Loss/raw�*=

Accuracy/__raw_  �?

Accuracywa?�D�kZ       o��	?wlj��A�*L

Loss<s�?

Adam/Loss/raw`:
=

Accuracy/__raw_  �?

Accuracy��d?d*#Z       o��	p�lj��A�*L

Loss~	�?

Adam/Loss/raw6�=

Accuracy/__raw_  �?

Accuracy=Dg?G#��Z       o��	��lj��A�*L

Loss~�?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracyj�i?��=Z       o��	�mj��A�*L

Loss���?

Adam/Loss/raw��%=

Accuracy/__raw_  �?

AccuracyF�k?�r�Z       o��	�>mj��A�*L

Loss�ez?

Adam/Loss/raw'9&=

Accuracy/__raw_  �?

Accuracy%�m?��
Z       o��	^mj��A�*L

Loss�eb?

Adam/Loss/raw�/=

Accuracy/__raw_  �?

Accuracy��o?t�Z       o��	�~mj��A�*L

Loss��L?

Adam/Loss/raw��3=

Accuracy/__raw_  �?

Accuracy(eq?��Z       o��	
�mj��A�*L

Loss�=9?

Adam/Loss/raw*:=

Accuracy/__raw_  �?

Accuracy
�r?3d�Z       o��	L�mj��A�*L

Loss��'?

Adam/Loss/raw+^ =

Accuracy/__raw_  �?

Accuracy�+t?A���Z       o��	!�mj��A�*L

Loss��?

Adam/Loss/raw�� =

Accuracy/__raw_  �?

AccuracybZu?�c MZ       o��	/nj��A�*L

Loss9O	?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�jv?� �Z       o��	:8nj��A�*L

Loss���>

Adam/Loss/rawpY,=

Accuracy/__raw_  �?

Accuracy@`w?$i��Z       o��	�[nj��A�*L

Loss�1�>

Adam/Loss/raw�Z=

Accuracy/__raw_  �?

Accuracy=x?K�Z       o��	�nj��A�*L

Loss���>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�y?��/�Z       o��	ϼnj��A�*L

Loss���>

Adam/Loss/raw�3=

Accuracy/__raw_  �?

Accuracy��y?���Z       o��	m�nj��A�*L

Loss9�>

Adam/Loss/raw�*=

Accuracy/__raw_  �?

AccuracyWz?]���Z       o��	�oj��A�*L

Loss\U�>

Adam/Loss/raw3��<

Accuracy/__raw_  �?

AccuracyY�z?�*YZ       o��	BDoj��A�*L

Loss�Z�>

Adam/Loss/raw?��<

Accuracy/__raw_  �?

Accuracy�j{?O1�Z       o��	
goj��A�*L

Loss���>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�{?��+RZ       o��	&�oj��A�*L

Loss�[k>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�I|? �j�Z       o��	n�oj��A�*L

Loss�}W>

Adam/Loss/raw�-1=

Accuracy/__raw_  �?

Accuracy��|?�*�KZ       o��	H�oj��A�*L

Loss._F>

Adam/Loss/raw�_=

Accuracy/__raw_  �?

Accuracy5�|?׊F1Z       o��	*�oj��A�*L

Lossx6>

Adam/Loss/rawЎ'=

Accuracy/__raw_  �?

Accuracy0K}?�pjVZ       o��	Opj��A�*L

Loss7i(>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyx�}?���Z       o��	�vpj��A�*L

Loss�'>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��}?s� �Z       o��	��pj��A�*L

Loss�O>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�~?���@Z       o��	M�pj��A�*L

Loss%�>

Adam/Loss/rawH !=

Accuracy/__raw_  �?

Accuracyr9~?h�J�Z       o��	4�pj��A�*L

Loss��=

Adam/Loss/raw\�=

Accuracy/__raw_  �?

Accuracy�f~?�b�HZ       o��	��pj��A�*L

Loss��=

Adam/Loss/raw��2=

Accuracy/__raw_  �?

AccuracyЏ~?�I��Z       o��	�'qj��A�*L

Loss�i�=

Adam/Loss/raw�2=

Accuracy/__raw_  �?

Accuracy��~?1�Z       o��	�Fqj��A�*L

Loss��=

Adam/Loss/raws�=

Accuracy/__raw_  �?

Accuracy��~?���vZ       o��	fqj��A�*L

Loss\��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��~?Z)�Z       o��	Ӌqj��A�*L

Loss8��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyo?XQ�Z       o��	~�qj��A�*L

Losse��=

Adam/Loss/rawG�*=

Accuracy/__raw_  �?

Accuracy�&?�x��Z       o��	_�qj��A�*L

Loss8��=

Adam/Loss/raw�n)=

Accuracy/__raw_  �?

AccuracyU<?�AZ       o��	�rj��A�*L

Loss�m�=

Adam/Loss/raw6N=

Accuracy/__raw_  �?

Accuracy�O?��(�Z       o��	`<rj��A�*L

LossLs�=

Adam/Loss/rawC7=

Accuracy/__raw_  �?

Accuracy�a?��Z       o��	�vrj��A�*L

Loss�*�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy[q?�}�Z       o��	W�rj��A�*L

Loss��=

Adam/Loss/rawQ:M=

Accuracy/__raw_  �?

Accuracy�?��Z       o��	��rj��A�*L

Loss�z=

Adam/Loss/raw��K=

Accuracy/__raw_  �?

Accuracyv�?�$�AZ       o��	��rj��A�*L

Loss>@v=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy�?8���Z       o��	�rj��A�*L

Loss �j=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyj�?i���Z       o��		sj��A�*L

Loss�8b=

Adam/Loss/rawİ=

Accuracy/__raw_  �?

Accuracyƫ?��ƁZ       o��	�lsj��A�*L

Loss��Z=

Adam/Loss/rawK��<

Accuracy/__raw_  �?

Accuracy2�?;r�Z       o��	��sj��A�*L

Loss. P=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyǻ?�cPZ       o��	��sj��A�*L

Loss�F=

Adam/Loss/raw�$�<

Accuracy/__raw_  �?

Accuracy��?��W�Z       o��	��sj��A�*L

Loss��>=

Adam/Loss/raw�D"=

Accuracy/__raw_  �?

Accuracy��?�`�YZ       o��	��sj��A�*L

Loss��;=

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyE�?`8^Z       o��	Mtj��A�*L

Loss��7=

Adam/Loss/raw�v
=

Accuracy/__raw_  �?

Accuracy>�?J:n^Z       o��	8tj��A�*L

Loss�J3=

Adam/Loss/rawY�	=

Accuracy/__raw_  �?

Accuracy��?�߷dZ       o��	KYtj��A�*L

LossT&/=

Adam/Loss/rawy��<

Accuracy/__raw_  �?

Accuracy��?�t�Z       o��	�xtj��A�*L

Loss+�)=

Adam/Loss/raw9�=

Accuracy/__raw_  �?

Accuracy_�?��S�Z       o��	M�tj��A�*L

Loss��'=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?Zm!Z       o��	m�tj��A�*L

LosstD#=

Adam/Loss/raw�ܣ<

Accuracy/__raw_  �?

Accuracy��?Y�uZ       o��	��tj��A�*L

Loss<"=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy7�?c8��Z       o��	�)uj��A�*L

Loss�=

Adam/Loss/raw�u)=

Accuracy/__raw_  �?

Accuracy��?��!AZ       o��	�Uuj��A�*L

Loss��=

Adam/Loss/raw�VA

Accuracy/__raw_    

Accuracy��?!��Z       o��	�uj��A�*L

Loss���?

Adam/Loss/raw�L=

Accuracy/__raw_  �?

AccuracyUf?��Z       o��	��uj��A�*L

Loss�Ӟ?

Adam/Loss/rawݣ�<

Accuracy/__raw_  �?

Accuracy'�h?�sSZ       o��	��uj��A�*L

Loss�P�?

Adam/Loss/raw$M�<

Accuracy/__raw_  �?

Accuracy�5k?QG)CZ       o��	vj��A�*L

Loss�[�?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy�Im?�xp�Z       o��	DPvj��A�*L

Loss]�i?

Adam/Loss/rawa�0A

Accuracy/__raw_    

Accuracy�(o?�ޖZ       o��	�vj��A�*L

Loss`��?

Adam/Loss/raw�+�<

Accuracy/__raw_  �?

AccuracyT>W?1��Z       o��	j�vj��A�*L

Loss4X�?

Adam/Loss/raw`��<

Accuracy/__raw_  �?

Accuracy�Q[?��%Z       o��	��vj��A�*L

Lossp�?

Adam/Loss/rawH��<

Accuracy/__raw_  �?

Accuracy��^?�yJ�Z       o��	�$wj��A�*L

LossȺ�?

Adam/Loss/raw��X=

Accuracy/__raw_  �?

Accuracy�Ib?����Z       o��	�Ewj��A�*L

Loss�U�?

Adam/Loss/rawj�=

Accuracy/__raw_  �?

AccuracyxBe?���Z       o��	wiwj��A�*L

Loss�s�?

Adam/Loss/raw�.=

Accuracy/__raw_  �?

Accuracy�g?�1^Z       o��	��wj��A�*L

LossS%�?

Adam/Loss/raw�][=

Accuracy/__raw_  �?

AccuracyWj?�`Z       o��	��wj��A�*L

Loss�q?

Adam/Loss/raw��]=

Accuracy/__raw_  �?

Accuracy��l?=2�`Z       o��	J�wj��A�*L

LossJQZ?

Adam/Loss/raw�I'=

Accuracy/__raw_  �?

Accuracy�tn?B�c�Z       o��	��wj��A�*L

Loss�E?

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy�5p?$i�Z       o��	�xj��A�*L

Lossb�2?

Adam/Loss/raw*�=

Accuracy/__raw_  �?

Accuracy�q?e���Z       o��	Zxj��A�*L

Loss��!?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�5s?(��Z       o��	��xj��A�*L

Loss*?

Adam/Loss/raws;�<

Accuracy/__raw_  �?

Accuracy:}t?��"DZ       o��	��xj��A�*L

Loss�/?

Adam/Loss/rawȬ+=

Accuracy/__raw_  �?

Accuracy�u?�Q�Z       o��	��xj��A�*L

Loss��>

Adam/Loss/raw�*A

Accuracy/__raw_   >

Accuracy�v?���SZ       o��	�	yj��A�*L

LossZ�?

Adam/Loss/raw
�5=

Accuracy/__raw_  �?

Accuracyg5a?�g�Z       o��	�,yj��A�*L

Loss"/�?

Adam/Loss/raw�y�<

Accuracy/__raw_  �?

Accuracy�Id?̄�Z       o��	�Myj��A�*L

Loss�U�?

Adam/Loss/raw!R�<

Accuracy/__raw_  �?

Accuracyg?�bK2Z       o��	��yj��A�*L

LossP�g?

Adam/Loss/raw[a=

Accuracy/__raw_  �?

Accuracy��i?v���Z       o��	�yj��A�*L

Loss|Q?

Adam/Loss/raw�,=

Accuracy/__raw_  �?

Accuracy;�k?�Y�Z       o��	�yj��A�*L

Loss��=?

Adam/Loss/rawo=

Accuracy/__raw_  �?

Accuracyh�m?�"�Z       o��	zj��A�*L

Lossm�+?

Adam/Loss/raw|�Q=

Accuracy/__raw_  �?

Accuracyޢo?��#gZ       o��	�4zj��A�*L

Loss��?

Adam/Loss/raw�Q=

Accuracy/__raw_  �?

Accuracy�Eq?�f�Z       o��	�Tzj��A�*L

Loss%w?

Adam/Loss/raw!�$=

Accuracy/__raw_  �?

Accuracyξr?��Z       o��	vzj��A�*L

Loss�Y ?

Adam/Loss/rawd�&=

Accuracy/__raw_  �?

Accuracy t?�a�Z       o��	�zj��A�*L

Loss��>

Adam/Loss/rawZ2L=

Accuracy/__raw_  �?

Accuracy�Cu?n�NRZ       o��	��zj��A�*L

Loss�Z�>

Adam/Loss/rawM��<

Accuracy/__raw_  �?

Accuracy\Vv?�*6Z       o��	��zj��A�*L

Lossװ�>

Adam/Loss/raw�W�<

Accuracy/__raw_  �?

Accuracy�Mw?��c�Z       o��	{j��A�*L

Loss���>

Adam/Loss/raw�$=

Accuracy/__raw_  �?

AccuracyZ,x?	��JZ       o��	�B{j��A�*L

Losses�>

Adam/Loss/rawh�=

Accuracy/__raw_  �?

Accuracy��x?<ݓZ       o��	u{j��A�*L

Lossvp�>

Adam/Loss/rawW^!=

Accuracy/__raw_  �?

Accuracy�y?�w͟Z       o��	��{j��A�*L

Loss��>

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyWKz?](gZ       o��	%�{j��A�*L

Loss$�r>

Adam/Loss/rawPm=

Accuracy/__raw_  �?

Accuracyh�z?\�RDZ       o��	�|j��A�*L

LossB�]>

Adam/Loss/raw��#=

Accuracy/__raw_  �?

Accuracy�`{?���<Z       o��	�#|j��A�*L

Loss��K>

Adam/Loss/rawS:=

Accuracy/__raw_  �?

Accuracy.�{?��m!Z       o��	JD|j��A�*L

Loss�'<>

Adam/Loss/raw�Q=

Accuracy/__raw_  �?

Accuracy�A|?3�hwZ       o��	f|j��A�*L

Loss8->

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�|?��UIZ       o��	؅|j��A�*L

Loss?�>

Adam/Loss/raw߀�<

Accuracy/__raw_  �?

Accuracy��|?���Z       o��	�|j��A�*L

LossC>

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy_E}?�i�~Z       o��	��|j��A�*L

Lossz�>

Adam/Loss/raw�g=

Accuracy/__raw_  �?

Accuracy<�}?�MizZ       o��	�0}j��A�*L

Loss���=

Adam/Loss/rawf�G=

Accuracy/__raw_  �?

Accuracy�}?p�`<Z       o��	�Y}j��A�*L

LossȲ�=

Adam/Loss/raw�.=

Accuracy/__raw_  �?

Accuracy�~?�s��Z       o��	}j��A�*L

Loss��=

Adam/Loss/raw}�-=

Accuracy/__raw_  �?

Accuracy�5~?��9�Z       o��	�}j��A�*L

Loss�<�=

Adam/Loss/raw`)=

Accuracy/__raw_  �?

Accuracywc~?F��Z       o��	��}j��A�*L

Loss���=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��~?��$�Z       o��	��}j��A�*L

Loss�g�=

Adam/Loss/raw�!=

Accuracy/__raw_  �?

Accuracyٱ~?��h&Z       o��	�'~j��A�*L

Loss >�=

Adam/Loss/rawC�G=

Accuracy/__raw_  �?

AccuracyC�~?���Z       o��	�S~j��A�*L

Loss��=

Adam/Loss/raw)E=

Accuracy/__raw_  �?

AccuracyV�~?��w�Z       o��	��~j��A�*L

Loss^\�=

Adam/Loss/rawJ,=

Accuracy/__raw_  �?

Accuracyg?7W�Z       o��	"�~j��A�*L

Loss%�=

Adam/Loss/raw�(=

Accuracy/__raw_  �?

Accuracy�$?�r��Z       o��	��~j��A�*L

LossUU�=

Adam/Loss/rawF�3=

Accuracy/__raw_  �?

Accuracy�:?���Z       o��	�+j��A�*L

LossC��=

Adam/Loss/raw��]=

Accuracy/__raw_  �?

AccuracykN?[xNZ       o��	�Lj��A�*L

LossD�=

Adam/Loss/rawY[=

Accuracy/__raw_  �?

Accuracy-`?f0��Z       o��	�lj��A�*L

Loss괄=

Adam/Loss/raw�!7=

Accuracy/__raw_  �?

Accuracy)p?|�c;Z       o��	.�j��A�*L

Loss���=

Adam/Loss/rawD��<

Accuracy/__raw_  �?

Accuracy�~?�V�Z       o��	l�j��A�*L

Loss1q=

Adam/Loss/raw֡==

Accuracy/__raw_  �?

Accuracy}�?�g�;Z       o��	t�j��A�*L

Loss'	l=

Adam/Loss/raw%�3=

Accuracy/__raw_  �?

Accuracy$�?I}�,Z       o��	��j��A�*L

Loss�lf=

Adam/Loss/raw��2=

Accuracy/__raw_  �?

Accuracy��?Q�Z       o��	Q�j��A�*L

Loss�Aa=

Adam/Loss/raw�
E=

Accuracy/__raw_  �?

Accuracy�?��`Z       o��	�t�j��A�*L

Loss�o^=

Adam/Loss/raw�ӝ<

Accuracy/__raw_  �?

Accuracy��?B���Z       o��	���j��A�*L

LossrP=

Adam/Loss/raw�$ =

Accuracy/__raw_  �?

Accuracy3�?��1FZ       o��	-��j��A�*L

Loss)JK=

Adam/Loss/rawJ=

Accuracy/__raw_  �?

Accuracy�?��Z       o��	kӀj��A�*L

LossY}E=

Adam/Loss/raw�;=

Accuracy/__raw_  �?

AccuracyE�?%_P!Z       o��	�j��A�*L

Loss�)@=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?3� Z       o��	��j��A�*L

Loss`<=

Adam/Loss/raw�F=

Accuracy/__raw_  �?

Accuracy��?�(NZ       o��	�1�j��A�*L

Loss�9=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy`�?�-jZ       o��	R�j��A�*L

Loss��2=

Adam/Loss/raw(*=

Accuracy/__raw_  �?

Accuracyp�?�b<FZ       o��	q�j��A�*L

Loss1�/=

Adam/Loss/raw�O=

Accuracy/__raw_  �?

Accuracy�?N�Z       o��	N��j��A�*L

Loss�,=

Adam/Loss/rawn�<=

Accuracy/__raw_  �?

Accuracyb�?_x�Z       o��	[сj��A�*L

Lossc�.=

Adam/Loss/raw`�=

Accuracy/__raw_  �?

AccuracyX�?�'�bZ       o��	���j��A�*L

Loss�,=

Adam/Loss/raw��	=

Accuracy/__raw_  �?

Accuracy�?\���Z       o��	�(�j��A�*L

Loss��(=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyh�?ڳl�Z       o��	Ig�j��A�*L

Loss/�$=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?j\�PZ       o��	���j��A�*L

Loss*� =

Adam/Loss/raw�(=

Accuracy/__raw_  �?

Accuracy��?<�aVZ       o��	���j��A�*L

Loss$�!=

Adam/Loss/raw�=

Accuracy/__raw_  �?

AccuracyC�?~�W�Z       o��	qǂj��A�*L

Loss�� =

Adam/Loss/raw
~=

Accuracy/__raw_  �?

Accuracy��?�-	�Z       o��	��j��A�*L

Loss5=

Adam/Loss/rawȾ�<

Accuracy/__raw_  �?

AccuracyA�?2���Z       o��	��j��A�*L

Loss�'=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�|T�Z       o��	C�j��A�*L

LossW�=

Adam/Loss/rawS�D=

Accuracy/__raw_  �?

Accuracy��?�˃�Z       o��	���j��A�*L

Loss�2=

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy��?^��Z       o��	���j��A�*L

Loss�=

Adam/Loss/raw@V>=

Accuracy/__raw_  �?

Accuracy��?f�&�Z       o��	�Ӄj��A�*L

LossX=

Adam/Loss/raw]�=

Accuracy/__raw_  �?

Accuracyy�?T��<Z       o��	��j��A�*L

Loss)�=

Adam/Loss/rawi*=

Accuracy/__raw_  �?

Accuracy:�?p��gZ       o��	��j��A�*L

Loss�=

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy��?x�EZ       o��	%>�j��A�*L

Loss�=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?+�oZ       o��	 a�j��A�*L

Loss�{=

Adam/Loss/rawbz=

Accuracy/__raw_  �?

Accuracy�?�:�Z       o��	�j��A�*L

Lossc�=

Adam/Loss/raw9�,=

Accuracy/__raw_  �?

Accuracy��?'��Z       o��	�j��A�*L

Lossx=

Adam/Loss/rawp,=

Accuracy/__raw_  �?

Accuracy �?��^Z       o��	}˄j��A�*L

Loss�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyf�?i��Z       o��	���j��A�*L

Loss��=

Adam/Loss/rawlw=

Accuracy/__raw_  �?

Accuracy��?�-�	Z       o��	�)�j��A�*L

Loss��=

Adam/Loss/raw�@=

Accuracy/__raw_  �?

Accuracy�?K�UZ       o��	;O�j��A�*L

Loss��=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy`�?N�dZ       o��	r�j��A�*L

Loss�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�h3�Z       o��	���j��A�*L

Loss4�	=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?i��TZ       o��	˅j��A�*L

Loss�J
=

Adam/Loss/rawbY+=

Accuracy/__raw_  �?

Accuracy�?�J�wZ       o��	�j��A�*L

Loss�=

Adam/Loss/raw�_=

Accuracy/__raw_  �?

AccuracyG�?Ù�Z       o��	��j��A�*L

Loss��=

Adam/Loss/raw� =

Accuracy/__raw_  �?

Accuracys�?�%�Z       o��	.�j��A�*L

Loss@�=

Adam/Loss/rawB
 =

Accuracy/__raw_  �?

Accuracy��?�s�Z       o��	�c�j��A�*L

Lossk
=

Adam/Loss/raw�V=

Accuracy/__raw_  �?

Accuracy��?�{�Z       o��	���j��A�*L

Loss	�	=

Adam/Loss/raw�'=

Accuracy/__raw_  �?

Accuracy��?�4�Z       o��	نj��A�*L

LossV�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�_GRZ       o��	H��j��A�*L

Loss�0=

Adam/Loss/raw�4C=

Accuracy/__raw_  �?

Accuracy�?}ol�Z       o��	��j��A�*L

Lossv=

Adam/Loss/rawIoB=

Accuracy/__raw_  �?

Accuracy-�?�H�Z       o��	:�j��A�*L

LossrS=

Adam/Loss/raw��;=

Accuracy/__raw_  �?

AccuracyB�?T+�Z       o��	W[�j��A�*L

Loss�\=

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyU�?E)��Z       o��	�z�j��A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyf�?W�Z       o��	���j��A�*L

LossE�=

Adam/Loss/raw\�G=

Accuracy/__raw_  �?

Accuracyu�?"��Z       o��	蹇j��A�*L

Lossa�=

Adam/Loss/raw��F=

Accuracy/__raw_  �?

Accuracy��?�߮Z       o��	�ׇj��A�*L

Loss��=

Adam/Loss/raw�N%=

Accuracy/__raw_  �?

Accuracy��?I�VZ       o��	���j��A�*L

Loss>�=

Adam/Loss/raw`\�<

Accuracy/__raw_  �?

Accuracy��?�Bl�Z       o��	�3�j��A�*L

Loss��=

Adam/Loss/raw*�=

Accuracy/__raw_  �?

Accuracy��?�H��Z       o��	�`�j��A�*L

Lossax=

Adam/Loss/raw�u=

Accuracy/__raw_  �?

Accuracy��?�Z       o��	^��j��A�*L

LossR+=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?!��Z       o��	YĈj��A�*L

Lossv�=

Adam/Loss/raw�1=

Accuracy/__raw_  �?

Accuracy��?W3h)Z       o��	�j��A�*L

LossP@=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?_ZX�Z       o��	_�j��A�*L

Loss"'=

Adam/Loss/raw}\=

Accuracy/__raw_  �?

Accuracy��?�َZ       o��	�&�j��A�*L

LossEy=

Adam/Loss/raw�w�<

Accuracy/__raw_  �?

Accuracy��?�I"Z       o��	8J�j��A�*L

Loss��=

Adam/Loss/rawg�<

Accuracy/__raw_  �?

Accuracy��?�%��Z       o��	�h�j��A�*L

Loss7�=

Adam/Loss/raw�R'=

Accuracy/__raw_  �?

Accuracy��?Z��(Z       o��	-��j��A�*L

Loss��
=

Adam/Loss/raw�C�<

Accuracy/__raw_  �?

Accuracy��?�#O�Z       o��	��j��A�*L

Loss��	=

Adam/Loss/raw=.�<

Accuracy/__raw_  �?

Accuracy��?��4jZ       o��	��j��A�*L

Lossf=

Adam/Loss/raw��9=

Accuracy/__raw_  �?

Accuracy��?aZ�Z       o��	�=�j��A�*L

LossDs=

Adam/Loss/raw�T9=

Accuracy/__raw_  �?

Accuracy��?���aZ       o��	(`�j��A�*L

Loss1�=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?Ѹ�CZ       o��	�j��A�*L

Loss�W=

Adam/Loss/raw�8�<

Accuracy/__raw_  �?

Accuracy��?dˊ{Z       o��	뮊j��A�*L

LossW�=

Adam/Loss/raw& =

Accuracy/__raw_  �?

Accuracy��?ldRZ       o��	�ӊj��A�*L

Loss�z=

Adam/Loss/raw�O5=

Accuracy/__raw_  �?

Accuracy��?���\Z       o��	
�j��A�*L

Loss�v=

Adam/Loss/raw��4=

Accuracy/__raw_  �?

Accuracy��?�'Z       o��	a�j��A�*L

Loss��=

Adam/Loss/raw�$=

Accuracy/__raw_  �?

Accuracy��?1�0Z       o��	[D�j��A�*L

LossT/=

Adam/Loss/raw�t�<

Accuracy/__raw_  �?

Accuracy��?n��Z       o��	�y�j��A�*L

Loss=�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�y�Z       o��	r��j��A�*L

Loss��=

Adam/Loss/raw N=

Accuracy/__raw_  �?

Accuracy��?Y�)IZ       o��	�͋j��A�*L

Lossm�=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?�X�^Z       o��	�	�j��A�*L

LossD�=

Adam/Loss/rawH��<

Accuracy/__raw_  �?

Accuracy��?T�L�Z       o��	s*�j��A�*L

LossA�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	oI�j��A�*L

Lossa�=

Adam/Loss/raw 4�<

Accuracy/__raw_  �?

Accuracy��?�P�DZ       o��	�j�j��A�*L

Loss$�
=

Adam/Loss/raw��f<

Accuracy/__raw_  �?

Accuracy��?Ӡ��Z       o��	n��j��A�*L

Lossl~=

Adam/Loss/raw��e<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��j��A�*L

LossLc�<

Adam/Loss/raw�I=

Accuracy/__raw_  �?

Accuracy��?��^LZ       o��	c�j��A�*L

Loss��<

Adam/Loss/raw>T=

Accuracy/__raw_  �?

Accuracy��?ˢ��Z       o��	�2�j��A�*L

Loss���<

Adam/Loss/raw�S�<

Accuracy/__raw_  �?

Accuracy��?'G�Z       o��	�R�j��A�*L

LossQ��<

Adam/Loss/rawx��<

Accuracy/__raw_  �?

Accuracy��?l��Z       o��	t�j��A�*L

Loss�2�<

Adam/Loss/raw�L�<

Accuracy/__raw_  �?

Accuracy��?6	��Z       o��	̓�j��A�*L

Loss���<

Adam/Loss/raw=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	���j��A�*L

Loss��<

Adam/Loss/raw%��<

Accuracy/__raw_  �?

Accuracy��?��Z       o��	�֍j��A�*L

Loss$,�<

Adam/Loss/raw� =

Accuracy/__raw_  �?

Accuracy��?Ce�Z       o��	��j��A�*L

LossY��<

Adam/Loss/raw{��<

Accuracy/__raw_  �?

Accuracy��?��rZ       o��	�j��A�*L

Loss���<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�!�Z       o��	BD�j��A�*L

Loss�C�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?7![�Z       o��	Hn�j��A�*L

Loss�r�<

Adam/Loss/rawQv=

Accuracy/__raw_  �?

Accuracy��?[5�Z       o��	���j��A�*L

LossSe�<

Adam/Loss/raw�Z�<

Accuracy/__raw_  �?

Accuracy��?�LR�Z       o��	�Ўj��A�*L

Loss���<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?$a�Z       o��	!�j��A�*L

Lossp��<

Adam/Loss/rawK��<

Accuracy/__raw_  �?

Accuracy��?R;Z       o��	�G�j��A�*L

LossS��<

Adam/Loss/raw�i =

Accuracy/__raw_  �?

Accuracy��?OܾfZ       o��	'h�j��A�*L

Loss�<�<

Adam/Loss/rawCz=

Accuracy/__raw_  �?

Accuracy��?�B0Z       o��	���j��A�*L

Loss�5�<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?F�1�Z       o��	i��j��A�*L

LossOG�<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��??�JZ       o��	"Ǐj��A�*L

Loss�t =

Adam/Loss/raw,K=

Accuracy/__raw_  �?

Accuracy��?�x	�Z       o��	Q�j��A�*L

Loss��=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?/j�AZ       o��	8g�j��A�*L

LossuY=

Adam/Loss/rawj/�<

Accuracy/__raw_  �?

Accuracy��?ߥ��Z       o��	嚐j��A�*L

Loss�X�<

Adam/Loss/raw<��<

Accuracy/__raw_  �?

Accuracy��?wy�qZ       o��	�ʐj��A�*L

Loss~�<

Adam/Loss/raww�=

Accuracy/__raw_  �?

Accuracy��?b�:Z       o��	���j��A�*L

Loss���<

Adam/Loss/raw�W=

Accuracy/__raw_  �?

Accuracy��?G�+�Z       o��	�3�j��A�*L

Loss?I =

Adam/Loss/rawd�=

Accuracy/__raw_  �?

Accuracy��?nY>Z       o��	hZ�j��A�*L

Loss�;=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?f���Z       o��	^��j��A�*L

Loss�i�<

Adam/Loss/rawH
=

Accuracy/__raw_  �?

Accuracy��?�R$Z       o��	;ȑj��A�*L

LossN�<

Adam/Loss/raws[�<

Accuracy/__raw_  �?

Accuracy��?:���Z       o��	��j��A�*L

Loss��<

Adam/Loss/rawe��<

Accuracy/__raw_  �?

Accuracy��?i���Z       o��	�B�j��A�*L

Loss�[�<

Adam/Loss/rawk(�<

Accuracy/__raw_  �?

Accuracy��?!��2Z       o��	:s�j��A�*L

Loss�V�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�\ozZ       o��	嵒j��A�*L

Loss�{�<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?��LZ       o��	�ߒj��A�*L

Loss\�<

Adam/Loss/rawx��<

Accuracy/__raw_  �?

Accuracy��?�ߣZ       o��	���j��A�*L

Loss�3�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?qOZ       o��	T9�j��A�*L

Loss���<

Adam/Loss/rawN��<

Accuracy/__raw_  �?

Accuracy��?=xV�Z       o��	��j��A�*L

Loss�T�<

Adam/Loss/rawF��<

Accuracy/__raw_  �?

Accuracy��?�*eZ       o��	��j��A�*L

Loss���<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?��J�Z       o��	aÓj��A�*L

Loss"��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?+���Z       o��	?�j��A�*L

LossD�<

Adam/Loss/raw�*�<

Accuracy/__raw_  �?

Accuracy��?)�nZ       o��	��j��A�*L

Loss�'�<

Adam/Loss/raw-O�<

Accuracy/__raw_  �?

Accuracy��?�.�^Z       o��	�$�j��A�*L

Loss��<

Adam/Loss/rawS'A

Accuracy/__raw_  �>

Accuracy��?�q��Z       o��	|C�j��A�*L

Losshd]?

Adam/Loss/rawj!=

Accuracy/__raw_  �?

Accuracy��l?À�Z       o��	�c�j��A�*L

Loss�5H?

Adam/Loss/raw��<

Accuracy/__raw_  �?

AccuracyO�n?���Z       o��	o��j��A�*L

Loss��4?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�rp?֪�Z       o��	4��j��A�*L

Lossa#?

Adam/Loss/raw�M�<

Accuracy/__raw_  �?

Accuracy� r?�
�Z       o��	���j��A�*L

Loss�?

Adam/Loss/raw8l�<

Accuracy/__raw_  �?

Accuracy"gs?����Z       o��	0�j��A�*L

Loss��?

Adam/Loss/raw ��<

Accuracy/__raw_  �?

Accuracy��t?��mZ       o��	)%�j��A�*L

Loss��>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��u?���Z       o��	�J�j��A�*L

Loss�4�>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�v?3��sZ       o��	�j�j��A�*L

Loss&��>

Adam/Loss/rawzy=

Accuracy/__raw_  �?

Accuracy+�w?Y���Z       o��	��j��A�*L

Loss�d�>

Adam/Loss/raw7�=

Accuracy/__raw_  �?

Accuracy��x?�%ufZ       o��	�Ǖj��A�*L

Loss�>

Adam/Loss/raw�� =

Accuracy/__raw_  �?

Accuracy-Ny?���KZ       o��	6�j��A�*L

Loss5��>

Adam/Loss/raw 6�<

Accuracy/__raw_  �?

Accuracy��y?����Z       o��	�j��A�*L

Loss Ƈ>

Adam/Loss/raw ��<

Accuracy/__raw_  �?

AccuracyΓz?�hu�Z       o��	�'�j��A�*L

Loss�v>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�{?r�J�Z       o��	I�j��A�*L

Loss�`>

Adam/Loss/raw
�!A

Accuracy/__raw_   >

Accuracy��{?i�r�Z       o��	!��j��A�*L

Loss#ޚ?

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��e?��F�Z       o��	�ɖj��A�*L

Lossw̋?

Adam/Loss/raw�ɥ<

Accuracy/__raw_  �?

Accuracy?Hh?]�xEZ       o��	��j��A�*L

Loss�'|?

Adam/Loss/rawo�<

Accuracy/__raw_  �?

Accuracyl�j?"]PGZ       o��	�j��A�*L

Loss�vc?

Adam/Loss/raw=

Accuracy/__raw_  �?

Accuracy��l?��jZ       o��	�.�j��A�*L

Loss��M?

Adam/Loss/raw5�<

Accuracy/__raw_  �?

Accuracy��n?v�Z       o��	HS�j��A�*L

Loss��9?

Adam/Loss/raw(=

Accuracy/__raw_  �?

AccuracySpp?L�Z       o��	w�j��A�*L

LossZT(?

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��q?|�p�Z       o��	#��j��A�*L

Loss+x?

Adam/Loss/raw�o=

Accuracy/__raw_  �?

Accuracy9es?�}�Z       o��	lʗj��A�*L

Loss�1
?

Adam/Loss/rawWX=

Accuracy/__raw_  �?

Accuracy�t?ӎrZ       o��	���j��A�*L

Loss߀�>

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyP�u?e�3Z       o��	5B�j��A�*L

Loss2x�>

Adam/Loss/raw�P�<

Accuracy/__raw_  �?

Accuracy��v?�e��Z       o��	�t�j��A�*L

Loss�/�>

Adam/Loss/raw�E�<

Accuracy/__raw_  �?

Accuracy�w?���Z       o��	���j��A�*L

Loss���>

Adam/Loss/raw�h�<

Accuracy/__raw_  �?

Accuracy��x?�&��Z       o��	w��j��A�*L

Lossc�>

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy)My?v�JQZ       o��	��j��A�*L

Loss��>

Adam/Loss/raw�&:=

Accuracy/__raw_  �?

Accuracy��y?ɖ<1Z       o��	�>�j��A�*L

Loss���>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��z?����Z       o��	Ad�j��A�*L

LossT�~>

Adam/Loss/rawRv�<

Accuracy/__raw_  �?

Accuracy�{?�
GZ       o��	���j��A�*L

Loss_*g>

Adam/Loss/rawh_�<

Accuracy/__raw_  �?

Accuracy�{?=���Z       o��	���j��A�*L

Loss��Q>

Adam/Loss/raw2h:=

Accuracy/__raw_  �?

Accuracyh|?Y�Z       o��	W'�j��A�*L

Loss��A>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�p|?S��vZ       o��	�P�j��A�*L

Loss�k1>

Adam/Loss/rawTV=

Accuracy/__raw_  �?

Accuracy��|?��	Z       o��	�{�j��A�*L

Loss.�">

Adam/Loss/rawP�=

Accuracy/__raw_  �?

Accuracy�}?���yZ       o��	���j��A�*L

Lossx�>

Adam/Loss/raw�1=

Accuracy/__raw_  �?

Accuracy�g}?�(�Z       o��	�Ϛj��A�*L

Loss)n>

Adam/Loss/raw{=

Accuracy/__raw_  �?

Accuracy�}?�~`�Z       o��	]��j��A�*L

Loss�?>

Adam/Loss/rawV.�<

Accuracy/__raw_  �?

Accuracy��}?��@IZ       o��	�+�j��A�*L

Loss	T�=

Adam/Loss/raw�;�<

Accuracy/__raw_  �?

Accuracy�~?�hG�Z       o��	�u�j��A�*L

Loss�3�=

Adam/Loss/raw�@=

Accuracy/__raw_  �?

AccuracyL~?���KZ       o��	x��j��A�*L

Lossh~�=

Adam/Loss/rawls=

Accuracy/__raw_  �?

Accuracy�w~?%�A�Z       o��	>�j��A�*L

Loss�7�=

Adam/Loss/raw�$=

Accuracy/__raw_  �?

Accuracy�~?��{Z       o��	��j��A�*L

Loss^8�=

Adam/Loss/raw�?�<

Accuracy/__raw_  �?

Accuracy>�~?�/R�Z       o��	tY�j��A�*L

Loss!�=

Adam/Loss/raw��
=

Accuracy/__raw_  �?

Accuracy�~?����Z       o��	��j��A�*L

Loss�=

Adam/Loss/raw�4=

Accuracy/__raw_  �?

Accuracy��~?�Ƞ�Z       o��	:��j��A�*L

Loss�
�=

Adam/Loss/raw��2=

Accuracy/__raw_  �?

Accuracy[?J[�Z       o��	m�j��A�*L

Loss�Ǒ=

Adam/Loss/rawVF�<

Accuracy/__raw_  �?

Accuracy�/?  �Z       o��	�I�j��A�*L

Loss��=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy^D?�+�Z       o��	{�j��A�*L

Loss�\�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy!W?"�(Z       o��	>��j��A�*L

Losstu=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyh?[��Z       o��	_�j��A�*L

Loss�j=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy7w?�ѵ�Z       o��	m�j��A�*L

Loss�`=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�?�TTZ       o��	�Q�j��A�*L

Loss:FT=

Adam/Loss/rawP=

Accuracy/__raw_  �?

Accuracy5�?'uZ       o��	��j��A�*L

LossV�N=

Adam/Loss/raw�J#=

Accuracy/__raw_  �?

AccuracyI�?
~K�Z       o��	<ݞj��A�*L

Loss�J=

Adam/Loss/raw( =

Accuracy/__raw_  �?

AccuracyB�?u�
�Z       o��	Q�j��A�*L

Loss�C=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy;�?ױ[�Z       o��	�`�j��A�*L

Loss9V<=

Adam/Loss/raw�)�<

Accuracy/__raw_  �?

AccuracyO�?[Z       o��	v��j��A�*L

Loss�1=

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy��?D��Z       o��	!��j��A�*L

Loss�-=

Adam/Loss/raw�/=

Accuracy/__raw_  �?

Accuracy�?�h.�Z       o��	�՟j��A�*L

Loss��*=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�?�!H�Z       o��	�7�j��A�*L

LossqY%=

Adam/Loss/raw�i�<

Accuracy/__raw_  �?

AccuracyO�?gw
0Z       o��	�o�j��A�*L

Loss�H =

Adam/Loss/rawއ�<

Accuracy/__raw_  �?

Accuracy�?�Ow�Z       o��	d��j��A�*L

Loss��=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy_�?6s˻Z       o��	འj��A�*L

Loss�f=

Adam/Loss/rawa
=

Accuracy/__raw_  �?

Accuracy<�?�3YZ       o��	��j��A�*L

LossQ*=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?џ�Z       o��	��j��A�*L

Loss�=

Adam/Loss/raw�r�<

Accuracy/__raw_  �?

Accuracy��?�Au6Z       o��	29�j��A�*L

Losse=

Adam/Loss/rawD�<

Accuracy/__raw_  �?

Accuracy��?)��Z       o��	�^�j��A�*L

Loss�(=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy1�?[�Z�Z       o��	;��j��A�*L

Loss"l=

Adam/Loss/rawԉ�<

Accuracy/__raw_  �?

Accuracyy�?���Z       o��	�ѡj��A�*L

Loss��
=

Adam/Loss/raw�J.=

Accuracy/__raw_  �?

Accuracy��?��4Z       o��	��j��A�*L

Lossn!=

Adam/Loss/raw]�-=

Accuracy/__raw_  �?

Accuracy`�?�߮Z       o��	�E�j��A�*L

Loss I=

Adam/Loss/rawZC�<

Accuracy/__raw_  �?

Accuracy
�?��dPZ       o��	�j��A�*L

Loss.�=

Adam/Loss/raw0@�<

Accuracy/__raw_  �?

Accuracy��?'w��Z       o��	A��j��A�*L

Loss�G=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?W]:AZ       o��	m�j��A�*L

Lossh	=

Adam/Loss/rawx��<

Accuracy/__raw_  �?

Accuracy�?�jr�Z       o��	��j��A�*L

LossbM=

Adam/Loss/raw5��<

Accuracy/__raw_  �?

Accuracy/�?��eZ       o��	�\�j��A�*L

Loss�A=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy*�?'�A+Z       o��	��j��A�*L

Loss>N=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�?1��Z       o��	ػ�j��A�*L

Lossfk=

Adam/Loss/raw]�=

Accuracy/__raw_  �?

Accuracy��?RU�JZ       o��	�ߣj��A�*L

Loss�u=

Adam/Loss/raw.�<

Accuracy/__raw_  �?

Accuracy��?����Z       o��	��j��A�*L

Loss#�=

Adam/Loss/rawOQ�<

Accuracy/__raw_  �?

Accuracy4�?CZ       o��	[&�j��A�*L

Loss-q�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?LE=Z       o��	�K�j��A�*L

Loss��<

Adam/Loss/rawgb�<

Accuracy/__raw_  �?

AccuracyN�??�Y�Z       o��	�o�j��A�*L

Loss�w�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?���qZ       o��	q��j��A�*L

Loss	��<

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy2�?�͓�Z       o��	���j��A�*L

Loss�)�<

Adam/Loss/raw ��<

Accuracy/__raw_  �?

Accuracy��?w��Z       o��	��j��A�*L

Lossݡ�<

Adam/Loss/rawp�=

Accuracy/__raw_  �?

Accuracy��?+�5Z       o��	K7�j��A�*L

LossĶ�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy:�?f-�Z       o��	�[�j��A�*L

Loss+��<

Adam/Loss/raw(��<

Accuracy/__raw_  �?

Accuracy��?Y
Z       o��	�~�j��A�*L

Lossw!�<

Adam/Loss/raw�5=

Accuracy/__raw_  �?

Accuracy��?�U��Z       o��	g��j��A�*L

LossԨ�<

Adam/Loss/rawh�=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	�٥j��A�*L

Loss7� =

Adam/Loss/raw_��<

Accuracy/__raw_  �?

Accuracy/�?qz'Z       o��	���j��A�*L

LossI�<

Adam/Loss/raw�c�<

Accuracy/__raw_  �?

Accuracy^�?!Y�Z       o��	D�j��A�*L

Loss~��<

Adam/Loss/raw�L�<

Accuracy/__raw_  �?

Accuracy��?��<qZ       o��	�5�j��A�*L

Loss��<

Adam/Loss/raw+(�<

Accuracy/__raw_  �?

Accuracy��?��XlZ       o��	�y�j��A�*L

LossS�<

Adam/Loss/raw�i�<

Accuracy/__raw_  �?

Accuracy��?^���Z       o��	V��j��A�*L

Loss�>�<

Adam/Loss/rawD4�<

Accuracy/__raw_  �?

Accuracy��?2m��Z       o��	�զj��A�*L

Loss��<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy	�?���Z       o��	���j��A�*L

Lossp��<

Adam/Loss/raw�F�<

Accuracy/__raw_  �?

Accuracy"�?�`�(Z       o��	�j��A�*L

LossH��<

Adam/Loss/raw�=

Accuracy/__raw_  �?

Accuracy8�?�RdZ       o��	P7�j��A�*L

Loss5Z�<

Adam/Loss/raw�� =

Accuracy/__raw_  �?

AccuracyL�?1�#�Z       o��	�V�j��A�*L

Lossɷ�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy^�?sd�RZ       o��	�t�j��A�*L

Loss��<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracyn�?����Z       o��	!��j��A�*L

Loss�t�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy}�?S]��Z       o��	�j��A�*L

LossP7�<

Adam/Loss/rawM��<

Accuracy/__raw_  �?

Accuracy��?��ZZ       o��	ԧj��A�*L

Loss���<

Adam/Loss/rawc��<

Accuracy/__raw_  �?

Accuracy��?�b��Z       o��	���j��A�*L

Lossw�<

Adam/Loss/rawf�<

Accuracy/__raw_  �?

Accuracy��?�t��Z       o��	^,�j��A�*L

Lossa��<

Adam/Loss/raw�)�<

Accuracy/__raw_  �?

Accuracy��?`�I�Z       o��	�X�j��A�*L

Loss�z�<

Adam/Loss/raw�U=

Accuracy/__raw_  �?

Accuracy��?���Z       o��	Z~�j��A�*L

Loss���<

Adam/Loss/rawî�<

Accuracy/__raw_  �?

Accuracy��?�̕9Z       o��	��j��A�*L

Loss�K�<

Adam/Loss/rawً�<

Accuracy/__raw_  �?

Accuracy��?9��Z       o��	8٨j��A�*L

LossP��<

Adam/Loss/rawPp�<

Accuracy/__raw_  �?

Accuracy��?1� Z       o��	s��j��A�*L

Loss���<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?��UZ       o��	v�j��A�*L

LossP��<

Adam/Loss/rawjQ�<

Accuracy/__raw_  �?

Accuracy��?HL��Z       o��	;7�j��A�*L

Loss���<

Adam/Loss/rawxl�<

Accuracy/__raw_  �?

Accuracy��?8��Z       o��	�T�j��A�*L

Loss���<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?ŶZ       o��	�|�j��A�*L

Loss���<

Adam/Loss/raw�&�<

Accuracy/__raw_  �?

Accuracy��?쿋NZ       o��	Eةj��A�*L

LossN��<

Adam/Loss/raw8�=

Accuracy/__raw_  �?

Accuracy��?��}�Z       o��	q �j��A�*L

Loss�
�<

Adam/Loss/rawi��<

Accuracy/__raw_  �?

Accuracy��?h:=�Z       o��	K!�j��A�*L

Loss��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?.2�{Z       o��	@�j��A�*L

Loss:@�<

Adam/Loss/raw'��<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	Ze�j��A�*L

LossR2�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?��oIZ       o��	7��j��A�*L

Loss�H�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�!T�Z       o��	j��A�*L

Loss:��<

Adam/Loss/raw�[�<

Accuracy/__raw_  �?

Accuracy��?�@�|Z       o��	0Ӫj��A�*L

Loss�c�<

Adam/Loss/rawc�	=

Accuracy/__raw_  �?

Accuracy��?̏%Z       o��	��j��A�*L

Loss�d�<

Adam/Loss/raw�L	=

Accuracy/__raw_  �?

Accuracy��?p��Z       o��	��j��A�*L

Loss|��<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	.8�j��A�*L

Loss��<

Adam/Loss/rawU��<

Accuracy/__raw_  �?

Accuracy��?,`)�Z       o��	�o�j��A�*L

Loss���<

Adam/Loss/raw�
�<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	���j��A�*L

Loss���<

Adam/Loss/raw�B�<

Accuracy/__raw_  �?

Accuracy��?�S@�Z       o��	w��j��A�*L

Lossn1�<

Adam/Loss/rawS�<

Accuracy/__raw_  �?

Accuracy��?��YZ       o��	�ܫj��A�*L

Loss���<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?��-�Z       o��	��j��A�*L

LossVj�<

Adam/Loss/raw�n�<

Accuracy/__raw_  �?

Accuracy��?��k�Z       o��	�6�j��A�*L

Loss��<

Adam/Loss/raw~��<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	\�j��A�*L

Lossn��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�jL1Z       o��	�z�j��A�*L

Loss/	�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?I��Z       o��	ᗬj��A�*L

LossZ��<

Adam/Loss/raw<B�<

Accuracy/__raw_  �?

Accuracy��?��Z       o��	ÿ�j��A�*L

Loss���<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�`ͶZ       o��	I�j��A�*L

Lossz8�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?R�RZ       o��	G9�j��A�*L

Loss�y�<

Adam/Loss/rawXX�<

Accuracy/__raw_  �?

Accuracy��?�c�\Z       o��	%Y�j��A�*L

LossUC�<

Adam/Loss/raws��<

Accuracy/__raw_  �?

Accuracy��?aU7�Z       o��	�z�j��A�*L

Loss�8�<

Adam/Loss/rawʢ�<

Accuracy/__raw_  �?

Accuracy��?ׄ�~Z       o��	���j��A�*L

Loss�<

Adam/Loss/rawA_�<

Accuracy/__raw_  �?

Accuracy��?�RK	Z       o��	4��j��A�*L

Lossa~�<

Adam/Loss/raw&�=

Accuracy/__raw_  �?

Accuracy��?�VߜZ       o��	fܭj��A�*L

Lossŏ�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?[j�Z       o��	&��j��A�*L

Loss%E�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	��j��A�*L

Lossq�<

Adam/Loss/raw ?�<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	�9�j��A�*L

Loss�R�<

Adam/Loss/raw�B�@

Accuracy/__raw_   >

Accuracy��?�7pZ       o��	�n�j��A�*L

Loss�'Q?

Adam/Loss/raw�}�<

Accuracy/__raw_  �?

Accuracy��i?����Z       o��	I��j��A�*L

Loss�=?

Adam/Loss/raw�È<

Accuracy/__raw_  �?

Accuracy�k?%��Z       o��	Gʮj��A�*L

Loss��*?

Adam/Loss/raw~h�<

Accuracy/__raw_  �?

Accuracy �m?��QNZ       o��	 �j��A�*L

Loss��?

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��o?>�oZ       o��	�j��A�*L

LossqR?

Adam/Loss/raw:�<

Accuracy/__raw_  �?

Accuracy�Mq?թ�Z       o��	�J�j��A�*L

Loss[��>

Adam/Loss/rawd{�<

Accuracy/__raw_  �?

Accuracy��r?�C9�Z       o��	Ml�j��A�*L

Loss�(�>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�t?��9�Z       o��	r��j��A�*L

Loss�<�>

Adam/Loss/raw	�<

Accuracy/__raw_  �?

Accuracy@Iu?��_�Z       o��	���j��A�*L

Loss���>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy�[v?��Z�Z       o��	�Яj��A�*L

Loss�*�>

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy_Rw?�==Z       o��	s�j��A�*L

Lossq��>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�0x?��Z       o��	�]�j��A�*L

Loss��>

Adam/Loss/raw(��<

Accuracy/__raw_  �?

Accuracy{�x?��Z       o��	��j��A�*L

Loss�i}>

Adam/Loss/rawk�<

Accuracy/__raw_  �?

Accuracyo�y?d�	/Z       o��	a��j��A�*L

LosszHf>

Adam/Loss/raw@��<

Accuracy/__raw_  �?

AccuracydNz?�)�Z       o��	�°j��A�*L

Loss��Q>

Adam/Loss/rawH�<

Accuracy/__raw_  �?

Accuracy'�z?��yZ       o��	�j��A�*L

Loss��?>

Adam/Loss/raw��=

Accuracy/__raw_  �?

AccuracyVc{?�zZ       o��	�j��A�*L

Loss�
0>

Adam/Loss/raw�z�<

Accuracy/__raw_  �?

Accuracyg�{?p���Z       o��	-?�j��A�*L

LossR� >

Adam/Loss/raw[�<

Accuracy/__raw_  �?

Accuracy�C|?4�b�Z       o��	]n�j��A�*L

Loss5>

Adam/Loss/raw��<

Accuracy/__raw_  �?

AccuracyL�|?Zk=aZ       o��	���j��A�*L

Loss-�>

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy^�|?ll�Z       o��	�ܱj��A�*L

Loss��=

Adam/Loss/rawe��<

Accuracy/__raw_  �?

Accuracy�F}?5c��Z       o��	�j��A�*L

Lossq�=

Adam/Loss/raw;��<

Accuracy/__raw_  �?

Accuracy��}?�UGZ       o��	w1�j��A�*L

Lossg��=

Adam/Loss/raw5L�<

Accuracy/__raw_  �?

AccuracyL�}?��[Z       o��	�W�j��A�*L

Lossw��=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy�~?��sZ       o��	ё�j��A�*L

Lossl�=

Adam/Loss/rawr3�<

Accuracy/__raw_  �?

Accuracy�6~?0E�Z       o��	ն�j��A�*L

Lossdo�=

Adam/Loss/rawf�=

Accuracy/__raw_  �?

AccuracyUd~?��2ZZ       o��	Nײj��A�*L

Loss�7�=

Adam/Loss/raw�j�<

Accuracy/__raw_  �?

Accuracy��~?Y�Z       o��	��j��A�*L

Loss���=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��~?m
�Z       o��	8�j��A�*L

Loss�T�=

Adam/Loss/raw�O�<

Accuracy/__raw_  �?

Accuracy��~?h\f�Z       o��	n�j��A�*L

Loss㔁=

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy��~?o��Z       o��	霳j��A�*L

Losss�q=

Adam/Loss/raw�=�<

Accuracy/__raw_  �?

Accuracy�?|*�Z       o��	Ǽ�j��A�*L

LossPf=

Adam/Loss/rawG��;

Accuracy/__raw_  �?

Accuracy9%?=��Z       o��	"ܳj��A�*L

Loss�R=

Adam/Loss/raw��;

Accuracy/__raw_  �?

Accuracy;?/o#Z       o��	���j��A�*L

Loss��?=

Adam/Loss/rawt�=

Accuracy/__raw_  �?

Accuracy�N?���[Z       o��	�j��A�*L

Loss:�9=

Adam/Loss/rawnD�<

Accuracy/__raw_  �?

Accuracy�`?�}M�Z       o��	�<�j��A�*L

Loss�M0=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracywp?�,]Z       o��	�\�j��A�*L

Loss�h(=

Adam/Loss/raw�p�<

Accuracy/__raw_  �?

Accuracy�~?C��Z       o��	-z�j��A�*L

Loss�
=

Adam/Loss/rawN��<

Accuracy/__raw_  �?

Accuracy��?x��AZ       o��	,��j��A�*L

Loss`�=

Adam/Loss/raw`��<

Accuracy/__raw_  �?

Accuracy]�?�V~Z       o��	(��j��A�*L

Loss�'=

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracyԡ?:<=�Z       o��	��j��A�*L

Lossq�=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy?�?���Z       o��	��j��A�*L

Loss6=

Adam/Loss/raw�7�<

Accuracy/__raw_  �?

Accuracy��?��=Z       o��	`?�j��A�*L

Lossv�	=

Adam/Loss/rawY~�<

Accuracy/__raw_  �?

AccuracyZ�?ءD�Z       o��	x`�j��A�*L

Losso�=

Adam/Loss/rawN�<

Accuracy/__raw_  �?

Accuracy7�?>��mZ       o��	W��j��A�*L

Lossh�=

Adam/Loss/rawʙ�<

Accuracy/__raw_  �?

Accuracye�?��'�Z       o��	Z��j��A�*L

Loss('=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?6Z       o��	<ٵj��A�*L

Loss|=

Adam/Loss/raw+�=

Accuracy/__raw_  �?

Accuracy��?�G�nZ       o��	]��j��A�*L

Loss��=

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyw�?7�J�Z       o��	��j��A�*L

Loss�J=

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	 6�j��A�*L

Lossg��<

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy+�?I� �Z       o��	�V�j��A�*L

Loss*��<

Adam/Loss/rawn�<

Accuracy/__raw_  �?

Accuracyt�?��9Z       o��	U��j��A�*L

Loss~��<

Adam/Loss/raw�ʢ<

Accuracy/__raw_  �?

Accuracyh�?��Z       o��	$Ҷj��A�*L

Loss�0�<

Adam/Loss/rawK�<

Accuracy/__raw_  �?

Accuracy�?sC�Z       o��	x��j��A�*L

Loss<��<

Adam/Loss/raw�Y�<

Accuracy/__raw_  �?

Accuracyv�?�?L�Z       o��	��j��A�*L

Loss���<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy��?p1�^Z       o��	7�j��A�*L

Loss��<

Adam/Loss/raw�_�<

Accuracy/__raw_  �?

Accuracy��? ���Z       o��	�X�j��A�*L

Loss ��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

AccuracyL�?M~τZ       o��	�|�j��A�*L

Loss�Y�<

Adam/Loss/rawWޱ<

Accuracy/__raw_  �?

Accuracy��?�{�Z       o��	���j��A�*L

Loss���<

Adam/Loss/raw��<

Accuracy/__raw_  �?

AccuracyH�?x�_pZ       o��	"��j��A�*L

Loss���<

Adam/Loss/raw2��<

Accuracy/__raw_  �?

Accuracy��?OɊ�Z       o��	G�j��A�*L

LossI��<

Adam/Loss/raw�a =

Accuracy/__raw_  �?

Accuracy��?|�%XZ       o��	3�j��A�*L

Loss�T�<

Adam/Loss/rawl;<

Accuracy/__raw_  �?

Accuracy��?�k�Z       o��	�K�j��A�*L

Loss���<

Adam/Loss/raw�Z:<

Accuracy/__raw_  �?

Accuracy��?�c`Z       o��	B|�j��A�*L

Loss'��<

Adam/Loss/rawq�q<

Accuracy/__raw_  �?

Accuracy~�?��_JZ       o��	���j��A�*L

Loss�{�<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracy>�?����Z       o��	�۸j��A�*L

Loss�i�<

Adam/Loss/raw�ї<

Accuracy/__raw_  �?

Accuracy��?��� Z       o��	���j��A�*L

Loss�'�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?]}Z       o��	"�j��A�*L

Loss	�<

Adam/Loss/rawS��<

Accuracy/__raw_  �?

Accuracy�?@|aZ       o��	B�j��A�*L

LossD��<

Adam/Loss/raw?��<

Accuracy/__raw_  �?

Accuracy��?��UZ       o��	�a�j��A�*L

LossC��<

Adam/Loss/rawl�=

Accuracy/__raw_  �?

Accuracy�?F<#�Z       o��	���j��A�*L

Loss�
�<

Adam/Loss/raw`��<

Accuracy/__raw_  �?

Accuracyi�?�d �Z       o��	��j��A�*L

Loss�d�<

Adam/Loss/rawK�<

Accuracy/__raw_  �?

Accuracy��?)��Z       o��	��j��A�*L

Loss���<

Adam/Loss/rawï�<

Accuracy/__raw_  �?

Accuracy�?���Z       o��	�.�j��A�*L

Loss���<

Adam/Loss/rawt��<

Accuracy/__raw_  �?

Accuracyb�?L�04Z       o��	�O�j��A�*L

Loss���<

Adam/Loss/raw�+�<

Accuracy/__raw_  �?

Accuracy��?KK3�Z       o��	/o�j��A�*L

LossEG�<

Adam/Loss/raw�*�<

Accuracy/__raw_  �?

Accuracy��?|%�Z       o��	"��j��A�*L

Loss�*�<

Adam/Loss/raw�B�<

Accuracy/__raw_  �?

Accuracy�?�čCZ       o��	G��j��A�*L

Loss�F�<

Adam/Loss/raw1��<

Accuracy/__raw_  �?

AccuracyH�?��UZ       o��	�̺j��A�*L

Loss	��<

Adam/Loss/raw�+�<

Accuracy/__raw_  �?

Accuracyt�?�C\8Z       o��	��j��A�*L

Loss/-�<

Adam/Loss/rawfi�<

Accuracy/__raw_  �?

Accuracy��?*�:�Z       o��	B
�j��A�*L

Loss43�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?e�Z       o��	�.�j��A�*L

Lossb�<

Adam/Loss/raw�s�<

Accuracy/__raw_  �?

Accuracy��?�ߦ�Z       o��	�`�j��A�*L

Lossr}�<

Adam/Loss/raw�u�<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	���j��A�*L

Loss��<

Adam/Loss/raw=S=

Accuracy/__raw_  �?

Accuracy�?@'�AZ       o��	W��j��A�*L

Loss�)�<

Adam/Loss/raw5}|<

Accuracy/__raw_  �?

Accuracy.�?�s�Z       o��	sӻj��A�*L

LossH��<

Adam/Loss/raw�0�<

Accuracy/__raw_  �?

AccuracyC�?�}M�Z       o��	��j��A�*L

Loss��<

Adam/Loss/rawS�=

Accuracy/__raw_  �?

AccuracyV�?v�))Z       o��	Z+�j��A�*L

Loss�&�<

Adam/Loss/raw��=

Accuracy/__raw_  �?

Accuracyg�?��Z       o��	K�j��A�*L

Loss!9�<

Adam/Loss/raw*d�<

Accuracy/__raw_  �?

Accuracyv�?vs��Z       o��	�l�j��A�*L

Lossգ�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?!FZ       o��	&��j��A�*L

Loss�A�<

Adam/Loss/rawDa�<

Accuracy/__raw_  �?

Accuracy��?]C{�Z       o��	!��j��A�*L

Loss���<

Adam/Loss/raw-��<

Accuracy/__raw_  �?

Accuracy��?���HZ       o��	�j��A�*L

LossP&�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?S/Z       o��	�1�j��A�*L

Loss�O�<

Adam/Loss/raw+�<

Accuracy/__raw_  �?

Accuracy��?'#�=Z       o��	�P�j��A�*L

LossK��<

Adam/Loss/raw{+�<

Accuracy/__raw_  �?

Accuracy��?@���Z       o��	�p�j��A�*L

Loss	�<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�:FZ       o��	���j��A�*L

Loss��<

Adam/Loss/rawS��<

Accuracy/__raw_  �?

Accuracy��?�h�kZ       o��	-��j��A�*L

Loss?��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�oZ       o��	Rҽj��A�*L

Loss��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�Zf�Z       o��	<��j��A�*L

Lossÿ�<

Adam/Loss/raw3��<

Accuracy/__raw_  �?

Accuracy��?b��Z       o��	��j��A�*L

Loss�T�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?2u�Z       o��	�9�j��A�*L

Loss���<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?�L5�Z       o��	�]�j��A�*L

Loss�#�<

Adam/Loss/raws��<

Accuracy/__raw_  �?

Accuracy��?:��Z       o��	(��j��A�*L

Loss�-�<

Adam/Loss/rawNy�<

Accuracy/__raw_  �?

Accuracy��?���lZ       o��	�ܾj��A�*L

Loss ϼ<

Adam/Loss/raw�<

Accuracy/__raw_  �?

Accuracy��?oS��Z       o��	���j��A�*L

Loss8��<

Adam/Loss/rawP;~<

Accuracy/__raw_  �?

Accuracy��?��b�Z       o��	@�j��A�*L

LossÒ�<

Adam/Loss/raw�oo<

Accuracy/__raw_  �?

Accuracy��?�^ºZ       o��	`�j��A�*L

Loss�I�<

Adam/Loss/raw�o<

Accuracy/__raw_  �?

Accuracy��?�i�uZ       o��	���j��A�*L

Loss:��<

Adam/Loss/rawv��<

Accuracy/__raw_  �?

Accuracy��?�w^�Z       o��	D��j��A�*L

Loss@�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?สZ       o��	�Ŀj��A�*L

Loss	��<

Adam/Loss/raw�c�<

Accuracy/__raw_  �?

Accuracy��?�Z       o��	��j��A�*L

Lossm�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?tH��Z       o��	�/�j��A�*L

Loss�ջ<

Adam/Loss/raw+��<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	�c�j��A�*L

Loss	��<

Adam/Loss/raw3��<

Accuracy/__raw_  �?

Accuracy��?�Z       o��	��j��A�*L

Loss�k�<

Adam/Loss/raw(�<

Accuracy/__raw_  �?

Accuracy��?q��Z       o��	/��j��A�*L

Loss�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�fa�Z       o��	3��j��A�*L

Lossʔ�<

Adam/Loss/raw�Ҷ<

Accuracy/__raw_  �?

Accuracy��?Lğ�Z       o��	q��j��A�*L

Loss���<

Adam/Loss/raw�<�<

Accuracy/__raw_  �?

Accuracy��?�ݹZ       o��	q�j��A�*L

Loss4µ<

Adam/Loss/rawb	�<

Accuracy/__raw_  �?

Accuracy��?\�B�Z       o��	�#�j��A�*L

Loss�b�<

Adam/Loss/raw� �<

Accuracy/__raw_  �?

Accuracy��?
Z       o��	dC�j��A�*L

Loss�B�<

Adam/Loss/rawj��<

Accuracy/__raw_  �?

Accuracy��?�>'�Z       o��	Zb�j��A�*L

Loss��<

Adam/Loss/raw���<

Accuracy/__raw_  �?

Accuracy��?����Z       o��	���j��A�*L

Lossv}�<

Adam/Loss/raw�;�<

Accuracy/__raw_  �?

Accuracy��?�!�Z       o��	���j��A�*L

Loss}��<

Adam/Loss/rawv��<

Accuracy/__raw_  �?

Accuracy��?����Z       o��	���j��A�*L

Loss���<

Adam/Loss/rawpޜ<

Accuracy/__raw_  �?

Accuracy��?q 5�Z       o��	8�j��A�*L

Loss!J�<

Adam/Loss/raw|7�<

Accuracy/__raw_  �?

Accuracy��?z��BZ       o��	5�j��A�*L

LossDȱ<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?D��XZ       o��	�n�j��A�*L

Loss��<

Adam/Loss/rawҡ�<

Accuracy/__raw_  �?

Accuracy��?c�p�Z       o��	��j��A�*L

Loss�F�<

Adam/Loss/raw]��<

Accuracy/__raw_  �?

Accuracy��?��Z       o��	y��j��A�*L

Loss�6�<

Adam/Loss/raw�{�<

Accuracy/__raw_  �?

Accuracy��?�ܩ�Z       o��	F��j��A�*L

Loss��<

Adam/Loss/raw�Ƥ<

Accuracy/__raw_  �?

Accuracy��?��h�Z       o��	u��j��A�*L

LossTt�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?c�SZ       o��	F�j��A�*L

Loss��<

Adam/Loss/raw�v�<

Accuracy/__raw_  �?

Accuracy��?����Z       o��	VD�j��A�*L

Loss�ۨ<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?��|	Z       o��	=��j��A�*L

Loss�"�<

Adam/Loss/raw�p�<

Accuracy/__raw_  �?

Accuracy��?��5aZ       o��	��j��A�*L

Loss�ݬ<

Adam/Loss/raw<g�<

Accuracy/__raw_  �?

Accuracy��?��!�Z       o��	3��j��A�*L

Loss���<

Adam/Loss/raw͌�<

Accuracy/__raw_  �?

Accuracy��?����Z       o��	r��j��A�*L

LossЪ<

Adam/Loss/raw'<�<

Accuracy/__raw_  �?

Accuracy��?a6{Z       o��	� �j��A�*L

Loss�'�<

Adam/Loss/rawyڣ<

Accuracy/__raw_  �?

Accuracy��?yO�Z       o��	� �j��A�*L

Loss�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�'6[Z       o��	�?�j��A�*L

Lossië<

Adam/Loss/raw#��<

Accuracy/__raw_  �?

Accuracy��?!��Z       o��	�c�j��A�*L

Loss��<

Adam/Loss/raw.�<

Accuracy/__raw_  �?

Accuracy��?�?Z       o��	4��j��A�*L

LossnĴ<

Adam/Loss/raw�Y�<

Accuracy/__raw_  �?

Accuracy��?A���Z       o��	Ψ�j��A�*L

Loss+ �<

Adam/Loss/raw�X�<

Accuracy/__raw_  �?

Accuracy��?p�;bZ       o��	���j��A�*L

Lossr?�<

Adam/Loss/raw� �<

Accuracy/__raw_  �?

Accuracy��?�<��Z       o��	p'�j��A�*L

Loss��<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?#�f�Z       o��	�O�j��A�*L

LossO�<

Adam/Loss/raw�#�<

Accuracy/__raw_  �?

Accuracy��?�qҢZ       o��	r�j��A�*L

Loss��<

Adam/Loss/raw͜�<

Accuracy/__raw_  �?

Accuracy��?��cZ       o��	*��j��A�*L

LossY߻<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?Os�|Z       o��	���j��A�*L

Loss�1�<

Adam/Loss/raw�^a<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	K��j��A�*L

Loss�ײ<

Adam/Loss/raw�r]<

Accuracy/__raw_  �?

Accuracy��?�<Z       o��	��j��A�*L

Loss�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?%��[Z       o��	�.�j��A�*L

Loss�;�<

Adam/Loss/rawUd�<

Accuracy/__raw_  �?

Accuracy��?��,Z       o��	wN�j��A�*L

Loss8&�<

Adam/Loss/raw}�<

Accuracy/__raw_  �?

Accuracy��?�LBZ       o��	@��j��A�*L

Lossb�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?�]>tZ       o��	��j��A�*L

Loss`��<

Adam/Loss/raw*q�<

Accuracy/__raw_  �?

Accuracy��?S{�Z       o��	���j��A�*L

LossҲ<

Adam/Loss/rawK~y<

Accuracy/__raw_  �?

Accuracy��?b�Z       o��	��j��A�*L

Loss�i�<

Adam/Loss/raw[sx<

Accuracy/__raw_  �?

Accuracy��?� ��Z       o��	�/�j��A�*L

Loss�~�<

Adam/Loss/raw�g�<

Accuracy/__raw_  �?

Accuracy��?�M�Z       o��		P�j��A�*L

LossI�<

Adam/Loss/raw��<

Accuracy/__raw_  �?

Accuracy��?���Z       o��	�o�j��A�*L

Lossx�<

Adam/Loss/raw\V<

Accuracy/__raw_  �?

Accuracy��?&�չZ       o��	S��j��A�*L

Loss���<

Adam/Loss/raw�L�<

Accuracy/__raw_  �?

Accuracy��?�7Z       o��	:��j��A�*L

Loss���<

Adam/Loss/rawS3�<

Accuracy/__raw_  �?

Accuracy��?��F�