ΏΤ'
Ύ''
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
ξ
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
PyFunc
input2Tin
output2Tout"
tokenstring"
Tin
list(type)("
Tout
list(type)(

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
@
Softplus
features"T
activations"T"
Ttype:
2

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
φ
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12b'v1.13.1-0-g6612da8951'λθ&
n
PlaceholderPlaceholder*'
_output_shapes
:?????????0*
dtype0*
shape:?????????0
p
Placeholder_1Placeholder*
dtype0*
shape:?????????*'
_output_shapes
:?????????
h
Placeholder_2Placeholder*#
_output_shapes
:?????????*
shape:?????????*
dtype0
h
Placeholder_3Placeholder*
shape:?????????*#
_output_shapes
:?????????*
dtype0
h
Placeholder_4Placeholder*#
_output_shapes
:?????????*
shape:?????????*
dtype0
h
Placeholder_5Placeholder*
shape:?????????*
dtype0*#
_output_shapes
:?????????
h
Placeholder_6Placeholder*
dtype0*
shape:?????????*#
_output_shapes
:?????????
N
Placeholder_7Placeholder*
dtype0*
_output_shapes
: *
shape: 
N
Placeholder_8Placeholder*
shape: *
_output_shapes
: *
dtype0
₯
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"0      *
_output_shapes
:*
dtype0*"
_class
loc:@pi/dense/kernel

.pi/dense/kernel/Initializer/random_uniform/minConst*"
_class
loc:@pi/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *άΎ

.pi/dense/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@pi/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *ά>
ο
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*

seed *"
_class
loc:@pi/dense/kernel*
T0*
seed2*
_output_shapes
:	0*
dtype0
Ϊ
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*"
_class
loc:@pi/dense/kernel*
_output_shapes
: *
T0
ν
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*"
_class
loc:@pi/dense/kernel*
T0*
_output_shapes
:	0
ί
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*"
_class
loc:@pi/dense/kernel*
T0*
_output_shapes
:	0
©
pi/dense/kernel
VariableV2*"
_class
loc:@pi/dense/kernel*
shared_name *
dtype0*
_output_shapes
:	0*
shape:	0*
	container 
Τ
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
validate_shape(*
T0*
_output_shapes
:	0*
use_locking(*"
_class
loc:@pi/dense/kernel

pi/dense/kernel/readIdentitypi/dense/kernel*
_output_shapes
:	0*
T0*"
_class
loc:@pi/dense/kernel

pi/dense/bias/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
_output_shapes	
:*
valueB*    *
dtype0

pi/dense/bias
VariableV2*
_output_shapes	
:*
shape:*
dtype0*
	container *
shared_name * 
_class
loc:@pi/dense/bias
Ώ
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros*
use_locking(* 
_class
loc:@pi/dense/bias*
_output_shapes	
:*
validate_shape(*
T0
u
pi/dense/bias/readIdentitypi/dense/bias*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes	
:

pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*(
_output_shapes
:?????????*
transpose_a( *
transpose_b( *
T0

pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*(
_output_shapes
:?????????*
data_formatNHWC*
T0
Z
pi/dense/TanhTanhpi/dense/BiasAdd*
T0*(
_output_shapes
:?????????
©
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"      *$
_class
loc:@pi/dense_1/kernel*
dtype0

0pi/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *Χ³έ½*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: *
dtype0

0pi/dense_1/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_1/kernel*
dtype0*
valueB
 *Χ³έ=*
_output_shapes
: 
φ
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
*
seed2*$
_class
loc:@pi/dense_1/kernel*
T0*

seed 
β
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@pi/dense_1/kernel
φ
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
T0* 
_output_shapes
:
*$
_class
loc:@pi/dense_1/kernel
θ
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
*
T0*$
_class
loc:@pi/dense_1/kernel
―
pi/dense_1/kernel
VariableV2*
shared_name *$
_class
loc:@pi/dense_1/kernel* 
_output_shapes
:
*
dtype0*
	container *
shape:

έ
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
T0* 
_output_shapes
:
*
validate_shape(*
use_locking(*$
_class
loc:@pi/dense_1/kernel

pi/dense_1/kernel/readIdentitypi/dense_1/kernel*$
_class
loc:@pi/dense_1/kernel*
T0* 
_output_shapes
:


!pi/dense_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*"
_class
loc:@pi/dense_1/bias*
valueB*    
‘
pi/dense_1/bias
VariableV2*"
_class
loc:@pi/dense_1/bias*
	container *
_output_shapes	
:*
shape:*
dtype0*
shared_name 
Η
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
use_locking(*
validate_shape(*"
_class
loc:@pi/dense_1/bias*
_output_shapes	
:*
T0
{
pi/dense_1/bias/readIdentitypi/dense_1/bias*"
_class
loc:@pi/dense_1/bias*
T0*
_output_shapes	
:

pi/dense_1/MatMulMatMulpi/dense/Tanhpi/dense_1/kernel/read*
transpose_a( *(
_output_shapes
:?????????*
transpose_b( *
T0

pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*(
_output_shapes
:?????????*
T0*
data_formatNHWC
^
pi/dense_1/TanhTanhpi/dense_1/BiasAdd*(
_output_shapes
:?????????*
T0
©
2pi/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:

0pi/dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *(Ύ*
dtype0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: 

0pi/dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *(>*
dtype0*$
_class
loc:@pi/dense_2/kernel
υ
:pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_2/kernel/Initializer/random_uniform/shape*$
_class
loc:@pi/dense_2/kernel*
dtype0*
seed2.*

seed *
_output_shapes
:	*
T0
β
0pi/dense_2/kernel/Initializer/random_uniform/subSub0pi/dense_2/kernel/Initializer/random_uniform/max0pi/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *$
_class
loc:@pi/dense_2/kernel
υ
0pi/dense_2/kernel/Initializer/random_uniform/mulMul:pi/dense_2/kernel/Initializer/random_uniform/RandomUniform0pi/dense_2/kernel/Initializer/random_uniform/sub*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:	*
T0
η
,pi/dense_2/kernel/Initializer/random_uniformAdd0pi/dense_2/kernel/Initializer/random_uniform/mul0pi/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	*$
_class
loc:@pi/dense_2/kernel*
T0
­
pi/dense_2/kernel
VariableV2*
shared_name *
	container *
shape:	*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:	*
dtype0
ά
pi/dense_2/kernel/AssignAssignpi/dense_2/kernel,pi/dense_2/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:	

pi/dense_2/kernel/readIdentitypi/dense_2/kernel*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:	

!pi/dense_2/bias/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*"
_class
loc:@pi/dense_2/bias

pi/dense_2/bias
VariableV2*
_output_shapes
:*
dtype0*
shape:*
	container *"
_class
loc:@pi/dense_2/bias*
shared_name 
Ζ
pi/dense_2/bias/AssignAssignpi/dense_2/bias!pi/dense_2/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias
z
pi/dense_2/bias/readIdentitypi/dense_2/bias*"
_class
loc:@pi/dense_2/bias*
T0*
_output_shapes
:

pi/dense_2/MatMulMatMulpi/dense_1/Tanhpi/dense_2/kernel/read*
transpose_a( *
T0*
transpose_b( *'
_output_shapes
:?????????

pi/dense_2/BiasAddBiasAddpi/dense_2/MatMulpi/dense_2/bias/read*'
_output_shapes
:?????????*
data_formatNHWC*
T0
i
pi/log_std/initial_valueConst*
dtype0*
valueB"   Ώ   Ώ*
_output_shapes
:
v

pi/log_std
VariableV2*
shared_name *
	container *
_output_shapes
:*
shape:*
dtype0
?
pi/log_std/AssignAssign
pi/log_stdpi/log_std/initial_value*
validate_shape(*
_class
loc:@pi/log_std*
_output_shapes
:*
use_locking(*
T0
k
pi/log_std/readIdentity
pi/log_std*
_class
loc:@pi/log_std*
T0*
_output_shapes
:
C
pi/ExpExppi/log_std/read*
T0*
_output_shapes
:
Z
pi/ShapeShapepi/dense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
Z
pi/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
\
pi/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

%pi/random_normal/RandomStandardNormalRandomStandardNormalpi/Shape*
T0*
seed2C*'
_output_shapes
:?????????*
dtype0*

seed 

pi/random_normal/mulMul%pi/random_normal/RandomStandardNormalpi/random_normal/stddev*
T0*'
_output_shapes
:?????????
v
pi/random_normalAddpi/random_normal/mulpi/random_normal/mean*'
_output_shapes
:?????????*
T0
Y
pi/mulMulpi/random_normalpi/Exp*'
_output_shapes
:?????????*
T0
[
pi/addAddpi/dense_2/BiasAddpi/mul*
T0*'
_output_shapes
:?????????
b
pi/subSubPlaceholder_1pi/dense_2/BiasAdd*
T0*'
_output_shapes
:?????????
E
pi/Exp_1Exppi/log_std/read*
_output_shapes
:*
T0
O

pi/add_1/yConst*
_output_shapes
: *
valueB
 *wΜ+2*
dtype0
J
pi/add_1Addpi/Exp_1
pi/add_1/y*
T0*
_output_shapes
:
Y

pi/truedivRealDivpi/subpi/add_1*
T0*'
_output_shapes
:?????????
M
pi/pow/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
U
pi/powPow
pi/truedivpi/pow/y*'
_output_shapes
:?????????*
T0
O

pi/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *   @
Q
pi/mul_1Mul
pi/mul_1/xpi/log_std/read*
T0*
_output_shapes
:
S
pi/add_2Addpi/powpi/mul_1*
T0*'
_output_shapes
:?????????
O

pi/add_3/yConst*
valueB
 *?λ?*
_output_shapes
: *
dtype0
W
pi/add_3Addpi/add_2
pi/add_3/y*
T0*'
_output_shapes
:?????????
O

pi/mul_2/xConst*
dtype0*
valueB
 *   Ώ*
_output_shapes
: 
W
pi/mul_2Mul
pi/mul_2/xpi/add_3*'
_output_shapes
:?????????*
T0
Z
pi/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
|
pi/SumSumpi/mul_2pi/Sum/reduction_indices*
	keep_dims( *#
_output_shapes
:?????????*

Tidx0*
T0
]
pi/sub_1Subpi/addpi/dense_2/BiasAdd*'
_output_shapes
:?????????*
T0
E
pi/Exp_2Exppi/log_std/read*
T0*
_output_shapes
:
O

pi/add_4/yConst*
valueB
 *wΜ+2*
_output_shapes
: *
dtype0
J
pi/add_4Addpi/Exp_2
pi/add_4/y*
T0*
_output_shapes
:
]
pi/truediv_1RealDivpi/sub_1pi/add_4*
T0*'
_output_shapes
:?????????
O

pi/pow_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
[
pi/pow_1Powpi/truediv_1
pi/pow_1/y*
T0*'
_output_shapes
:?????????
O

pi/mul_3/xConst*
_output_shapes
: *
valueB
 *   @*
dtype0
Q
pi/mul_3Mul
pi/mul_3/xpi/log_std/read*
T0*
_output_shapes
:
U
pi/add_5Addpi/pow_1pi/mul_3*'
_output_shapes
:?????????*
T0
O

pi/add_6/yConst*
dtype0*
_output_shapes
: *
valueB
 *?λ?
W
pi/add_6Addpi/add_5
pi/add_6/y*
T0*'
_output_shapes
:?????????
O

pi/mul_4/xConst*
dtype0*
valueB
 *   Ώ*
_output_shapes
: 
W
pi/mul_4Mul
pi/mul_4/xpi/add_6*
T0*'
_output_shapes
:?????????
\
pi/Sum_1/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 

pi/Sum_1Sumpi/mul_4pi/Sum_1/reduction_indices*

Tidx0*#
_output_shapes
:?????????*
	keep_dims( *
T0
q
pi/PlaceholderPlaceholder*
dtype0*'
_output_shapes
:?????????*
shape:?????????
s
pi/Placeholder_1Placeholder*
shape:?????????*'
_output_shapes
:?????????*
dtype0
O

pi/mul_5/xConst*
dtype0*
_output_shapes
: *
valueB
 *   @
Q
pi/mul_5Mul
pi/mul_5/xpi/log_std/read*
_output_shapes
:*
T0
>
pi/Exp_3Exppi/mul_5*
T0*
_output_shapes
:
O

pi/mul_6/xConst*
dtype0*
valueB
 *   @*
_output_shapes
: 
_
pi/mul_6Mul
pi/mul_6/xpi/Placeholder_1*
T0*'
_output_shapes
:?????????
K
pi/Exp_4Exppi/mul_6*
T0*'
_output_shapes
:?????????
e
pi/sub_2Subpi/Placeholderpi/dense_2/BiasAdd*
T0*'
_output_shapes
:?????????
O

pi/pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
W
pi/pow_2Powpi/sub_2
pi/pow_2/y*
T0*'
_output_shapes
:?????????
U
pi/add_7Addpi/pow_2pi/Exp_3*'
_output_shapes
:?????????*
T0
O

pi/add_8/yConst*
_output_shapes
: *
valueB
 *wΜ+2*
dtype0
W
pi/add_8Addpi/Exp_4
pi/add_8/y*'
_output_shapes
:?????????*
T0
]
pi/truediv_2RealDivpi/add_7pi/add_8*
T0*'
_output_shapes
:?????????
O

pi/sub_3/yConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
[
pi/sub_3Subpi/truediv_2
pi/sub_3/y*'
_output_shapes
:?????????*
T0
O

pi/mul_7/xConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
W
pi/mul_7Mul
pi/mul_7/xpi/sub_3*
T0*'
_output_shapes
:?????????
]
pi/add_9Addpi/mul_7pi/Placeholder_1*'
_output_shapes
:?????????*
T0
\
pi/sub_4Subpi/add_9pi/log_std/read*'
_output_shapes
:?????????*
T0
\
pi/Sum_2/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

pi/Sum_2Sumpi/sub_4pi/Sum_2/reduction_indices*
	keep_dims( *#
_output_shapes
:?????????*

Tidx0*
T0
R
pi/ConstConst*
_output_shapes
:*
valueB: *
dtype0
a
pi/MeanMeanpi/Sum_2pi/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
P
pi/add_10/yConst*
valueB
 *Η΅?*
_output_shapes
: *
dtype0
S
	pi/add_10Addpi/log_std/readpi/add_10/y*
_output_shapes
:*
T0
e
pi/Sum_3/reduction_indicesConst*
_output_shapes
: *
valueB :
?????????*
dtype0
t
pi/Sum_3Sum	pi/add_10pi/Sum_3/reduction_indices*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
M

pi/Const_1Const*
valueB *
_output_shapes
: *
dtype0
e
	pi/Mean_1Meanpi/Sum_3
pi/Const_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
₯
0vf/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"0      *"
_class
loc:@vf/dense/kernel*
_output_shapes
:*
dtype0

.vf/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *άΎ*
dtype0*"
_class
loc:@vf/dense/kernel

.vf/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ά>*"
_class
loc:@vf/dense/kernel
π
8vf/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0vf/dense/kernel/Initializer/random_uniform/shape*
T0*
seed2*
_output_shapes
:	0*
dtype0*"
_class
loc:@vf/dense/kernel*

seed 
Ϊ
.vf/dense/kernel/Initializer/random_uniform/subSub.vf/dense/kernel/Initializer/random_uniform/max.vf/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@vf/dense/kernel
ν
.vf/dense/kernel/Initializer/random_uniform/mulMul8vf/dense/kernel/Initializer/random_uniform/RandomUniform.vf/dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
T0
ί
*vf/dense/kernel/Initializer/random_uniformAdd.vf/dense/kernel/Initializer/random_uniform/mul.vf/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel
©
vf/dense/kernel
VariableV2*
shared_name *
dtype0*
shape:	0*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
	container 
Τ
vf/dense/kernel/AssignAssignvf/dense/kernel*vf/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
validate_shape(

vf/dense/kernel/readIdentityvf/dense/kernel*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0*
T0

vf/dense/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@vf/dense/bias*
dtype0*
_output_shapes	
:

vf/dense/bias
VariableV2*
dtype0*
	container *
_output_shapes	
:*
shape:* 
_class
loc:@vf/dense/bias*
shared_name 
Ώ
vf/dense/bias/AssignAssignvf/dense/biasvf/dense/bias/Initializer/zeros*
use_locking(*
T0*
_output_shapes	
:* 
_class
loc:@vf/dense/bias*
validate_shape(
u
vf/dense/bias/readIdentityvf/dense/bias*
T0* 
_class
loc:@vf/dense/bias*
_output_shapes	
:

vf/dense/MatMulMatMulPlaceholdervf/dense/kernel/read*(
_output_shapes
:?????????*
T0*
transpose_a( *
transpose_b( 

vf/dense/BiasAddBiasAddvf/dense/MatMulvf/dense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:?????????
Z
vf/dense/TanhTanhvf/dense/BiasAdd*(
_output_shapes
:?????????*
T0
©
2vf/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"      *$
_class
loc:@vf/dense_1/kernel

0vf/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *Χ³έ½*
_output_shapes
: *$
_class
loc:@vf/dense_1/kernel*
dtype0

0vf/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *Χ³έ=*$
_class
loc:@vf/dense_1/kernel
χ
:vf/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2vf/dense_1/kernel/Initializer/random_uniform/shape*$
_class
loc:@vf/dense_1/kernel*
T0*
dtype0* 
_output_shapes
:
*
seed2*

seed 
β
0vf/dense_1/kernel/Initializer/random_uniform/subSub0vf/dense_1/kernel/Initializer/random_uniform/max0vf/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@vf/dense_1/kernel*
_output_shapes
: 
φ
0vf/dense_1/kernel/Initializer/random_uniform/mulMul:vf/dense_1/kernel/Initializer/random_uniform/RandomUniform0vf/dense_1/kernel/Initializer/random_uniform/sub*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
T0
θ
,vf/dense_1/kernel/Initializer/random_uniformAdd0vf/dense_1/kernel/Initializer/random_uniform/mul0vf/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel*
T0
―
vf/dense_1/kernel
VariableV2*$
_class
loc:@vf/dense_1/kernel*
	container *
dtype0* 
_output_shapes
:
*
shape:
*
shared_name 
έ
vf/dense_1/kernel/AssignAssignvf/dense_1/kernel,vf/dense_1/kernel/Initializer/random_uniform*
validate_shape(*
T0*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
use_locking(

vf/dense_1/kernel/readIdentityvf/dense_1/kernel* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel*
T0

!vf/dense_1/bias/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@vf/dense_1/bias*
_output_shapes	
:
‘
vf/dense_1/bias
VariableV2*
_output_shapes	
:*
	container *
shape:*
shared_name *"
_class
loc:@vf/dense_1/bias*
dtype0
Η
vf/dense_1/bias/AssignAssignvf/dense_1/bias!vf/dense_1/bias/Initializer/zeros*
_output_shapes	
:*
validate_shape(*"
_class
loc:@vf/dense_1/bias*
T0*
use_locking(
{
vf/dense_1/bias/readIdentityvf/dense_1/bias*"
_class
loc:@vf/dense_1/bias*
T0*
_output_shapes	
:

vf/dense_1/MatMulMatMulvf/dense/Tanhvf/dense_1/kernel/read*
T0*(
_output_shapes
:?????????*
transpose_b( *
transpose_a( 

vf/dense_1/BiasAddBiasAddvf/dense_1/MatMulvf/dense_1/bias/read*
T0*(
_output_shapes
:?????????*
data_formatNHWC
^
vf/dense_1/TanhTanhvf/dense_1/BiasAdd*
T0*(
_output_shapes
:?????????
©
2vf/dense_2/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:*
valueB"      *
dtype0

0vf/dense_2/kernel/Initializer/random_uniform/minConst*$
_class
loc:@vf/dense_2/kernel*
dtype0*
valueB
 *IvΎ*
_output_shapes
: 

0vf/dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *Iv>*$
_class
loc:@vf/dense_2/kernel
φ
:vf/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2vf/dense_2/kernel/Initializer/random_uniform/shape*
seed2¬*

seed *
_output_shapes
:	*
dtype0*$
_class
loc:@vf/dense_2/kernel*
T0
β
0vf/dense_2/kernel/Initializer/random_uniform/subSub0vf/dense_2/kernel/Initializer/random_uniform/max0vf/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *$
_class
loc:@vf/dense_2/kernel*
T0
υ
0vf/dense_2/kernel/Initializer/random_uniform/mulMul:vf/dense_2/kernel/Initializer/random_uniform/RandomUniform0vf/dense_2/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	
η
,vf/dense_2/kernel/Initializer/random_uniformAdd0vf/dense_2/kernel/Initializer/random_uniform/mul0vf/dense_2/kernel/Initializer/random_uniform/min*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
T0
­
vf/dense_2/kernel
VariableV2*
shape:	*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
	container *
shared_name *
dtype0
ά
vf/dense_2/kernel/AssignAssignvf/dense_2/kernel,vf/dense_2/kernel/Initializer/random_uniform*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
T0*
validate_shape(*
_output_shapes
:	

vf/dense_2/kernel/readIdentityvf/dense_2/kernel*
T0*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	

!vf/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*
dtype0*
valueB*    *"
_class
loc:@vf/dense_2/bias

vf/dense_2/bias
VariableV2*
dtype0*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
	container *
shared_name *
shape:
Ζ
vf/dense_2/bias/AssignAssignvf/dense_2/bias!vf/dense_2/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:
z
vf/dense_2/bias/readIdentityvf/dense_2/bias*
T0*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias

vf/dense_2/MatMulMatMulvf/dense_1/Tanhvf/dense_2/kernel/read*
transpose_b( *
transpose_a( *'
_output_shapes
:?????????*
T0

vf/dense_2/BiasAddBiasAddvf/dense_2/MatMulvf/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:?????????
n

vf/SqueezeSqueezevf/dense_2/BiasAdd*#
_output_shapes
:?????????*
squeeze_dims
*
T0
₯
0vc/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"0      *
_output_shapes
:*"
_class
loc:@vc/dense/kernel

.vc/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *άΎ*"
_class
loc:@vc/dense/kernel*
_output_shapes
: *
dtype0

.vc/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *"
_class
loc:@vc/dense/kernel*
valueB
 *ά>
π
8vc/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0vc/dense/kernel/Initializer/random_uniform/shape*
seed2½*
_output_shapes
:	0*
T0*"
_class
loc:@vc/dense/kernel*
dtype0*

seed 
Ϊ
.vc/dense/kernel/Initializer/random_uniform/subSub.vc/dense/kernel/Initializer/random_uniform/max.vc/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@vc/dense/kernel*
_output_shapes
: 
ν
.vc/dense/kernel/Initializer/random_uniform/mulMul8vc/dense/kernel/Initializer/random_uniform/RandomUniform.vc/dense/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes
:	0*"
_class
loc:@vc/dense/kernel
ί
*vc/dense/kernel/Initializer/random_uniformAdd.vc/dense/kernel/Initializer/random_uniform/mul.vc/dense/kernel/Initializer/random_uniform/min*"
_class
loc:@vc/dense/kernel*
_output_shapes
:	0*
T0
©
vc/dense/kernel
VariableV2*
shared_name *"
_class
loc:@vc/dense/kernel*
	container *
shape:	0*
dtype0*
_output_shapes
:	0
Τ
vc/dense/kernel/AssignAssignvc/dense/kernel*vc/dense/kernel/Initializer/random_uniform*
use_locking(*"
_class
loc:@vc/dense/kernel*
T0*
_output_shapes
:	0*
validate_shape(

vc/dense/kernel/readIdentityvc/dense/kernel*"
_class
loc:@vc/dense/kernel*
T0*
_output_shapes
:	0

vc/dense/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes	
:* 
_class
loc:@vc/dense/bias

vc/dense/bias
VariableV2*
shared_name *
	container * 
_class
loc:@vc/dense/bias*
_output_shapes	
:*
shape:*
dtype0
Ώ
vc/dense/bias/AssignAssignvc/dense/biasvc/dense/bias/Initializer/zeros*
_output_shapes	
:*
T0* 
_class
loc:@vc/dense/bias*
use_locking(*
validate_shape(
u
vc/dense/bias/readIdentityvc/dense/bias*
T0* 
_class
loc:@vc/dense/bias*
_output_shapes	
:

vc/dense/MatMulMatMulPlaceholdervc/dense/kernel/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:?????????

vc/dense/BiasAddBiasAddvc/dense/MatMulvc/dense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:?????????
Z
vc/dense/TanhTanhvc/dense/BiasAdd*
T0*(
_output_shapes
:?????????
©
2vc/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:*$
_class
loc:@vc/dense_1/kernel

0vc/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *Χ³έ½*
dtype0*$
_class
loc:@vc/dense_1/kernel

0vc/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *Χ³έ=*$
_class
loc:@vc/dense_1/kernel*
dtype0*
_output_shapes
: 
χ
:vc/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2vc/dense_1/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@vc/dense_1/kernel*
seed2Ξ* 
_output_shapes
:
*
dtype0*

seed 
β
0vc/dense_1/kernel/Initializer/random_uniform/subSub0vc/dense_1/kernel/Initializer/random_uniform/max0vc/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@vc/dense_1/kernel
φ
0vc/dense_1/kernel/Initializer/random_uniform/mulMul:vc/dense_1/kernel/Initializer/random_uniform/RandomUniform0vc/dense_1/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:

θ
,vc/dense_1/kernel/Initializer/random_uniformAdd0vc/dense_1/kernel/Initializer/random_uniform/mul0vc/dense_1/kernel/Initializer/random_uniform/min*$
_class
loc:@vc/dense_1/kernel*
T0* 
_output_shapes
:

―
vc/dense_1/kernel
VariableV2*$
_class
loc:@vc/dense_1/kernel*
shape:
*
dtype0*
	container * 
_output_shapes
:
*
shared_name 
έ
vc/dense_1/kernel/AssignAssignvc/dense_1/kernel,vc/dense_1/kernel/Initializer/random_uniform* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel*
use_locking(*
validate_shape(*
T0

vc/dense_1/kernel/readIdentityvc/dense_1/kernel* 
_output_shapes
:
*
T0*$
_class
loc:@vc/dense_1/kernel

!vc/dense_1/bias/Initializer/zerosConst*
_output_shapes	
:*
dtype0*"
_class
loc:@vc/dense_1/bias*
valueB*    
‘
vc/dense_1/bias
VariableV2*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
shared_name *
	container *
dtype0*
shape:
Η
vc/dense_1/bias/AssignAssignvc/dense_1/bias!vc/dense_1/bias/Initializer/zeros*
use_locking(*
validate_shape(*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
T0
{
vc/dense_1/bias/readIdentityvc/dense_1/bias*
T0*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias

vc/dense_1/MatMulMatMulvc/dense/Tanhvc/dense_1/kernel/read*
transpose_b( *(
_output_shapes
:?????????*
T0*
transpose_a( 

vc/dense_1/BiasAddBiasAddvc/dense_1/MatMulvc/dense_1/bias/read*
data_formatNHWC*(
_output_shapes
:?????????*
T0
^
vc/dense_1/TanhTanhvc/dense_1/BiasAdd*(
_output_shapes
:?????????*
T0
©
2vc/dense_2/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@vc/dense_2/kernel*
_output_shapes
:*
dtype0*
valueB"      

0vc/dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *IvΎ*
dtype0*$
_class
loc:@vc/dense_2/kernel

0vc/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *$
_class
loc:@vc/dense_2/kernel*
valueB
 *Iv>
φ
:vc/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2vc/dense_2/kernel/Initializer/random_uniform/shape*
_output_shapes
:	*
seed2ί*
dtype0*
T0*$
_class
loc:@vc/dense_2/kernel*

seed 
β
0vc/dense_2/kernel/Initializer/random_uniform/subSub0vc/dense_2/kernel/Initializer/random_uniform/max0vc/dense_2/kernel/Initializer/random_uniform/min*$
_class
loc:@vc/dense_2/kernel*
T0*
_output_shapes
: 
υ
0vc/dense_2/kernel/Initializer/random_uniform/mulMul:vc/dense_2/kernel/Initializer/random_uniform/RandomUniform0vc/dense_2/kernel/Initializer/random_uniform/sub*$
_class
loc:@vc/dense_2/kernel*
T0*
_output_shapes
:	
η
,vc/dense_2/kernel/Initializer/random_uniformAdd0vc/dense_2/kernel/Initializer/random_uniform/mul0vc/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	*$
_class
loc:@vc/dense_2/kernel
­
vc/dense_2/kernel
VariableV2*
	container *
_output_shapes
:	*
dtype0*
shape:	*$
_class
loc:@vc/dense_2/kernel*
shared_name 
ά
vc/dense_2/kernel/AssignAssignvc/dense_2/kernel,vc/dense_2/kernel/Initializer/random_uniform*
validate_shape(*
T0*
use_locking(*
_output_shapes
:	*$
_class
loc:@vc/dense_2/kernel

vc/dense_2/kernel/readIdentityvc/dense_2/kernel*$
_class
loc:@vc/dense_2/kernel*
T0*
_output_shapes
:	

!vc/dense_2/bias/Initializer/zerosConst*
dtype0*
valueB*    *
_output_shapes
:*"
_class
loc:@vc/dense_2/bias

vc/dense_2/bias
VariableV2*
_output_shapes
:*
shape:*"
_class
loc:@vc/dense_2/bias*
dtype0*
	container *
shared_name 
Ζ
vc/dense_2/bias/AssignAssignvc/dense_2/bias!vc/dense_2/bias/Initializer/zeros*
validate_shape(*
use_locking(*"
_class
loc:@vc/dense_2/bias*
T0*
_output_shapes
:
z
vc/dense_2/bias/readIdentityvc/dense_2/bias*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
T0

vc/dense_2/MatMulMatMulvc/dense_1/Tanhvc/dense_2/kernel/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:?????????

vc/dense_2/BiasAddBiasAddvc/dense_2/MatMulvc/dense_2/bias/read*'
_output_shapes
:?????????*
data_formatNHWC*
T0
n

vc/SqueezeSqueezevc/dense_2/BiasAdd*
squeeze_dims
*
T0*#
_output_shapes
:?????????
@
NegNegpi/Sum*#
_output_shapes
:?????????*
T0
O
ConstConst*
_output_shapes
:*
valueB: *
dtype0
V
MeanMeanNegConst*
T0*
	keep_dims( *

Tidx0*
_output_shapes
: 
L
Const_1Const*
_output_shapes
: *
valueB
 *D
?*
dtype0
h
#penalty/penalty_param/initial_valueConst*
valueB
 *D
?*
_output_shapes
: *
dtype0
y
penalty/penalty_param
VariableV2*
_output_shapes
: *
dtype0*
shape: *
shared_name *
	container 
Φ
penalty/penalty_param/AssignAssignpenalty/penalty_param#penalty/penalty_param/initial_value*
validate_shape(*
use_locking(*
T0*
_output_shapes
: *(
_class
loc:@penalty/penalty_param

penalty/penalty_param/readIdentitypenalty/penalty_param*
_output_shapes
: *
T0*(
_class
loc:@penalty/penalty_param
Q
SoftplusSoftpluspenalty/penalty_param/read*
_output_shapes
: *
T0
I
Neg_1Negpenalty/penalty_param/read*
_output_shapes
: *
T0
J
sub/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ΘA
A
subSubPlaceholder_8sub/y*
T0*
_output_shapes
: 
7
mulMulNeg_1sub*
_output_shapes
: *
T0
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
X
gradients/grad_ys_0Const*
valueB
 *  ?*
_output_shapes
: *
dtype0
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
S
gradients/mul_grad/MulMulgradients/Fillsub*
_output_shapes
: *
T0
W
gradients/mul_grad/Mul_1Mulgradients/FillNeg_1*
T0*
_output_shapes
: 
_
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Mul^gradients/mul_grad/Mul_1
Α
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Mul$^gradients/mul_grad/tuple/group_deps*)
_class
loc:@gradients/mul_grad/Mul*
T0*
_output_shapes
: 
Η
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Mul_1$^gradients/mul_grad/tuple/group_deps*
_output_shapes
: *+
_class!
loc:@gradients/mul_grad/Mul_1*
T0
m
gradients/Neg_1_grad/NegNeg+gradients/mul_grad/tuple/control_dependency*
T0*
_output_shapes
: 
`
Reshape/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
n
ReshapeReshapegradients/Neg_1_grad/NegReshape/shape*
T0*
Tshape0*
_output_shapes
:
S
concat/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
@
concatIdentityReshape*
_output_shapes
:*
T0
f
PyFuncPyFuncconcat*
Tin
2*
_output_shapes
:*
Tout
2*
token
pyfunc_0
Q
Const_2Const*
dtype0*
_output_shapes
:*
valueB:
Q
split/split_dimConst*
_output_shapes
: *
value	B : *
dtype0
s
splitSplitVPyFuncConst_2split/split_dim*
	num_split*
T0*

Tlen0*
_output_shapes
:
R
Reshape_1/shapeConst*
dtype0*
valueB *
_output_shapes
: 
[
	Reshape_1ReshapesplitReshape_1/shape*
_output_shapes
: *
T0*
Tshape0

beta1_power/initial_valueConst*
valueB
 *fff?*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
dtype0

beta1_power
VariableV2*
shape: *(
_class
loc:@penalty/penalty_param*
shared_name *
	container *
_output_shapes
: *
dtype0
Έ
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*(
_class
loc:@penalty/penalty_param
t
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*(
_class
loc:@penalty/penalty_param

beta2_power/initial_valueConst*
dtype0*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
valueB
 *wΎ?

beta2_power
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: *(
_class
loc:@penalty/penalty_param
Έ
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*(
_class
loc:@penalty/penalty_param*
validate_shape(*
use_locking(*
_output_shapes
: 
t
beta2_power/readIdentitybeta2_power*(
_class
loc:@penalty/penalty_param*
T0*
_output_shapes
: 

,penalty/penalty_param/Adam/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *(
_class
loc:@penalty/penalty_param*
dtype0
¨
penalty/penalty_param/Adam
VariableV2*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
dtype0*
shared_name *
	container *
shape: 
ι
!penalty/penalty_param/Adam/AssignAssignpenalty/penalty_param/Adam,penalty/penalty_param/Adam/Initializer/zeros*
validate_shape(*(
_class
loc:@penalty/penalty_param*
T0*
_output_shapes
: *
use_locking(

penalty/penalty_param/Adam/readIdentitypenalty/penalty_param/Adam*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
T0

.penalty/penalty_param/Adam_1/Initializer/zerosConst*
valueB
 *    *(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
dtype0
ͺ
penalty/penalty_param/Adam_1
VariableV2*
shape: *
_output_shapes
: *
	container *
dtype0*
shared_name *(
_class
loc:@penalty/penalty_param
ο
#penalty/penalty_param/Adam_1/AssignAssignpenalty/penalty_param/Adam_1.penalty/penalty_param/Adam_1/Initializer/zeros*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
use_locking(*
T0*
validate_shape(

!penalty/penalty_param/Adam_1/readIdentitypenalty/penalty_param/Adam_1*(
_class
loc:@penalty/penalty_param*
T0*
_output_shapes
: 
W
Adam/learning_rateConst*
_output_shapes
: *
valueB
 *ΝΜL=*
dtype0
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *wΎ?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
dtype0*
valueB
 *wΜ+2*
_output_shapes
: 
δ
+Adam/update_penalty/penalty_param/ApplyAdam	ApplyAdampenalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_1*
_output_shapes
: *
use_nesterov( *(
_class
loc:@penalty/penalty_param*
use_locking( *
T0
¦
Adam/mulMulbeta1_power/read
Adam/beta1,^Adam/update_penalty/penalty_param/ApplyAdam*
T0*
_output_shapes
: *(
_class
loc:@penalty/penalty_param
 
Adam/AssignAssignbeta1_powerAdam/mul*
T0*
use_locking( *(
_class
loc:@penalty/penalty_param*
validate_shape(*
_output_shapes
: 
¨

Adam/mul_1Mulbeta2_power/read
Adam/beta2,^Adam/update_penalty/penalty_param/ApplyAdam*
T0*(
_class
loc:@penalty/penalty_param*
_output_shapes
: 
€
Adam/Assign_1Assignbeta2_power
Adam/mul_1*(
_class
loc:@penalty/penalty_param*
use_locking( *
T0*
_output_shapes
: *
validate_shape(
X
AdamNoOp^Adam/Assign^Adam/Assign_1,^Adam/update_penalty/penalty_param/ApplyAdam
i
Reshape_2/shapeConst^Adam*
_output_shapes
:*
dtype0*
valueB:
?????????
t
	Reshape_2Reshapepenalty/penalty_param/readReshape_2/shape*
_output_shapes
:*
Tshape0*
T0
\
concat_1/concat_dimConst^Adam*
dtype0*
_output_shapes
: *
value	B : 
D
concat_1Identity	Reshape_2*
T0*
_output_shapes
:
h
PyFunc_1PyFuncconcat_1*
Tin
2*
Tout
2*
token
pyfunc_1*
_output_shapes
:
X
Const_3Const^Adam*
dtype0*
_output_shapes
:*
valueB:
Z
split_1/split_dimConst^Adam*
value	B : *
dtype0*
_output_shapes
: 
w
split_1SplitVPyFunc_1Const_3split_1/split_dim*
T0*
	num_split*
_output_shapes
:*

Tlen0
Y
Reshape_3/shapeConst^Adam*
_output_shapes
: *
dtype0*
valueB 
]
	Reshape_3Reshapesplit_1Reshape_3/shape*
Tshape0*
_output_shapes
: *
T0
¦
AssignAssignpenalty/penalty_param	Reshape_3*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
use_locking(*
T0*
validate_shape(
"

group_depsNoOp^Adam^Assign
(
group_deps_1NoOp^Adam^group_deps
Q
sub_1Subpi/SumPlaceholder_6*#
_output_shapes
:?????????*
T0
?
ExpExpsub_1*
T0*#
_output_shapes
:?????????
N
mul_1MulExpPlaceholder_2*
T0*#
_output_shapes
:?????????
Q
Const_4Const*
_output_shapes
:*
dtype0*
valueB: 
\
Mean_1Meanmul_1Const_4*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
N
mul_2MulExpPlaceholder_3*
T0*#
_output_shapes
:?????????
Q
Const_5Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_2Meanmul_2Const_5*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
L
mul_3/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
A
mul_3Mulmul_3/x	pi/Mean_1*
_output_shapes
: *
T0
:
addAddMean_1mul_3*
T0*
_output_shapes
: 
?
mul_4MulSoftplusMean_2*
T0*
_output_shapes
: 
9
sub_2Subaddmul_4*
_output_shapes
: *
T0
L
add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
@
add_1Addadd_1/xSoftplus*
_output_shapes
: *
T0
A
truedivRealDivsub_2add_1*
_output_shapes
: *
T0
6
Neg_2Negtruediv*
T0*
_output_shapes
: 
T
gradients_1/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
Z
gradients_1/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
_output_shapes
: *
T0*

index_type0
T
gradients_1/Neg_2_grad/NegNeggradients_1/Fill*
_output_shapes
: *
T0
a
gradients_1/truediv_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
c
 gradients_1/truediv_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
Ζ
.gradients_1/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/truediv_grad/Shape gradients_1/truediv_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
o
 gradients_1/truediv_grad/RealDivRealDivgradients_1/Neg_2_grad/Negadd_1*
T0*
_output_shapes
: 
³
gradients_1/truediv_grad/SumSum gradients_1/truediv_grad/RealDiv.gradients_1/truediv_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
T0*
	keep_dims( 

 gradients_1/truediv_grad/ReshapeReshapegradients_1/truediv_grad/Sumgradients_1/truediv_grad/Shape*
Tshape0*
_output_shapes
: *
T0
K
gradients_1/truediv_grad/NegNegsub_2*
T0*
_output_shapes
: 
s
"gradients_1/truediv_grad/RealDiv_1RealDivgradients_1/truediv_grad/Negadd_1*
_output_shapes
: *
T0
y
"gradients_1/truediv_grad/RealDiv_2RealDiv"gradients_1/truediv_grad/RealDiv_1add_1*
T0*
_output_shapes
: 

gradients_1/truediv_grad/mulMulgradients_1/Neg_2_grad/Neg"gradients_1/truediv_grad/RealDiv_2*
T0*
_output_shapes
: 
³
gradients_1/truediv_grad/Sum_1Sumgradients_1/truediv_grad/mul0gradients_1/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0

"gradients_1/truediv_grad/Reshape_1Reshapegradients_1/truediv_grad/Sum_1 gradients_1/truediv_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
d
gradients_1/sub_2_grad/NegNeg gradients_1/truediv_grad/Reshape*
T0*
_output_shapes
: 
f
gradients_1/mul_4_grad/MulMulgradients_1/sub_2_grad/NegMean_2*
T0*
_output_shapes
: 
j
gradients_1/mul_4_grad/Mul_1Mulgradients_1/sub_2_grad/NegSoftplus*
_output_shapes
: *
T0
o
%gradients_1/Mean_1_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
¦
gradients_1/Mean_1_grad/ReshapeReshape gradients_1/truediv_grad/Reshape%gradients_1/Mean_1_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
b
gradients_1/Mean_1_grad/ShapeShapemul_1*
T0*
out_type0*
_output_shapes
:
€
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*

Tmultiples0*#
_output_shapes
:?????????*
T0
d
gradients_1/Mean_1_grad/Shape_1Shapemul_1*
out_type0*
T0*
_output_shapes
:
b
gradients_1/Mean_1_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
g
gradients_1/Mean_1_grad/ConstConst*
_output_shapes
:*
valueB: *
dtype0
’
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*
_output_shapes
: *

Tidx0*
T0*
	keep_dims( 
i
gradients_1/Mean_1_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
¦
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
c
!gradients_1/Mean_1_grad/Maximum/yConst*
_output_shapes
: *
value	B :*
dtype0

gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
_output_shapes
: *
T0

 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
T0*
_output_shapes
: 

gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

SrcT0*

DstT0*
Truncate( *
_output_shapes
: 

gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*#
_output_shapes
:?????????
o
gradients_1/mul_3_grad/MulMul gradients_1/truediv_grad/Reshape	pi/Mean_1*
T0*
_output_shapes
: 
o
gradients_1/mul_3_grad/Mul_1Mul gradients_1/truediv_grad/Reshapemul_3/x*
T0*
_output_shapes
: 
o
%gradients_1/Mean_2_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’
gradients_1/Mean_2_grad/ReshapeReshapegradients_1/mul_4_grad/Mul_1%gradients_1/Mean_2_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
b
gradients_1/Mean_2_grad/ShapeShapemul_2*
_output_shapes
:*
out_type0*
T0
€
gradients_1/Mean_2_grad/TileTilegradients_1/Mean_2_grad/Reshapegradients_1/Mean_2_grad/Shape*#
_output_shapes
:?????????*
T0*

Tmultiples0
d
gradients_1/Mean_2_grad/Shape_1Shapemul_2*
T0*
_output_shapes
:*
out_type0
b
gradients_1/Mean_2_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
g
gradients_1/Mean_2_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
’
gradients_1/Mean_2_grad/ProdProdgradients_1/Mean_2_grad/Shape_1gradients_1/Mean_2_grad/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
i
gradients_1/Mean_2_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
¦
gradients_1/Mean_2_grad/Prod_1Prodgradients_1/Mean_2_grad/Shape_2gradients_1/Mean_2_grad/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
c
!gradients_1/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_1/Mean_2_grad/MaximumMaximumgradients_1/Mean_2_grad/Prod_1!gradients_1/Mean_2_grad/Maximum/y*
T0*
_output_shapes
: 

 gradients_1/Mean_2_grad/floordivFloorDivgradients_1/Mean_2_grad/Prodgradients_1/Mean_2_grad/Maximum*
T0*
_output_shapes
: 

gradients_1/Mean_2_grad/CastCast gradients_1/Mean_2_grad/floordiv*
Truncate( *
_output_shapes
: *

SrcT0*

DstT0

gradients_1/Mean_2_grad/truedivRealDivgradients_1/Mean_2_grad/Tilegradients_1/Mean_2_grad/Cast*#
_output_shapes
:?????????*
T0
_
gradients_1/mul_1_grad/ShapeShapeExp*
_output_shapes
:*
T0*
out_type0
k
gradients_1/mul_1_grad/Shape_1ShapePlaceholder_2*
T0*
_output_shapes
:*
out_type0
ΐ
,gradients_1/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_1_grad/Shapegradients_1/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????

gradients_1/mul_1_grad/MulMulgradients_1/Mean_1_grad/truedivPlaceholder_2*
T0*#
_output_shapes
:?????????
«
gradients_1/mul_1_grad/SumSumgradients_1/mul_1_grad/Mul,gradients_1/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients_1/mul_1_grad/ReshapeReshapegradients_1/mul_1_grad/Sumgradients_1/mul_1_grad/Shape*#
_output_shapes
:?????????*
Tshape0*
T0
w
gradients_1/mul_1_grad/Mul_1MulExpgradients_1/Mean_1_grad/truediv*
T0*#
_output_shapes
:?????????
±
gradients_1/mul_1_grad/Sum_1Sumgradients_1/mul_1_grad/Mul_1.gradients_1/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
₯
 gradients_1/mul_1_grad/Reshape_1Reshapegradients_1/mul_1_grad/Sum_1gradients_1/mul_1_grad/Shape_1*#
_output_shapes
:?????????*
T0*
Tshape0
k
(gradients_1/pi/Mean_1_grad/Reshape/shapeConst*
dtype0*
valueB *
_output_shapes
: 
€
"gradients_1/pi/Mean_1_grad/ReshapeReshapegradients_1/mul_3_grad/Mul_1(gradients_1/pi/Mean_1_grad/Reshape/shape*
T0*
_output_shapes
: *
Tshape0
c
 gradients_1/pi/Mean_1_grad/ConstConst*
valueB *
_output_shapes
: *
dtype0
 
gradients_1/pi/Mean_1_grad/TileTile"gradients_1/pi/Mean_1_grad/Reshape gradients_1/pi/Mean_1_grad/Const*
T0*
_output_shapes
: *

Tmultiples0
g
"gradients_1/pi/Mean_1_grad/Const_1Const*
valueB
 *  ?*
_output_shapes
: *
dtype0

"gradients_1/pi/Mean_1_grad/truedivRealDivgradients_1/pi/Mean_1_grad/Tile"gradients_1/pi/Mean_1_grad/Const_1*
_output_shapes
: *
T0
_
gradients_1/mul_2_grad/ShapeShapeExp*
T0*
out_type0*
_output_shapes
:
k
gradients_1/mul_2_grad/Shape_1ShapePlaceholder_3*
T0*
_output_shapes
:*
out_type0
ΐ
,gradients_1/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_2_grad/Shapegradients_1/mul_2_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0

gradients_1/mul_2_grad/MulMulgradients_1/Mean_2_grad/truedivPlaceholder_3*
T0*#
_output_shapes
:?????????
«
gradients_1/mul_2_grad/SumSumgradients_1/mul_2_grad/Mul,gradients_1/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 

gradients_1/mul_2_grad/ReshapeReshapegradients_1/mul_2_grad/Sumgradients_1/mul_2_grad/Shape*
T0*#
_output_shapes
:?????????*
Tshape0
w
gradients_1/mul_2_grad/Mul_1MulExpgradients_1/Mean_2_grad/truediv*
T0*#
_output_shapes
:?????????
±
gradients_1/mul_2_grad/Sum_1Sumgradients_1/mul_2_grad/Mul_1.gradients_1/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
₯
 gradients_1/mul_2_grad/Reshape_1Reshapegradients_1/mul_2_grad/Sum_1gradients_1/mul_2_grad/Shape_1*
T0*#
_output_shapes
:?????????*
Tshape0
i
gradients_1/pi/Sum_3_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients_1/pi/Sum_3_grad/SizeConst*2
_class(
&$loc:@gradients_1/pi/Sum_3_grad/Shape*
value	B :*
_output_shapes
: *
dtype0
΅
gradients_1/pi/Sum_3_grad/addAddpi/Sum_3/reduction_indicesgradients_1/pi/Sum_3_grad/Size*
T0*
_output_shapes
: *2
_class(
&$loc:@gradients_1/pi/Sum_3_grad/Shape
½
gradients_1/pi/Sum_3_grad/modFloorModgradients_1/pi/Sum_3_grad/addgradients_1/pi/Sum_3_grad/Size*2
_class(
&$loc:@gradients_1/pi/Sum_3_grad/Shape*
T0*
_output_shapes
: 

!gradients_1/pi/Sum_3_grad/Shape_1Const*
dtype0*
valueB *2
_class(
&$loc:@gradients_1/pi/Sum_3_grad/Shape*
_output_shapes
: 

%gradients_1/pi/Sum_3_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : *2
_class(
&$loc:@gradients_1/pi/Sum_3_grad/Shape

%gradients_1/pi/Sum_3_grad/range/deltaConst*
dtype0*
value	B :*2
_class(
&$loc:@gradients_1/pi/Sum_3_grad/Shape*
_output_shapes
: 
ς
gradients_1/pi/Sum_3_grad/rangeRange%gradients_1/pi/Sum_3_grad/range/startgradients_1/pi/Sum_3_grad/Size%gradients_1/pi/Sum_3_grad/range/delta*
_output_shapes
:*

Tidx0*2
_class(
&$loc:@gradients_1/pi/Sum_3_grad/Shape

$gradients_1/pi/Sum_3_grad/Fill/valueConst*
_output_shapes
: *2
_class(
&$loc:@gradients_1/pi/Sum_3_grad/Shape*
value	B :*
dtype0
Φ
gradients_1/pi/Sum_3_grad/FillFill!gradients_1/pi/Sum_3_grad/Shape_1$gradients_1/pi/Sum_3_grad/Fill/value*
_output_shapes
: *

index_type0*2
_class(
&$loc:@gradients_1/pi/Sum_3_grad/Shape*
T0

'gradients_1/pi/Sum_3_grad/DynamicStitchDynamicStitchgradients_1/pi/Sum_3_grad/rangegradients_1/pi/Sum_3_grad/modgradients_1/pi/Sum_3_grad/Shapegradients_1/pi/Sum_3_grad/Fill*
T0*
_output_shapes
:*
N*2
_class(
&$loc:@gradients_1/pi/Sum_3_grad/Shape

#gradients_1/pi/Sum_3_grad/Maximum/yConst*
value	B :*
dtype0*2
_class(
&$loc:@gradients_1/pi/Sum_3_grad/Shape*
_output_shapes
: 
Σ
!gradients_1/pi/Sum_3_grad/MaximumMaximum'gradients_1/pi/Sum_3_grad/DynamicStitch#gradients_1/pi/Sum_3_grad/Maximum/y*
_output_shapes
:*2
_class(
&$loc:@gradients_1/pi/Sum_3_grad/Shape*
T0
Λ
"gradients_1/pi/Sum_3_grad/floordivFloorDivgradients_1/pi/Sum_3_grad/Shape!gradients_1/pi/Sum_3_grad/Maximum*
T0*2
_class(
&$loc:@gradients_1/pi/Sum_3_grad/Shape*
_output_shapes
:
¬
!gradients_1/pi/Sum_3_grad/ReshapeReshape"gradients_1/pi/Mean_1_grad/truediv'gradients_1/pi/Sum_3_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
€
gradients_1/pi/Sum_3_grad/TileTile!gradients_1/pi/Sum_3_grad/Reshape"gradients_1/pi/Sum_3_grad/floordiv*
T0*
_output_shapes
:*

Tmultiples0
Β
gradients_1/AddNAddNgradients_1/mul_1_grad/Reshapegradients_1/mul_2_grad/Reshape*#
_output_shapes
:?????????*1
_class'
%#loc:@gradients_1/mul_1_grad/Reshape*
N*
T0
d
gradients_1/Exp_grad/mulMulgradients_1/AddNExp*
T0*#
_output_shapes
:?????????
j
 gradients_1/pi/add_10_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
e
"gradients_1/pi/add_10_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
Μ
0gradients_1/pi/add_10_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/pi/add_10_grad/Shape"gradients_1/pi/add_10_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
Ή
gradients_1/pi/add_10_grad/SumSumgradients_1/pi/Sum_3_grad/Tile0gradients_1/pi/add_10_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
’
"gradients_1/pi/add_10_grad/ReshapeReshapegradients_1/pi/add_10_grad/Sum gradients_1/pi/add_10_grad/Shape*
_output_shapes
:*
T0*
Tshape0
Ή
 gradients_1/pi/add_10_grad/Sum_1Sumgradients_1/pi/Sum_3_grad/Tile2gradients_1/pi/add_10_grad/BroadcastGradientArgs:1*
_output_shapes
: *

Tidx0*
T0*
	keep_dims( 
€
$gradients_1/pi/add_10_grad/Reshape_1Reshape gradients_1/pi/add_10_grad/Sum_1"gradients_1/pi/add_10_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
b
gradients_1/sub_1_grad/ShapeShapepi/Sum*
_output_shapes
:*
T0*
out_type0
k
gradients_1/sub_1_grad/Shape_1ShapePlaceholder_6*
T0*
_output_shapes
:*
out_type0
ΐ
,gradients_1/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_1_grad/Shapegradients_1/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
©
gradients_1/sub_1_grad/SumSumgradients_1/Exp_grad/mul,gradients_1/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

gradients_1/sub_1_grad/ReshapeReshapegradients_1/sub_1_grad/Sumgradients_1/sub_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????
­
gradients_1/sub_1_grad/Sum_1Sumgradients_1/Exp_grad/mul.gradients_1/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
b
gradients_1/sub_1_grad/NegNeggradients_1/sub_1_grad/Sum_1*
_output_shapes
:*
T0
£
 gradients_1/sub_1_grad/Reshape_1Reshapegradients_1/sub_1_grad/Neggradients_1/sub_1_grad/Shape_1*#
_output_shapes
:?????????*
T0*
Tshape0
e
gradients_1/pi/Sum_grad/ShapeShapepi/mul_2*
_output_shapes
:*
T0*
out_type0

gradients_1/pi/Sum_grad/SizeConst*
dtype0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
value	B :*
_output_shapes
: 
­
gradients_1/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients_1/pi/Sum_grad/Size*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
T0*
_output_shapes
: 
΅
gradients_1/pi/Sum_grad/modFloorModgradients_1/pi/Sum_grad/addgradients_1/pi/Sum_grad/Size*
_output_shapes
: *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
T0

gradients_1/pi/Sum_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape

#gradients_1/pi/Sum_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape

#gradients_1/pi/Sum_grad/range/deltaConst*
_output_shapes
: *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
value	B :
θ
gradients_1/pi/Sum_grad/rangeRange#gradients_1/pi/Sum_grad/range/startgradients_1/pi/Sum_grad/Size#gradients_1/pi/Sum_grad/range/delta*
_output_shapes
:*

Tidx0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape

"gradients_1/pi/Sum_grad/Fill/valueConst*
dtype0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: *
value	B :
Ξ
gradients_1/pi/Sum_grad/FillFillgradients_1/pi/Sum_grad/Shape_1"gradients_1/pi/Sum_grad/Fill/value*
T0*
_output_shapes
: *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*

index_type0

%gradients_1/pi/Sum_grad/DynamicStitchDynamicStitchgradients_1/pi/Sum_grad/rangegradients_1/pi/Sum_grad/modgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Fill*
N*
_output_shapes
:*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
T0

!gradients_1/pi/Sum_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape
Λ
gradients_1/pi/Sum_grad/MaximumMaximum%gradients_1/pi/Sum_grad/DynamicStitch!gradients_1/pi/Sum_grad/Maximum/y*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
:*
T0
Γ
 gradients_1/pi/Sum_grad/floordivFloorDivgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Maximum*
_output_shapes
:*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
T0
Ί
gradients_1/pi/Sum_grad/ReshapeReshapegradients_1/sub_1_grad/Reshape%gradients_1/pi/Sum_grad/DynamicStitch*0
_output_shapes
:??????????????????*
Tshape0*
T0
«
gradients_1/pi/Sum_grad/TileTilegradients_1/pi/Sum_grad/Reshape gradients_1/pi/Sum_grad/floordiv*
T0*'
_output_shapes
:?????????*

Tmultiples0
b
gradients_1/pi/mul_2_grad/ShapeConst*
_output_shapes
: *
valueB *
dtype0
i
!gradients_1/pi/mul_2_grad/Shape_1Shapepi/add_3*
T0*
_output_shapes
:*
out_type0
Ι
/gradients_1/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/mul_2_grad/Shape!gradients_1/pi/mul_2_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
~
gradients_1/pi/mul_2_grad/MulMulgradients_1/pi/Sum_grad/Tilepi/add_3*
T0*'
_output_shapes
:?????????
΄
gradients_1/pi/mul_2_grad/SumSumgradients_1/pi/mul_2_grad/Mul/gradients_1/pi/mul_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:

!gradients_1/pi/mul_2_grad/ReshapeReshapegradients_1/pi/mul_2_grad/Sumgradients_1/pi/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes
: 

gradients_1/pi/mul_2_grad/Mul_1Mul
pi/mul_2/xgradients_1/pi/Sum_grad/Tile*
T0*'
_output_shapes
:?????????
Ί
gradients_1/pi/mul_2_grad/Sum_1Sumgradients_1/pi/mul_2_grad/Mul_11gradients_1/pi/mul_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
²
#gradients_1/pi/mul_2_grad/Reshape_1Reshapegradients_1/pi/mul_2_grad/Sum_1!gradients_1/pi/mul_2_grad/Shape_1*'
_output_shapes
:?????????*
T0*
Tshape0
g
gradients_1/pi/add_3_grad/ShapeShapepi/add_2*
_output_shapes
:*
out_type0*
T0
d
!gradients_1/pi/add_3_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
Ι
/gradients_1/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_3_grad/Shape!gradients_1/pi/add_3_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
Ί
gradients_1/pi/add_3_grad/SumSum#gradients_1/pi/mul_2_grad/Reshape_1/gradients_1/pi/add_3_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0
¬
!gradients_1/pi/add_3_grad/ReshapeReshapegradients_1/pi/add_3_grad/Sumgradients_1/pi/add_3_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
Ύ
gradients_1/pi/add_3_grad/Sum_1Sum#gradients_1/pi/mul_2_grad/Reshape_11gradients_1/pi/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
‘
#gradients_1/pi/add_3_grad/Reshape_1Reshapegradients_1/pi/add_3_grad/Sum_1!gradients_1/pi/add_3_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
e
gradients_1/pi/add_2_grad/ShapeShapepi/pow*
out_type0*
T0*
_output_shapes
:
k
!gradients_1/pi/add_2_grad/Shape_1Const*
_output_shapes
:*
valueB:*
dtype0
Ι
/gradients_1/pi/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_2_grad/Shape!gradients_1/pi/add_2_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
Έ
gradients_1/pi/add_2_grad/SumSum!gradients_1/pi/add_3_grad/Reshape/gradients_1/pi/add_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
¬
!gradients_1/pi/add_2_grad/ReshapeReshapegradients_1/pi/add_2_grad/Sumgradients_1/pi/add_2_grad/Shape*'
_output_shapes
:?????????*
T0*
Tshape0
Ό
gradients_1/pi/add_2_grad/Sum_1Sum!gradients_1/pi/add_3_grad/Reshape1gradients_1/pi/add_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
₯
#gradients_1/pi/add_2_grad/Reshape_1Reshapegradients_1/pi/add_2_grad/Sum_1!gradients_1/pi/add_2_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
g
gradients_1/pi/pow_grad/ShapeShape
pi/truediv*
_output_shapes
:*
T0*
out_type0
b
gradients_1/pi/pow_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
Γ
-gradients_1/pi/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/pow_grad/Shapegradients_1/pi/pow_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0

gradients_1/pi/pow_grad/mulMul!gradients_1/pi/add_2_grad/Reshapepi/pow/y*
T0*'
_output_shapes
:?????????
b
gradients_1/pi/pow_grad/sub/yConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
l
gradients_1/pi/pow_grad/subSubpi/pow/ygradients_1/pi/pow_grad/sub/y*
T0*
_output_shapes
: 
}
gradients_1/pi/pow_grad/PowPow
pi/truedivgradients_1/pi/pow_grad/sub*
T0*'
_output_shapes
:?????????

gradients_1/pi/pow_grad/mul_1Mulgradients_1/pi/pow_grad/mulgradients_1/pi/pow_grad/Pow*
T0*'
_output_shapes
:?????????
°
gradients_1/pi/pow_grad/SumSumgradients_1/pi/pow_grad/mul_1-gradients_1/pi/pow_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
¦
gradients_1/pi/pow_grad/ReshapeReshapegradients_1/pi/pow_grad/Sumgradients_1/pi/pow_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
f
!gradients_1/pi/pow_grad/Greater/yConst*
valueB
 *    *
_output_shapes
: *
dtype0

gradients_1/pi/pow_grad/GreaterGreater
pi/truediv!gradients_1/pi/pow_grad/Greater/y*
T0*'
_output_shapes
:?????????
q
'gradients_1/pi/pow_grad/ones_like/ShapeShape
pi/truediv*
_output_shapes
:*
T0*
out_type0
l
'gradients_1/pi/pow_grad/ones_like/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ώ
!gradients_1/pi/pow_grad/ones_likeFill'gradients_1/pi/pow_grad/ones_like/Shape'gradients_1/pi/pow_grad/ones_like/Const*

index_type0*
T0*'
_output_shapes
:?????????
ͺ
gradients_1/pi/pow_grad/SelectSelectgradients_1/pi/pow_grad/Greater
pi/truediv!gradients_1/pi/pow_grad/ones_like*
T0*'
_output_shapes
:?????????
t
gradients_1/pi/pow_grad/LogLoggradients_1/pi/pow_grad/Select*'
_output_shapes
:?????????*
T0
m
"gradients_1/pi/pow_grad/zeros_like	ZerosLike
pi/truediv*'
_output_shapes
:?????????*
T0
Ύ
 gradients_1/pi/pow_grad/Select_1Selectgradients_1/pi/pow_grad/Greatergradients_1/pi/pow_grad/Log"gradients_1/pi/pow_grad/zeros_like*'
_output_shapes
:?????????*
T0

gradients_1/pi/pow_grad/mul_2Mul!gradients_1/pi/add_2_grad/Reshapepi/pow*'
_output_shapes
:?????????*
T0

gradients_1/pi/pow_grad/mul_3Mulgradients_1/pi/pow_grad/mul_2 gradients_1/pi/pow_grad/Select_1*
T0*'
_output_shapes
:?????????
΄
gradients_1/pi/pow_grad/Sum_1Sumgradients_1/pi/pow_grad/mul_3/gradients_1/pi/pow_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0

!gradients_1/pi/pow_grad/Reshape_1Reshapegradients_1/pi/pow_grad/Sum_1gradients_1/pi/pow_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
b
gradients_1/pi/mul_1_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
k
!gradients_1/pi/mul_1_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
Ι
/gradients_1/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/mul_1_grad/Shape!gradients_1/pi/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????

gradients_1/pi/mul_1_grad/MulMul#gradients_1/pi/add_2_grad/Reshape_1pi/log_std/read*
T0*
_output_shapes
:
²
gradients_1/pi/mul_1_grad/SumSumgradients_1/pi/mul_1_grad/Mul/gradients_1/pi/mul_1_grad/BroadcastGradientArgs*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

!gradients_1/pi/mul_1_grad/ReshapeReshapegradients_1/pi/mul_1_grad/Sumgradients_1/pi/mul_1_grad/Shape*
_output_shapes
: *
T0*
Tshape0
|
gradients_1/pi/mul_1_grad/Mul_1Mul
pi/mul_1/x#gradients_1/pi/add_2_grad/Reshape_1*
_output_shapes
:*
T0
Ό
gradients_1/pi/mul_1_grad/Sum_1Sumgradients_1/pi/mul_1_grad/Mul_11gradients_1/pi/mul_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0
₯
#gradients_1/pi/mul_1_grad/Reshape_1Reshapegradients_1/pi/mul_1_grad/Sum_1!gradients_1/pi/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
!gradients_1/pi/truediv_grad/ShapeShapepi/sub*
out_type0*
_output_shapes
:*
T0
m
#gradients_1/pi/truediv_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
Ο
1gradients_1/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients_1/pi/truediv_grad/Shape#gradients_1/pi/truediv_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????

#gradients_1/pi/truediv_grad/RealDivRealDivgradients_1/pi/pow_grad/Reshapepi/add_1*
T0*'
_output_shapes
:?????????
Ύ
gradients_1/pi/truediv_grad/SumSum#gradients_1/pi/truediv_grad/RealDiv1gradients_1/pi/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
²
#gradients_1/pi/truediv_grad/ReshapeReshapegradients_1/pi/truediv_grad/Sum!gradients_1/pi/truediv_grad/Shape*
Tshape0*
T0*'
_output_shapes
:?????????
`
gradients_1/pi/truediv_grad/NegNegpi/sub*'
_output_shapes
:?????????*
T0

%gradients_1/pi/truediv_grad/RealDiv_1RealDivgradients_1/pi/truediv_grad/Negpi/add_1*'
_output_shapes
:?????????*
T0

%gradients_1/pi/truediv_grad/RealDiv_2RealDiv%gradients_1/pi/truediv_grad/RealDiv_1pi/add_1*
T0*'
_output_shapes
:?????????
 
gradients_1/pi/truediv_grad/mulMulgradients_1/pi/pow_grad/Reshape%gradients_1/pi/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:?????????
Ύ
!gradients_1/pi/truediv_grad/Sum_1Sumgradients_1/pi/truediv_grad/mul3gradients_1/pi/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
«
%gradients_1/pi/truediv_grad/Reshape_1Reshape!gradients_1/pi/truediv_grad/Sum_1#gradients_1/pi/truediv_grad/Shape_1*
_output_shapes
:*
Tshape0*
T0
j
gradients_1/pi/sub_grad/ShapeShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
q
gradients_1/pi/sub_grad/Shape_1Shapepi/dense_2/BiasAdd*
out_type0*
T0*
_output_shapes
:
Γ
-gradients_1/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/sub_grad/Shapegradients_1/pi/sub_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
Ά
gradients_1/pi/sub_grad/SumSum#gradients_1/pi/truediv_grad/Reshape-gradients_1/pi/sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
¦
gradients_1/pi/sub_grad/ReshapeReshapegradients_1/pi/sub_grad/Sumgradients_1/pi/sub_grad/Shape*
T0*'
_output_shapes
:?????????*
Tshape0
Ί
gradients_1/pi/sub_grad/Sum_1Sum#gradients_1/pi/truediv_grad/Reshape/gradients_1/pi/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
d
gradients_1/pi/sub_grad/NegNeggradients_1/pi/sub_grad/Sum_1*
T0*
_output_shapes
:
ͺ
!gradients_1/pi/sub_grad/Reshape_1Reshapegradients_1/pi/sub_grad/Neggradients_1/pi/sub_grad/Shape_1*
Tshape0*'
_output_shapes
:?????????*
T0
i
gradients_1/pi/add_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
d
!gradients_1/pi/add_1_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ι
/gradients_1/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_1_grad/Shape!gradients_1/pi/add_1_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
Ύ
gradients_1/pi/add_1_grad/SumSum%gradients_1/pi/truediv_grad/Reshape_1/gradients_1/pi/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

!gradients_1/pi/add_1_grad/ReshapeReshapegradients_1/pi/add_1_grad/Sumgradients_1/pi/add_1_grad/Shape*
_output_shapes
:*
T0*
Tshape0
Ύ
gradients_1/pi/add_1_grad/Sum_1Sum%gradients_1/pi/truediv_grad/Reshape_11gradients_1/pi/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
‘
#gradients_1/pi/add_1_grad/Reshape_1Reshapegradients_1/pi/add_1_grad/Sum_1!gradients_1/pi/add_1_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0

/gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad!gradients_1/pi/sub_grad/Reshape_1*
data_formatNHWC*
_output_shapes
:*
T0
v
gradients_1/pi/Exp_1_grad/mulMul!gradients_1/pi/add_1_grad/Reshapepi/Exp_1*
_output_shapes
:*
T0
Η
)gradients_1/pi/dense_2/MatMul_grad/MatMulMatMul!gradients_1/pi/sub_grad/Reshape_1pi/dense_2/kernel/read*(
_output_shapes
:?????????*
T0*
transpose_a( *
transpose_b(
Ή
+gradients_1/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Tanh!gradients_1/pi/sub_grad/Reshape_1*
transpose_a(*
transpose_b( *
_output_shapes
:	*
T0
η
gradients_1/AddN_1AddN"gradients_1/pi/add_10_grad/Reshape#gradients_1/pi/mul_1_grad/Reshape_1gradients_1/pi/Exp_1_grad/mul*
T0*5
_class+
)'loc:@gradients_1/pi/add_10_grad/Reshape*
_output_shapes
:*
N
€
)gradients_1/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanh)gradients_1/pi/dense_2/MatMul_grad/MatMul*(
_output_shapes
:?????????*
T0
¦
/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_1/pi/dense_1/Tanh_grad/TanhGrad*
_output_shapes	
:*
data_formatNHWC*
T0
Ο
)gradients_1/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_1/pi/dense_1/Tanh_grad/TanhGradpi/dense_1/kernel/read*
transpose_a( *(
_output_shapes
:?????????*
transpose_b(*
T0
ΐ
+gradients_1/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh)gradients_1/pi/dense_1/Tanh_grad/TanhGrad*
transpose_b( *
T0*
transpose_a(* 
_output_shapes
:

 
'gradients_1/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanh)gradients_1/pi/dense_1/MatMul_grad/MatMul*
T0*(
_output_shapes
:?????????
’
-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_1/pi/dense/Tanh_grad/TanhGrad*
data_formatNHWC*
T0*
_output_shapes	
:
Θ
'gradients_1/pi/dense/MatMul_grad/MatMulMatMul'gradients_1/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*'
_output_shapes
:?????????0*
transpose_b(*
T0*
transpose_a( 
Ή
)gradients_1/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_1/pi/dense/Tanh_grad/TanhGrad*
_output_shapes
:	0*
transpose_b( *
transpose_a(*
T0
b
Reshape_4/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0

	Reshape_4Reshape)gradients_1/pi/dense/MatMul_grad/MatMul_1Reshape_4/shape*
T0*
Tshape0*
_output_shapes	
:`
b
Reshape_5/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0

	Reshape_5Reshape-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradReshape_5/shape*
Tshape0*
T0*
_output_shapes	
:
b
Reshape_6/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????

	Reshape_6Reshape+gradients_1/pi/dense_1/MatMul_grad/MatMul_1Reshape_6/shape*
Tshape0*
T0*
_output_shapes

:
b
Reshape_7/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:

	Reshape_7Reshape/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_7/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_8/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????

	Reshape_8Reshape+gradients_1/pi/dense_2/MatMul_grad/MatMul_1Reshape_8/shape*
T0*
_output_shapes	
:*
Tshape0
b
Reshape_9/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:

	Reshape_9Reshape/gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_9/shape*
_output_shapes
:*
Tshape0*
T0
c
Reshape_10/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
n

Reshape_10Reshapegradients_1/AddN_1Reshape_10/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
­
concat_2ConcatV2	Reshape_4	Reshape_5	Reshape_6	Reshape_7	Reshape_8	Reshape_9
Reshape_10concat_2/axis*
T0*

Tidx0*
_output_shapes

:θ*
N
T
gradients_2/ShapeConst*
_output_shapes
: *
valueB *
dtype0
Z
gradients_2/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ?*
dtype0
u
gradients_2/FillFillgradients_2/Shapegradients_2/grad_ys_0*

index_type0*
_output_shapes
: *
T0
p
&gradients_2/pi/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

 gradients_2/pi/Mean_grad/ReshapeReshapegradients_2/Fill&gradients_2/pi/Mean_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
f
gradients_2/pi/Mean_grad/ShapeShapepi/Sum_2*
T0*
out_type0*
_output_shapes
:
§
gradients_2/pi/Mean_grad/TileTile gradients_2/pi/Mean_grad/Reshapegradients_2/pi/Mean_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:?????????
h
 gradients_2/pi/Mean_grad/Shape_1Shapepi/Sum_2*
T0*
_output_shapes
:*
out_type0
c
 gradients_2/pi/Mean_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
h
gradients_2/pi/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
₯
gradients_2/pi/Mean_grad/ProdProd gradients_2/pi/Mean_grad/Shape_1gradients_2/pi/Mean_grad/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
j
 gradients_2/pi/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
©
gradients_2/pi/Mean_grad/Prod_1Prod gradients_2/pi/Mean_grad/Shape_2 gradients_2/pi/Mean_grad/Const_1*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
d
"gradients_2/pi/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 

 gradients_2/pi/Mean_grad/MaximumMaximumgradients_2/pi/Mean_grad/Prod_1"gradients_2/pi/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

!gradients_2/pi/Mean_grad/floordivFloorDivgradients_2/pi/Mean_grad/Prod gradients_2/pi/Mean_grad/Maximum*
_output_shapes
: *
T0

gradients_2/pi/Mean_grad/CastCast!gradients_2/pi/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

 gradients_2/pi/Mean_grad/truedivRealDivgradients_2/pi/Mean_grad/Tilegradients_2/pi/Mean_grad/Cast*#
_output_shapes
:?????????*
T0
g
gradients_2/pi/Sum_2_grad/ShapeShapepi/sub_4*
T0*
out_type0*
_output_shapes
:

gradients_2/pi/Sum_2_grad/SizeConst*
_output_shapes
: *2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
value	B :
΅
gradients_2/pi/Sum_2_grad/addAddpi/Sum_2/reduction_indicesgradients_2/pi/Sum_2_grad/Size*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
: *
T0
½
gradients_2/pi/Sum_2_grad/modFloorModgradients_2/pi/Sum_2_grad/addgradients_2/pi/Sum_2_grad/Size*
_output_shapes
: *2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
T0

!gradients_2/pi/Sum_2_grad/Shape_1Const*
valueB *2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
: *
dtype0

%gradients_2/pi/Sum_2_grad/range/startConst*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
value	B : *
_output_shapes
: 

%gradients_2/pi/Sum_2_grad/range/deltaConst*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
: *
value	B :*
dtype0
ς
gradients_2/pi/Sum_2_grad/rangeRange%gradients_2/pi/Sum_2_grad/range/startgradients_2/pi/Sum_2_grad/Size%gradients_2/pi/Sum_2_grad/range/delta*

Tidx0*
_output_shapes
:*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape

$gradients_2/pi/Sum_2_grad/Fill/valueConst*
_output_shapes
: *
value	B :*
dtype0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape
Φ
gradients_2/pi/Sum_2_grad/FillFill!gradients_2/pi/Sum_2_grad/Shape_1$gradients_2/pi/Sum_2_grad/Fill/value*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*

index_type0*
_output_shapes
: 

'gradients_2/pi/Sum_2_grad/DynamicStitchDynamicStitchgradients_2/pi/Sum_2_grad/rangegradients_2/pi/Sum_2_grad/modgradients_2/pi/Sum_2_grad/Shapegradients_2/pi/Sum_2_grad/Fill*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
N*
_output_shapes
:

#gradients_2/pi/Sum_2_grad/Maximum/yConst*
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 
Σ
!gradients_2/pi/Sum_2_grad/MaximumMaximum'gradients_2/pi/Sum_2_grad/DynamicStitch#gradients_2/pi/Sum_2_grad/Maximum/y*
_output_shapes
:*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
T0
Λ
"gradients_2/pi/Sum_2_grad/floordivFloorDivgradients_2/pi/Sum_2_grad/Shape!gradients_2/pi/Sum_2_grad/Maximum*
T0*
_output_shapes
:*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape
ΐ
!gradients_2/pi/Sum_2_grad/ReshapeReshape gradients_2/pi/Mean_grad/truediv'gradients_2/pi/Sum_2_grad/DynamicStitch*
Tshape0*
T0*0
_output_shapes
:??????????????????
±
gradients_2/pi/Sum_2_grad/TileTile!gradients_2/pi/Sum_2_grad/Reshape"gradients_2/pi/Sum_2_grad/floordiv*
T0*'
_output_shapes
:?????????*

Tmultiples0
g
gradients_2/pi/sub_4_grad/ShapeShapepi/add_9*
T0*
_output_shapes
:*
out_type0
k
!gradients_2/pi/sub_4_grad/Shape_1Const*
_output_shapes
:*
valueB:*
dtype0
Ι
/gradients_2/pi/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/sub_4_grad/Shape!gradients_2/pi/sub_4_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
΅
gradients_2/pi/sub_4_grad/SumSumgradients_2/pi/Sum_2_grad/Tile/gradients_2/pi/sub_4_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
¬
!gradients_2/pi/sub_4_grad/ReshapeReshapegradients_2/pi/sub_4_grad/Sumgradients_2/pi/sub_4_grad/Shape*
Tshape0*'
_output_shapes
:?????????*
T0
Ή
gradients_2/pi/sub_4_grad/Sum_1Sumgradients_2/pi/Sum_2_grad/Tile1gradients_2/pi/sub_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 
h
gradients_2/pi/sub_4_grad/NegNeggradients_2/pi/sub_4_grad/Sum_1*
_output_shapes
:*
T0
£
#gradients_2/pi/sub_4_grad/Reshape_1Reshapegradients_2/pi/sub_4_grad/Neg!gradients_2/pi/sub_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
gradients_2/pi/add_9_grad/ShapeShapepi/mul_7*
out_type0*
T0*
_output_shapes
:
q
!gradients_2/pi/add_9_grad/Shape_1Shapepi/Placeholder_1*
T0*
out_type0*
_output_shapes
:
Ι
/gradients_2/pi/add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/add_9_grad/Shape!gradients_2/pi/add_9_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
Έ
gradients_2/pi/add_9_grad/SumSum!gradients_2/pi/sub_4_grad/Reshape/gradients_2/pi/add_9_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 
¬
!gradients_2/pi/add_9_grad/ReshapeReshapegradients_2/pi/add_9_grad/Sumgradients_2/pi/add_9_grad/Shape*
T0*'
_output_shapes
:?????????*
Tshape0
Ό
gradients_2/pi/add_9_grad/Sum_1Sum!gradients_2/pi/sub_4_grad/Reshape1gradients_2/pi/add_9_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
²
#gradients_2/pi/add_9_grad/Reshape_1Reshapegradients_2/pi/add_9_grad/Sum_1!gradients_2/pi/add_9_grad/Shape_1*
Tshape0*
T0*'
_output_shapes
:?????????
b
gradients_2/pi/mul_7_grad/ShapeConst*
_output_shapes
: *
valueB *
dtype0
i
!gradients_2/pi/mul_7_grad/Shape_1Shapepi/sub_3*
_output_shapes
:*
out_type0*
T0
Ι
/gradients_2/pi/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/mul_7_grad/Shape!gradients_2/pi/mul_7_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0

gradients_2/pi/mul_7_grad/MulMul!gradients_2/pi/add_9_grad/Reshapepi/sub_3*'
_output_shapes
:?????????*
T0
΄
gradients_2/pi/mul_7_grad/SumSumgradients_2/pi/mul_7_grad/Mul/gradients_2/pi/mul_7_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 

!gradients_2/pi/mul_7_grad/ReshapeReshapegradients_2/pi/mul_7_grad/Sumgradients_2/pi/mul_7_grad/Shape*
_output_shapes
: *
T0*
Tshape0

gradients_2/pi/mul_7_grad/Mul_1Mul
pi/mul_7/x!gradients_2/pi/add_9_grad/Reshape*
T0*'
_output_shapes
:?????????
Ί
gradients_2/pi/mul_7_grad/Sum_1Sumgradients_2/pi/mul_7_grad/Mul_11gradients_2/pi/mul_7_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
²
#gradients_2/pi/mul_7_grad/Reshape_1Reshapegradients_2/pi/mul_7_grad/Sum_1!gradients_2/pi/mul_7_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????
k
gradients_2/pi/sub_3_grad/ShapeShapepi/truediv_2*
T0*
out_type0*
_output_shapes
:
d
!gradients_2/pi/sub_3_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
Ι
/gradients_2/pi/sub_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/sub_3_grad/Shape!gradients_2/pi/sub_3_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
Ί
gradients_2/pi/sub_3_grad/SumSum#gradients_2/pi/mul_7_grad/Reshape_1/gradients_2/pi/sub_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
¬
!gradients_2/pi/sub_3_grad/ReshapeReshapegradients_2/pi/sub_3_grad/Sumgradients_2/pi/sub_3_grad/Shape*
T0*'
_output_shapes
:?????????*
Tshape0
Ύ
gradients_2/pi/sub_3_grad/Sum_1Sum#gradients_2/pi/mul_7_grad/Reshape_11gradients_2/pi/sub_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
h
gradients_2/pi/sub_3_grad/NegNeggradients_2/pi/sub_3_grad/Sum_1*
T0*
_output_shapes
:

#gradients_2/pi/sub_3_grad/Reshape_1Reshapegradients_2/pi/sub_3_grad/Neg!gradients_2/pi/sub_3_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
k
#gradients_2/pi/truediv_2_grad/ShapeShapepi/add_7*
T0*
_output_shapes
:*
out_type0
m
%gradients_2/pi/truediv_2_grad/Shape_1Shapepi/add_8*
out_type0*
T0*
_output_shapes
:
Υ
3gradients_2/pi/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients_2/pi/truediv_2_grad/Shape%gradients_2/pi/truediv_2_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????

%gradients_2/pi/truediv_2_grad/RealDivRealDiv!gradients_2/pi/sub_3_grad/Reshapepi/add_8*
T0*'
_output_shapes
:?????????
Δ
!gradients_2/pi/truediv_2_grad/SumSum%gradients_2/pi/truediv_2_grad/RealDiv3gradients_2/pi/truediv_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
Έ
%gradients_2/pi/truediv_2_grad/ReshapeReshape!gradients_2/pi/truediv_2_grad/Sum#gradients_2/pi/truediv_2_grad/Shape*'
_output_shapes
:?????????*
Tshape0*
T0
d
!gradients_2/pi/truediv_2_grad/NegNegpi/add_7*
T0*'
_output_shapes
:?????????

'gradients_2/pi/truediv_2_grad/RealDiv_1RealDiv!gradients_2/pi/truediv_2_grad/Negpi/add_8*
T0*'
_output_shapes
:?????????

'gradients_2/pi/truediv_2_grad/RealDiv_2RealDiv'gradients_2/pi/truediv_2_grad/RealDiv_1pi/add_8*
T0*'
_output_shapes
:?????????
¦
!gradients_2/pi/truediv_2_grad/mulMul!gradients_2/pi/sub_3_grad/Reshape'gradients_2/pi/truediv_2_grad/RealDiv_2*
T0*'
_output_shapes
:?????????
Δ
#gradients_2/pi/truediv_2_grad/Sum_1Sum!gradients_2/pi/truediv_2_grad/mul5gradients_2/pi/truediv_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ύ
'gradients_2/pi/truediv_2_grad/Reshape_1Reshape#gradients_2/pi/truediv_2_grad/Sum_1%gradients_2/pi/truediv_2_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????
g
gradients_2/pi/add_7_grad/ShapeShapepi/pow_2*
_output_shapes
:*
out_type0*
T0
k
!gradients_2/pi/add_7_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
Ι
/gradients_2/pi/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/add_7_grad/Shape!gradients_2/pi/add_7_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
Ό
gradients_2/pi/add_7_grad/SumSum%gradients_2/pi/truediv_2_grad/Reshape/gradients_2/pi/add_7_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
¬
!gradients_2/pi/add_7_grad/ReshapeReshapegradients_2/pi/add_7_grad/Sumgradients_2/pi/add_7_grad/Shape*'
_output_shapes
:?????????*
Tshape0*
T0
ΐ
gradients_2/pi/add_7_grad/Sum_1Sum%gradients_2/pi/truediv_2_grad/Reshape1gradients_2/pi/add_7_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0
₯
#gradients_2/pi/add_7_grad/Reshape_1Reshapegradients_2/pi/add_7_grad/Sum_1!gradients_2/pi/add_7_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:
g
gradients_2/pi/pow_2_grad/ShapeShapepi/sub_2*
T0*
_output_shapes
:*
out_type0
d
!gradients_2/pi/pow_2_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ι
/gradients_2/pi/pow_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/pow_2_grad/Shape!gradients_2/pi/pow_2_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????

gradients_2/pi/pow_2_grad/mulMul!gradients_2/pi/add_7_grad/Reshape
pi/pow_2/y*
T0*'
_output_shapes
:?????????
d
gradients_2/pi/pow_2_grad/sub/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
gradients_2/pi/pow_2_grad/subSub
pi/pow_2/ygradients_2/pi/pow_2_grad/sub/y*
T0*
_output_shapes
: 

gradients_2/pi/pow_2_grad/PowPowpi/sub_2gradients_2/pi/pow_2_grad/sub*'
_output_shapes
:?????????*
T0

gradients_2/pi/pow_2_grad/mul_1Mulgradients_2/pi/pow_2_grad/mulgradients_2/pi/pow_2_grad/Pow*'
_output_shapes
:?????????*
T0
Ά
gradients_2/pi/pow_2_grad/SumSumgradients_2/pi/pow_2_grad/mul_1/gradients_2/pi/pow_2_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
¬
!gradients_2/pi/pow_2_grad/ReshapeReshapegradients_2/pi/pow_2_grad/Sumgradients_2/pi/pow_2_grad/Shape*'
_output_shapes
:?????????*
Tshape0*
T0
h
#gradients_2/pi/pow_2_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

!gradients_2/pi/pow_2_grad/GreaterGreaterpi/sub_2#gradients_2/pi/pow_2_grad/Greater/y*
T0*'
_output_shapes
:?????????
q
)gradients_2/pi/pow_2_grad/ones_like/ShapeShapepi/sub_2*
T0*
out_type0*
_output_shapes
:
n
)gradients_2/pi/pow_2_grad/ones_like/ConstConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
Ε
#gradients_2/pi/pow_2_grad/ones_likeFill)gradients_2/pi/pow_2_grad/ones_like/Shape)gradients_2/pi/pow_2_grad/ones_like/Const*'
_output_shapes
:?????????*

index_type0*
T0
?
 gradients_2/pi/pow_2_grad/SelectSelect!gradients_2/pi/pow_2_grad/Greaterpi/sub_2#gradients_2/pi/pow_2_grad/ones_like*'
_output_shapes
:?????????*
T0
x
gradients_2/pi/pow_2_grad/LogLog gradients_2/pi/pow_2_grad/Select*
T0*'
_output_shapes
:?????????
m
$gradients_2/pi/pow_2_grad/zeros_like	ZerosLikepi/sub_2*'
_output_shapes
:?????????*
T0
Ζ
"gradients_2/pi/pow_2_grad/Select_1Select!gradients_2/pi/pow_2_grad/Greatergradients_2/pi/pow_2_grad/Log$gradients_2/pi/pow_2_grad/zeros_like*'
_output_shapes
:?????????*
T0

gradients_2/pi/pow_2_grad/mul_2Mul!gradients_2/pi/add_7_grad/Reshapepi/pow_2*'
_output_shapes
:?????????*
T0

gradients_2/pi/pow_2_grad/mul_3Mulgradients_2/pi/pow_2_grad/mul_2"gradients_2/pi/pow_2_grad/Select_1*
T0*'
_output_shapes
:?????????
Ί
gradients_2/pi/pow_2_grad/Sum_1Sumgradients_2/pi/pow_2_grad/mul_31gradients_2/pi/pow_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
‘
#gradients_2/pi/pow_2_grad/Reshape_1Reshapegradients_2/pi/pow_2_grad/Sum_1!gradients_2/pi/pow_2_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
x
gradients_2/pi/Exp_3_grad/mulMul#gradients_2/pi/add_7_grad/Reshape_1pi/Exp_3*
_output_shapes
:*
T0
m
gradients_2/pi/sub_2_grad/ShapeShapepi/Placeholder*
_output_shapes
:*
T0*
out_type0
s
!gradients_2/pi/sub_2_grad/Shape_1Shapepi/dense_2/BiasAdd*
out_type0*
T0*
_output_shapes
:
Ι
/gradients_2/pi/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/sub_2_grad/Shape!gradients_2/pi/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
Έ
gradients_2/pi/sub_2_grad/SumSum!gradients_2/pi/pow_2_grad/Reshape/gradients_2/pi/sub_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
¬
!gradients_2/pi/sub_2_grad/ReshapeReshapegradients_2/pi/sub_2_grad/Sumgradients_2/pi/sub_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
Ό
gradients_2/pi/sub_2_grad/Sum_1Sum!gradients_2/pi/pow_2_grad/Reshape1gradients_2/pi/sub_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0
h
gradients_2/pi/sub_2_grad/NegNeggradients_2/pi/sub_2_grad/Sum_1*
T0*
_output_shapes
:
°
#gradients_2/pi/sub_2_grad/Reshape_1Reshapegradients_2/pi/sub_2_grad/Neg!gradients_2/pi/sub_2_grad/Shape_1*
Tshape0*'
_output_shapes
:?????????*
T0
b
gradients_2/pi/mul_5_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0
k
!gradients_2/pi/mul_5_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ι
/gradients_2/pi/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/mul_5_grad/Shape!gradients_2/pi/mul_5_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
y
gradients_2/pi/mul_5_grad/MulMulgradients_2/pi/Exp_3_grad/mulpi/log_std/read*
_output_shapes
:*
T0
²
gradients_2/pi/mul_5_grad/SumSumgradients_2/pi/mul_5_grad/Mul/gradients_2/pi/mul_5_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 

!gradients_2/pi/mul_5_grad/ReshapeReshapegradients_2/pi/mul_5_grad/Sumgradients_2/pi/mul_5_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
v
gradients_2/pi/mul_5_grad/Mul_1Mul
pi/mul_5/xgradients_2/pi/Exp_3_grad/mul*
T0*
_output_shapes
:
Ό
gradients_2/pi/mul_5_grad/Sum_1Sumgradients_2/pi/mul_5_grad/Mul_11gradients_2/pi/mul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
₯
#gradients_2/pi/mul_5_grad/Reshape_1Reshapegradients_2/pi/mul_5_grad/Sum_1!gradients_2/pi/mul_5_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients_2/pi/sub_2_grad/Reshape_1*
_output_shapes
:*
T0*
data_formatNHWC
Θ
gradients_2/AddNAddN#gradients_2/pi/sub_4_grad/Reshape_1#gradients_2/pi/mul_5_grad/Reshape_1*6
_class,
*(loc:@gradients_2/pi/sub_4_grad/Reshape_1*
_output_shapes
:*
N*
T0
Ι
)gradients_2/pi/dense_2/MatMul_grad/MatMulMatMul#gradients_2/pi/sub_2_grad/Reshape_1pi/dense_2/kernel/read*
T0*
transpose_a( *
transpose_b(*(
_output_shapes
:?????????
»
+gradients_2/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Tanh#gradients_2/pi/sub_2_grad/Reshape_1*
T0*
transpose_a(*
_output_shapes
:	*
transpose_b( 
€
)gradients_2/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanh)gradients_2/pi/dense_2/MatMul_grad/MatMul*(
_output_shapes
:?????????*
T0
¦
/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes	
:
Ο
)gradients_2/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_2/pi/dense_1/Tanh_grad/TanhGradpi/dense_1/kernel/read*(
_output_shapes
:?????????*
transpose_a( *
T0*
transpose_b(
ΐ
+gradients_2/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh)gradients_2/pi/dense_1/Tanh_grad/TanhGrad* 
_output_shapes
:
*
transpose_b( *
T0*
transpose_a(
 
'gradients_2/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanh)gradients_2/pi/dense_1/MatMul_grad/MatMul*(
_output_shapes
:?????????*
T0
’
-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_2/pi/dense/Tanh_grad/TanhGrad*
_output_shapes	
:*
T0*
data_formatNHWC
Θ
'gradients_2/pi/dense/MatMul_grad/MatMulMatMul'gradients_2/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*
T0*
transpose_b(*'
_output_shapes
:?????????0*
transpose_a( 
Ή
)gradients_2/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_2/pi/dense/Tanh_grad/TanhGrad*
transpose_b( *
_output_shapes
:	0*
transpose_a(*
T0
c
Reshape_11/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:


Reshape_11Reshape)gradients_2/pi/dense/MatMul_grad/MatMul_1Reshape_11/shape*
_output_shapes	
:`*
Tshape0*
T0
c
Reshape_12/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0


Reshape_12Reshape-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradReshape_12/shape*
_output_shapes	
:*
Tshape0*
T0
c
Reshape_13/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????


Reshape_13Reshape+gradients_2/pi/dense_1/MatMul_grad/MatMul_1Reshape_13/shape*
_output_shapes

:*
Tshape0*
T0
c
Reshape_14/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????


Reshape_14Reshape/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_14/shape*
Tshape0*
T0*
_output_shapes	
:
c
Reshape_15/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0


Reshape_15Reshape+gradients_2/pi/dense_2/MatMul_grad/MatMul_1Reshape_15/shape*
T0*
_output_shapes	
:*
Tshape0
c
Reshape_16/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:


Reshape_16Reshape/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_16/shape*
Tshape0*
T0*
_output_shapes
:
c
Reshape_17/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
l

Reshape_17Reshapegradients_2/AddNReshape_17/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_3/axisConst*
_output_shapes
: *
value	B : *
dtype0
³
concat_3ConcatV2
Reshape_11
Reshape_12
Reshape_13
Reshape_14
Reshape_15
Reshape_16
Reshape_17concat_3/axis*
_output_shapes

:θ*

Tidx0*
N*
T0
Z
Placeholder_9Placeholder*
_output_shapes

:θ*
shape:θ*
dtype0
L
mul_5Mulconcat_3Placeholder_9*
T0*
_output_shapes

:θ
Q
Const_6Const*
dtype0*
valueB: *
_output_shapes
:
X
SumSummul_5Const_6*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
T
gradients_3/ShapeConst*
valueB *
_output_shapes
: *
dtype0
Z
gradients_3/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_3/FillFillgradients_3/Shapegradients_3/grad_ys_0*

index_type0*
T0*
_output_shapes
: 
l
"gradients_3/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients_3/Sum_grad/ReshapeReshapegradients_3/Fill"gradients_3/Sum_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
f
gradients_3/Sum_grad/ConstConst*
valueB:θ*
dtype0*
_output_shapes
:

gradients_3/Sum_grad/TileTilegradients_3/Sum_grad/Reshapegradients_3/Sum_grad/Const*

Tmultiples0*
T0*
_output_shapes

:θ
r
gradients_3/mul_5_grad/MulMulgradients_3/Sum_grad/TilePlaceholder_9*
T0*
_output_shapes

:θ
o
gradients_3/mul_5_grad/Mul_1Mulgradients_3/Sum_grad/Tileconcat_3*
_output_shapes

:θ*
T0
`
gradients_3/concat_3_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 
y
gradients_3/concat_3_grad/modFloorModconcat_3/axisgradients_3/concat_3_grad/Rank*
T0*
_output_shapes
: 
j
gradients_3/concat_3_grad/ShapeConst*
dtype0*
valueB:`*
_output_shapes
:
l
!gradients_3/concat_3_grad/Shape_1Const*
_output_shapes
:*
valueB:*
dtype0
m
!gradients_3/concat_3_grad/Shape_2Const*
_output_shapes
:*
valueB:*
dtype0
l
!gradients_3/concat_3_grad/Shape_3Const*
_output_shapes
:*
valueB:*
dtype0
l
!gradients_3/concat_3_grad/Shape_4Const*
dtype0*
_output_shapes
:*
valueB:
k
!gradients_3/concat_3_grad/Shape_5Const*
dtype0*
_output_shapes
:*
valueB:
k
!gradients_3/concat_3_grad/Shape_6Const*
dtype0*
_output_shapes
:*
valueB:

&gradients_3/concat_3_grad/ConcatOffsetConcatOffsetgradients_3/concat_3_grad/modgradients_3/concat_3_grad/Shape!gradients_3/concat_3_grad/Shape_1!gradients_3/concat_3_grad/Shape_2!gradients_3/concat_3_grad/Shape_3!gradients_3/concat_3_grad/Shape_4!gradients_3/concat_3_grad/Shape_5!gradients_3/concat_3_grad/Shape_6*>
_output_shapes,
*:::::::*
N
ΐ
gradients_3/concat_3_grad/SliceSlicegradients_3/mul_5_grad/Mul&gradients_3/concat_3_grad/ConcatOffsetgradients_3/concat_3_grad/Shape*
Index0*
_output_shapes	
:`*
T0
Ζ
!gradients_3/concat_3_grad/Slice_1Slicegradients_3/mul_5_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:1!gradients_3/concat_3_grad/Shape_1*
T0*
Index0*
_output_shapes	
:
Η
!gradients_3/concat_3_grad/Slice_2Slicegradients_3/mul_5_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:2!gradients_3/concat_3_grad/Shape_2*
T0*
_output_shapes

:*
Index0
Ζ
!gradients_3/concat_3_grad/Slice_3Slicegradients_3/mul_5_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:3!gradients_3/concat_3_grad/Shape_3*
_output_shapes	
:*
Index0*
T0
Ζ
!gradients_3/concat_3_grad/Slice_4Slicegradients_3/mul_5_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:4!gradients_3/concat_3_grad/Shape_4*
_output_shapes	
:*
T0*
Index0
Ε
!gradients_3/concat_3_grad/Slice_5Slicegradients_3/mul_5_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:5!gradients_3/concat_3_grad/Shape_5*
Index0*
_output_shapes
:*
T0
Ε
!gradients_3/concat_3_grad/Slice_6Slicegradients_3/mul_5_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:6!gradients_3/concat_3_grad/Shape_6*
Index0*
T0*
_output_shapes
:
r
!gradients_3/Reshape_11_grad/ShapeConst*
dtype0*
valueB"0      *
_output_shapes
:
ͺ
#gradients_3/Reshape_11_grad/ReshapeReshapegradients_3/concat_3_grad/Slice!gradients_3/Reshape_11_grad/Shape*
_output_shapes
:	0*
Tshape0*
T0
l
!gradients_3/Reshape_12_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
¨
#gradients_3/Reshape_12_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_1!gradients_3/Reshape_12_grad/Shape*
T0*
Tshape0*
_output_shapes	
:
r
!gradients_3/Reshape_13_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
­
#gradients_3/Reshape_13_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_2!gradients_3/Reshape_13_grad/Shape*
T0* 
_output_shapes
:
*
Tshape0
l
!gradients_3/Reshape_14_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
¨
#gradients_3/Reshape_14_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_3!gradients_3/Reshape_14_grad/Shape*
_output_shapes	
:*
Tshape0*
T0
r
!gradients_3/Reshape_15_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
¬
#gradients_3/Reshape_15_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_4!gradients_3/Reshape_15_grad/Shape*
_output_shapes
:	*
Tshape0*
T0
k
!gradients_3/Reshape_16_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
§
#gradients_3/Reshape_16_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_5!gradients_3/Reshape_16_grad/Shape*
_output_shapes
:*
Tshape0*
T0
k
!gradients_3/Reshape_17_grad/ShapeConst*
dtype0*
valueB:*
_output_shapes
:
§
#gradients_3/Reshape_17_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_6!gradients_3/Reshape_17_grad/Shape*
Tshape0*
_output_shapes
:*
T0
ρ
Agradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMulMatMul'gradients_2/pi/dense/Tanh_grad/TanhGrad#gradients_3/Reshape_11_grad/Reshape*
transpose_b(*
transpose_a( *'
_output_shapes
:?????????0*
T0
Ψ
Cgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1MatMulPlaceholder#gradients_3/Reshape_11_grad/Reshape*
T0*(
_output_shapes
:?????????*
transpose_b( *
transpose_a( 
«
Dgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeShape'gradients_2/pi/dense/Tanh_grad/TanhGrad*
_output_shapes
:*
out_type0*
T0

Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/RankConst*
dtype0*
value	B :*
_output_shapes
: 

Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

Rgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
§
Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????

Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Έ
Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceDgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeRgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackTgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
new_axis_mask *
end_mask *
Index0*
ellipsis_mask *

begin_mask*
T0*
shrink_axis_mask *
_output_shapes
:

Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
valueB:*
dtype0*
_output_shapes
:

Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
_output_shapes
: *
value	B :*
dtype0
§
Hgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillNgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeNgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*

index_type0*
T0*
_output_shapes
:

Jgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ι
Egradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Hgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_likeFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Jgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat/axis*
T0*
N*

Tidx0*
_output_shapes
:

Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
©
Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:
?????????*
dtype0
 
Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ΐ
Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceDgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackVgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
_output_shapes
:*
new_axis_mask *
ellipsis_mask *
Index0*
end_mask *

begin_mask*
shrink_axis_mask *
T0

Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
_output_shapes
:*
valueB:*
dtype0

Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ύ
Ggradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
N*

Tidx0*
T0*
_output_shapes
:
υ
Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_12_grad/ReshapeEgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat*
Tshape0*
_output_shapes
:	*
T0
‘
Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/TileTileFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeGgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1*(
_output_shapes
:?????????*
T0*

Tmultiples0
φ
Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMulMatMul)gradients_2/pi/dense_1/Tanh_grad/TanhGrad#gradients_3/Reshape_13_grad/Reshape*
transpose_b(*
T0*(
_output_shapes
:?????????*
transpose_a( 
ά
Egradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1MatMulpi/dense/Tanh#gradients_3/Reshape_13_grad/Reshape*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:?????????
―
Fgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeShape)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
out_type0*
T0*
_output_shapes
:

Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 

Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:

Tgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
©
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
valueB:
?????????*
dtype0*
_output_shapes
:
 
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Β
Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
T0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask *
Index0

Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
valueB:*
_output_shapes
:*
dtype0

Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
dtype0*
_output_shapes
: *
value	B :
­
Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillPgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapePgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*
_output_shapes
:*
T0*

index_type0

Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ρ
Ggradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axis*
T0*
_output_shapes
:*
N*

Tidx0
 
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
«
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
valueB:
?????????*
_output_shapes
:*
dtype0
’
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Κ
Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackXgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
ellipsis_mask *
T0*
end_mask *

begin_mask*
new_axis_mask *
shrink_axis_mask *
Index0*
_output_shapes
:

Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
_output_shapes
:*
valueB:*
dtype0

Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

Igradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
_output_shapes
:*
T0*

Tidx0*
N
ω
Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_14_grad/ReshapeGgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat*
Tshape0*
_output_shapes
:	*
T0
§
Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileTileHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeIgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1*

Tmultiples0*
T0*(
_output_shapes
:?????????
π
Cgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMulMatMul#gradients_2/pi/sub_2_grad/Reshape_1#gradients_3/Reshape_15_grad/Reshape*
transpose_b(*
transpose_a( *(
_output_shapes
:?????????*
T0
έ
Egradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1MatMulpi/dense_1/Tanh#gradients_3/Reshape_15_grad/Reshape*
T0*'
_output_shapes
:?????????*
transpose_b( *
transpose_a( 
©
Fgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeShape#gradients_2/pi/sub_2_grad/Reshape_1*
_output_shapes
:*
out_type0*
T0

Egradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :

Hgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:

Tgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
©
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
valueB:
?????????*
dtype0*
_output_shapes
:
 
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Β
Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceFgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackVgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
_output_shapes
:*
T0*
new_axis_mask *
Index0*
ellipsis_mask *

begin_mask*
end_mask *
shrink_axis_mask 

Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
valueB:*
_output_shapes
:*
dtype0

Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
­
Jgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillPgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapePgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*
_output_shapes
:*
T0*

index_type0

Lgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
ρ
Ggradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Jgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_likeHgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/Shape_1Lgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat/axis*

Tidx0*
N*
T0*
_output_shapes
:
 
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
dtype0*
valueB: *
_output_shapes
:
«
Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
valueB:
?????????*
dtype0*
_output_shapes
:
’
Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Κ
Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceFgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeVgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackXgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
ellipsis_mask *
new_axis_mask *
T0*
end_mask *

begin_mask*
shrink_axis_mask *
Index0*
_output_shapes
:

Rgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
valueB:*
_output_shapes
:*
dtype0

Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Igradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Rgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
T0*

Tidx0*
_output_shapes
:*
N
ψ
Hgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_16_grad/ReshapeGgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat*
T0*
_output_shapes

:*
Tshape0
¦
Egradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/TileTileHgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ReshapeIgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1*

Tmultiples0*'
_output_shapes
:?????????*
T0
Ά
gradients_3/AddNAddNCgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Tile*
N*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1*
T0*(
_output_shapes
:?????????

>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul/yConst^gradients_3/AddN*
valueB
 *   ΐ*
dtype0*
_output_shapes
: 
Θ
<gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mulMulgradients_3/AddN>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul/y*(
_output_shapes
:?????????*
T0
α
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_1Mul<gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul)gradients_2/pi/dense_1/MatMul_grad/MatMul*
T0*(
_output_shapes
:?????????
Η
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_2Mul>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_1pi/dense/Tanh*(
_output_shapes
:?????????*
T0
‘
Agradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGradTanhGradpi/dense/Tanhgradients_3/AddN*
T0*(
_output_shapes
:?????????

:gradients_3/gradients_2/pi/mul_5_grad/Reshape_1_grad/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
Ϋ
<gradients_3/gradients_2/pi/mul_5_grad/Reshape_1_grad/ReshapeReshape#gradients_3/Reshape_17_grad/Reshape:gradients_3/gradients_2/pi/mul_5_grad/Reshape_1_grad/Shape*
Tshape0*
T0*
_output_shapes
:
?
Agradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMulMatMulAgradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGradpi/dense_1/kernel/read*(
_output_shapes
:?????????*
T0*
transpose_b( *
transpose_a( 

Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1MatMulAgradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGrad)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
T0*
transpose_a(*
transpose_b( * 
_output_shapes
:


6gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/ShapeConst*
_output_shapes
:*
valueB:*
dtype0
Β
5gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/SizeConst*
dtype0*I
_class?
=;loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape*
_output_shapes
: *
value	B :

4gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/addAdd1gradients_2/pi/mul_5_grad/BroadcastGradientArgs:15gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Size*
T0*I
_class?
=;loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape*#
_output_shapes
:?????????
¦
4gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/modFloorMod4gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/add5gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Size*
T0*I
_class?
=;loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape*#
_output_shapes
:?????????
χ
8gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape_1Shape4gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/mod*
out_type0*
T0*I
_class?
=;loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape*
_output_shapes
:
Ι
<gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/range/startConst*
value	B : *
dtype0*I
_class?
=;loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape*
_output_shapes
: 
Ι
<gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0*I
_class?
=;loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape
ε
6gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/rangeRange<gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/range/start5gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Size<gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/range/delta*

Tidx0*
_output_shapes
:*I
_class?
=;loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape
Θ
;gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0*I
_class?
=;loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape*
_output_shapes
: 
Ώ
5gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/FillFill8gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape_1;gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Fill/value*
T0*

index_type0*I
_class?
=;loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape*#
_output_shapes
:?????????
₯
>gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/DynamicStitchDynamicStitch6gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/range4gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/mod6gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape5gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Fill*
T0*
_output_shapes
:*
N*I
_class?
=;loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape
Η
:gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Maximum/yConst*
dtype0*
_output_shapes
: *I
_class?
=;loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape*
value	B :
―
8gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/MaximumMaximum>gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/DynamicStitch:gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Maximum/y*
_output_shapes
:*
T0*I
_class?
=;loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape
§
9gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/floordivFloorDiv6gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape8gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Maximum*I
_class?
=;loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Shape*
T0*
_output_shapes
:
τ
8gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/ReshapeReshape<gradients_3/gradients_2/pi/mul_5_grad/Reshape_1_grad/Reshape>gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
ι
5gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/TileTile8gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Reshape9gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/floordiv*

Tmultiples0*
_output_shapes
:*
T0

gradients_3/AddN_1AddNEgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileAgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul*X
_classN
LJloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1*(
_output_shapes
:?????????*
T0*
N

@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul/yConst^gradients_3/AddN_1*
_output_shapes
: *
dtype0*
valueB
 *   ΐ
Ξ
>gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mulMulgradients_3/AddN_1@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul/y*(
_output_shapes
:?????????*
T0
ε
@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_1Mul>gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul)gradients_2/pi/dense_2/MatMul_grad/MatMul*(
_output_shapes
:?????????*
T0
Ν
@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_2Mul@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_1pi/dense_1/Tanh*
T0*(
_output_shapes
:?????????
§
Cgradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/TanhGradTanhGradpi/dense_1/Tanhgradients_3/AddN_1*
T0*(
_output_shapes
:?????????
y
6gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

8gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Shape_1Const*
_output_shapes
:*
valueB:*
dtype0

Fgradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Shape8gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
Ά
4gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/MulMul5gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Tilegradients_2/pi/Exp_3_grad/mul*
_output_shapes
:*
T0
χ
4gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/SumSum4gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/MulFgradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
ΰ
8gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/ReshapeReshape4gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Sum6gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Shape*
_output_shapes
: *
Tshape0*
T0
₯
6gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Mul_1Mul
pi/mul_5/x5gradients_3/gradients_2/pi/mul_5_grad/Sum_1_grad/Tile*
T0*
_output_shapes
:

6gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Sum_1Sum6gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Mul_1Hgradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
κ
:gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Reshape_1Reshape6gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Sum_18gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0

Agradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMulMatMulCgradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/TanhGradpi/dense_2/kernel/read*'
_output_shapes
:?????????*
transpose_b( *
transpose_a( *
T0

Cgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1MatMulCgradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/TanhGrad#gradients_2/pi/sub_2_grad/Reshape_1*
T0*
transpose_a(*
transpose_b( *
_output_shapes
:	
€
2gradients_3/gradients_2/pi/Exp_3_grad/mul_grad/MulMul:gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Reshape_1pi/Exp_3*
_output_shapes
:*
T0
Α
4gradients_3/gradients_2/pi/Exp_3_grad/mul_grad/Mul_1Mul:gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Reshape_1#gradients_2/pi/add_7_grad/Reshape_1*
T0*
_output_shapes
:

gradients_3/AddN_2AddNEgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1Egradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/TileAgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul*'
_output_shapes
:?????????*
N*X
_classN
LJloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1*
T0
 
:gradients_3/gradients_2/pi/sub_2_grad/Reshape_1_grad/ShapeShapegradients_2/pi/sub_2_grad/Neg*
T0*
out_type0*#
_output_shapes
:?????????
Θ
<gradients_3/gradients_2/pi/sub_2_grad/Reshape_1_grad/ReshapeReshapegradients_3/AddN_2:gradients_3/gradients_2/pi/sub_2_grad/Reshape_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:

gradients_3/pi/Exp_3_grad/mulMul4gradients_3/gradients_2/pi/Exp_3_grad/mul_grad/Mul_1pi/Exp_3*
T0*
_output_shapes
:

2gradients_3/gradients_2/pi/sub_2_grad/Neg_grad/NegNeg<gradients_3/gradients_2/pi/sub_2_grad/Reshape_1_grad/Reshape*
_output_shapes
:*
T0
b
gradients_3/pi/mul_5_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0
k
!gradients_3/pi/mul_5_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
Ι
/gradients_3/pi/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_3/pi/mul_5_grad/Shape!gradients_3/pi/mul_5_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
y
gradients_3/pi/mul_5_grad/MulMulgradients_3/pi/Exp_3_grad/mulpi/log_std/read*
_output_shapes
:*
T0
²
gradients_3/pi/mul_5_grad/SumSumgradients_3/pi/mul_5_grad/Mul/gradients_3/pi/mul_5_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0

!gradients_3/pi/mul_5_grad/ReshapeReshapegradients_3/pi/mul_5_grad/Sumgradients_3/pi/mul_5_grad/Shape*
Tshape0*
T0*
_output_shapes
: 
v
gradients_3/pi/mul_5_grad/Mul_1Mul
pi/mul_5/xgradients_3/pi/Exp_3_grad/mul*
T0*
_output_shapes
:
Ό
gradients_3/pi/mul_5_grad/Sum_1Sumgradients_3/pi/mul_5_grad/Mul_11gradients_3/pi/mul_5_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
₯
#gradients_3/pi/mul_5_grad/Reshape_1Reshapegradients_3/pi/mul_5_grad/Sum_1!gradients_3/pi/mul_5_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

6gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/ShapeShape!gradients_2/pi/pow_2_grad/Reshape*
T0*
_output_shapes
:*
out_type0
Β
5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/SizeConst*
_output_shapes
: *
dtype0*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
value	B :

4gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/addAdd1gradients_2/pi/sub_2_grad/BroadcastGradientArgs:15gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Size*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*#
_output_shapes
:?????????*
T0
¦
4gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/modFloorMod4gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/add5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Size*#
_output_shapes
:?????????*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
T0
χ
8gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape_1Shape4gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/mod*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
T0*
_output_shapes
:*
out_type0
Ι
<gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/range/startConst*
value	B : *I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
Ι
<gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/range/deltaConst*
value	B :*
_output_shapes
: *I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
dtype0
ε
6gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/rangeRange<gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/range/start5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Size<gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/range/delta*
_output_shapes
:*

Tidx0*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape
Θ
;gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Fill/valueConst*
dtype0*
value	B :*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
_output_shapes
: 
Ώ
5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/FillFill8gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape_1;gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Fill/value*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*

index_type0*
T0*#
_output_shapes
:?????????
?
>gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/DynamicStitchDynamicStitch6gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/range4gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/mod6gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Fill*
T0*
N*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*#
_output_shapes
:?????????
Η
:gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Maximum/yConst*
dtype0*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
_output_shapes
: *
value	B :
Έ
8gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/MaximumMaximum>gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/DynamicStitch:gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Maximum/y*#
_output_shapes
:?????????*
T0*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape
§
9gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/floordivFloorDiv6gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape8gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Maximum*
_output_shapes
:*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
T0
θ
8gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/ReshapeReshape2gradients_3/gradients_2/pi/sub_2_grad/Neg_grad/Neg>gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/DynamicStitch*
Tshape0*
T0*
_output_shapes
:
φ
5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/TileTile8gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Reshape9gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/floordiv*'
_output_shapes
:?????????*

Tmultiples0*
T0

8gradients_3/gradients_2/pi/pow_2_grad/Reshape_grad/ShapeShapegradients_2/pi/pow_2_grad/Sum*
T0*
out_type0*#
_output_shapes
:?????????
η
:gradients_3/gradients_2/pi/pow_2_grad/Reshape_grad/ReshapeReshape5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Tile8gradients_3/gradients_2/pi/pow_2_grad/Reshape_grad/Shape*
Tshape0*
_output_shapes
:*
T0

4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/ShapeShapegradients_2/pi/pow_2_grad/mul_1*
out_type0*
T0*
_output_shapes
:
Ύ
3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/SizeConst*
value	B :*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
dtype0*
_output_shapes
: 

2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/addAdd/gradients_2/pi/pow_2_grad/BroadcastGradientArgs3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Size*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*#
_output_shapes
:?????????*
T0

2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/modFloorMod2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/add3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Size*
T0*#
_output_shapes
:?????????*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape
ρ
6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape_1Shape2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/mod*
T0*
_output_shapes
:*
out_type0*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape
Ε
:gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape
Ε
:gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape
Ϋ
4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/rangeRange:gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range/start3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Size:gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range/delta*
_output_shapes
:*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*

Tidx0
Δ
9gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Fill/valueConst*
value	B :*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
_output_shapes
: *
dtype0
·
3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/FillFill6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape_19gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Fill/value*

index_type0*#
_output_shapes
:?????????*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
T0
’
<gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/DynamicStitchDynamicStitch4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/mod4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Fill*
T0*
N*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*#
_output_shapes
:?????????
Γ
8gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Maximum/yConst*
dtype0*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
value	B :*
_output_shapes
: 
°
6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/MaximumMaximum<gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/DynamicStitch8gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Maximum/y*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*#
_output_shapes
:?????????*
T0

7gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/floordivFloorDiv4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Maximum*
T0*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
_output_shapes
:
μ
6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/ReshapeReshape:gradients_3/gradients_2/pi/pow_2_grad/Reshape_grad/Reshape<gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
π
3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/TileTile6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Reshape7gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/floordiv*
T0*'
_output_shapes
:?????????*

Tmultiples0

6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/ShapeShapegradients_2/pi/pow_2_grad/mul*
out_type0*
_output_shapes
:*
T0

8gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape_1Shapegradients_2/pi/pow_2_grad/Pow*
out_type0*
T0*
_output_shapes
:

Fgradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape8gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
Α
4gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/MulMul3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Tilegradients_2/pi/pow_2_grad/Pow*'
_output_shapes
:?????????*
T0
ω
4gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/SumSum4gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/MulFgradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
ρ
8gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/ReshapeReshape4gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Sum6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape*'
_output_shapes
:?????????*
Tshape0*
T0
Γ
6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Mul_1Mulgradients_2/pi/pow_2_grad/mul3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Tile*'
_output_shapes
:?????????*
T0
?
6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Sum_1Sum6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Mul_1Hgradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
χ
:gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Reshape_1Reshape6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Sum_18gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape_1*
Tshape0*'
_output_shapes
:?????????*
T0
|
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ShapeShapepi/sub_2*
out_type0*
T0*
_output_shapes
:
y
6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0

Dgradients_3/gradients_2/pi/pow_2_grad/Pow_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
Ζ
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mulMul:gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Reshape_1gradients_2/pi/pow_2_grad/sub*'
_output_shapes
:?????????*
T0
y
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/sub/yConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
―
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/subSubgradients_2/pi/pow_2_grad/sub4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/sub/y*
T0*
_output_shapes
: 
©
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/PowPowpi/sub_22gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/sub*'
_output_shapes
:?????????*
T0
Υ
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_1Mul2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Pow*'
_output_shapes
:?????????*
T0
υ
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/SumSum4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_1Dgradients_3/gradients_2/pi/pow_2_grad/Pow_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0
λ
6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ReshapeReshape2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Sum4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape*
Tshape0*'
_output_shapes
:?????????*
T0
}
8gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
·
6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/GreaterGreaterpi/sub_28gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Greater/y*
T0*'
_output_shapes
:?????????

>gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like/ShapeShapepi/sub_2*
T0*
_output_shapes
:*
out_type0

>gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

8gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_likeFill>gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like/Shape>gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like/Const*'
_output_shapes
:?????????*
T0*

index_type0
ν
5gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/SelectSelect6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Greaterpi/sub_28gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like*
T0*'
_output_shapes
:?????????
’
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/LogLog5gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Select*'
_output_shapes
:?????????*
T0

9gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/zeros_like	ZerosLikepi/sub_2*
T0*'
_output_shapes
:?????????

7gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Select_1Select6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Greater2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Log9gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/zeros_like*'
_output_shapes
:?????????*
T0
Θ
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_2Mul:gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Reshape_1gradients_2/pi/pow_2_grad/Pow*'
_output_shapes
:?????????*
T0
ά
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_3Mul4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_27gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Select_1*'
_output_shapes
:?????????*
T0
ω
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Sum_1Sum4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_3Fgradients_3/gradients_2/pi/pow_2_grad/Pow_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
ΰ
8gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Reshape_1Reshape4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Sum_16gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
m
gradients_3/pi/sub_2_grad/ShapeShapepi/Placeholder*
out_type0*
T0*
_output_shapes
:
s
!gradients_3/pi/sub_2_grad/Shape_1Shapepi/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
Ι
/gradients_3/pi/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_3/pi/sub_2_grad/Shape!gradients_3/pi/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
Ν
gradients_3/pi/sub_2_grad/SumSum6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Reshape/gradients_3/pi/sub_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
¬
!gradients_3/pi/sub_2_grad/ReshapeReshapegradients_3/pi/sub_2_grad/Sumgradients_3/pi/sub_2_grad/Shape*
Tshape0*
T0*'
_output_shapes
:?????????
Ρ
gradients_3/pi/sub_2_grad/Sum_1Sum6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Reshape1gradients_3/pi/sub_2_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
h
gradients_3/pi/sub_2_grad/NegNeggradients_3/pi/sub_2_grad/Sum_1*
_output_shapes
:*
T0
°
#gradients_3/pi/sub_2_grad/Reshape_1Reshapegradients_3/pi/sub_2_grad/Neg!gradients_3/pi/sub_2_grad/Shape_1*
Tshape0*
T0*'
_output_shapes
:?????????

/gradients_3/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients_3/pi/sub_2_grad/Reshape_1*
data_formatNHWC*
_output_shapes
:*
T0
Ι
)gradients_3/pi/dense_2/MatMul_grad/MatMulMatMul#gradients_3/pi/sub_2_grad/Reshape_1pi/dense_2/kernel/read*
transpose_a( *(
_output_shapes
:?????????*
T0*
transpose_b(
»
+gradients_3/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Tanh#gradients_3/pi/sub_2_grad/Reshape_1*
transpose_a(*
_output_shapes
:	*
T0*
transpose_b( 
ΰ
gradients_3/AddN_3AddNCgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_2)gradients_3/pi/dense_2/MatMul_grad/MatMul*
N*(
_output_shapes
:?????????*
T0*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul

)gradients_3/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanhgradients_3/AddN_3*
T0*(
_output_shapes
:?????????

gradients_3/AddN_4AddNCgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1+gradients_3/pi/dense_2/MatMul_grad/MatMul_1*
T0*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1*
_output_shapes
:	*
N
¦
/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_3/pi/dense_1/Tanh_grad/TanhGrad*
data_formatNHWC*
T0*
_output_shapes	
:
Ο
)gradients_3/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_3/pi/dense_1/Tanh_grad/TanhGradpi/dense_1/kernel/read*(
_output_shapes
:?????????*
transpose_b(*
transpose_a( *
T0
ΐ
+gradients_3/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh)gradients_3/pi/dense_1/Tanh_grad/TanhGrad*
transpose_b( *
T0*
transpose_a(* 
_output_shapes
:

ή
gradients_3/AddN_5AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_2)gradients_3/pi/dense_1/MatMul_grad/MatMul*
N*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul*
T0*(
_output_shapes
:?????????

'gradients_3/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanhgradients_3/AddN_5*(
_output_shapes
:?????????*
T0

gradients_3/AddN_6AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1+gradients_3/pi/dense_1/MatMul_grad/MatMul_1*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1*
N* 
_output_shapes
:
*
T0
’
-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_3/pi/dense/Tanh_grad/TanhGrad*
T0*
_output_shapes	
:*
data_formatNHWC
Θ
'gradients_3/pi/dense/MatMul_grad/MatMulMatMul'gradients_3/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*
transpose_b(*'
_output_shapes
:?????????0*
T0*
transpose_a( 
Ή
)gradients_3/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_3/pi/dense/Tanh_grad/TanhGrad*
_output_shapes
:	0*
transpose_b( *
transpose_a(*
T0
c
Reshape_18/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0


Reshape_18Reshape)gradients_3/pi/dense/MatMul_grad/MatMul_1Reshape_18/shape*
_output_shapes	
:`*
T0*
Tshape0
c
Reshape_19/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????


Reshape_19Reshape-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradReshape_19/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_20/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
p

Reshape_20Reshapegradients_3/AddN_6Reshape_20/shape*
Tshape0*
_output_shapes

:*
T0
c
Reshape_21/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0


Reshape_21Reshape/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_21/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_22/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
o

Reshape_22Reshapegradients_3/AddN_4Reshape_22/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_23/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????


Reshape_23Reshape/gradients_3/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_23/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_24/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????


Reshape_24Reshape#gradients_3/pi/mul_5_grad/Reshape_1Reshape_24/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_4/axisConst*
dtype0*
_output_shapes
: *
value	B : 
³
concat_4ConcatV2
Reshape_18
Reshape_19
Reshape_20
Reshape_21
Reshape_22
Reshape_23
Reshape_24concat_4/axis*
N*

Tidx0*
_output_shapes

:θ*
T0
L
mul_6/xConst*
valueB
 *ΝΜΜ=*
dtype0*
_output_shapes
: 
K
mul_6Mulmul_6/xPlaceholder_9*
_output_shapes

:θ*
T0
D
add_2Addconcat_4mul_6*
_output_shapes

:θ*
T0
T
gradients_4/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_4/grad_ys_0Const*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
gradients_4/FillFillgradients_4/Shapegradients_4/grad_ys_0*

index_type0*
T0*
_output_shapes
: 
o
%gradients_4/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients_4/Mean_2_grad/ReshapeReshapegradients_4/Fill%gradients_4/Mean_2_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
b
gradients_4/Mean_2_grad/ShapeShapemul_2*
T0*
_output_shapes
:*
out_type0
€
gradients_4/Mean_2_grad/TileTilegradients_4/Mean_2_grad/Reshapegradients_4/Mean_2_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:?????????
d
gradients_4/Mean_2_grad/Shape_1Shapemul_2*
out_type0*
T0*
_output_shapes
:
b
gradients_4/Mean_2_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
g
gradients_4/Mean_2_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
’
gradients_4/Mean_2_grad/ProdProdgradients_4/Mean_2_grad/Shape_1gradients_4/Mean_2_grad/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
i
gradients_4/Mean_2_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
¦
gradients_4/Mean_2_grad/Prod_1Prodgradients_4/Mean_2_grad/Shape_2gradients_4/Mean_2_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
c
!gradients_4/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_4/Mean_2_grad/MaximumMaximumgradients_4/Mean_2_grad/Prod_1!gradients_4/Mean_2_grad/Maximum/y*
T0*
_output_shapes
: 

 gradients_4/Mean_2_grad/floordivFloorDivgradients_4/Mean_2_grad/Prodgradients_4/Mean_2_grad/Maximum*
T0*
_output_shapes
: 

gradients_4/Mean_2_grad/CastCast gradients_4/Mean_2_grad/floordiv*

DstT0*
_output_shapes
: *
Truncate( *

SrcT0

gradients_4/Mean_2_grad/truedivRealDivgradients_4/Mean_2_grad/Tilegradients_4/Mean_2_grad/Cast*
T0*#
_output_shapes
:?????????
_
gradients_4/mul_2_grad/ShapeShapeExp*
out_type0*
_output_shapes
:*
T0
k
gradients_4/mul_2_grad/Shape_1ShapePlaceholder_3*
out_type0*
T0*
_output_shapes
:
ΐ
,gradients_4/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_4/mul_2_grad/Shapegradients_4/mul_2_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0

gradients_4/mul_2_grad/MulMulgradients_4/Mean_2_grad/truedivPlaceholder_3*
T0*#
_output_shapes
:?????????
«
gradients_4/mul_2_grad/SumSumgradients_4/mul_2_grad/Mul,gradients_4/mul_2_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 

gradients_4/mul_2_grad/ReshapeReshapegradients_4/mul_2_grad/Sumgradients_4/mul_2_grad/Shape*
Tshape0*#
_output_shapes
:?????????*
T0
w
gradients_4/mul_2_grad/Mul_1MulExpgradients_4/Mean_2_grad/truediv*
T0*#
_output_shapes
:?????????
±
gradients_4/mul_2_grad/Sum_1Sumgradients_4/mul_2_grad/Mul_1.gradients_4/mul_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0
₯
 gradients_4/mul_2_grad/Reshape_1Reshapegradients_4/mul_2_grad/Sum_1gradients_4/mul_2_grad/Shape_1*#
_output_shapes
:?????????*
T0*
Tshape0
r
gradients_4/Exp_grad/mulMulgradients_4/mul_2_grad/ReshapeExp*#
_output_shapes
:?????????*
T0
b
gradients_4/sub_1_grad/ShapeShapepi/Sum*
_output_shapes
:*
out_type0*
T0
k
gradients_4/sub_1_grad/Shape_1ShapePlaceholder_6*
T0*
out_type0*
_output_shapes
:
ΐ
,gradients_4/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_4/sub_1_grad/Shapegradients_4/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
©
gradients_4/sub_1_grad/SumSumgradients_4/Exp_grad/mul,gradients_4/sub_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 

gradients_4/sub_1_grad/ReshapeReshapegradients_4/sub_1_grad/Sumgradients_4/sub_1_grad/Shape*#
_output_shapes
:?????????*
Tshape0*
T0
­
gradients_4/sub_1_grad/Sum_1Sumgradients_4/Exp_grad/mul.gradients_4/sub_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
b
gradients_4/sub_1_grad/NegNeggradients_4/sub_1_grad/Sum_1*
_output_shapes
:*
T0
£
 gradients_4/sub_1_grad/Reshape_1Reshapegradients_4/sub_1_grad/Neggradients_4/sub_1_grad/Shape_1*
Tshape0*#
_output_shapes
:?????????*
T0
e
gradients_4/pi/Sum_grad/ShapeShapepi/mul_2*
_output_shapes
:*
T0*
out_type0

gradients_4/pi/Sum_grad/SizeConst*
dtype0*0
_class&
$"loc:@gradients_4/pi/Sum_grad/Shape*
value	B :*
_output_shapes
: 
­
gradients_4/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients_4/pi/Sum_grad/Size*
_output_shapes
: *
T0*0
_class&
$"loc:@gradients_4/pi/Sum_grad/Shape
΅
gradients_4/pi/Sum_grad/modFloorModgradients_4/pi/Sum_grad/addgradients_4/pi/Sum_grad/Size*
_output_shapes
: *0
_class&
$"loc:@gradients_4/pi/Sum_grad/Shape*
T0

gradients_4/pi/Sum_grad/Shape_1Const*
_output_shapes
: *
dtype0*0
_class&
$"loc:@gradients_4/pi/Sum_grad/Shape*
valueB 

#gradients_4/pi/Sum_grad/range/startConst*0
_class&
$"loc:@gradients_4/pi/Sum_grad/Shape*
value	B : *
dtype0*
_output_shapes
: 

#gradients_4/pi/Sum_grad/range/deltaConst*
value	B :*
dtype0*0
_class&
$"loc:@gradients_4/pi/Sum_grad/Shape*
_output_shapes
: 
θ
gradients_4/pi/Sum_grad/rangeRange#gradients_4/pi/Sum_grad/range/startgradients_4/pi/Sum_grad/Size#gradients_4/pi/Sum_grad/range/delta*
_output_shapes
:*0
_class&
$"loc:@gradients_4/pi/Sum_grad/Shape*

Tidx0

"gradients_4/pi/Sum_grad/Fill/valueConst*
dtype0*
value	B :*0
_class&
$"loc:@gradients_4/pi/Sum_grad/Shape*
_output_shapes
: 
Ξ
gradients_4/pi/Sum_grad/FillFillgradients_4/pi/Sum_grad/Shape_1"gradients_4/pi/Sum_grad/Fill/value*
T0*0
_class&
$"loc:@gradients_4/pi/Sum_grad/Shape*

index_type0*
_output_shapes
: 

%gradients_4/pi/Sum_grad/DynamicStitchDynamicStitchgradients_4/pi/Sum_grad/rangegradients_4/pi/Sum_grad/modgradients_4/pi/Sum_grad/Shapegradients_4/pi/Sum_grad/Fill*
_output_shapes
:*
N*0
_class&
$"loc:@gradients_4/pi/Sum_grad/Shape*
T0

!gradients_4/pi/Sum_grad/Maximum/yConst*
value	B :*
_output_shapes
: *0
_class&
$"loc:@gradients_4/pi/Sum_grad/Shape*
dtype0
Λ
gradients_4/pi/Sum_grad/MaximumMaximum%gradients_4/pi/Sum_grad/DynamicStitch!gradients_4/pi/Sum_grad/Maximum/y*
T0*
_output_shapes
:*0
_class&
$"loc:@gradients_4/pi/Sum_grad/Shape
Γ
 gradients_4/pi/Sum_grad/floordivFloorDivgradients_4/pi/Sum_grad/Shapegradients_4/pi/Sum_grad/Maximum*
_output_shapes
:*0
_class&
$"loc:@gradients_4/pi/Sum_grad/Shape*
T0
Ί
gradients_4/pi/Sum_grad/ReshapeReshapegradients_4/sub_1_grad/Reshape%gradients_4/pi/Sum_grad/DynamicStitch*
Tshape0*
T0*0
_output_shapes
:??????????????????
«
gradients_4/pi/Sum_grad/TileTilegradients_4/pi/Sum_grad/Reshape gradients_4/pi/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:?????????
b
gradients_4/pi/mul_2_grad/ShapeConst*
_output_shapes
: *
valueB *
dtype0
i
!gradients_4/pi/mul_2_grad/Shape_1Shapepi/add_3*
out_type0*
T0*
_output_shapes
:
Ι
/gradients_4/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_4/pi/mul_2_grad/Shape!gradients_4/pi/mul_2_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
~
gradients_4/pi/mul_2_grad/MulMulgradients_4/pi/Sum_grad/Tilepi/add_3*'
_output_shapes
:?????????*
T0
΄
gradients_4/pi/mul_2_grad/SumSumgradients_4/pi/mul_2_grad/Mul/gradients_4/pi/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 

!gradients_4/pi/mul_2_grad/ReshapeReshapegradients_4/pi/mul_2_grad/Sumgradients_4/pi/mul_2_grad/Shape*
Tshape0*
_output_shapes
: *
T0

gradients_4/pi/mul_2_grad/Mul_1Mul
pi/mul_2/xgradients_4/pi/Sum_grad/Tile*'
_output_shapes
:?????????*
T0
Ί
gradients_4/pi/mul_2_grad/Sum_1Sumgradients_4/pi/mul_2_grad/Mul_11gradients_4/pi/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
²
#gradients_4/pi/mul_2_grad/Reshape_1Reshapegradients_4/pi/mul_2_grad/Sum_1!gradients_4/pi/mul_2_grad/Shape_1*
Tshape0*
T0*'
_output_shapes
:?????????
g
gradients_4/pi/add_3_grad/ShapeShapepi/add_2*
_output_shapes
:*
T0*
out_type0
d
!gradients_4/pi/add_3_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
Ι
/gradients_4/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_4/pi/add_3_grad/Shape!gradients_4/pi/add_3_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
Ί
gradients_4/pi/add_3_grad/SumSum#gradients_4/pi/mul_2_grad/Reshape_1/gradients_4/pi/add_3_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0
¬
!gradients_4/pi/add_3_grad/ReshapeReshapegradients_4/pi/add_3_grad/Sumgradients_4/pi/add_3_grad/Shape*
Tshape0*
T0*'
_output_shapes
:?????????
Ύ
gradients_4/pi/add_3_grad/Sum_1Sum#gradients_4/pi/mul_2_grad/Reshape_11gradients_4/pi/add_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
‘
#gradients_4/pi/add_3_grad/Reshape_1Reshapegradients_4/pi/add_3_grad/Sum_1!gradients_4/pi/add_3_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
e
gradients_4/pi/add_2_grad/ShapeShapepi/pow*
_output_shapes
:*
out_type0*
T0
k
!gradients_4/pi/add_2_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
Ι
/gradients_4/pi/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_4/pi/add_2_grad/Shape!gradients_4/pi/add_2_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
Έ
gradients_4/pi/add_2_grad/SumSum!gradients_4/pi/add_3_grad/Reshape/gradients_4/pi/add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
¬
!gradients_4/pi/add_2_grad/ReshapeReshapegradients_4/pi/add_2_grad/Sumgradients_4/pi/add_2_grad/Shape*
Tshape0*'
_output_shapes
:?????????*
T0
Ό
gradients_4/pi/add_2_grad/Sum_1Sum!gradients_4/pi/add_3_grad/Reshape1gradients_4/pi/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
₯
#gradients_4/pi/add_2_grad/Reshape_1Reshapegradients_4/pi/add_2_grad/Sum_1!gradients_4/pi/add_2_grad/Shape_1*
T0*
_output_shapes
:*
Tshape0
g
gradients_4/pi/pow_grad/ShapeShape
pi/truediv*
T0*
out_type0*
_output_shapes
:
b
gradients_4/pi/pow_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Γ
-gradients_4/pi/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_4/pi/pow_grad/Shapegradients_4/pi/pow_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0

gradients_4/pi/pow_grad/mulMul!gradients_4/pi/add_2_grad/Reshapepi/pow/y*
T0*'
_output_shapes
:?????????
b
gradients_4/pi/pow_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
l
gradients_4/pi/pow_grad/subSubpi/pow/ygradients_4/pi/pow_grad/sub/y*
T0*
_output_shapes
: 
}
gradients_4/pi/pow_grad/PowPow
pi/truedivgradients_4/pi/pow_grad/sub*
T0*'
_output_shapes
:?????????

gradients_4/pi/pow_grad/mul_1Mulgradients_4/pi/pow_grad/mulgradients_4/pi/pow_grad/Pow*'
_output_shapes
:?????????*
T0
°
gradients_4/pi/pow_grad/SumSumgradients_4/pi/pow_grad/mul_1-gradients_4/pi/pow_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
¦
gradients_4/pi/pow_grad/ReshapeReshapegradients_4/pi/pow_grad/Sumgradients_4/pi/pow_grad/Shape*'
_output_shapes
:?????????*
T0*
Tshape0
f
!gradients_4/pi/pow_grad/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 

gradients_4/pi/pow_grad/GreaterGreater
pi/truediv!gradients_4/pi/pow_grad/Greater/y*'
_output_shapes
:?????????*
T0
q
'gradients_4/pi/pow_grad/ones_like/ShapeShape
pi/truediv*
_output_shapes
:*
out_type0*
T0
l
'gradients_4/pi/pow_grad/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ώ
!gradients_4/pi/pow_grad/ones_likeFill'gradients_4/pi/pow_grad/ones_like/Shape'gradients_4/pi/pow_grad/ones_like/Const*
T0*

index_type0*'
_output_shapes
:?????????
ͺ
gradients_4/pi/pow_grad/SelectSelectgradients_4/pi/pow_grad/Greater
pi/truediv!gradients_4/pi/pow_grad/ones_like*
T0*'
_output_shapes
:?????????
t
gradients_4/pi/pow_grad/LogLoggradients_4/pi/pow_grad/Select*'
_output_shapes
:?????????*
T0
m
"gradients_4/pi/pow_grad/zeros_like	ZerosLike
pi/truediv*
T0*'
_output_shapes
:?????????
Ύ
 gradients_4/pi/pow_grad/Select_1Selectgradients_4/pi/pow_grad/Greatergradients_4/pi/pow_grad/Log"gradients_4/pi/pow_grad/zeros_like*'
_output_shapes
:?????????*
T0

gradients_4/pi/pow_grad/mul_2Mul!gradients_4/pi/add_2_grad/Reshapepi/pow*
T0*'
_output_shapes
:?????????

gradients_4/pi/pow_grad/mul_3Mulgradients_4/pi/pow_grad/mul_2 gradients_4/pi/pow_grad/Select_1*
T0*'
_output_shapes
:?????????
΄
gradients_4/pi/pow_grad/Sum_1Sumgradients_4/pi/pow_grad/mul_3/gradients_4/pi/pow_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0

!gradients_4/pi/pow_grad/Reshape_1Reshapegradients_4/pi/pow_grad/Sum_1gradients_4/pi/pow_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
b
gradients_4/pi/mul_1_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
k
!gradients_4/pi/mul_1_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
Ι
/gradients_4/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_4/pi/mul_1_grad/Shape!gradients_4/pi/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????

gradients_4/pi/mul_1_grad/MulMul#gradients_4/pi/add_2_grad/Reshape_1pi/log_std/read*
_output_shapes
:*
T0
²
gradients_4/pi/mul_1_grad/SumSumgradients_4/pi/mul_1_grad/Mul/gradients_4/pi/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

!gradients_4/pi/mul_1_grad/ReshapeReshapegradients_4/pi/mul_1_grad/Sumgradients_4/pi/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes
: 
|
gradients_4/pi/mul_1_grad/Mul_1Mul
pi/mul_1/x#gradients_4/pi/add_2_grad/Reshape_1*
T0*
_output_shapes
:
Ό
gradients_4/pi/mul_1_grad/Sum_1Sumgradients_4/pi/mul_1_grad/Mul_11gradients_4/pi/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
₯
#gradients_4/pi/mul_1_grad/Reshape_1Reshapegradients_4/pi/mul_1_grad/Sum_1!gradients_4/pi/mul_1_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
g
!gradients_4/pi/truediv_grad/ShapeShapepi/sub*
out_type0*
T0*
_output_shapes
:
m
#gradients_4/pi/truediv_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
Ο
1gradients_4/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients_4/pi/truediv_grad/Shape#gradients_4/pi/truediv_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0

#gradients_4/pi/truediv_grad/RealDivRealDivgradients_4/pi/pow_grad/Reshapepi/add_1*
T0*'
_output_shapes
:?????????
Ύ
gradients_4/pi/truediv_grad/SumSum#gradients_4/pi/truediv_grad/RealDiv1gradients_4/pi/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
²
#gradients_4/pi/truediv_grad/ReshapeReshapegradients_4/pi/truediv_grad/Sum!gradients_4/pi/truediv_grad/Shape*
Tshape0*'
_output_shapes
:?????????*
T0
`
gradients_4/pi/truediv_grad/NegNegpi/sub*'
_output_shapes
:?????????*
T0

%gradients_4/pi/truediv_grad/RealDiv_1RealDivgradients_4/pi/truediv_grad/Negpi/add_1*'
_output_shapes
:?????????*
T0

%gradients_4/pi/truediv_grad/RealDiv_2RealDiv%gradients_4/pi/truediv_grad/RealDiv_1pi/add_1*'
_output_shapes
:?????????*
T0
 
gradients_4/pi/truediv_grad/mulMulgradients_4/pi/pow_grad/Reshape%gradients_4/pi/truediv_grad/RealDiv_2*'
_output_shapes
:?????????*
T0
Ύ
!gradients_4/pi/truediv_grad/Sum_1Sumgradients_4/pi/truediv_grad/mul3gradients_4/pi/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
«
%gradients_4/pi/truediv_grad/Reshape_1Reshape!gradients_4/pi/truediv_grad/Sum_1#gradients_4/pi/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
j
gradients_4/pi/sub_grad/ShapeShapePlaceholder_1*
out_type0*
T0*
_output_shapes
:
q
gradients_4/pi/sub_grad/Shape_1Shapepi/dense_2/BiasAdd*
out_type0*
T0*
_output_shapes
:
Γ
-gradients_4/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_4/pi/sub_grad/Shapegradients_4/pi/sub_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
Ά
gradients_4/pi/sub_grad/SumSum#gradients_4/pi/truediv_grad/Reshape-gradients_4/pi/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
¦
gradients_4/pi/sub_grad/ReshapeReshapegradients_4/pi/sub_grad/Sumgradients_4/pi/sub_grad/Shape*
Tshape0*'
_output_shapes
:?????????*
T0
Ί
gradients_4/pi/sub_grad/Sum_1Sum#gradients_4/pi/truediv_grad/Reshape/gradients_4/pi/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
d
gradients_4/pi/sub_grad/NegNeggradients_4/pi/sub_grad/Sum_1*
T0*
_output_shapes
:
ͺ
!gradients_4/pi/sub_grad/Reshape_1Reshapegradients_4/pi/sub_grad/Neggradients_4/pi/sub_grad/Shape_1*'
_output_shapes
:?????????*
T0*
Tshape0
i
gradients_4/pi/add_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
d
!gradients_4/pi/add_1_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
Ι
/gradients_4/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_4/pi/add_1_grad/Shape!gradients_4/pi/add_1_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
Ύ
gradients_4/pi/add_1_grad/SumSum%gradients_4/pi/truediv_grad/Reshape_1/gradients_4/pi/add_1_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 

!gradients_4/pi/add_1_grad/ReshapeReshapegradients_4/pi/add_1_grad/Sumgradients_4/pi/add_1_grad/Shape*
_output_shapes
:*
T0*
Tshape0
Ύ
gradients_4/pi/add_1_grad/Sum_1Sum%gradients_4/pi/truediv_grad/Reshape_11gradients_4/pi/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
‘
#gradients_4/pi/add_1_grad/Reshape_1Reshapegradients_4/pi/add_1_grad/Sum_1!gradients_4/pi/add_1_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0

/gradients_4/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad!gradients_4/pi/sub_grad/Reshape_1*
_output_shapes
:*
data_formatNHWC*
T0
v
gradients_4/pi/Exp_1_grad/mulMul!gradients_4/pi/add_1_grad/Reshapepi/Exp_1*
_output_shapes
:*
T0
Η
)gradients_4/pi/dense_2/MatMul_grad/MatMulMatMul!gradients_4/pi/sub_grad/Reshape_1pi/dense_2/kernel/read*
transpose_a( *
T0*
transpose_b(*(
_output_shapes
:?????????
Ή
+gradients_4/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Tanh!gradients_4/pi/sub_grad/Reshape_1*
_output_shapes
:	*
T0*
transpose_a(*
transpose_b( 
Β
gradients_4/AddNAddN#gradients_4/pi/mul_1_grad/Reshape_1gradients_4/pi/Exp_1_grad/mul*
_output_shapes
:*
N*
T0*6
_class,
*(loc:@gradients_4/pi/mul_1_grad/Reshape_1
€
)gradients_4/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanh)gradients_4/pi/dense_2/MatMul_grad/MatMul*(
_output_shapes
:?????????*
T0
¦
/gradients_4/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_4/pi/dense_1/Tanh_grad/TanhGrad*
data_formatNHWC*
T0*
_output_shapes	
:
Ο
)gradients_4/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_4/pi/dense_1/Tanh_grad/TanhGradpi/dense_1/kernel/read*
transpose_b(*
T0*(
_output_shapes
:?????????*
transpose_a( 
ΐ
+gradients_4/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh)gradients_4/pi/dense_1/Tanh_grad/TanhGrad*
T0* 
_output_shapes
:
*
transpose_a(*
transpose_b( 
 
'gradients_4/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanh)gradients_4/pi/dense_1/MatMul_grad/MatMul*(
_output_shapes
:?????????*
T0
’
-gradients_4/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_4/pi/dense/Tanh_grad/TanhGrad*
T0*
_output_shapes	
:*
data_formatNHWC
Θ
'gradients_4/pi/dense/MatMul_grad/MatMulMatMul'gradients_4/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*'
_output_shapes
:?????????0*
T0*
transpose_a( *
transpose_b(
Ή
)gradients_4/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_4/pi/dense/Tanh_grad/TanhGrad*
T0*
_output_shapes
:	0*
transpose_b( *
transpose_a(
c
Reshape_25/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:


Reshape_25Reshape)gradients_4/pi/dense/MatMul_grad/MatMul_1Reshape_25/shape*
_output_shapes	
:`*
T0*
Tshape0
c
Reshape_26/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????


Reshape_26Reshape-gradients_4/pi/dense/BiasAdd_grad/BiasAddGradReshape_26/shape*
Tshape0*
T0*
_output_shapes	
:
c
Reshape_27/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:


Reshape_27Reshape+gradients_4/pi/dense_1/MatMul_grad/MatMul_1Reshape_27/shape*
Tshape0*
_output_shapes

:*
T0
c
Reshape_28/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????


Reshape_28Reshape/gradients_4/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_28/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_29/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:


Reshape_29Reshape+gradients_4/pi/dense_2/MatMul_grad/MatMul_1Reshape_29/shape*
Tshape0*
T0*
_output_shapes	
:
c
Reshape_30/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:


Reshape_30Reshape/gradients_4/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_30/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_31/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
l

Reshape_31Reshapegradients_4/AddNReshape_31/shape*
Tshape0*
T0*
_output_shapes
:
O
concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 
³
concat_5ConcatV2
Reshape_25
Reshape_26
Reshape_27
Reshape_28
Reshape_29
Reshape_30
Reshape_31concat_5/axis*
_output_shapes

:θ*
N*
T0*

Tidx0
c
Reshape_32/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
q

Reshape_32Reshapepi/dense/kernel/readReshape_32/shape*
Tshape0*
T0*
_output_shapes	
:`
c
Reshape_33/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
o

Reshape_33Reshapepi/dense/bias/readReshape_33/shape*
Tshape0*
_output_shapes	
:*
T0
c
Reshape_34/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
t

Reshape_34Reshapepi/dense_1/kernel/readReshape_34/shape*
T0*
_output_shapes

:*
Tshape0
c
Reshape_35/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
q

Reshape_35Reshapepi/dense_1/bias/readReshape_35/shape*
Tshape0*
_output_shapes	
:*
T0
c
Reshape_36/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
s

Reshape_36Reshapepi/dense_2/kernel/readReshape_36/shape*
T0*
_output_shapes	
:*
Tshape0
c
Reshape_37/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
p

Reshape_37Reshapepi/dense_2/bias/readReshape_37/shape*
Tshape0*
T0*
_output_shapes
:
c
Reshape_38/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
k

Reshape_38Reshapepi/log_std/readReshape_38/shape*
_output_shapes
:*
Tshape0*
T0
O
concat_6/axisConst*
value	B : *
_output_shapes
: *
dtype0
³
concat_6ConcatV2
Reshape_32
Reshape_33
Reshape_34
Reshape_35
Reshape_36
Reshape_37
Reshape_38concat_6/axis*
_output_shapes

:θ*
T0*

Tidx0*
N
l
Const_7Const*
dtype0*1
value(B&" 0                    *
_output_shapes
:
S
split_2/split_dimConst*
value	B : *
_output_shapes
: *
dtype0
¨
split_2SplitVPlaceholder_9Const_7split_2/split_dim*
	num_split*D
_output_shapes2
0:`::::::*
T0*

Tlen0
a
Reshape_39/shapeConst*
dtype0*
_output_shapes
:*
valueB"0      
h

Reshape_39Reshapesplit_2Reshape_39/shape*
_output_shapes
:	0*
Tshape0*
T0
[
Reshape_40/shapeConst*
_output_shapes
:*
dtype0*
valueB:
f

Reshape_40Reshape	split_2:1Reshape_40/shape*
Tshape0*
_output_shapes	
:*
T0
a
Reshape_41/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
k

Reshape_41Reshape	split_2:2Reshape_41/shape*
T0* 
_output_shapes
:
*
Tshape0
[
Reshape_42/shapeConst*
_output_shapes
:*
valueB:*
dtype0
f

Reshape_42Reshape	split_2:3Reshape_42/shape*
_output_shapes	
:*
Tshape0*
T0
a
Reshape_43/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
j

Reshape_43Reshape	split_2:4Reshape_43/shape*
_output_shapes
:	*
T0*
Tshape0
Z
Reshape_44/shapeConst*
_output_shapes
:*
dtype0*
valueB:
e

Reshape_44Reshape	split_2:5Reshape_44/shape*
Tshape0*
T0*
_output_shapes
:
Z
Reshape_45/shapeConst*
dtype0*
valueB:*
_output_shapes
:
e

Reshape_45Reshape	split_2:6Reshape_45/shape*
Tshape0*
T0*
_output_shapes
:
¦
Assign_1Assignpi/dense/kernel
Reshape_39*
_output_shapes
:	0*"
_class
loc:@pi/dense/kernel*
T0*
use_locking(*
validate_shape(

Assign_2Assignpi/dense/bias
Reshape_40*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:* 
_class
loc:@pi/dense/bias
«
Assign_3Assignpi/dense_1/kernel
Reshape_41*
validate_shape(*
use_locking(* 
_output_shapes
:
*
T0*$
_class
loc:@pi/dense_1/kernel
’
Assign_4Assignpi/dense_1/bias
Reshape_42*
validate_shape(*
_output_shapes	
:*"
_class
loc:@pi/dense_1/bias*
use_locking(*
T0
ͺ
Assign_5Assignpi/dense_2/kernel
Reshape_43*
T0*$
_class
loc:@pi/dense_2/kernel*
use_locking(*
_output_shapes
:	*
validate_shape(
‘
Assign_6Assignpi/dense_2/bias
Reshape_44*
use_locking(*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
T0*
validate_shape(

Assign_7Assign
pi/log_std
Reshape_45*
_class
loc:@pi/log_std*
_output_shapes
:*
use_locking(*
T0*
validate_shape(
a
group_deps_2NoOp	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5	^Assign_6	^Assign_7
U
sub_3SubPlaceholder_4
vf/Squeeze*#
_output_shapes
:?????????*
T0
J
pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
F
powPowsub_3pow/y*#
_output_shapes
:?????????*
T0
Q
Const_8Const*
valueB: *
_output_shapes
:*
dtype0
Z
Mean_3MeanpowConst_8*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
U
sub_4SubPlaceholder_5
vc/Squeeze*
T0*#
_output_shapes
:?????????
L
pow_1/yConst*
dtype0*
valueB
 *   @*
_output_shapes
: 
J
pow_1Powsub_4pow_1/y*
T0*#
_output_shapes
:?????????
Q
Const_9Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_4Meanpow_1Const_9*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
=
add_3AddMean_3Mean_4*
T0*
_output_shapes
: 
T
gradients_5/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
Z
gradients_5/grad_ys_0Const*
dtype0*
valueB
 *  ?*
_output_shapes
: 
u
gradients_5/FillFillgradients_5/Shapegradients_5/grad_ys_0*
T0*
_output_shapes
: *

index_type0
B
'gradients_5/add_3_grad/tuple/group_depsNoOp^gradients_5/Fill
½
/gradients_5/add_3_grad/tuple/control_dependencyIdentitygradients_5/Fill(^gradients_5/add_3_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_5/Fill*
_output_shapes
: 
Ώ
1gradients_5/add_3_grad/tuple/control_dependency_1Identitygradients_5/Fill(^gradients_5/add_3_grad/tuple/group_deps*
T0*
_output_shapes
: *#
_class
loc:@gradients_5/Fill
o
%gradients_5/Mean_3_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
΅
gradients_5/Mean_3_grad/ReshapeReshape/gradients_5/add_3_grad/tuple/control_dependency%gradients_5/Mean_3_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
`
gradients_5/Mean_3_grad/ShapeShapepow*
out_type0*
_output_shapes
:*
T0
€
gradients_5/Mean_3_grad/TileTilegradients_5/Mean_3_grad/Reshapegradients_5/Mean_3_grad/Shape*

Tmultiples0*#
_output_shapes
:?????????*
T0
b
gradients_5/Mean_3_grad/Shape_1Shapepow*
_output_shapes
:*
T0*
out_type0
b
gradients_5/Mean_3_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
g
gradients_5/Mean_3_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
’
gradients_5/Mean_3_grad/ProdProdgradients_5/Mean_3_grad/Shape_1gradients_5/Mean_3_grad/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
i
gradients_5/Mean_3_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
¦
gradients_5/Mean_3_grad/Prod_1Prodgradients_5/Mean_3_grad/Shape_2gradients_5/Mean_3_grad/Const_1*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
c
!gradients_5/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_5/Mean_3_grad/MaximumMaximumgradients_5/Mean_3_grad/Prod_1!gradients_5/Mean_3_grad/Maximum/y*
T0*
_output_shapes
: 

 gradients_5/Mean_3_grad/floordivFloorDivgradients_5/Mean_3_grad/Prodgradients_5/Mean_3_grad/Maximum*
T0*
_output_shapes
: 

gradients_5/Mean_3_grad/CastCast gradients_5/Mean_3_grad/floordiv*

DstT0*
Truncate( *
_output_shapes
: *

SrcT0

gradients_5/Mean_3_grad/truedivRealDivgradients_5/Mean_3_grad/Tilegradients_5/Mean_3_grad/Cast*
T0*#
_output_shapes
:?????????
o
%gradients_5/Mean_4_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
·
gradients_5/Mean_4_grad/ReshapeReshape1gradients_5/add_3_grad/tuple/control_dependency_1%gradients_5/Mean_4_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
b
gradients_5/Mean_4_grad/ShapeShapepow_1*
_output_shapes
:*
out_type0*
T0
€
gradients_5/Mean_4_grad/TileTilegradients_5/Mean_4_grad/Reshapegradients_5/Mean_4_grad/Shape*#
_output_shapes
:?????????*
T0*

Tmultiples0
d
gradients_5/Mean_4_grad/Shape_1Shapepow_1*
out_type0*
T0*
_output_shapes
:
b
gradients_5/Mean_4_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
g
gradients_5/Mean_4_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
’
gradients_5/Mean_4_grad/ProdProdgradients_5/Mean_4_grad/Shape_1gradients_5/Mean_4_grad/Const*
T0*

Tidx0*
	keep_dims( *
_output_shapes
: 
i
gradients_5/Mean_4_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
¦
gradients_5/Mean_4_grad/Prod_1Prodgradients_5/Mean_4_grad/Shape_2gradients_5/Mean_4_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
c
!gradients_5/Mean_4_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_5/Mean_4_grad/MaximumMaximumgradients_5/Mean_4_grad/Prod_1!gradients_5/Mean_4_grad/Maximum/y*
T0*
_output_shapes
: 

 gradients_5/Mean_4_grad/floordivFloorDivgradients_5/Mean_4_grad/Prodgradients_5/Mean_4_grad/Maximum*
_output_shapes
: *
T0

gradients_5/Mean_4_grad/CastCast gradients_5/Mean_4_grad/floordiv*

DstT0*
_output_shapes
: *
Truncate( *

SrcT0

gradients_5/Mean_4_grad/truedivRealDivgradients_5/Mean_4_grad/Tilegradients_5/Mean_4_grad/Cast*#
_output_shapes
:?????????*
T0
_
gradients_5/pow_grad/ShapeShapesub_3*
out_type0*
T0*
_output_shapes
:
_
gradients_5/pow_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ί
*gradients_5/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_5/pow_grad/Shapegradients_5/pow_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
u
gradients_5/pow_grad/mulMulgradients_5/Mean_3_grad/truedivpow/y*#
_output_shapes
:?????????*
T0
_
gradients_5/pow_grad/sub/yConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
c
gradients_5/pow_grad/subSubpow/ygradients_5/pow_grad/sub/y*
_output_shapes
: *
T0
n
gradients_5/pow_grad/PowPowsub_3gradients_5/pow_grad/sub*#
_output_shapes
:?????????*
T0

gradients_5/pow_grad/mul_1Mulgradients_5/pow_grad/mulgradients_5/pow_grad/Pow*#
_output_shapes
:?????????*
T0
§
gradients_5/pow_grad/SumSumgradients_5/pow_grad/mul_1*gradients_5/pow_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients_5/pow_grad/ReshapeReshapegradients_5/pow_grad/Sumgradients_5/pow_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????
c
gradients_5/pow_grad/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
|
gradients_5/pow_grad/GreaterGreatersub_3gradients_5/pow_grad/Greater/y*#
_output_shapes
:?????????*
T0
i
$gradients_5/pow_grad/ones_like/ShapeShapesub_3*
T0*
out_type0*
_output_shapes
:
i
$gradients_5/pow_grad/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
²
gradients_5/pow_grad/ones_likeFill$gradients_5/pow_grad/ones_like/Shape$gradients_5/pow_grad/ones_like/Const*

index_type0*#
_output_shapes
:?????????*
T0

gradients_5/pow_grad/SelectSelectgradients_5/pow_grad/Greatersub_3gradients_5/pow_grad/ones_like*#
_output_shapes
:?????????*
T0
j
gradients_5/pow_grad/LogLoggradients_5/pow_grad/Select*#
_output_shapes
:?????????*
T0
a
gradients_5/pow_grad/zeros_like	ZerosLikesub_3*
T0*#
_output_shapes
:?????????
?
gradients_5/pow_grad/Select_1Selectgradients_5/pow_grad/Greatergradients_5/pow_grad/Loggradients_5/pow_grad/zeros_like*#
_output_shapes
:?????????*
T0
u
gradients_5/pow_grad/mul_2Mulgradients_5/Mean_3_grad/truedivpow*#
_output_shapes
:?????????*
T0

gradients_5/pow_grad/mul_3Mulgradients_5/pow_grad/mul_2gradients_5/pow_grad/Select_1*
T0*#
_output_shapes
:?????????
«
gradients_5/pow_grad/Sum_1Sumgradients_5/pow_grad/mul_3,gradients_5/pow_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0

gradients_5/pow_grad/Reshape_1Reshapegradients_5/pow_grad/Sum_1gradients_5/pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
m
%gradients_5/pow_grad/tuple/group_depsNoOp^gradients_5/pow_grad/Reshape^gradients_5/pow_grad/Reshape_1
ή
-gradients_5/pow_grad/tuple/control_dependencyIdentitygradients_5/pow_grad/Reshape&^gradients_5/pow_grad/tuple/group_deps*
T0*#
_output_shapes
:?????????*/
_class%
#!loc:@gradients_5/pow_grad/Reshape
Χ
/gradients_5/pow_grad/tuple/control_dependency_1Identitygradients_5/pow_grad/Reshape_1&^gradients_5/pow_grad/tuple/group_deps*
_output_shapes
: *1
_class'
%#loc:@gradients_5/pow_grad/Reshape_1*
T0
a
gradients_5/pow_1_grad/ShapeShapesub_4*
_output_shapes
:*
out_type0*
T0
a
gradients_5/pow_1_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
ΐ
,gradients_5/pow_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_5/pow_1_grad/Shapegradients_5/pow_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
y
gradients_5/pow_1_grad/mulMulgradients_5/Mean_4_grad/truedivpow_1/y*#
_output_shapes
:?????????*
T0
a
gradients_5/pow_1_grad/sub/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
i
gradients_5/pow_1_grad/subSubpow_1/ygradients_5/pow_1_grad/sub/y*
T0*
_output_shapes
: 
r
gradients_5/pow_1_grad/PowPowsub_4gradients_5/pow_1_grad/sub*#
_output_shapes
:?????????*
T0

gradients_5/pow_1_grad/mul_1Mulgradients_5/pow_1_grad/mulgradients_5/pow_1_grad/Pow*#
_output_shapes
:?????????*
T0
­
gradients_5/pow_1_grad/SumSumgradients_5/pow_1_grad/mul_1,gradients_5/pow_1_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 

gradients_5/pow_1_grad/ReshapeReshapegradients_5/pow_1_grad/Sumgradients_5/pow_1_grad/Shape*
T0*#
_output_shapes
:?????????*
Tshape0
e
 gradients_5/pow_1_grad/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    

gradients_5/pow_1_grad/GreaterGreatersub_4 gradients_5/pow_1_grad/Greater/y*
T0*#
_output_shapes
:?????????
k
&gradients_5/pow_1_grad/ones_like/ShapeShapesub_4*
out_type0*
_output_shapes
:*
T0
k
&gradients_5/pow_1_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Έ
 gradients_5/pow_1_grad/ones_likeFill&gradients_5/pow_1_grad/ones_like/Shape&gradients_5/pow_1_grad/ones_like/Const*

index_type0*#
_output_shapes
:?????????*
T0

gradients_5/pow_1_grad/SelectSelectgradients_5/pow_1_grad/Greatersub_4 gradients_5/pow_1_grad/ones_like*#
_output_shapes
:?????????*
T0
n
gradients_5/pow_1_grad/LogLoggradients_5/pow_1_grad/Select*
T0*#
_output_shapes
:?????????
c
!gradients_5/pow_1_grad/zeros_like	ZerosLikesub_4*#
_output_shapes
:?????????*
T0
Ά
gradients_5/pow_1_grad/Select_1Selectgradients_5/pow_1_grad/Greatergradients_5/pow_1_grad/Log!gradients_5/pow_1_grad/zeros_like*#
_output_shapes
:?????????*
T0
y
gradients_5/pow_1_grad/mul_2Mulgradients_5/Mean_4_grad/truedivpow_1*
T0*#
_output_shapes
:?????????

gradients_5/pow_1_grad/mul_3Mulgradients_5/pow_1_grad/mul_2gradients_5/pow_1_grad/Select_1*
T0*#
_output_shapes
:?????????
±
gradients_5/pow_1_grad/Sum_1Sumgradients_5/pow_1_grad/mul_3.gradients_5/pow_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:

 gradients_5/pow_1_grad/Reshape_1Reshapegradients_5/pow_1_grad/Sum_1gradients_5/pow_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
s
'gradients_5/pow_1_grad/tuple/group_depsNoOp^gradients_5/pow_1_grad/Reshape!^gradients_5/pow_1_grad/Reshape_1
ζ
/gradients_5/pow_1_grad/tuple/control_dependencyIdentitygradients_5/pow_1_grad/Reshape(^gradients_5/pow_1_grad/tuple/group_deps*#
_output_shapes
:?????????*1
_class'
%#loc:@gradients_5/pow_1_grad/Reshape*
T0
ί
1gradients_5/pow_1_grad/tuple/control_dependency_1Identity gradients_5/pow_1_grad/Reshape_1(^gradients_5/pow_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_5/pow_1_grad/Reshape_1*
_output_shapes
: 
i
gradients_5/sub_3_grad/ShapeShapePlaceholder_4*
out_type0*
_output_shapes
:*
T0
h
gradients_5/sub_3_grad/Shape_1Shape
vf/Squeeze*
T0*
_output_shapes
:*
out_type0
ΐ
,gradients_5/sub_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_5/sub_3_grad/Shapegradients_5/sub_3_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
Ύ
gradients_5/sub_3_grad/SumSum-gradients_5/pow_grad/tuple/control_dependency,gradients_5/sub_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients_5/sub_3_grad/ReshapeReshapegradients_5/sub_3_grad/Sumgradients_5/sub_3_grad/Shape*
Tshape0*#
_output_shapes
:?????????*
T0
Β
gradients_5/sub_3_grad/Sum_1Sum-gradients_5/pow_grad/tuple/control_dependency.gradients_5/sub_3_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0
b
gradients_5/sub_3_grad/NegNeggradients_5/sub_3_grad/Sum_1*
T0*
_output_shapes
:
£
 gradients_5/sub_3_grad/Reshape_1Reshapegradients_5/sub_3_grad/Neggradients_5/sub_3_grad/Shape_1*#
_output_shapes
:?????????*
T0*
Tshape0
s
'gradients_5/sub_3_grad/tuple/group_depsNoOp^gradients_5/sub_3_grad/Reshape!^gradients_5/sub_3_grad/Reshape_1
ζ
/gradients_5/sub_3_grad/tuple/control_dependencyIdentitygradients_5/sub_3_grad/Reshape(^gradients_5/sub_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_5/sub_3_grad/Reshape*#
_output_shapes
:?????????
μ
1gradients_5/sub_3_grad/tuple/control_dependency_1Identity gradients_5/sub_3_grad/Reshape_1(^gradients_5/sub_3_grad/tuple/group_deps*3
_class)
'%loc:@gradients_5/sub_3_grad/Reshape_1*#
_output_shapes
:?????????*
T0
i
gradients_5/sub_4_grad/ShapeShapePlaceholder_5*
_output_shapes
:*
T0*
out_type0
h
gradients_5/sub_4_grad/Shape_1Shape
vc/Squeeze*
T0*
out_type0*
_output_shapes
:
ΐ
,gradients_5/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_5/sub_4_grad/Shapegradients_5/sub_4_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
ΐ
gradients_5/sub_4_grad/SumSum/gradients_5/pow_1_grad/tuple/control_dependency,gradients_5/sub_4_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 

gradients_5/sub_4_grad/ReshapeReshapegradients_5/sub_4_grad/Sumgradients_5/sub_4_grad/Shape*#
_output_shapes
:?????????*
Tshape0*
T0
Δ
gradients_5/sub_4_grad/Sum_1Sum/gradients_5/pow_1_grad/tuple/control_dependency.gradients_5/sub_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
b
gradients_5/sub_4_grad/NegNeggradients_5/sub_4_grad/Sum_1*
_output_shapes
:*
T0
£
 gradients_5/sub_4_grad/Reshape_1Reshapegradients_5/sub_4_grad/Neggradients_5/sub_4_grad/Shape_1*#
_output_shapes
:?????????*
T0*
Tshape0
s
'gradients_5/sub_4_grad/tuple/group_depsNoOp^gradients_5/sub_4_grad/Reshape!^gradients_5/sub_4_grad/Reshape_1
ζ
/gradients_5/sub_4_grad/tuple/control_dependencyIdentitygradients_5/sub_4_grad/Reshape(^gradients_5/sub_4_grad/tuple/group_deps*#
_output_shapes
:?????????*
T0*1
_class'
%#loc:@gradients_5/sub_4_grad/Reshape
μ
1gradients_5/sub_4_grad/tuple/control_dependency_1Identity gradients_5/sub_4_grad/Reshape_1(^gradients_5/sub_4_grad/tuple/group_deps*
T0*#
_output_shapes
:?????????*3
_class)
'%loc:@gradients_5/sub_4_grad/Reshape_1
s
!gradients_5/vf/Squeeze_grad/ShapeShapevf/dense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
Δ
#gradients_5/vf/Squeeze_grad/ReshapeReshape1gradients_5/sub_3_grad/tuple/control_dependency_1!gradients_5/vf/Squeeze_grad/Shape*
Tshape0*
T0*'
_output_shapes
:?????????
s
!gradients_5/vc/Squeeze_grad/ShapeShapevc/dense_2/BiasAdd*
out_type0*
_output_shapes
:*
T0
Δ
#gradients_5/vc/Squeeze_grad/ReshapeReshape1gradients_5/sub_4_grad/tuple/control_dependency_1!gradients_5/vc/Squeeze_grad/Shape*
Tshape0*
T0*'
_output_shapes
:?????????

/gradients_5/vf/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients_5/vf/Squeeze_grad/Reshape*
data_formatNHWC*
T0*
_output_shapes
:

4gradients_5/vf/dense_2/BiasAdd_grad/tuple/group_depsNoOp$^gradients_5/vf/Squeeze_grad/Reshape0^gradients_5/vf/dense_2/BiasAdd_grad/BiasAddGrad

<gradients_5/vf/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity#gradients_5/vf/Squeeze_grad/Reshape5^gradients_5/vf/dense_2/BiasAdd_grad/tuple/group_deps*6
_class,
*(loc:@gradients_5/vf/Squeeze_grad/Reshape*
T0*'
_output_shapes
:?????????

>gradients_5/vf/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity/gradients_5/vf/dense_2/BiasAdd_grad/BiasAddGrad5^gradients_5/vf/dense_2/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@gradients_5/vf/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

/gradients_5/vc/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients_5/vc/Squeeze_grad/Reshape*
data_formatNHWC*
_output_shapes
:*
T0

4gradients_5/vc/dense_2/BiasAdd_grad/tuple/group_depsNoOp$^gradients_5/vc/Squeeze_grad/Reshape0^gradients_5/vc/dense_2/BiasAdd_grad/BiasAddGrad

<gradients_5/vc/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity#gradients_5/vc/Squeeze_grad/Reshape5^gradients_5/vc/dense_2/BiasAdd_grad/tuple/group_deps*6
_class,
*(loc:@gradients_5/vc/Squeeze_grad/Reshape*'
_output_shapes
:?????????*
T0

>gradients_5/vc/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity/gradients_5/vc/dense_2/BiasAdd_grad/BiasAddGrad5^gradients_5/vc/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*B
_class8
64loc:@gradients_5/vc/dense_2/BiasAdd_grad/BiasAddGrad
β
)gradients_5/vf/dense_2/MatMul_grad/MatMulMatMul<gradients_5/vf/dense_2/BiasAdd_grad/tuple/control_dependencyvf/dense_2/kernel/read*
T0*(
_output_shapes
:?????????*
transpose_b(*
transpose_a( 
Τ
+gradients_5/vf/dense_2/MatMul_grad/MatMul_1MatMulvf/dense_1/Tanh<gradients_5/vf/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	*
T0*
transpose_b( 

3gradients_5/vf/dense_2/MatMul_grad/tuple/group_depsNoOp*^gradients_5/vf/dense_2/MatMul_grad/MatMul,^gradients_5/vf/dense_2/MatMul_grad/MatMul_1

;gradients_5/vf/dense_2/MatMul_grad/tuple/control_dependencyIdentity)gradients_5/vf/dense_2/MatMul_grad/MatMul4^gradients_5/vf/dense_2/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:?????????*<
_class2
0.loc:@gradients_5/vf/dense_2/MatMul_grad/MatMul

=gradients_5/vf/dense_2/MatMul_grad/tuple/control_dependency_1Identity+gradients_5/vf/dense_2/MatMul_grad/MatMul_14^gradients_5/vf/dense_2/MatMul_grad/tuple/group_deps*>
_class4
20loc:@gradients_5/vf/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	*
T0
β
)gradients_5/vc/dense_2/MatMul_grad/MatMulMatMul<gradients_5/vc/dense_2/BiasAdd_grad/tuple/control_dependencyvc/dense_2/kernel/read*
transpose_b(*
T0*(
_output_shapes
:?????????*
transpose_a( 
Τ
+gradients_5/vc/dense_2/MatMul_grad/MatMul_1MatMulvc/dense_1/Tanh<gradients_5/vc/dense_2/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	*
transpose_b( *
T0*
transpose_a(

3gradients_5/vc/dense_2/MatMul_grad/tuple/group_depsNoOp*^gradients_5/vc/dense_2/MatMul_grad/MatMul,^gradients_5/vc/dense_2/MatMul_grad/MatMul_1

;gradients_5/vc/dense_2/MatMul_grad/tuple/control_dependencyIdentity)gradients_5/vc/dense_2/MatMul_grad/MatMul4^gradients_5/vc/dense_2/MatMul_grad/tuple/group_deps*<
_class2
0.loc:@gradients_5/vc/dense_2/MatMul_grad/MatMul*
T0*(
_output_shapes
:?????????

=gradients_5/vc/dense_2/MatMul_grad/tuple/control_dependency_1Identity+gradients_5/vc/dense_2/MatMul_grad/MatMul_14^gradients_5/vc/dense_2/MatMul_grad/tuple/group_deps*>
_class4
20loc:@gradients_5/vc/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	*
T0
Ά
)gradients_5/vf/dense_1/Tanh_grad/TanhGradTanhGradvf/dense_1/Tanh;gradients_5/vf/dense_2/MatMul_grad/tuple/control_dependency*(
_output_shapes
:?????????*
T0
Ά
)gradients_5/vc/dense_1/Tanh_grad/TanhGradTanhGradvc/dense_1/Tanh;gradients_5/vc/dense_2/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:?????????
¦
/gradients_5/vf/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_5/vf/dense_1/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes	
:

4gradients_5/vf/dense_1/BiasAdd_grad/tuple/group_depsNoOp0^gradients_5/vf/dense_1/BiasAdd_grad/BiasAddGrad*^gradients_5/vf/dense_1/Tanh_grad/TanhGrad

<gradients_5/vf/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity)gradients_5/vf/dense_1/Tanh_grad/TanhGrad5^gradients_5/vf/dense_1/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:?????????*<
_class2
0.loc:@gradients_5/vf/dense_1/Tanh_grad/TanhGrad*
T0

>gradients_5/vf/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity/gradients_5/vf/dense_1/BiasAdd_grad/BiasAddGrad5^gradients_5/vf/dense_1/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes	
:*B
_class8
64loc:@gradients_5/vf/dense_1/BiasAdd_grad/BiasAddGrad
¦
/gradients_5/vc/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_5/vc/dense_1/Tanh_grad/TanhGrad*
data_formatNHWC*
_output_shapes	
:*
T0

4gradients_5/vc/dense_1/BiasAdd_grad/tuple/group_depsNoOp0^gradients_5/vc/dense_1/BiasAdd_grad/BiasAddGrad*^gradients_5/vc/dense_1/Tanh_grad/TanhGrad

<gradients_5/vc/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity)gradients_5/vc/dense_1/Tanh_grad/TanhGrad5^gradients_5/vc/dense_1/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients_5/vc/dense_1/Tanh_grad/TanhGrad*(
_output_shapes
:?????????

>gradients_5/vc/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity/gradients_5/vc/dense_1/BiasAdd_grad/BiasAddGrad5^gradients_5/vc/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*
T0*B
_class8
64loc:@gradients_5/vc/dense_1/BiasAdd_grad/BiasAddGrad
β
)gradients_5/vf/dense_1/MatMul_grad/MatMulMatMul<gradients_5/vf/dense_1/BiasAdd_grad/tuple/control_dependencyvf/dense_1/kernel/read*
transpose_b(*(
_output_shapes
:?????????*
transpose_a( *
T0
Σ
+gradients_5/vf/dense_1/MatMul_grad/MatMul_1MatMulvf/dense/Tanh<gradients_5/vf/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( * 
_output_shapes
:
*
T0*
transpose_a(

3gradients_5/vf/dense_1/MatMul_grad/tuple/group_depsNoOp*^gradients_5/vf/dense_1/MatMul_grad/MatMul,^gradients_5/vf/dense_1/MatMul_grad/MatMul_1

;gradients_5/vf/dense_1/MatMul_grad/tuple/control_dependencyIdentity)gradients_5/vf/dense_1/MatMul_grad/MatMul4^gradients_5/vf/dense_1/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:?????????*<
_class2
0.loc:@gradients_5/vf/dense_1/MatMul_grad/MatMul

=gradients_5/vf/dense_1/MatMul_grad/tuple/control_dependency_1Identity+gradients_5/vf/dense_1/MatMul_grad/MatMul_14^gradients_5/vf/dense_1/MatMul_grad/tuple/group_deps*>
_class4
20loc:@gradients_5/vf/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

β
)gradients_5/vc/dense_1/MatMul_grad/MatMulMatMul<gradients_5/vc/dense_1/BiasAdd_grad/tuple/control_dependencyvc/dense_1/kernel/read*
transpose_b(*(
_output_shapes
:?????????*
T0*
transpose_a( 
Σ
+gradients_5/vc/dense_1/MatMul_grad/MatMul_1MatMulvc/dense/Tanh<gradients_5/vc/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
*
transpose_b( *
T0

3gradients_5/vc/dense_1/MatMul_grad/tuple/group_depsNoOp*^gradients_5/vc/dense_1/MatMul_grad/MatMul,^gradients_5/vc/dense_1/MatMul_grad/MatMul_1

;gradients_5/vc/dense_1/MatMul_grad/tuple/control_dependencyIdentity)gradients_5/vc/dense_1/MatMul_grad/MatMul4^gradients_5/vc/dense_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:?????????*
T0*<
_class2
0.loc:@gradients_5/vc/dense_1/MatMul_grad/MatMul

=gradients_5/vc/dense_1/MatMul_grad/tuple/control_dependency_1Identity+gradients_5/vc/dense_1/MatMul_grad/MatMul_14^gradients_5/vc/dense_1/MatMul_grad/tuple/group_deps*>
_class4
20loc:@gradients_5/vc/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

²
'gradients_5/vf/dense/Tanh_grad/TanhGradTanhGradvf/dense/Tanh;gradients_5/vf/dense_1/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:?????????
²
'gradients_5/vc/dense/Tanh_grad/TanhGradTanhGradvc/dense/Tanh;gradients_5/vc/dense_1/MatMul_grad/tuple/control_dependency*(
_output_shapes
:?????????*
T0
’
-gradients_5/vf/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_5/vf/dense/Tanh_grad/TanhGrad*
T0*
_output_shapes	
:*
data_formatNHWC

2gradients_5/vf/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients_5/vf/dense/BiasAdd_grad/BiasAddGrad(^gradients_5/vf/dense/Tanh_grad/TanhGrad

:gradients_5/vf/dense/BiasAdd_grad/tuple/control_dependencyIdentity'gradients_5/vf/dense/Tanh_grad/TanhGrad3^gradients_5/vf/dense/BiasAdd_grad/tuple/group_deps*:
_class0
.,loc:@gradients_5/vf/dense/Tanh_grad/TanhGrad*
T0*(
_output_shapes
:?????????

<gradients_5/vf/dense/BiasAdd_grad/tuple/control_dependency_1Identity-gradients_5/vf/dense/BiasAdd_grad/BiasAddGrad3^gradients_5/vf/dense/BiasAdd_grad/tuple/group_deps*@
_class6
42loc:@gradients_5/vf/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
’
-gradients_5/vc/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_5/vc/dense/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes	
:

2gradients_5/vc/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients_5/vc/dense/BiasAdd_grad/BiasAddGrad(^gradients_5/vc/dense/Tanh_grad/TanhGrad

:gradients_5/vc/dense/BiasAdd_grad/tuple/control_dependencyIdentity'gradients_5/vc/dense/Tanh_grad/TanhGrad3^gradients_5/vc/dense/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:?????????*
T0*:
_class0
.,loc:@gradients_5/vc/dense/Tanh_grad/TanhGrad

<gradients_5/vc/dense/BiasAdd_grad/tuple/control_dependency_1Identity-gradients_5/vc/dense/BiasAdd_grad/BiasAddGrad3^gradients_5/vc/dense/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients_5/vc/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ϋ
'gradients_5/vf/dense/MatMul_grad/MatMulMatMul:gradients_5/vf/dense/BiasAdd_grad/tuple/control_dependencyvf/dense/kernel/read*
transpose_b(*
T0*'
_output_shapes
:?????????0*
transpose_a( 
Μ
)gradients_5/vf/dense/MatMul_grad/MatMul_1MatMulPlaceholder:gradients_5/vf/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes
:	0*
transpose_b( 

1gradients_5/vf/dense/MatMul_grad/tuple/group_depsNoOp(^gradients_5/vf/dense/MatMul_grad/MatMul*^gradients_5/vf/dense/MatMul_grad/MatMul_1

9gradients_5/vf/dense/MatMul_grad/tuple/control_dependencyIdentity'gradients_5/vf/dense/MatMul_grad/MatMul2^gradients_5/vf/dense/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:?????????0*:
_class0
.,loc:@gradients_5/vf/dense/MatMul_grad/MatMul

;gradients_5/vf/dense/MatMul_grad/tuple/control_dependency_1Identity)gradients_5/vf/dense/MatMul_grad/MatMul_12^gradients_5/vf/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	0*
T0*<
_class2
0.loc:@gradients_5/vf/dense/MatMul_grad/MatMul_1
Ϋ
'gradients_5/vc/dense/MatMul_grad/MatMulMatMul:gradients_5/vc/dense/BiasAdd_grad/tuple/control_dependencyvc/dense/kernel/read*
T0*
transpose_b(*
transpose_a( *'
_output_shapes
:?????????0
Μ
)gradients_5/vc/dense/MatMul_grad/MatMul_1MatMulPlaceholder:gradients_5/vc/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	0

1gradients_5/vc/dense/MatMul_grad/tuple/group_depsNoOp(^gradients_5/vc/dense/MatMul_grad/MatMul*^gradients_5/vc/dense/MatMul_grad/MatMul_1

9gradients_5/vc/dense/MatMul_grad/tuple/control_dependencyIdentity'gradients_5/vc/dense/MatMul_grad/MatMul2^gradients_5/vc/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:?????????0*
T0*:
_class0
.,loc:@gradients_5/vc/dense/MatMul_grad/MatMul

;gradients_5/vc/dense/MatMul_grad/tuple/control_dependency_1Identity)gradients_5/vc/dense/MatMul_grad/MatMul_12^gradients_5/vc/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	0*
T0*<
_class2
0.loc:@gradients_5/vc/dense/MatMul_grad/MatMul_1
c
Reshape_46/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:


Reshape_46Reshape;gradients_5/vf/dense/MatMul_grad/tuple/control_dependency_1Reshape_46/shape*
Tshape0*
_output_shapes	
:`*
T0
c
Reshape_47/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:


Reshape_47Reshape<gradients_5/vf/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_47/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_48/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0


Reshape_48Reshape=gradients_5/vf/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_48/shape*
_output_shapes

:*
T0*
Tshape0
c
Reshape_49/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:


Reshape_49Reshape>gradients_5/vf/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_49/shape*
_output_shapes	
:*
Tshape0*
T0
c
Reshape_50/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0


Reshape_50Reshape=gradients_5/vf/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_50/shape*
Tshape0*
T0*
_output_shapes	
:
c
Reshape_51/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0


Reshape_51Reshape>gradients_5/vf/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_51/shape*
_output_shapes
:*
Tshape0*
T0
c
Reshape_52/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????


Reshape_52Reshape;gradients_5/vc/dense/MatMul_grad/tuple/control_dependency_1Reshape_52/shape*
T0*
Tshape0*
_output_shapes	
:`
c
Reshape_53/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0


Reshape_53Reshape<gradients_5/vc/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_53/shape*
T0*
_output_shapes	
:*
Tshape0
c
Reshape_54/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????


Reshape_54Reshape=gradients_5/vc/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_54/shape*
_output_shapes

:*
Tshape0*
T0
c
Reshape_55/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????


Reshape_55Reshape>gradients_5/vc/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_55/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_56/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:


Reshape_56Reshape=gradients_5/vc/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_56/shape*
_output_shapes	
:*
Tshape0*
T0
c
Reshape_57/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:


Reshape_57Reshape>gradients_5/vc/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_57/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_7/axisConst*
value	B : *
_output_shapes
: *
dtype0
ο
concat_7ConcatV2
Reshape_46
Reshape_47
Reshape_48
Reshape_49
Reshape_50
Reshape_51
Reshape_52
Reshape_53
Reshape_54
Reshape_55
Reshape_56
Reshape_57concat_7/axis*

Tidx0*
N*
T0*
_output_shapes

:Μ	
l
PyFunc_2PyFuncconcat_7*
token
pyfunc_2*
Tout
2*
Tin
2*
_output_shapes

:Μ	

Const_10Const*
dtype0*E
value<B:"0 0                  0                 *
_output_shapes
:
S
split_3/split_dimConst*
dtype0*
value	B : *
_output_shapes
: 
Θ
split_3SplitVPyFunc_2Const_10split_3/split_dim*h
_output_shapesV
T:`::::::`:::::*

Tlen0*
T0*
	num_split
a
Reshape_58/shapeConst*
_output_shapes
:*
dtype0*
valueB"0      
h

Reshape_58Reshapesplit_3Reshape_58/shape*
T0*
_output_shapes
:	0*
Tshape0
[
Reshape_59/shapeConst*
_output_shapes
:*
dtype0*
valueB:
f

Reshape_59Reshape	split_3:1Reshape_59/shape*
_output_shapes	
:*
Tshape0*
T0
a
Reshape_60/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
k

Reshape_60Reshape	split_3:2Reshape_60/shape* 
_output_shapes
:
*
T0*
Tshape0
[
Reshape_61/shapeConst*
valueB:*
_output_shapes
:*
dtype0
f

Reshape_61Reshape	split_3:3Reshape_61/shape*
_output_shapes	
:*
Tshape0*
T0
a
Reshape_62/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
j

Reshape_62Reshape	split_3:4Reshape_62/shape*
Tshape0*
T0*
_output_shapes
:	
Z
Reshape_63/shapeConst*
_output_shapes
:*
dtype0*
valueB:
e

Reshape_63Reshape	split_3:5Reshape_63/shape*
Tshape0*
_output_shapes
:*
T0
a
Reshape_64/shapeConst*
valueB"0      *
dtype0*
_output_shapes
:
j

Reshape_64Reshape	split_3:6Reshape_64/shape*
Tshape0*
_output_shapes
:	0*
T0
[
Reshape_65/shapeConst*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_65Reshape	split_3:7Reshape_65/shape*
T0*
_output_shapes	
:*
Tshape0
a
Reshape_66/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
k

Reshape_66Reshape	split_3:8Reshape_66/shape*
T0*
Tshape0* 
_output_shapes
:

[
Reshape_67/shapeConst*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_67Reshape	split_3:9Reshape_67/shape*
Tshape0*
T0*
_output_shapes	
:
a
Reshape_68/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
k

Reshape_68Reshape
split_3:10Reshape_68/shape*
Tshape0*
_output_shapes
:	*
T0
Z
Reshape_69/shapeConst*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_69Reshape
split_3:11Reshape_69/shape*
Tshape0*
T0*
_output_shapes
:

beta1_power_1/initial_valueConst* 
_class
loc:@vc/dense/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 

beta1_power_1
VariableV2*
dtype0* 
_class
loc:@vc/dense/bias*
shared_name *
_output_shapes
: *
shape: *
	container 
Ά
beta1_power_1/AssignAssignbeta1_power_1beta1_power_1/initial_value* 
_class
loc:@vc/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
p
beta1_power_1/readIdentitybeta1_power_1*
T0*
_output_shapes
: * 
_class
loc:@vc/dense/bias

beta2_power_1/initial_valueConst*
valueB
 *wΎ?* 
_class
loc:@vc/dense/bias*
_output_shapes
: *
dtype0

beta2_power_1
VariableV2*
	container *
_output_shapes
: *
shared_name *
dtype0*
shape: * 
_class
loc:@vc/dense/bias
Ά
beta2_power_1/AssignAssignbeta2_power_1beta2_power_1/initial_value*
validate_shape(* 
_class
loc:@vc/dense/bias*
use_locking(*
_output_shapes
: *
T0
p
beta2_power_1/readIdentitybeta2_power_1*
T0* 
_class
loc:@vc/dense/bias*
_output_shapes
: 
«
6vf/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*"
_class
loc:@vf/dense/kernel*
valueB"0      *
_output_shapes
:

,vf/dense/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *"
_class
loc:@vf/dense/kernel*
valueB
 *    
τ
&vf/dense/kernel/Adam/Initializer/zerosFill6vf/dense/kernel/Adam/Initializer/zeros/shape_as_tensor,vf/dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel
?
vf/dense/kernel/Adam
VariableV2*
_output_shapes
:	0*
shared_name *
shape:	0*
	container *"
_class
loc:@vf/dense/kernel*
dtype0
Ϊ
vf/dense/kernel/Adam/AssignAssignvf/dense/kernel/Adam&vf/dense/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0

vf/dense/kernel/Adam/readIdentityvf/dense/kernel/Adam*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
T0
­
8vf/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*"
_class
loc:@vf/dense/kernel*
dtype0*
valueB"0      

.vf/dense/kernel/Adam_1/Initializer/zeros/ConstConst*"
_class
loc:@vf/dense/kernel*
dtype0*
valueB
 *    *
_output_shapes
: 
ϊ
(vf/dense/kernel/Adam_1/Initializer/zerosFill8vf/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor.vf/dense/kernel/Adam_1/Initializer/zeros/Const*

index_type0*
_output_shapes
:	0*
T0*"
_class
loc:@vf/dense/kernel
°
vf/dense/kernel/Adam_1
VariableV2*"
_class
loc:@vf/dense/kernel*
dtype0*
shape:	0*
	container *
_output_shapes
:	0*
shared_name 
ΰ
vf/dense/kernel/Adam_1/AssignAssignvf/dense/kernel/Adam_1(vf/dense/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:	0*
use_locking(*
T0*"
_class
loc:@vf/dense/kernel

vf/dense/kernel/Adam_1/readIdentityvf/dense/kernel/Adam_1*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
T0

$vf/dense/bias/Adam/Initializer/zerosConst*
_output_shapes	
:*
dtype0* 
_class
loc:@vf/dense/bias*
valueB*    
’
vf/dense/bias/Adam
VariableV2*
	container * 
_class
loc:@vf/dense/bias*
shape:*
shared_name *
dtype0*
_output_shapes	
:
Ξ
vf/dense/bias/Adam/AssignAssignvf/dense/bias/Adam$vf/dense/bias/Adam/Initializer/zeros*
validate_shape(*
T0* 
_class
loc:@vf/dense/bias*
_output_shapes	
:*
use_locking(

vf/dense/bias/Adam/readIdentityvf/dense/bias/Adam*
T0* 
_class
loc:@vf/dense/bias*
_output_shapes	
:

&vf/dense/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_output_shapes	
:* 
_class
loc:@vf/dense/bias*
dtype0
€
vf/dense/bias/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:* 
_class
loc:@vf/dense/bias*
shape:
Τ
vf/dense/bias/Adam_1/AssignAssignvf/dense/bias/Adam_1&vf/dense/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(* 
_class
loc:@vf/dense/bias*
validate_shape(

vf/dense/bias/Adam_1/readIdentityvf/dense/bias/Adam_1*
T0* 
_class
loc:@vf/dense/bias*
_output_shapes	
:
―
8vf/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@vf/dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"      

.vf/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@vf/dense_1/kernel*
_output_shapes
: *
dtype0
ύ
(vf/dense_1/kernel/Adam/Initializer/zerosFill8vf/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor.vf/dense_1/kernel/Adam/Initializer/zeros/Const*

index_type0*
T0*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:

΄
vf/dense_1/kernel/Adam
VariableV2*
shape:
*
dtype0*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
	container *
shared_name 
γ
vf/dense_1/kernel/Adam/AssignAssignvf/dense_1/kernel/Adam(vf/dense_1/kernel/Adam/Initializer/zeros*
use_locking(*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
validate_shape(*
T0

vf/dense_1/kernel/Adam/readIdentityvf/dense_1/kernel/Adam* 
_output_shapes
:
*
T0*$
_class
loc:@vf/dense_1/kernel
±
:vf/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@vf/dense_1/kernel*
valueB"      *
_output_shapes
:*
dtype0

0vf/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *$
_class
loc:@vf/dense_1/kernel*
dtype0

*vf/dense_1/kernel/Adam_1/Initializer/zerosFill:vf/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor0vf/dense_1/kernel/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
*

index_type0*
T0*$
_class
loc:@vf/dense_1/kernel
Ά
vf/dense_1/kernel/Adam_1
VariableV2*$
_class
loc:@vf/dense_1/kernel*
	container *
shared_name * 
_output_shapes
:
*
shape:
*
dtype0
ι
vf/dense_1/kernel/Adam_1/AssignAssignvf/dense_1/kernel/Adam_1*vf/dense_1/kernel/Adam_1/Initializer/zeros*$
_class
loc:@vf/dense_1/kernel*
use_locking(* 
_output_shapes
:
*
T0*
validate_shape(

vf/dense_1/kernel/Adam_1/readIdentityvf/dense_1/kernel/Adam_1*$
_class
loc:@vf/dense_1/kernel*
T0* 
_output_shapes
:


&vf/dense_1/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias
¦
vf/dense_1/bias/Adam
VariableV2*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
dtype0*
shared_name *
	container *
shape:
Φ
vf/dense_1/bias/Adam/AssignAssignvf/dense_1/bias/Adam&vf/dense_1/bias/Adam/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
_output_shapes	
:

vf/dense_1/bias/Adam/readIdentityvf/dense_1/bias/Adam*
T0*"
_class
loc:@vf/dense_1/bias*
_output_shapes	
:

(vf/dense_1/bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@vf/dense_1/bias*
_output_shapes	
:
¨
vf/dense_1/bias/Adam_1
VariableV2*"
_class
loc:@vf/dense_1/bias*
dtype0*
shape:*
_output_shapes	
:*
	container *
shared_name 
ά
vf/dense_1/bias/Adam_1/AssignAssignvf/dense_1/bias/Adam_1(vf/dense_1/bias/Adam_1/Initializer/zeros*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(*"
_class
loc:@vf/dense_1/bias

vf/dense_1/bias/Adam_1/readIdentityvf/dense_1/bias/Adam_1*
T0*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias
₯
(vf/dense_2/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	*
valueB	*    *
dtype0*$
_class
loc:@vf/dense_2/kernel
²
vf/dense_2/kernel/Adam
VariableV2*
	container *
shared_name *
shape:	*
dtype0*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	
β
vf/dense_2/kernel/Adam/AssignAssignvf/dense_2/kernel/Adam(vf/dense_2/kernel/Adam/Initializer/zeros*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
validate_shape(*
T0

vf/dense_2/kernel/Adam/readIdentityvf/dense_2/kernel/Adam*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
T0
§
*vf/dense_2/kernel/Adam_1/Initializer/zerosConst*
_output_shapes
:	*
valueB	*    *$
_class
loc:@vf/dense_2/kernel*
dtype0
΄
vf/dense_2/kernel/Adam_1
VariableV2*
shape:	*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
dtype0*
	container *
shared_name 
θ
vf/dense_2/kernel/Adam_1/AssignAssignvf/dense_2/kernel/Adam_1*vf/dense_2/kernel/Adam_1/Initializer/zeros*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	*
T0

vf/dense_2/kernel/Adam_1/readIdentityvf/dense_2/kernel/Adam_1*
T0*
_output_shapes
:	*$
_class
loc:@vf/dense_2/kernel

&vf/dense_2/bias/Adam/Initializer/zerosConst*
dtype0*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
valueB*    
€
vf/dense_2/bias/Adam
VariableV2*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias*
	container *
dtype0*
shared_name *
shape:
Υ
vf/dense_2/bias/Adam/AssignAssignvf/dense_2/bias/Adam&vf/dense_2/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias*
T0*
use_locking(

vf/dense_2/bias/Adam/readIdentityvf/dense_2/bias/Adam*
T0*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias

(vf/dense_2/bias/Adam_1/Initializer/zerosConst*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
dtype0*
valueB*    
¦
vf/dense_2/bias/Adam_1
VariableV2*
dtype0*
	container *
shared_name *
_output_shapes
:*"
_class
loc:@vf/dense_2/bias*
shape:
Ϋ
vf/dense_2/bias/Adam_1/AssignAssignvf/dense_2/bias/Adam_1(vf/dense_2/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:

vf/dense_2/bias/Adam_1/readIdentityvf/dense_2/bias/Adam_1*"
_class
loc:@vf/dense_2/bias*
T0*
_output_shapes
:
«
6vc/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"0      *"
_class
loc:@vc/dense/kernel

,vc/dense/kernel/Adam/Initializer/zeros/ConstConst*"
_class
loc:@vc/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
τ
&vc/dense/kernel/Adam/Initializer/zerosFill6vc/dense/kernel/Adam/Initializer/zeros/shape_as_tensor,vc/dense/kernel/Adam/Initializer/zeros/Const*"
_class
loc:@vc/dense/kernel*
T0*

index_type0*
_output_shapes
:	0
?
vc/dense/kernel/Adam
VariableV2*
shared_name *"
_class
loc:@vc/dense/kernel*
	container *
dtype0*
_output_shapes
:	0*
shape:	0
Ϊ
vc/dense/kernel/Adam/AssignAssignvc/dense/kernel/Adam&vc/dense/kernel/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	0*"
_class
loc:@vc/dense/kernel

vc/dense/kernel/Adam/readIdentityvc/dense/kernel/Adam*
T0*"
_class
loc:@vc/dense/kernel*
_output_shapes
:	0
­
8vc/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@vc/dense/kernel*
valueB"0      *
_output_shapes
:*
dtype0

.vc/dense/kernel/Adam_1/Initializer/zeros/ConstConst*"
_class
loc:@vc/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ϊ
(vc/dense/kernel/Adam_1/Initializer/zerosFill8vc/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor.vc/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*
_output_shapes
:	0*

index_type0*"
_class
loc:@vc/dense/kernel
°
vc/dense/kernel/Adam_1
VariableV2*
dtype0*
	container *"
_class
loc:@vc/dense/kernel*
shared_name *
shape:	0*
_output_shapes
:	0
ΰ
vc/dense/kernel/Adam_1/AssignAssignvc/dense/kernel/Adam_1(vc/dense/kernel/Adam_1/Initializer/zeros*
validate_shape(*
T0*"
_class
loc:@vc/dense/kernel*
_output_shapes
:	0*
use_locking(

vc/dense/kernel/Adam_1/readIdentityvc/dense/kernel/Adam_1*"
_class
loc:@vc/dense/kernel*
_output_shapes
:	0*
T0

$vc/dense/bias/Adam/Initializer/zerosConst*
_output_shapes	
:*
dtype0* 
_class
loc:@vc/dense/bias*
valueB*    
’
vc/dense/bias/Adam
VariableV2* 
_class
loc:@vc/dense/bias*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Ξ
vc/dense/bias/Adam/AssignAssignvc/dense/bias/Adam$vc/dense/bias/Adam/Initializer/zeros*
validate_shape(*
T0* 
_class
loc:@vc/dense/bias*
use_locking(*
_output_shapes	
:

vc/dense/bias/Adam/readIdentityvc/dense/bias/Adam*
_output_shapes	
:* 
_class
loc:@vc/dense/bias*
T0

&vc/dense/bias/Adam_1/Initializer/zerosConst*
_output_shapes	
:* 
_class
loc:@vc/dense/bias*
valueB*    *
dtype0
€
vc/dense/bias/Adam_1
VariableV2*
shape:*
	container *
_output_shapes	
:*
dtype0*
shared_name * 
_class
loc:@vc/dense/bias
Τ
vc/dense/bias/Adam_1/AssignAssignvc/dense/bias/Adam_1&vc/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
_output_shapes	
:*
T0* 
_class
loc:@vc/dense/bias*
validate_shape(

vc/dense/bias/Adam_1/readIdentityvc/dense/bias/Adam_1* 
_class
loc:@vc/dense/bias*
T0*
_output_shapes	
:
―
8vc/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@vc/dense_1/kernel*
valueB"      *
dtype0*
_output_shapes
:

.vc/dense_1/kernel/Adam/Initializer/zeros/ConstConst*$
_class
loc:@vc/dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ύ
(vc/dense_1/kernel/Adam/Initializer/zerosFill8vc/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor.vc/dense_1/kernel/Adam/Initializer/zeros/Const*

index_type0*
T0* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel
΄
vc/dense_1/kernel/Adam
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shared_name *
shape:
*$
_class
loc:@vc/dense_1/kernel
γ
vc/dense_1/kernel/Adam/AssignAssignvc/dense_1/kernel/Adam(vc/dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0* 
_output_shapes
:
*
validate_shape(*$
_class
loc:@vc/dense_1/kernel

vc/dense_1/kernel/Adam/readIdentityvc/dense_1/kernel/Adam* 
_output_shapes
:
*
T0*$
_class
loc:@vc/dense_1/kernel
±
:vc/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:*$
_class
loc:@vc/dense_1/kernel

0vc/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *$
_class
loc:@vc/dense_1/kernel

*vc/dense_1/kernel/Adam_1/Initializer/zerosFill:vc/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor0vc/dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0* 
_output_shapes
:
*

index_type0*$
_class
loc:@vc/dense_1/kernel
Ά
vc/dense_1/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*
shared_name *$
_class
loc:@vc/dense_1/kernel*
	container 
ι
vc/dense_1/kernel/Adam_1/AssignAssignvc/dense_1/kernel/Adam_1*vc/dense_1/kernel/Adam_1/Initializer/zeros*$
_class
loc:@vc/dense_1/kernel*
use_locking(*
validate_shape(* 
_output_shapes
:
*
T0

vc/dense_1/kernel/Adam_1/readIdentityvc/dense_1/kernel/Adam_1*
T0*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:


&vc/dense_1/bias/Adam/Initializer/zerosConst*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:*
dtype0*
valueB*    
¦
vc/dense_1/bias/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:
Φ
vc/dense_1/bias/Adam/AssignAssignvc/dense_1/bias/Adam&vc/dense_1/bias/Adam/Initializer/zeros*
validate_shape(*
T0*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:*
use_locking(

vc/dense_1/bias/Adam/readIdentityvc/dense_1/bias/Adam*
_output_shapes	
:*
T0*"
_class
loc:@vc/dense_1/bias

(vc/dense_1/bias/Adam_1/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *"
_class
loc:@vc/dense_1/bias*
dtype0
¨
vc/dense_1/bias/Adam_1
VariableV2*
shape:*
shared_name *
	container *
dtype0*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:
ά
vc/dense_1/bias/Adam_1/AssignAssignvc/dense_1/bias/Adam_1(vc/dense_1/bias/Adam_1/Initializer/zeros*"
_class
loc:@vc/dense_1/bias*
use_locking(*
_output_shapes	
:*
T0*
validate_shape(

vc/dense_1/bias/Adam_1/readIdentityvc/dense_1/bias/Adam_1*
T0*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias
₯
(vc/dense_2/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	*
dtype0*$
_class
loc:@vc/dense_2/kernel*
valueB	*    
²
vc/dense_2/kernel/Adam
VariableV2*
shape:	*
	container *
shared_name *$
_class
loc:@vc/dense_2/kernel*
_output_shapes
:	*
dtype0
β
vc/dense_2/kernel/Adam/AssignAssignvc/dense_2/kernel/Adam(vc/dense_2/kernel/Adam/Initializer/zeros*
_output_shapes
:	*
use_locking(*
T0*$
_class
loc:@vc/dense_2/kernel*
validate_shape(

vc/dense_2/kernel/Adam/readIdentityvc/dense_2/kernel/Adam*
T0*
_output_shapes
:	*$
_class
loc:@vc/dense_2/kernel
§
*vc/dense_2/kernel/Adam_1/Initializer/zerosConst*
valueB	*    *
_output_shapes
:	*
dtype0*$
_class
loc:@vc/dense_2/kernel
΄
vc/dense_2/kernel/Adam_1
VariableV2*$
_class
loc:@vc/dense_2/kernel*
	container *
dtype0*
shape:	*
shared_name *
_output_shapes
:	
θ
vc/dense_2/kernel/Adam_1/AssignAssignvc/dense_2/kernel/Adam_1*vc/dense_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@vc/dense_2/kernel*
validate_shape(*
_output_shapes
:	

vc/dense_2/kernel/Adam_1/readIdentityvc/dense_2/kernel/Adam_1*$
_class
loc:@vc/dense_2/kernel*
T0*
_output_shapes
:	

&vc/dense_2/bias/Adam/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@vc/dense_2/bias*
_output_shapes
:
€
vc/dense_2/bias/Adam
VariableV2*
	container *
shared_name *
shape:*
_output_shapes
:*
dtype0*"
_class
loc:@vc/dense_2/bias
Υ
vc/dense_2/bias/Adam/AssignAssignvc/dense_2/bias/Adam&vc/dense_2/bias/Adam/Initializer/zeros*
use_locking(*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:*
T0*
validate_shape(

vc/dense_2/bias/Adam/readIdentityvc/dense_2/bias/Adam*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:*
T0

(vc/dense_2/bias/Adam_1/Initializer/zerosConst*
valueB*    *"
_class
loc:@vc/dense_2/bias*
dtype0*
_output_shapes
:
¦
vc/dense_2/bias/Adam_1
VariableV2*"
_class
loc:@vc/dense_2/bias*
shared_name *
shape:*
	container *
_output_shapes
:*
dtype0
Ϋ
vc/dense_2/bias/Adam_1/AssignAssignvc/dense_2/bias/Adam_1(vc/dense_2/bias/Adam_1/Initializer/zeros*
_output_shapes
:*
T0*"
_class
loc:@vc/dense_2/bias*
use_locking(*
validate_shape(

vc/dense_2/bias/Adam_1/readIdentityvc/dense_2/bias/Adam_1*
_output_shapes
:*
T0*"
_class
loc:@vc/dense_2/bias
Y
Adam_1/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
Q
Adam_1/beta1Const*
valueB
 *fff?*
_output_shapes
: *
dtype0
Q
Adam_1/beta2Const*
valueB
 *wΎ?*
_output_shapes
: *
dtype0
S
Adam_1/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *wΜ+2
ή
'Adam_1/update_vf/dense/kernel/ApplyAdam	ApplyAdamvf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_58*
use_locking( *"
_class
loc:@vf/dense/kernel*
use_nesterov( *
T0*
_output_shapes
:	0
Π
%Adam_1/update_vf/dense/bias/ApplyAdam	ApplyAdamvf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_59*
use_nesterov( *
_output_shapes	
:* 
_class
loc:@vf/dense/bias*
use_locking( *
T0
ι
)Adam_1/update_vf/dense_1/kernel/ApplyAdam	ApplyAdamvf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_60*
T0*$
_class
loc:@vf/dense_1/kernel*
use_locking( *
use_nesterov( * 
_output_shapes
:

Ϊ
'Adam_1/update_vf/dense_1/bias/ApplyAdam	ApplyAdamvf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_61*"
_class
loc:@vf/dense_1/bias*
use_nesterov( *
T0*
_output_shapes	
:*
use_locking( 
θ
)Adam_1/update_vf/dense_2/kernel/ApplyAdam	ApplyAdamvf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_62*
T0*
use_locking( *$
_class
loc:@vf/dense_2/kernel*
use_nesterov( *
_output_shapes
:	
Ω
'Adam_1/update_vf/dense_2/bias/ApplyAdam	ApplyAdamvf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_63*
_output_shapes
:*
T0*
use_locking( *"
_class
loc:@vf/dense_2/bias*
use_nesterov( 
ή
'Adam_1/update_vc/dense/kernel/ApplyAdam	ApplyAdamvc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_64*
T0*
use_nesterov( *"
_class
loc:@vc/dense/kernel*
use_locking( *
_output_shapes
:	0
Π
%Adam_1/update_vc/dense/bias/ApplyAdam	ApplyAdamvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_65*
use_nesterov( *
use_locking( * 
_class
loc:@vc/dense/bias*
_output_shapes	
:*
T0
ι
)Adam_1/update_vc/dense_1/kernel/ApplyAdam	ApplyAdamvc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_66*
T0*
use_locking( *$
_class
loc:@vc/dense_1/kernel*
use_nesterov( * 
_output_shapes
:

Ϊ
'Adam_1/update_vc/dense_1/bias/ApplyAdam	ApplyAdamvc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_67*
use_locking( *"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:*
T0*
use_nesterov( 
θ
)Adam_1/update_vc/dense_2/kernel/ApplyAdam	ApplyAdamvc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_68*$
_class
loc:@vc/dense_2/kernel*
_output_shapes
:	*
use_locking( *
use_nesterov( *
T0
Ω
'Adam_1/update_vc/dense_2/bias/ApplyAdam	ApplyAdamvc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_69*
use_locking( *
_output_shapes
:*
use_nesterov( *
T0*"
_class
loc:@vc/dense_2/bias
ς

Adam_1/mulMulbeta1_power_1/readAdam_1/beta1&^Adam_1/update_vc/dense/bias/ApplyAdam(^Adam_1/update_vc/dense/kernel/ApplyAdam(^Adam_1/update_vc/dense_1/bias/ApplyAdam*^Adam_1/update_vc/dense_1/kernel/ApplyAdam(^Adam_1/update_vc/dense_2/bias/ApplyAdam*^Adam_1/update_vc/dense_2/kernel/ApplyAdam&^Adam_1/update_vf/dense/bias/ApplyAdam(^Adam_1/update_vf/dense/kernel/ApplyAdam(^Adam_1/update_vf/dense_1/bias/ApplyAdam*^Adam_1/update_vf/dense_1/kernel/ApplyAdam(^Adam_1/update_vf/dense_2/bias/ApplyAdam*^Adam_1/update_vf/dense_2/kernel/ApplyAdam*
_output_shapes
: *
T0* 
_class
loc:@vc/dense/bias

Adam_1/AssignAssignbeta1_power_1
Adam_1/mul*
use_locking( *
T0*
_output_shapes
: * 
_class
loc:@vc/dense/bias*
validate_shape(
τ
Adam_1/mul_1Mulbeta2_power_1/readAdam_1/beta2&^Adam_1/update_vc/dense/bias/ApplyAdam(^Adam_1/update_vc/dense/kernel/ApplyAdam(^Adam_1/update_vc/dense_1/bias/ApplyAdam*^Adam_1/update_vc/dense_1/kernel/ApplyAdam(^Adam_1/update_vc/dense_2/bias/ApplyAdam*^Adam_1/update_vc/dense_2/kernel/ApplyAdam&^Adam_1/update_vf/dense/bias/ApplyAdam(^Adam_1/update_vf/dense/kernel/ApplyAdam(^Adam_1/update_vf/dense_1/bias/ApplyAdam*^Adam_1/update_vf/dense_1/kernel/ApplyAdam(^Adam_1/update_vf/dense_2/bias/ApplyAdam*^Adam_1/update_vf/dense_2/kernel/ApplyAdam* 
_class
loc:@vc/dense/bias*
T0*
_output_shapes
: 
’
Adam_1/Assign_1Assignbeta2_power_1Adam_1/mul_1* 
_class
loc:@vc/dense/bias*
validate_shape(*
use_locking( *
_output_shapes
: *
T0
¬
Adam_1NoOp^Adam_1/Assign^Adam_1/Assign_1&^Adam_1/update_vc/dense/bias/ApplyAdam(^Adam_1/update_vc/dense/kernel/ApplyAdam(^Adam_1/update_vc/dense_1/bias/ApplyAdam*^Adam_1/update_vc/dense_1/kernel/ApplyAdam(^Adam_1/update_vc/dense_2/bias/ApplyAdam*^Adam_1/update_vc/dense_2/kernel/ApplyAdam&^Adam_1/update_vf/dense/bias/ApplyAdam(^Adam_1/update_vf/dense/kernel/ApplyAdam(^Adam_1/update_vf/dense_1/bias/ApplyAdam*^Adam_1/update_vf/dense_1/kernel/ApplyAdam(^Adam_1/update_vf/dense_2/bias/ApplyAdam*^Adam_1/update_vf/dense_2/kernel/ApplyAdam
l
Reshape_70/shapeConst^Adam_1*
_output_shapes
:*
valueB:
?????????*
dtype0
q

Reshape_70Reshapevf/dense/kernel/readReshape_70/shape*
Tshape0*
T0*
_output_shapes	
:`
l
Reshape_71/shapeConst^Adam_1*
_output_shapes
:*
valueB:
?????????*
dtype0
o

Reshape_71Reshapevf/dense/bias/readReshape_71/shape*
_output_shapes	
:*
Tshape0*
T0
l
Reshape_72/shapeConst^Adam_1*
valueB:
?????????*
dtype0*
_output_shapes
:
t

Reshape_72Reshapevf/dense_1/kernel/readReshape_72/shape*
Tshape0*
T0*
_output_shapes

:
l
Reshape_73/shapeConst^Adam_1*
valueB:
?????????*
dtype0*
_output_shapes
:
q

Reshape_73Reshapevf/dense_1/bias/readReshape_73/shape*
_output_shapes	
:*
Tshape0*
T0
l
Reshape_74/shapeConst^Adam_1*
dtype0*
valueB:
?????????*
_output_shapes
:
s

Reshape_74Reshapevf/dense_2/kernel/readReshape_74/shape*
T0*
_output_shapes	
:*
Tshape0
l
Reshape_75/shapeConst^Adam_1*
valueB:
?????????*
dtype0*
_output_shapes
:
p

Reshape_75Reshapevf/dense_2/bias/readReshape_75/shape*
T0*
_output_shapes
:*
Tshape0
l
Reshape_76/shapeConst^Adam_1*
_output_shapes
:*
dtype0*
valueB:
?????????
q

Reshape_76Reshapevc/dense/kernel/readReshape_76/shape*
_output_shapes	
:`*
Tshape0*
T0
l
Reshape_77/shapeConst^Adam_1*
valueB:
?????????*
dtype0*
_output_shapes
:
o

Reshape_77Reshapevc/dense/bias/readReshape_77/shape*
Tshape0*
_output_shapes	
:*
T0
l
Reshape_78/shapeConst^Adam_1*
dtype0*
valueB:
?????????*
_output_shapes
:
t

Reshape_78Reshapevc/dense_1/kernel/readReshape_78/shape*
_output_shapes

:*
Tshape0*
T0
l
Reshape_79/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
?????????
q

Reshape_79Reshapevc/dense_1/bias/readReshape_79/shape*
T0*
_output_shapes	
:*
Tshape0
l
Reshape_80/shapeConst^Adam_1*
valueB:
?????????*
_output_shapes
:*
dtype0
s

Reshape_80Reshapevc/dense_2/kernel/readReshape_80/shape*
Tshape0*
T0*
_output_shapes	
:
l
Reshape_81/shapeConst^Adam_1*
_output_shapes
:*
dtype0*
valueB:
?????????
p

Reshape_81Reshapevc/dense_2/bias/readReshape_81/shape*
_output_shapes
:*
T0*
Tshape0
X
concat_8/axisConst^Adam_1*
dtype0*
_output_shapes
: *
value	B : 
ο
concat_8ConcatV2
Reshape_70
Reshape_71
Reshape_72
Reshape_73
Reshape_74
Reshape_75
Reshape_76
Reshape_77
Reshape_78
Reshape_79
Reshape_80
Reshape_81concat_8/axis*
T0*

Tidx0*
_output_shapes

:Μ	*
N
h
PyFunc_3PyFuncconcat_8*
Tin
2*
_output_shapes
:*
Tout
2*
token
pyfunc_3

Const_11Const^Adam_1*
_output_shapes
:*
dtype0*E
value<B:"0 0                  0                 
\
split_4/split_dimConst^Adam_1*
value	B : *
dtype0*
_output_shapes
: 
€
split_4SplitVPyFunc_3Const_11split_4/split_dim*
T0*
	num_split*

Tlen0*D
_output_shapes2
0::::::::::::
j
Reshape_82/shapeConst^Adam_1*
valueB"0      *
dtype0*
_output_shapes
:
h

Reshape_82Reshapesplit_4Reshape_82/shape*
_output_shapes
:	0*
T0*
Tshape0
d
Reshape_83/shapeConst^Adam_1*
dtype0*
valueB:*
_output_shapes
:
f

Reshape_83Reshape	split_4:1Reshape_83/shape*
_output_shapes	
:*
Tshape0*
T0
j
Reshape_84/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB"      
k

Reshape_84Reshape	split_4:2Reshape_84/shape* 
_output_shapes
:
*
Tshape0*
T0
d
Reshape_85/shapeConst^Adam_1*
_output_shapes
:*
dtype0*
valueB:
f

Reshape_85Reshape	split_4:3Reshape_85/shape*
T0*
Tshape0*
_output_shapes	
:
j
Reshape_86/shapeConst^Adam_1*
valueB"      *
_output_shapes
:*
dtype0
j

Reshape_86Reshape	split_4:4Reshape_86/shape*
_output_shapes
:	*
Tshape0*
T0
c
Reshape_87/shapeConst^Adam_1*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_87Reshape	split_4:5Reshape_87/shape*
Tshape0*
T0*
_output_shapes
:
j
Reshape_88/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB"0      
j

Reshape_88Reshape	split_4:6Reshape_88/shape*
T0*
Tshape0*
_output_shapes
:	0
d
Reshape_89/shapeConst^Adam_1*
valueB:*
_output_shapes
:*
dtype0
f

Reshape_89Reshape	split_4:7Reshape_89/shape*
Tshape0*
T0*
_output_shapes	
:
j
Reshape_90/shapeConst^Adam_1*
dtype0*
valueB"      *
_output_shapes
:
k

Reshape_90Reshape	split_4:8Reshape_90/shape*
Tshape0*
T0* 
_output_shapes
:

d
Reshape_91/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_91Reshape	split_4:9Reshape_91/shape*
T0*
Tshape0*
_output_shapes	
:
j
Reshape_92/shapeConst^Adam_1*
_output_shapes
:*
valueB"      *
dtype0
k

Reshape_92Reshape
split_4:10Reshape_92/shape*
_output_shapes
:	*
Tshape0*
T0
c
Reshape_93/shapeConst^Adam_1*
valueB:*
_output_shapes
:*
dtype0
f

Reshape_93Reshape
split_4:11Reshape_93/shape*
T0*
Tshape0*
_output_shapes
:
¦
Assign_8Assignvf/dense/kernel
Reshape_82*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
use_locking(*
T0*
validate_shape(

Assign_9Assignvf/dense/bias
Reshape_83*
T0* 
_class
loc:@vf/dense/bias*
validate_shape(*
use_locking(*
_output_shapes	
:
¬
	Assign_10Assignvf/dense_1/kernel
Reshape_84* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel*
validate_shape(*
use_locking(*
T0
£
	Assign_11Assignvf/dense_1/bias
Reshape_85*"
_class
loc:@vf/dense_1/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:
«
	Assign_12Assignvf/dense_2/kernel
Reshape_86*
validate_shape(*
use_locking(*
T0*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	
’
	Assign_13Assignvf/dense_2/bias
Reshape_87*
_output_shapes
:*
T0*
use_locking(*"
_class
loc:@vf/dense_2/bias*
validate_shape(
§
	Assign_14Assignvc/dense/kernel
Reshape_88*
validate_shape(*
_output_shapes
:	0*
T0*
use_locking(*"
_class
loc:@vc/dense/kernel

	Assign_15Assignvc/dense/bias
Reshape_89*
T0*
use_locking(*
_output_shapes	
:*
validate_shape(* 
_class
loc:@vc/dense/bias
¬
	Assign_16Assignvc/dense_1/kernel
Reshape_90*
T0* 
_output_shapes
:
*
validate_shape(*
use_locking(*$
_class
loc:@vc/dense_1/kernel
£
	Assign_17Assignvc/dense_1/bias
Reshape_91*
_output_shapes	
:*
T0*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
use_locking(
«
	Assign_18Assignvc/dense_2/kernel
Reshape_92*
_output_shapes
:	*
validate_shape(*
T0*$
_class
loc:@vc/dense_2/kernel*
use_locking(
’
	Assign_19Assignvc/dense_2/bias
Reshape_93*
_output_shapes
:*
use_locking(*"
_class
loc:@vc/dense_2/bias*
validate_shape(*
T0
«
group_deps_3NoOp^Adam_1
^Assign_10
^Assign_11
^Assign_12
^Assign_13
^Assign_14
^Assign_15
^Assign_16
^Assign_17
^Assign_18
^Assign_19	^Assign_8	^Assign_9
,
group_deps_4NoOp^Adam_1^group_deps_3

initNoOp^beta1_power/Assign^beta1_power_1/Assign^beta2_power/Assign^beta2_power_1/Assign"^penalty/penalty_param/Adam/Assign$^penalty/penalty_param/Adam_1/Assign^penalty/penalty_param/Assign^pi/dense/bias/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/Assign^pi/dense_2/bias/Assign^pi/dense_2/kernel/Assign^pi/log_std/Assign^vc/dense/bias/Adam/Assign^vc/dense/bias/Adam_1/Assign^vc/dense/bias/Assign^vc/dense/kernel/Adam/Assign^vc/dense/kernel/Adam_1/Assign^vc/dense/kernel/Assign^vc/dense_1/bias/Adam/Assign^vc/dense_1/bias/Adam_1/Assign^vc/dense_1/bias/Assign^vc/dense_1/kernel/Adam/Assign ^vc/dense_1/kernel/Adam_1/Assign^vc/dense_1/kernel/Assign^vc/dense_2/bias/Adam/Assign^vc/dense_2/bias/Adam_1/Assign^vc/dense_2/bias/Assign^vc/dense_2/kernel/Adam/Assign ^vc/dense_2/kernel/Adam_1/Assign^vc/dense_2/kernel/Assign^vf/dense/bias/Adam/Assign^vf/dense/bias/Adam_1/Assign^vf/dense/bias/Assign^vf/dense/kernel/Adam/Assign^vf/dense/kernel/Adam_1/Assign^vf/dense/kernel/Assign^vf/dense_1/bias/Adam/Assign^vf/dense_1/bias/Adam_1/Assign^vf/dense_1/bias/Assign^vf/dense_1/kernel/Adam/Assign ^vf/dense_1/kernel/Adam_1/Assign^vf/dense_1/kernel/Assign^vf/dense_2/bias/Adam/Assign^vf/dense_2/bias/Adam_1/Assign^vf/dense_2/bias/Assign^vf/dense_2/kernel/Adam/Assign ^vf/dense_2/kernel/Adam_1/Assign^vf/dense_2/kernel/Assign
c
Reshape_94/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
q

Reshape_94Reshapepi/dense/kernel/readReshape_94/shape*
Tshape0*
T0*
_output_shapes	
:`
c
Reshape_95/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
o

Reshape_95Reshapepi/dense/bias/readReshape_95/shape*
T0*
_output_shapes	
:*
Tshape0
c
Reshape_96/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
t

Reshape_96Reshapepi/dense_1/kernel/readReshape_96/shape*
_output_shapes

:*
T0*
Tshape0
c
Reshape_97/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
q

Reshape_97Reshapepi/dense_1/bias/readReshape_97/shape*
T0*
_output_shapes	
:*
Tshape0
c
Reshape_98/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
s

Reshape_98Reshapepi/dense_2/kernel/readReshape_98/shape*
Tshape0*
_output_shapes	
:*
T0
c
Reshape_99/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
p

Reshape_99Reshapepi/dense_2/bias/readReshape_99/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_100/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
m
Reshape_100Reshapepi/log_std/readReshape_100/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_101/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
s
Reshape_101Reshapevf/dense/kernel/readReshape_101/shape*
_output_shapes	
:`*
T0*
Tshape0
d
Reshape_102/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
q
Reshape_102Reshapevf/dense/bias/readReshape_102/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_103/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
v
Reshape_103Reshapevf/dense_1/kernel/readReshape_103/shape*
_output_shapes

:*
Tshape0*
T0
d
Reshape_104/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
s
Reshape_104Reshapevf/dense_1/bias/readReshape_104/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_105/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
u
Reshape_105Reshapevf/dense_2/kernel/readReshape_105/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_106/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
r
Reshape_106Reshapevf/dense_2/bias/readReshape_106/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_107/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
s
Reshape_107Reshapevc/dense/kernel/readReshape_107/shape*
T0*
_output_shapes	
:`*
Tshape0
d
Reshape_108/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
q
Reshape_108Reshapevc/dense/bias/readReshape_108/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_109/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
v
Reshape_109Reshapevc/dense_1/kernel/readReshape_109/shape*
Tshape0*
_output_shapes

:*
T0
d
Reshape_110/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
s
Reshape_110Reshapevc/dense_1/bias/readReshape_110/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_111/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
u
Reshape_111Reshapevc/dense_2/kernel/readReshape_111/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_112/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
r
Reshape_112Reshapevc/dense_2/bias/readReshape_112/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_113/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
x
Reshape_113Reshapepenalty/penalty_param/readReshape_113/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_114/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
n
Reshape_114Reshapebeta1_power/readReshape_114/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_115/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
n
Reshape_115Reshapebeta2_power/readReshape_115/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_116/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
}
Reshape_116Reshapepenalty/penalty_param/Adam/readReshape_116/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_117/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0

Reshape_117Reshape!penalty/penalty_param/Adam_1/readReshape_117/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_118/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
p
Reshape_118Reshapebeta1_power_1/readReshape_118/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_119/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
p
Reshape_119Reshapebeta2_power_1/readReshape_119/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_120/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
x
Reshape_120Reshapevf/dense/kernel/Adam/readReshape_120/shape*
Tshape0*
T0*
_output_shapes	
:`
d
Reshape_121/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
z
Reshape_121Reshapevf/dense/kernel/Adam_1/readReshape_121/shape*
Tshape0*
T0*
_output_shapes	
:`
d
Reshape_122/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
v
Reshape_122Reshapevf/dense/bias/Adam/readReshape_122/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_123/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
x
Reshape_123Reshapevf/dense/bias/Adam_1/readReshape_123/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_124/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
{
Reshape_124Reshapevf/dense_1/kernel/Adam/readReshape_124/shape*
T0*
Tshape0*
_output_shapes

:
d
Reshape_125/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
}
Reshape_125Reshapevf/dense_1/kernel/Adam_1/readReshape_125/shape*
_output_shapes

:*
T0*
Tshape0
d
Reshape_126/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
x
Reshape_126Reshapevf/dense_1/bias/Adam/readReshape_126/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_127/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
z
Reshape_127Reshapevf/dense_1/bias/Adam_1/readReshape_127/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_128/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
z
Reshape_128Reshapevf/dense_2/kernel/Adam/readReshape_128/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_129/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
|
Reshape_129Reshapevf/dense_2/kernel/Adam_1/readReshape_129/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_130/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
w
Reshape_130Reshapevf/dense_2/bias/Adam/readReshape_130/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_131/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
y
Reshape_131Reshapevf/dense_2/bias/Adam_1/readReshape_131/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_132/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
x
Reshape_132Reshapevc/dense/kernel/Adam/readReshape_132/shape*
Tshape0*
T0*
_output_shapes	
:`
d
Reshape_133/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
z
Reshape_133Reshapevc/dense/kernel/Adam_1/readReshape_133/shape*
Tshape0*
_output_shapes	
:`*
T0
d
Reshape_134/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
v
Reshape_134Reshapevc/dense/bias/Adam/readReshape_134/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_135/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
x
Reshape_135Reshapevc/dense/bias/Adam_1/readReshape_135/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_136/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
{
Reshape_136Reshapevc/dense_1/kernel/Adam/readReshape_136/shape*
Tshape0*
_output_shapes

:*
T0
d
Reshape_137/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
}
Reshape_137Reshapevc/dense_1/kernel/Adam_1/readReshape_137/shape*
Tshape0*
T0*
_output_shapes

:
d
Reshape_138/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
x
Reshape_138Reshapevc/dense_1/bias/Adam/readReshape_138/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_139/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
z
Reshape_139Reshapevc/dense_1/bias/Adam_1/readReshape_139/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_140/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
z
Reshape_140Reshapevc/dense_2/kernel/Adam/readReshape_140/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_141/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
|
Reshape_141Reshapevc/dense_2/kernel/Adam_1/readReshape_141/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_142/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
w
Reshape_142Reshapevc/dense_2/bias/Adam/readReshape_142/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_143/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
y
Reshape_143Reshapevc/dense_2/bias/Adam_1/readReshape_143/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_9/axisConst*
dtype0*
_output_shapes
: *
value	B : 
γ
concat_9ConcatV2
Reshape_94
Reshape_95
Reshape_96
Reshape_97
Reshape_98
Reshape_99Reshape_100Reshape_101Reshape_102Reshape_103Reshape_104Reshape_105Reshape_106Reshape_107Reshape_108Reshape_109Reshape_110Reshape_111Reshape_112Reshape_113Reshape_114Reshape_115Reshape_116Reshape_117Reshape_118Reshape_119Reshape_120Reshape_121Reshape_122Reshape_123Reshape_124Reshape_125Reshape_126Reshape_127Reshape_128Reshape_129Reshape_130Reshape_131Reshape_132Reshape_133Reshape_134Reshape_135Reshape_136Reshape_137Reshape_138Reshape_139Reshape_140Reshape_141Reshape_142Reshape_143concat_9/axis*

Tidx0*
N2*
_output_shapes

:Μ!*
T0
h
PyFunc_4PyFuncconcat_9*
Tin
2*
Tout
2*
_output_shapes
:*
token
pyfunc_4

Const_12Const*ΰ
valueΦBΣ2"Θ 0                     0                  0                                       0   0                                 0   0                                *
_output_shapes
:2*
dtype0
S
split_5/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 
Ώ
split_5SplitVPyFunc_4Const_12split_5/split_dim*
T0*

Tlen0*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::*
	num_split2
b
Reshape_144/shapeConst*
dtype0*
_output_shapes
:*
valueB"0      
j
Reshape_144Reshapesplit_5Reshape_144/shape*
_output_shapes
:	0*
Tshape0*
T0
\
Reshape_145/shapeConst*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_145Reshape	split_5:1Reshape_145/shape*
Tshape0*
T0*
_output_shapes	
:
b
Reshape_146/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
Reshape_146Reshape	split_5:2Reshape_146/shape*
T0*
Tshape0* 
_output_shapes
:

\
Reshape_147/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_147Reshape	split_5:3Reshape_147/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_148/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
l
Reshape_148Reshape	split_5:4Reshape_148/shape*
Tshape0*
T0*
_output_shapes
:	
[
Reshape_149/shapeConst*
valueB:*
_output_shapes
:*
dtype0
g
Reshape_149Reshape	split_5:5Reshape_149/shape*
Tshape0*
_output_shapes
:*
T0
[
Reshape_150/shapeConst*
dtype0*
_output_shapes
:*
valueB:
g
Reshape_150Reshape	split_5:6Reshape_150/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_151/shapeConst*
dtype0*
_output_shapes
:*
valueB"0      
l
Reshape_151Reshape	split_5:7Reshape_151/shape*
_output_shapes
:	0*
T0*
Tshape0
\
Reshape_152/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_152Reshape	split_5:8Reshape_152/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_153/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
Reshape_153Reshape	split_5:9Reshape_153/shape*
Tshape0*
T0* 
_output_shapes
:

\
Reshape_154/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_154Reshape
split_5:10Reshape_154/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_155/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
m
Reshape_155Reshape
split_5:11Reshape_155/shape*
Tshape0*
T0*
_output_shapes
:	
[
Reshape_156/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_156Reshape
split_5:12Reshape_156/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_157/shapeConst*
dtype0*
_output_shapes
:*
valueB"0      
m
Reshape_157Reshape
split_5:13Reshape_157/shape*
T0*
_output_shapes
:	0*
Tshape0
\
Reshape_158/shapeConst*
valueB:*
_output_shapes
:*
dtype0
i
Reshape_158Reshape
split_5:14Reshape_158/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_159/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
Reshape_159Reshape
split_5:15Reshape_159/shape*
Tshape0*
T0* 
_output_shapes
:

\
Reshape_160/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_160Reshape
split_5:16Reshape_160/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_161/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
Reshape_161Reshape
split_5:17Reshape_161/shape*
_output_shapes
:	*
T0*
Tshape0
[
Reshape_162/shapeConst*
dtype0*
valueB:*
_output_shapes
:
h
Reshape_162Reshape
split_5:18Reshape_162/shape*
_output_shapes
:*
T0*
Tshape0
T
Reshape_163/shapeConst*
valueB *
_output_shapes
: *
dtype0
d
Reshape_163Reshape
split_5:19Reshape_163/shape*
T0*
_output_shapes
: *
Tshape0
T
Reshape_164/shapeConst*
dtype0*
valueB *
_output_shapes
: 
d
Reshape_164Reshape
split_5:20Reshape_164/shape*
_output_shapes
: *
Tshape0*
T0
T
Reshape_165/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_165Reshape
split_5:21Reshape_165/shape*
T0*
Tshape0*
_output_shapes
: 
T
Reshape_166/shapeConst*
valueB *
_output_shapes
: *
dtype0
d
Reshape_166Reshape
split_5:22Reshape_166/shape*
T0*
Tshape0*
_output_shapes
: 
T
Reshape_167/shapeConst*
dtype0*
valueB *
_output_shapes
: 
d
Reshape_167Reshape
split_5:23Reshape_167/shape*
Tshape0*
_output_shapes
: *
T0
T
Reshape_168/shapeConst*
_output_shapes
: *
valueB *
dtype0
d
Reshape_168Reshape
split_5:24Reshape_168/shape*
_output_shapes
: *
T0*
Tshape0
T
Reshape_169/shapeConst*
dtype0*
_output_shapes
: *
valueB 
d
Reshape_169Reshape
split_5:25Reshape_169/shape*
_output_shapes
: *
T0*
Tshape0
b
Reshape_170/shapeConst*
dtype0*
valueB"0      *
_output_shapes
:
m
Reshape_170Reshape
split_5:26Reshape_170/shape*
_output_shapes
:	0*
Tshape0*
T0
b
Reshape_171/shapeConst*
_output_shapes
:*
valueB"0      *
dtype0
m
Reshape_171Reshape
split_5:27Reshape_171/shape*
_output_shapes
:	0*
T0*
Tshape0
\
Reshape_172/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_172Reshape
split_5:28Reshape_172/shape*
Tshape0*
_output_shapes	
:*
T0
\
Reshape_173/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_173Reshape
split_5:29Reshape_173/shape*
Tshape0*
_output_shapes	
:*
T0
b
Reshape_174/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
Reshape_174Reshape
split_5:30Reshape_174/shape*
T0*
Tshape0* 
_output_shapes
:

b
Reshape_175/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
Reshape_175Reshape
split_5:31Reshape_175/shape*
Tshape0* 
_output_shapes
:
*
T0
\
Reshape_176/shapeConst*
valueB:*
_output_shapes
:*
dtype0
i
Reshape_176Reshape
split_5:32Reshape_176/shape*
Tshape0*
T0*
_output_shapes	
:
\
Reshape_177/shapeConst*
valueB:*
_output_shapes
:*
dtype0
i
Reshape_177Reshape
split_5:33Reshape_177/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_178/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
Reshape_178Reshape
split_5:34Reshape_178/shape*
Tshape0*
T0*
_output_shapes
:	
b
Reshape_179/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
m
Reshape_179Reshape
split_5:35Reshape_179/shape*
_output_shapes
:	*
T0*
Tshape0
[
Reshape_180/shapeConst*
dtype0*
valueB:*
_output_shapes
:
h
Reshape_180Reshape
split_5:36Reshape_180/shape*
T0*
_output_shapes
:*
Tshape0
[
Reshape_181/shapeConst*
valueB:*
_output_shapes
:*
dtype0
h
Reshape_181Reshape
split_5:37Reshape_181/shape*
_output_shapes
:*
Tshape0*
T0
b
Reshape_182/shapeConst*
_output_shapes
:*
dtype0*
valueB"0      
m
Reshape_182Reshape
split_5:38Reshape_182/shape*
Tshape0*
_output_shapes
:	0*
T0
b
Reshape_183/shapeConst*
dtype0*
_output_shapes
:*
valueB"0      
m
Reshape_183Reshape
split_5:39Reshape_183/shape*
_output_shapes
:	0*
T0*
Tshape0
\
Reshape_184/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_184Reshape
split_5:40Reshape_184/shape*
T0*
Tshape0*
_output_shapes	
:
\
Reshape_185/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_185Reshape
split_5:41Reshape_185/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_186/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
n
Reshape_186Reshape
split_5:42Reshape_186/shape*
T0* 
_output_shapes
:
*
Tshape0
b
Reshape_187/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
n
Reshape_187Reshape
split_5:43Reshape_187/shape*
T0*
Tshape0* 
_output_shapes
:

\
Reshape_188/shapeConst*
_output_shapes
:*
valueB:*
dtype0
i
Reshape_188Reshape
split_5:44Reshape_188/shape*
_output_shapes	
:*
Tshape0*
T0
\
Reshape_189/shapeConst*
_output_shapes
:*
valueB:*
dtype0
i
Reshape_189Reshape
split_5:45Reshape_189/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_190/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_190Reshape
split_5:46Reshape_190/shape*
_output_shapes
:	*
T0*
Tshape0
b
Reshape_191/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
m
Reshape_191Reshape
split_5:47Reshape_191/shape*
T0*
Tshape0*
_output_shapes
:	
[
Reshape_192/shapeConst*
valueB:*
_output_shapes
:*
dtype0
h
Reshape_192Reshape
split_5:48Reshape_192/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_193/shapeConst*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_193Reshape
split_5:49Reshape_193/shape*
Tshape0*
T0*
_output_shapes
:
¨
	Assign_20Assignpi/dense/kernelReshape_144*
T0*
use_locking(*
_output_shapes
:	0*"
_class
loc:@pi/dense/kernel*
validate_shape(
 
	Assign_21Assignpi/dense/biasReshape_145* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(
­
	Assign_22Assignpi/dense_1/kernelReshape_146* 
_output_shapes
:
*
T0*
use_locking(*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
€
	Assign_23Assignpi/dense_1/biasReshape_147*
validate_shape(*"
_class
loc:@pi/dense_1/bias*
_output_shapes	
:*
T0*
use_locking(
¬
	Assign_24Assignpi/dense_2/kernelReshape_148*
_output_shapes
:	*
T0*
use_locking(*
validate_shape(*$
_class
loc:@pi/dense_2/kernel
£
	Assign_25Assignpi/dense_2/biasReshape_149*
validate_shape(*
use_locking(*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
T0

	Assign_26Assign
pi/log_stdReshape_150*
_class
loc:@pi/log_std*
validate_shape(*
T0*
_output_shapes
:*
use_locking(
¨
	Assign_27Assignvf/dense/kernelReshape_151*
T0*
_output_shapes
:	0*
validate_shape(*
use_locking(*"
_class
loc:@vf/dense/kernel
 
	Assign_28Assignvf/dense/biasReshape_152*
_output_shapes	
:*
validate_shape(*
T0* 
_class
loc:@vf/dense/bias*
use_locking(
­
	Assign_29Assignvf/dense_1/kernelReshape_153* 
_output_shapes
:
*
T0*
use_locking(*$
_class
loc:@vf/dense_1/kernel*
validate_shape(
€
	Assign_30Assignvf/dense_1/biasReshape_154*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(*"
_class
loc:@vf/dense_1/bias
¬
	Assign_31Assignvf/dense_2/kernelReshape_155*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
T0*
use_locking(*
validate_shape(
£
	Assign_32Assignvf/dense_2/biasReshape_156*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
T0*
_output_shapes
:*
use_locking(
¨
	Assign_33Assignvc/dense/kernelReshape_157*
use_locking(*
_output_shapes
:	0*
T0*
validate_shape(*"
_class
loc:@vc/dense/kernel
 
	Assign_34Assignvc/dense/biasReshape_158*
use_locking(* 
_class
loc:@vc/dense/bias*
_output_shapes	
:*
validate_shape(*
T0
­
	Assign_35Assignvc/dense_1/kernelReshape_159*
use_locking(*
T0*$
_class
loc:@vc/dense_1/kernel*
validate_shape(* 
_output_shapes
:

€
	Assign_36Assignvc/dense_1/biasReshape_160*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(*"
_class
loc:@vc/dense_1/bias
¬
	Assign_37Assignvc/dense_2/kernelReshape_161*
T0*
_output_shapes
:	*
validate_shape(*$
_class
loc:@vc/dense_2/kernel*
use_locking(
£
	Assign_38Assignvc/dense_2/biasReshape_162*
use_locking(*
validate_shape(*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:*
T0
«
	Assign_39Assignpenalty/penalty_paramReshape_163*
validate_shape(*(
_class
loc:@penalty/penalty_param*
T0*
_output_shapes
: *
use_locking(
‘
	Assign_40Assignbeta1_powerReshape_164*
use_locking(*
_output_shapes
: *
T0*(
_class
loc:@penalty/penalty_param*
validate_shape(
‘
	Assign_41Assignbeta2_powerReshape_165*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*(
_class
loc:@penalty/penalty_param
°
	Assign_42Assignpenalty/penalty_param/AdamReshape_166*(
_class
loc:@penalty/penalty_param*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
²
	Assign_43Assignpenalty/penalty_param/Adam_1Reshape_167*(
_class
loc:@penalty/penalty_param*
T0*
_output_shapes
: *
validate_shape(*
use_locking(

	Assign_44Assignbeta1_power_1Reshape_168*
use_locking(*
_output_shapes
: *
validate_shape(* 
_class
loc:@vc/dense/bias*
T0

	Assign_45Assignbeta2_power_1Reshape_169*
T0* 
_class
loc:@vc/dense/bias*
use_locking(*
validate_shape(*
_output_shapes
: 
­
	Assign_46Assignvf/dense/kernel/AdamReshape_170*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
validate_shape(*
T0*
use_locking(
―
	Assign_47Assignvf/dense/kernel/Adam_1Reshape_171*
use_locking(*
_output_shapes
:	0*
validate_shape(*
T0*"
_class
loc:@vf/dense/kernel
₯
	Assign_48Assignvf/dense/bias/AdamReshape_172* 
_class
loc:@vf/dense/bias*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(
§
	Assign_49Assignvf/dense/bias/Adam_1Reshape_173*
validate_shape(*
_output_shapes	
:*
T0* 
_class
loc:@vf/dense/bias*
use_locking(
²
	Assign_50Assignvf/dense_1/kernel/AdamReshape_174* 
_output_shapes
:
*
use_locking(*$
_class
loc:@vf/dense_1/kernel*
validate_shape(*
T0
΄
	Assign_51Assignvf/dense_1/kernel/Adam_1Reshape_175*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
validate_shape(*
T0*
use_locking(
©
	Assign_52Assignvf/dense_1/bias/AdamReshape_176*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(
«
	Assign_53Assignvf/dense_1/bias/Adam_1Reshape_177*
validate_shape(*
_output_shapes	
:*
use_locking(*"
_class
loc:@vf/dense_1/bias*
T0
±
	Assign_54Assignvf/dense_2/kernel/AdamReshape_178*
use_locking(*
_output_shapes
:	*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
T0
³
	Assign_55Assignvf/dense_2/kernel/Adam_1Reshape_179*
validate_shape(*
_output_shapes
:	*
T0*$
_class
loc:@vf/dense_2/kernel*
use_locking(
¨
	Assign_56Assignvf/dense_2/bias/AdamReshape_180*
T0*
validate_shape(*
use_locking(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:
ͺ
	Assign_57Assignvf/dense_2/bias/Adam_1Reshape_181*
T0*"
_class
loc:@vf/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
­
	Assign_58Assignvc/dense/kernel/AdamReshape_182*
_output_shapes
:	0*
T0*"
_class
loc:@vc/dense/kernel*
validate_shape(*
use_locking(
―
	Assign_59Assignvc/dense/kernel/Adam_1Reshape_183*
validate_shape(*
T0*
_output_shapes
:	0*"
_class
loc:@vc/dense/kernel*
use_locking(
₯
	Assign_60Assignvc/dense/bias/AdamReshape_184*
validate_shape(*
T0*
use_locking(* 
_class
loc:@vc/dense/bias*
_output_shapes	
:
§
	Assign_61Assignvc/dense/bias/Adam_1Reshape_185* 
_class
loc:@vc/dense/bias*
T0*
_output_shapes	
:*
validate_shape(*
use_locking(
²
	Assign_62Assignvc/dense_1/kernel/AdamReshape_186*
validate_shape(*
T0*
use_locking(*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:

΄
	Assign_63Assignvc/dense_1/kernel/Adam_1Reshape_187*$
_class
loc:@vc/dense_1/kernel*
T0*
use_locking(* 
_output_shapes
:
*
validate_shape(
©
	Assign_64Assignvc/dense_1/bias/AdamReshape_188*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*"
_class
loc:@vc/dense_1/bias
«
	Assign_65Assignvc/dense_1/bias/Adam_1Reshape_189*
T0*
use_locking(*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
validate_shape(
±
	Assign_66Assignvc/dense_2/kernel/AdamReshape_190*
validate_shape(*
use_locking(*
T0*$
_class
loc:@vc/dense_2/kernel*
_output_shapes
:	
³
	Assign_67Assignvc/dense_2/kernel/Adam_1Reshape_191*
use_locking(*
validate_shape(*$
_class
loc:@vc/dense_2/kernel*
T0*
_output_shapes
:	
¨
	Assign_68Assignvc/dense_2/bias/AdamReshape_192*
use_locking(*
validate_shape(*
_output_shapes
:*
T0*"
_class
loc:@vc/dense_2/bias
ͺ
	Assign_69Assignvc/dense_2/bias/Adam_1Reshape_193*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
validate_shape(*
use_locking(*
T0
μ
group_deps_5NoOp
^Assign_20
^Assign_21
^Assign_22
^Assign_23
^Assign_24
^Assign_25
^Assign_26
^Assign_27
^Assign_28
^Assign_29
^Assign_30
^Assign_31
^Assign_32
^Assign_33
^Assign_34
^Assign_35
^Assign_36
^Assign_37
^Assign_38
^Assign_39
^Assign_40
^Assign_41
^Assign_42
^Assign_43
^Assign_44
^Assign_45
^Assign_46
^Assign_47
^Assign_48
^Assign_49
^Assign_50
^Assign_51
^Assign_52
^Assign_53
^Assign_54
^Assign_55
^Assign_56
^Assign_57
^Assign_58
^Assign_59
^Assign_60
^Assign_61
^Assign_62
^Assign_63
^Assign_64
^Assign_65
^Assign_66
^Assign_67
^Assign_68
^Assign_69
Y
save/filename/inputConst*
valueB Bmodel*
_output_shapes
: *
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
_output_shapes
: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_640af1166cdc4123b577715a173ad8f4/part*
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
\
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
ί
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Η
save/SaveV2/shape_and_slicesConst*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
’	
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *'
_class
loc:@save/ShardedFilename*
T0

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*
_output_shapes
:*

axis *
N
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
β
save/RestoreV2/tensor_namesConst*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0
Κ
save/RestoreV2/shape_and_slicesConst*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
¦
save/AssignAssignbeta1_powersave/RestoreV2*
T0*
validate_shape(*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
use_locking(
€
save/Assign_1Assignbeta1_power_1save/RestoreV2:1*
_output_shapes
: *
validate_shape(*
T0*
use_locking(* 
_class
loc:@vc/dense/bias
ͺ
save/Assign_2Assignbeta2_powersave/RestoreV2:2*
validate_shape(*(
_class
loc:@penalty/penalty_param*
T0*
use_locking(*
_output_shapes
: 
€
save/Assign_3Assignbeta2_power_1save/RestoreV2:3*
T0*
validate_shape(*
use_locking(* 
_class
loc:@vc/dense/bias*
_output_shapes
: 
΄
save/Assign_4Assignpenalty/penalty_paramsave/RestoreV2:4*
validate_shape(*
use_locking(*
T0*
_output_shapes
: *(
_class
loc:@penalty/penalty_param
Ή
save/Assign_5Assignpenalty/penalty_param/Adamsave/RestoreV2:5*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*(
_class
loc:@penalty/penalty_param
»
save/Assign_6Assignpenalty/penalty_param/Adam_1save/RestoreV2:6*
use_locking(*
validate_shape(*(
_class
loc:@penalty/penalty_param*
T0*
_output_shapes
: 
©
save/Assign_7Assignpi/dense/biassave/RestoreV2:7* 
_class
loc:@pi/dense/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:
±
save/Assign_8Assignpi/dense/kernelsave/RestoreV2:8*
use_locking(*
validate_shape(*"
_class
loc:@pi/dense/kernel*
T0*
_output_shapes
:	0
­
save/Assign_9Assignpi/dense_1/biassave/RestoreV2:9*
_output_shapes	
:*
use_locking(*
validate_shape(*"
_class
loc:@pi/dense_1/bias*
T0
Έ
save/Assign_10Assignpi/dense_1/kernelsave/RestoreV2:10*
validate_shape(*$
_class
loc:@pi/dense_1/kernel* 
_output_shapes
:
*
T0*
use_locking(
?
save/Assign_11Assignpi/dense_2/biassave/RestoreV2:11*
use_locking(*
validate_shape(*"
_class
loc:@pi/dense_2/bias*
T0*
_output_shapes
:
·
save/Assign_12Assignpi/dense_2/kernelsave/RestoreV2:12*
_output_shapes
:	*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
use_locking(*
T0
€
save/Assign_13Assign
pi/log_stdsave/RestoreV2:13*
_class
loc:@pi/log_std*
validate_shape(*
T0*
use_locking(*
_output_shapes
:
«
save/Assign_14Assignvc/dense/biassave/RestoreV2:14*
_output_shapes	
:* 
_class
loc:@vc/dense/bias*
T0*
use_locking(*
validate_shape(
°
save/Assign_15Assignvc/dense/bias/Adamsave/RestoreV2:15*
T0* 
_class
loc:@vc/dense/bias*
use_locking(*
validate_shape(*
_output_shapes	
:
²
save/Assign_16Assignvc/dense/bias/Adam_1save/RestoreV2:16*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(* 
_class
loc:@vc/dense/bias
³
save/Assign_17Assignvc/dense/kernelsave/RestoreV2:17*"
_class
loc:@vc/dense/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	0
Έ
save/Assign_18Assignvc/dense/kernel/Adamsave/RestoreV2:18*
T0*"
_class
loc:@vc/dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	0
Ί
save/Assign_19Assignvc/dense/kernel/Adam_1save/RestoreV2:19*
T0*
_output_shapes
:	0*
validate_shape(*
use_locking(*"
_class
loc:@vc/dense/kernel
―
save/Assign_20Assignvc/dense_1/biassave/RestoreV2:20*
T0*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:*
use_locking(
΄
save/Assign_21Assignvc/dense_1/bias/Adamsave/RestoreV2:21*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
T0*
validate_shape(*
use_locking(
Ά
save/Assign_22Assignvc/dense_1/bias/Adam_1save/RestoreV2:22*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
T0*
use_locking(*
_output_shapes	
:
Έ
save/Assign_23Assignvc/dense_1/kernelsave/RestoreV2:23*
use_locking(*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:
*
T0*
validate_shape(
½
save/Assign_24Assignvc/dense_1/kernel/Adamsave/RestoreV2:24* 
_output_shapes
:
*
T0*
validate_shape(*$
_class
loc:@vc/dense_1/kernel*
use_locking(
Ώ
save/Assign_25Assignvc/dense_1/kernel/Adam_1save/RestoreV2:25*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel
?
save/Assign_26Assignvc/dense_2/biassave/RestoreV2:26*
T0*
use_locking(*
validate_shape(*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias
³
save/Assign_27Assignvc/dense_2/bias/Adamsave/RestoreV2:27*
use_locking(*
T0*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
validate_shape(
΅
save/Assign_28Assignvc/dense_2/bias/Adam_1save/RestoreV2:28*"
_class
loc:@vc/dense_2/bias*
validate_shape(*
_output_shapes
:*
T0*
use_locking(
·
save/Assign_29Assignvc/dense_2/kernelsave/RestoreV2:29*
_output_shapes
:	*
T0*
validate_shape(*$
_class
loc:@vc/dense_2/kernel*
use_locking(
Ό
save/Assign_30Assignvc/dense_2/kernel/Adamsave/RestoreV2:30*
T0*
validate_shape(*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
_output_shapes
:	
Ύ
save/Assign_31Assignvc/dense_2/kernel/Adam_1save/RestoreV2:31*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	
«
save/Assign_32Assignvf/dense/biassave/RestoreV2:32*
_output_shapes	
:*
T0*
use_locking(* 
_class
loc:@vf/dense/bias*
validate_shape(
°
save/Assign_33Assignvf/dense/bias/Adamsave/RestoreV2:33*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(* 
_class
loc:@vf/dense/bias
²
save/Assign_34Assignvf/dense/bias/Adam_1save/RestoreV2:34* 
_class
loc:@vf/dense/bias*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(
³
save/Assign_35Assignvf/dense/kernelsave/RestoreV2:35*
T0*
use_locking(*
validate_shape(*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0
Έ
save/Assign_36Assignvf/dense/kernel/Adamsave/RestoreV2:36*
_output_shapes
:	0*
use_locking(*
T0*"
_class
loc:@vf/dense/kernel*
validate_shape(
Ί
save/Assign_37Assignvf/dense/kernel/Adam_1save/RestoreV2:37*
use_locking(*
_output_shapes
:	0*
validate_shape(*
T0*"
_class
loc:@vf/dense/kernel
―
save/Assign_38Assignvf/dense_1/biassave/RestoreV2:38*"
_class
loc:@vf/dense_1/bias*
T0*
use_locking(*
_output_shapes	
:*
validate_shape(
΄
save/Assign_39Assignvf/dense_1/bias/Adamsave/RestoreV2:39*
validate_shape(*
T0*"
_class
loc:@vf/dense_1/bias*
_output_shapes	
:*
use_locking(
Ά
save/Assign_40Assignvf/dense_1/bias/Adam_1save/RestoreV2:40*
T0*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Έ
save/Assign_41Assignvf/dense_1/kernelsave/RestoreV2:41*$
_class
loc:@vf/dense_1/kernel*
T0* 
_output_shapes
:
*
validate_shape(*
use_locking(
½
save/Assign_42Assignvf/dense_1/kernel/Adamsave/RestoreV2:42*
T0*
use_locking(*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
validate_shape(
Ώ
save/Assign_43Assignvf/dense_1/kernel/Adam_1save/RestoreV2:43*
T0*$
_class
loc:@vf/dense_1/kernel*
use_locking(* 
_output_shapes
:
*
validate_shape(
?
save/Assign_44Assignvf/dense_2/biassave/RestoreV2:44*
use_locking(*
_output_shapes
:*
validate_shape(*
T0*"
_class
loc:@vf/dense_2/bias
³
save/Assign_45Assignvf/dense_2/bias/Adamsave/RestoreV2:45*
use_locking(*
T0*"
_class
loc:@vf/dense_2/bias*
validate_shape(*
_output_shapes
:
΅
save/Assign_46Assignvf/dense_2/bias/Adam_1save/RestoreV2:46*
use_locking(*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias*
T0*
validate_shape(
·
save/Assign_47Assignvf/dense_2/kernelsave/RestoreV2:47*
_output_shapes
:	*
use_locking(*
T0*$
_class
loc:@vf/dense_2/kernel*
validate_shape(
Ό
save/Assign_48Assignvf/dense_2/kernel/Adamsave/RestoreV2:48*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
validate_shape(*
T0*
use_locking(
Ύ
save/Assign_49Assignvf/dense_2/kernel/Adam_1save/RestoreV2:49*
T0*
use_locking(*
_output_shapes
:	*$
_class
loc:@vf/dense_2/kernel*
validate_shape(
ΰ
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
_output_shapes
: *
shape: *
dtype0
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
shape: *
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_2f6f888775a9489b85f9a905825c2ccf/part
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
α
save_1/SaveV2/tensor_namesConst*
_output_shapes
:2*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Ι
save_1/SaveV2/shape_and_slicesConst*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2
ͺ	
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: *
T0
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*
N*
_output_shapes
:*

axis 

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
_output_shapes
: *
T0
δ
save_1/RestoreV2/tensor_namesConst*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:2
Μ
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
ͺ
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *(
_class
loc:@penalty/penalty_param
¨
save_1/Assign_1Assignbeta1_power_1save_1/RestoreV2:1* 
_class
loc:@vc/dense/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes
: 
?
save_1/Assign_2Assignbeta2_powersave_1/RestoreV2:2*
validate_shape(*(
_class
loc:@penalty/penalty_param*
T0*
_output_shapes
: *
use_locking(
¨
save_1/Assign_3Assignbeta2_power_1save_1/RestoreV2:3* 
_class
loc:@vc/dense/bias*
_output_shapes
: *
validate_shape(*
use_locking(*
T0
Έ
save_1/Assign_4Assignpenalty/penalty_paramsave_1/RestoreV2:4*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
½
save_1/Assign_5Assignpenalty/penalty_param/Adamsave_1/RestoreV2:5*
use_locking(*(
_class
loc:@penalty/penalty_param*
T0*
validate_shape(*
_output_shapes
: 
Ώ
save_1/Assign_6Assignpenalty/penalty_param/Adam_1save_1/RestoreV2:6*
use_locking(*(
_class
loc:@penalty/penalty_param*
validate_shape(*
T0*
_output_shapes
: 
­
save_1/Assign_7Assignpi/dense/biassave_1/RestoreV2:7* 
_class
loc:@pi/dense/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:
΅
save_1/Assign_8Assignpi/dense/kernelsave_1/RestoreV2:8*
use_locking(*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	0*
T0*
validate_shape(
±
save_1/Assign_9Assignpi/dense_1/biassave_1/RestoreV2:9*
use_locking(*"
_class
loc:@pi/dense_1/bias*
T0*
_output_shapes	
:*
validate_shape(
Ό
save_1/Assign_10Assignpi/dense_1/kernelsave_1/RestoreV2:10* 
_output_shapes
:
*
validate_shape(*
use_locking(*$
_class
loc:@pi/dense_1/kernel*
T0
²
save_1/Assign_11Assignpi/dense_2/biassave_1/RestoreV2:11*
use_locking(*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0
»
save_1/Assign_12Assignpi/dense_2/kernelsave_1/RestoreV2:12*
validate_shape(*
use_locking(*
_output_shapes
:	*
T0*$
_class
loc:@pi/dense_2/kernel
¨
save_1/Assign_13Assign
pi/log_stdsave_1/RestoreV2:13*
validate_shape(*
_output_shapes
:*
_class
loc:@pi/log_std*
use_locking(*
T0
―
save_1/Assign_14Assignvc/dense/biassave_1/RestoreV2:14*
T0*
validate_shape(* 
_class
loc:@vc/dense/bias*
use_locking(*
_output_shapes	
:
΄
save_1/Assign_15Assignvc/dense/bias/Adamsave_1/RestoreV2:15*
use_locking(*
_output_shapes	
:* 
_class
loc:@vc/dense/bias*
validate_shape(*
T0
Ά
save_1/Assign_16Assignvc/dense/bias/Adam_1save_1/RestoreV2:16*
T0* 
_class
loc:@vc/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
·
save_1/Assign_17Assignvc/dense/kernelsave_1/RestoreV2:17*"
_class
loc:@vc/dense/kernel*
use_locking(*
T0*
_output_shapes
:	0*
validate_shape(
Ό
save_1/Assign_18Assignvc/dense/kernel/Adamsave_1/RestoreV2:18*
T0*"
_class
loc:@vc/dense/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	0
Ύ
save_1/Assign_19Assignvc/dense/kernel/Adam_1save_1/RestoreV2:19*
_output_shapes
:	0*
use_locking(*"
_class
loc:@vc/dense/kernel*
T0*
validate_shape(
³
save_1/Assign_20Assignvc/dense_1/biassave_1/RestoreV2:20*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
use_locking(*
T0*
validate_shape(
Έ
save_1/Assign_21Assignvc/dense_1/bias/Adamsave_1/RestoreV2:21*
use_locking(*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
validate_shape(*
T0
Ί
save_1/Assign_22Assignvc/dense_1/bias/Adam_1save_1/RestoreV2:22*
_output_shapes	
:*
T0*
use_locking(*"
_class
loc:@vc/dense_1/bias*
validate_shape(
Ό
save_1/Assign_23Assignvc/dense_1/kernelsave_1/RestoreV2:23*
validate_shape(* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel*
T0*
use_locking(
Α
save_1/Assign_24Assignvc/dense_1/kernel/Adamsave_1/RestoreV2:24*
validate_shape(* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel*
use_locking(*
T0
Γ
save_1/Assign_25Assignvc/dense_1/kernel/Adam_1save_1/RestoreV2:25*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:
*
validate_shape(*
use_locking(*
T0
²
save_1/Assign_26Assignvc/dense_2/biassave_1/RestoreV2:26*
use_locking(*
_output_shapes
:*
T0*
validate_shape(*"
_class
loc:@vc/dense_2/bias
·
save_1/Assign_27Assignvc/dense_2/bias/Adamsave_1/RestoreV2:27*"
_class
loc:@vc/dense_2/bias*
T0*
validate_shape(*
_output_shapes
:*
use_locking(
Ή
save_1/Assign_28Assignvc/dense_2/bias/Adam_1save_1/RestoreV2:28*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*"
_class
loc:@vc/dense_2/bias
»
save_1/Assign_29Assignvc/dense_2/kernelsave_1/RestoreV2:29*
_output_shapes
:	*$
_class
loc:@vc/dense_2/kernel*
T0*
use_locking(*
validate_shape(
ΐ
save_1/Assign_30Assignvc/dense_2/kernel/Adamsave_1/RestoreV2:30*$
_class
loc:@vc/dense_2/kernel*
validate_shape(*
T0*
_output_shapes
:	*
use_locking(
Β
save_1/Assign_31Assignvc/dense_2/kernel/Adam_1save_1/RestoreV2:31*$
_class
loc:@vc/dense_2/kernel*
validate_shape(*
_output_shapes
:	*
T0*
use_locking(
―
save_1/Assign_32Assignvf/dense/biassave_1/RestoreV2:32*
_output_shapes	
:* 
_class
loc:@vf/dense/bias*
T0*
validate_shape(*
use_locking(
΄
save_1/Assign_33Assignvf/dense/bias/Adamsave_1/RestoreV2:33* 
_class
loc:@vf/dense/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:
Ά
save_1/Assign_34Assignvf/dense/bias/Adam_1save_1/RestoreV2:34*
use_locking(*
_output_shapes	
:* 
_class
loc:@vf/dense/bias*
T0*
validate_shape(
·
save_1/Assign_35Assignvf/dense/kernelsave_1/RestoreV2:35*
use_locking(*"
_class
loc:@vf/dense/kernel*
T0*
validate_shape(*
_output_shapes
:	0
Ό
save_1/Assign_36Assignvf/dense/kernel/Adamsave_1/RestoreV2:36*
use_locking(*"
_class
loc:@vf/dense/kernel*
T0*
validate_shape(*
_output_shapes
:	0
Ύ
save_1/Assign_37Assignvf/dense/kernel/Adam_1save_1/RestoreV2:37*
T0*"
_class
loc:@vf/dense/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	0
³
save_1/Assign_38Assignvf/dense_1/biassave_1/RestoreV2:38*
validate_shape(*
use_locking(*"
_class
loc:@vf/dense_1/bias*
T0*
_output_shapes	
:
Έ
save_1/Assign_39Assignvf/dense_1/bias/Adamsave_1/RestoreV2:39*
_output_shapes	
:*
T0*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
use_locking(
Ί
save_1/Assign_40Assignvf/dense_1/bias/Adam_1save_1/RestoreV2:40*"
_class
loc:@vf/dense_1/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:
Ό
save_1/Assign_41Assignvf/dense_1/kernelsave_1/RestoreV2:41* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel*
validate_shape(*
T0*
use_locking(
Α
save_1/Assign_42Assignvf/dense_1/kernel/Adamsave_1/RestoreV2:42*
T0*
use_locking(*
validate_shape(* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel
Γ
save_1/Assign_43Assignvf/dense_1/kernel/Adam_1save_1/RestoreV2:43*
use_locking(*$
_class
loc:@vf/dense_1/kernel*
T0*
validate_shape(* 
_output_shapes
:

²
save_1/Assign_44Assignvf/dense_2/biassave_1/RestoreV2:44*
_output_shapes
:*
validate_shape(*
T0*"
_class
loc:@vf/dense_2/bias*
use_locking(
·
save_1/Assign_45Assignvf/dense_2/bias/Adamsave_1/RestoreV2:45*
T0*
_output_shapes
:*
use_locking(*"
_class
loc:@vf/dense_2/bias*
validate_shape(
Ή
save_1/Assign_46Assignvf/dense_2/bias/Adam_1save_1/RestoreV2:46*
T0*
use_locking(*"
_class
loc:@vf/dense_2/bias*
validate_shape(*
_output_shapes
:
»
save_1/Assign_47Assignvf/dense_2/kernelsave_1/RestoreV2:47*
_output_shapes
:	*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
T0*
use_locking(
ΐ
save_1/Assign_48Assignvf/dense_2/kernel/Adamsave_1/RestoreV2:48*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	*
T0
Β
save_1/Assign_49Assignvf/dense_2/kernel/Adam_1save_1/RestoreV2:49*
T0*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
_output_shapes
:	
Ζ
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard
[
save_2/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
shape: *
_output_shapes
: *
dtype0

save_2/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_f08c372b83b542d0ab9b6d19273d87e5/part
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_2/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_2/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 

save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
α
save_2/SaveV2/tensor_namesConst*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
_output_shapes
:2
Ι
save_2/SaveV2/shape_and_slicesConst*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2
ͺ	
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*
_output_shapes
: *)
_class
loc:@save_2/ShardedFilename*
T0
£
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*
T0*
N*
_output_shapes
:*

axis 

save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(

save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
T0*
_output_shapes
: 
δ
save_2/RestoreV2/tensor_namesConst*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
_output_shapes
:2
Μ
!save_2/RestoreV2/shape_and_slicesConst*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2

save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*@
dtypes6
422*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::
ͺ
save_2/AssignAssignbeta1_powersave_2/RestoreV2*
use_locking(*
validate_shape(*(
_class
loc:@penalty/penalty_param*
T0*
_output_shapes
: 
¨
save_2/Assign_1Assignbeta1_power_1save_2/RestoreV2:1* 
_class
loc:@vc/dense/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes
: 
?
save_2/Assign_2Assignbeta2_powersave_2/RestoreV2:2*
T0*
_output_shapes
: *
use_locking(*(
_class
loc:@penalty/penalty_param*
validate_shape(
¨
save_2/Assign_3Assignbeta2_power_1save_2/RestoreV2:3*
_output_shapes
: *
use_locking(*
validate_shape(*
T0* 
_class
loc:@vc/dense/bias
Έ
save_2/Assign_4Assignpenalty/penalty_paramsave_2/RestoreV2:4*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
use_locking(*
T0*
validate_shape(
½
save_2/Assign_5Assignpenalty/penalty_param/Adamsave_2/RestoreV2:5*(
_class
loc:@penalty/penalty_param*
use_locking(*
T0*
validate_shape(*
_output_shapes
: 
Ώ
save_2/Assign_6Assignpenalty/penalty_param/Adam_1save_2/RestoreV2:6*
_output_shapes
: *
use_locking(*
validate_shape(*
T0*(
_class
loc:@penalty/penalty_param
­
save_2/Assign_7Assignpi/dense/biassave_2/RestoreV2:7*
validate_shape(*
_output_shapes	
:*
T0* 
_class
loc:@pi/dense/bias*
use_locking(
΅
save_2/Assign_8Assignpi/dense/kernelsave_2/RestoreV2:8*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	0*
use_locking(
±
save_2/Assign_9Assignpi/dense_1/biassave_2/RestoreV2:9*"
_class
loc:@pi/dense_1/bias*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(
Ό
save_2/Assign_10Assignpi/dense_1/kernelsave_2/RestoreV2:10*
validate_shape(*
T0*
use_locking(*$
_class
loc:@pi/dense_1/kernel* 
_output_shapes
:

²
save_2/Assign_11Assignpi/dense_2/biassave_2/RestoreV2:11*
T0*
use_locking(*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
validate_shape(
»
save_2/Assign_12Assignpi/dense_2/kernelsave_2/RestoreV2:12*
_output_shapes
:	*
validate_shape(*
T0*$
_class
loc:@pi/dense_2/kernel*
use_locking(
¨
save_2/Assign_13Assign
pi/log_stdsave_2/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
_class
loc:@pi/log_std*
T0
―
save_2/Assign_14Assignvc/dense/biassave_2/RestoreV2:14*
_output_shapes	
:*
validate_shape(* 
_class
loc:@vc/dense/bias*
use_locking(*
T0
΄
save_2/Assign_15Assignvc/dense/bias/Adamsave_2/RestoreV2:15*
validate_shape(*
T0* 
_class
loc:@vc/dense/bias*
use_locking(*
_output_shapes	
:
Ά
save_2/Assign_16Assignvc/dense/bias/Adam_1save_2/RestoreV2:16*
validate_shape(* 
_class
loc:@vc/dense/bias*
T0*
use_locking(*
_output_shapes	
:
·
save_2/Assign_17Assignvc/dense/kernelsave_2/RestoreV2:17*
use_locking(*"
_class
loc:@vc/dense/kernel*
T0*
validate_shape(*
_output_shapes
:	0
Ό
save_2/Assign_18Assignvc/dense/kernel/Adamsave_2/RestoreV2:18*"
_class
loc:@vc/dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	0*
T0
Ύ
save_2/Assign_19Assignvc/dense/kernel/Adam_1save_2/RestoreV2:19*
T0*
_output_shapes
:	0*"
_class
loc:@vc/dense/kernel*
use_locking(*
validate_shape(
³
save_2/Assign_20Assignvc/dense_1/biassave_2/RestoreV2:20*
_output_shapes	
:*
T0*"
_class
loc:@vc/dense_1/bias*
validate_shape(*
use_locking(
Έ
save_2/Assign_21Assignvc/dense_1/bias/Adamsave_2/RestoreV2:21*
use_locking(*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:*
T0
Ί
save_2/Assign_22Assignvc/dense_1/bias/Adam_1save_2/RestoreV2:22*
_output_shapes	
:*
validate_shape(*
T0*
use_locking(*"
_class
loc:@vc/dense_1/bias
Ό
save_2/Assign_23Assignvc/dense_1/kernelsave_2/RestoreV2:23*$
_class
loc:@vc/dense_1/kernel*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:

Α
save_2/Assign_24Assignvc/dense_1/kernel/Adamsave_2/RestoreV2:24*
T0*
use_locking(*
validate_shape(*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:

Γ
save_2/Assign_25Assignvc/dense_1/kernel/Adam_1save_2/RestoreV2:25* 
_output_shapes
:
*
validate_shape(*
use_locking(*$
_class
loc:@vc/dense_1/kernel*
T0
²
save_2/Assign_26Assignvc/dense_2/biassave_2/RestoreV2:26*
_output_shapes
:*
validate_shape(*
use_locking(*"
_class
loc:@vc/dense_2/bias*
T0
·
save_2/Assign_27Assignvc/dense_2/bias/Adamsave_2/RestoreV2:27*
T0*
use_locking(*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
validate_shape(
Ή
save_2/Assign_28Assignvc/dense_2/bias/Adam_1save_2/RestoreV2:28*
use_locking(*
validate_shape(*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
T0
»
save_2/Assign_29Assignvc/dense_2/kernelsave_2/RestoreV2:29*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(
ΐ
save_2/Assign_30Assignvc/dense_2/kernel/Adamsave_2/RestoreV2:30*
use_locking(*
T0*
validate_shape(*$
_class
loc:@vc/dense_2/kernel*
_output_shapes
:	
Β
save_2/Assign_31Assignvc/dense_2/kernel/Adam_1save_2/RestoreV2:31*
T0*
validate_shape(*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
_output_shapes
:	
―
save_2/Assign_32Assignvf/dense/biassave_2/RestoreV2:32*
use_locking(*
_output_shapes	
:*
T0*
validate_shape(* 
_class
loc:@vf/dense/bias
΄
save_2/Assign_33Assignvf/dense/bias/Adamsave_2/RestoreV2:33*
validate_shape(*
T0*
use_locking(* 
_class
loc:@vf/dense/bias*
_output_shapes	
:
Ά
save_2/Assign_34Assignvf/dense/bias/Adam_1save_2/RestoreV2:34*
T0* 
_class
loc:@vf/dense/bias*
validate_shape(*
use_locking(*
_output_shapes	
:
·
save_2/Assign_35Assignvf/dense/kernelsave_2/RestoreV2:35*
validate_shape(*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0*
use_locking(*
T0
Ό
save_2/Assign_36Assignvf/dense/kernel/Adamsave_2/RestoreV2:36*"
_class
loc:@vf/dense/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	0
Ύ
save_2/Assign_37Assignvf/dense/kernel/Adam_1save_2/RestoreV2:37*"
_class
loc:@vf/dense/kernel*
validate_shape(*
_output_shapes
:	0*
T0*
use_locking(
³
save_2/Assign_38Assignvf/dense_1/biassave_2/RestoreV2:38*
use_locking(*"
_class
loc:@vf/dense_1/bias*
T0*
validate_shape(*
_output_shapes	
:
Έ
save_2/Assign_39Assignvf/dense_1/bias/Adamsave_2/RestoreV2:39*
T0*
_output_shapes	
:*
validate_shape(*"
_class
loc:@vf/dense_1/bias*
use_locking(
Ί
save_2/Assign_40Assignvf/dense_1/bias/Adam_1save_2/RestoreV2:40*
use_locking(*
T0*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
validate_shape(
Ό
save_2/Assign_41Assignvf/dense_1/kernelsave_2/RestoreV2:41*
use_locking(*$
_class
loc:@vf/dense_1/kernel*
T0*
validate_shape(* 
_output_shapes
:

Α
save_2/Assign_42Assignvf/dense_1/kernel/Adamsave_2/RestoreV2:42* 
_output_shapes
:
*
use_locking(*
validate_shape(*$
_class
loc:@vf/dense_1/kernel*
T0
Γ
save_2/Assign_43Assignvf/dense_1/kernel/Adam_1save_2/RestoreV2:43*
use_locking(*
T0*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
validate_shape(
²
save_2/Assign_44Assignvf/dense_2/biassave_2/RestoreV2:44*
T0*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias*
use_locking(*
validate_shape(
·
save_2/Assign_45Assignvf/dense_2/bias/Adamsave_2/RestoreV2:45*
validate_shape(*
T0*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias*
use_locking(
Ή
save_2/Assign_46Assignvf/dense_2/bias/Adam_1save_2/RestoreV2:46*
use_locking(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0
»
save_2/Assign_47Assignvf/dense_2/kernelsave_2/RestoreV2:47*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
validate_shape(*
use_locking(*
T0
ΐ
save_2/Assign_48Assignvf/dense_2/kernel/Adamsave_2/RestoreV2:48*
T0*
use_locking(*
_output_shapes
:	*
validate_shape(*$
_class
loc:@vf/dense_2/kernel
Β
save_2/Assign_49Assignvf/dense_2/kernel/Adam_1save_2/RestoreV2:49*
validate_shape(*
use_locking(*
_output_shapes
:	*
T0*$
_class
loc:@vf/dense_2/kernel
Ζ
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_26^save_2/Assign_27^save_2/Assign_28^save_2/Assign_29^save_2/Assign_3^save_2/Assign_30^save_2/Assign_31^save_2/Assign_32^save_2/Assign_33^save_2/Assign_34^save_2/Assign_35^save_2/Assign_36^save_2/Assign_37^save_2/Assign_38^save_2/Assign_39^save_2/Assign_4^save_2/Assign_40^save_2/Assign_41^save_2/Assign_42^save_2/Assign_43^save_2/Assign_44^save_2/Assign_45^save_2/Assign_46^save_2/Assign_47^save_2/Assign_48^save_2/Assign_49^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
1
save_2/restore_allNoOp^save_2/restore_shard
[
save_3/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
_output_shapes
: *
shape: *
dtype0
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
dtype0*
_output_shapes
: *
shape: 

save_3/StringJoin/inputs_1Const*<
value3B1 B+_temp_1dfba37e28fb4137848f3ade0f69ed23/part*
dtype0*
_output_shapes
: 
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_3/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_3/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards*
_output_shapes
: 
α
save_3/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Ι
save_3/SaveV2/shape_and_slicesConst*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ͺ	
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_3/ShardedFilename
£
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency*

axis *
_output_shapes
:*
T0*
N

save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const*
delete_old_dirs(

save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency*
_output_shapes
: *
T0
δ
save_3/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Μ
!save_3/RestoreV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2*
dtype0

save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*@
dtypes6
422*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::
ͺ
save_3/AssignAssignbeta1_powersave_3/RestoreV2*
_output_shapes
: *
use_locking(*
validate_shape(*(
_class
loc:@penalty/penalty_param*
T0
¨
save_3/Assign_1Assignbeta1_power_1save_3/RestoreV2:1*
_output_shapes
: *
validate_shape(*
T0*
use_locking(* 
_class
loc:@vc/dense/bias
?
save_3/Assign_2Assignbeta2_powersave_3/RestoreV2:2*(
_class
loc:@penalty/penalty_param*
validate_shape(*
T0*
_output_shapes
: *
use_locking(
¨
save_3/Assign_3Assignbeta2_power_1save_3/RestoreV2:3*
use_locking(*
validate_shape(*
_output_shapes
: *
T0* 
_class
loc:@vc/dense/bias
Έ
save_3/Assign_4Assignpenalty/penalty_paramsave_3/RestoreV2:4*
T0*
validate_shape(*(
_class
loc:@penalty/penalty_param*
use_locking(*
_output_shapes
: 
½
save_3/Assign_5Assignpenalty/penalty_param/Adamsave_3/RestoreV2:5*
T0*
validate_shape(*(
_class
loc:@penalty/penalty_param*
use_locking(*
_output_shapes
: 
Ώ
save_3/Assign_6Assignpenalty/penalty_param/Adam_1save_3/RestoreV2:6*(
_class
loc:@penalty/penalty_param*
T0*
use_locking(*
_output_shapes
: *
validate_shape(
­
save_3/Assign_7Assignpi/dense/biassave_3/RestoreV2:7*
T0*
use_locking(*
_output_shapes	
:* 
_class
loc:@pi/dense/bias*
validate_shape(
΅
save_3/Assign_8Assignpi/dense/kernelsave_3/RestoreV2:8*"
_class
loc:@pi/dense/kernel*
use_locking(*
_output_shapes
:	0*
validate_shape(*
T0
±
save_3/Assign_9Assignpi/dense_1/biassave_3/RestoreV2:9*
T0*
use_locking(*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes	
:
Ό
save_3/Assign_10Assignpi/dense_1/kernelsave_3/RestoreV2:10* 
_output_shapes
:
*
validate_shape(*$
_class
loc:@pi/dense_1/kernel*
use_locking(*
T0
²
save_3/Assign_11Assignpi/dense_2/biassave_3/RestoreV2:11*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
use_locking(*
validate_shape(*
T0
»
save_3/Assign_12Assignpi/dense_2/kernelsave_3/RestoreV2:12*
T0*
use_locking(*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:	*
validate_shape(
¨
save_3/Assign_13Assign
pi/log_stdsave_3/RestoreV2:13*
_class
loc:@pi/log_std*
T0*
validate_shape(*
use_locking(*
_output_shapes
:
―
save_3/Assign_14Assignvc/dense/biassave_3/RestoreV2:14*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0* 
_class
loc:@vc/dense/bias
΄
save_3/Assign_15Assignvc/dense/bias/Adamsave_3/RestoreV2:15*
validate_shape(*
_output_shapes	
:* 
_class
loc:@vc/dense/bias*
use_locking(*
T0
Ά
save_3/Assign_16Assignvc/dense/bias/Adam_1save_3/RestoreV2:16*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:* 
_class
loc:@vc/dense/bias
·
save_3/Assign_17Assignvc/dense/kernelsave_3/RestoreV2:17*"
_class
loc:@vc/dense/kernel*
T0*
_output_shapes
:	0*
use_locking(*
validate_shape(
Ό
save_3/Assign_18Assignvc/dense/kernel/Adamsave_3/RestoreV2:18*
validate_shape(*
_output_shapes
:	0*
T0*
use_locking(*"
_class
loc:@vc/dense/kernel
Ύ
save_3/Assign_19Assignvc/dense/kernel/Adam_1save_3/RestoreV2:19*
_output_shapes
:	0*
use_locking(*
validate_shape(*"
_class
loc:@vc/dense/kernel*
T0
³
save_3/Assign_20Assignvc/dense_1/biassave_3/RestoreV2:20*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
T0*
use_locking(*
_output_shapes	
:
Έ
save_3/Assign_21Assignvc/dense_1/bias/Adamsave_3/RestoreV2:21*
validate_shape(*
use_locking(*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:*
T0
Ί
save_3/Assign_22Assignvc/dense_1/bias/Adam_1save_3/RestoreV2:22*
T0*
use_locking(*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:
Ό
save_3/Assign_23Assignvc/dense_1/kernelsave_3/RestoreV2:23*
validate_shape(* 
_output_shapes
:
*
T0*$
_class
loc:@vc/dense_1/kernel*
use_locking(
Α
save_3/Assign_24Assignvc/dense_1/kernel/Adamsave_3/RestoreV2:24* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel*
validate_shape(*
use_locking(*
T0
Γ
save_3/Assign_25Assignvc/dense_1/kernel/Adam_1save_3/RestoreV2:25*
T0* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel*
use_locking(*
validate_shape(
²
save_3/Assign_26Assignvc/dense_2/biassave_3/RestoreV2:26*"
_class
loc:@vc/dense_2/bias*
validate_shape(*
_output_shapes
:*
T0*
use_locking(
·
save_3/Assign_27Assignvc/dense_2/bias/Adamsave_3/RestoreV2:27*
use_locking(*
_output_shapes
:*
validate_shape(*
T0*"
_class
loc:@vc/dense_2/bias
Ή
save_3/Assign_28Assignvc/dense_2/bias/Adam_1save_3/RestoreV2:28*
T0*
validate_shape(*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
use_locking(
»
save_3/Assign_29Assignvc/dense_2/kernelsave_3/RestoreV2:29*
_output_shapes
:	*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
T0*
validate_shape(
ΐ
save_3/Assign_30Assignvc/dense_2/kernel/Adamsave_3/RestoreV2:30*
T0*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
validate_shape(*
_output_shapes
:	
Β
save_3/Assign_31Assignvc/dense_2/kernel/Adam_1save_3/RestoreV2:31*
_output_shapes
:	*
use_locking(*
validate_shape(*
T0*$
_class
loc:@vc/dense_2/kernel
―
save_3/Assign_32Assignvf/dense/biassave_3/RestoreV2:32*
use_locking(*
T0*
validate_shape(* 
_class
loc:@vf/dense/bias*
_output_shapes	
:
΄
save_3/Assign_33Assignvf/dense/bias/Adamsave_3/RestoreV2:33* 
_class
loc:@vf/dense/bias*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0
Ά
save_3/Assign_34Assignvf/dense/bias/Adam_1save_3/RestoreV2:34*
use_locking(*
validate_shape(* 
_class
loc:@vf/dense/bias*
T0*
_output_shapes	
:
·
save_3/Assign_35Assignvf/dense/kernelsave_3/RestoreV2:35*
use_locking(*
_output_shapes
:	0*
T0*"
_class
loc:@vf/dense/kernel*
validate_shape(
Ό
save_3/Assign_36Assignvf/dense/kernel/Adamsave_3/RestoreV2:36*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0*
T0*
validate_shape(*
use_locking(
Ύ
save_3/Assign_37Assignvf/dense/kernel/Adam_1save_3/RestoreV2:37*
use_locking(*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
T0*
validate_shape(
³
save_3/Assign_38Assignvf/dense_1/biassave_3/RestoreV2:38*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias
Έ
save_3/Assign_39Assignvf/dense_1/bias/Adamsave_3/RestoreV2:39*"
_class
loc:@vf/dense_1/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:
Ί
save_3/Assign_40Assignvf/dense_1/bias/Adam_1save_3/RestoreV2:40*
use_locking(*
validate_shape(*
T0*"
_class
loc:@vf/dense_1/bias*
_output_shapes	
:
Ό
save_3/Assign_41Assignvf/dense_1/kernelsave_3/RestoreV2:41*
validate_shape(* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel*
T0*
use_locking(
Α
save_3/Assign_42Assignvf/dense_1/kernel/Adamsave_3/RestoreV2:42*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel
Γ
save_3/Assign_43Assignvf/dense_1/kernel/Adam_1save_3/RestoreV2:43*
validate_shape(*$
_class
loc:@vf/dense_1/kernel*
use_locking(* 
_output_shapes
:
*
T0
²
save_3/Assign_44Assignvf/dense_2/biassave_3/RestoreV2:44*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
T0*
_output_shapes
:*
use_locking(
·
save_3/Assign_45Assignvf/dense_2/bias/Adamsave_3/RestoreV2:45*"
_class
loc:@vf/dense_2/bias*
validate_shape(*
T0*
_output_shapes
:*
use_locking(
Ή
save_3/Assign_46Assignvf/dense_2/bias/Adam_1save_3/RestoreV2:46*
_output_shapes
:*
T0*"
_class
loc:@vf/dense_2/bias*
use_locking(*
validate_shape(
»
save_3/Assign_47Assignvf/dense_2/kernelsave_3/RestoreV2:47*
T0*
validate_shape(*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	
ΐ
save_3/Assign_48Assignvf/dense_2/kernel/Adamsave_3/RestoreV2:48*
validate_shape(*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
T0*
_output_shapes
:	
Β
save_3/Assign_49Assignvf/dense_2/kernel/Adam_1save_3/RestoreV2:49*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(
Ζ
save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_2^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_27^save_3/Assign_28^save_3/Assign_29^save_3/Assign_3^save_3/Assign_30^save_3/Assign_31^save_3/Assign_32^save_3/Assign_33^save_3/Assign_34^save_3/Assign_35^save_3/Assign_36^save_3/Assign_37^save_3/Assign_38^save_3/Assign_39^save_3/Assign_4^save_3/Assign_40^save_3/Assign_41^save_3/Assign_42^save_3/Assign_43^save_3/Assign_44^save_3/Assign_45^save_3/Assign_46^save_3/Assign_47^save_3/Assign_48^save_3/Assign_49^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9
1
save_3/restore_allNoOp^save_3/restore_shard
[
save_4/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
r
save_4/filenamePlaceholderWithDefaultsave_4/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_4/ConstPlaceholderWithDefaultsave_4/filename*
dtype0*
shape: *
_output_shapes
: 

save_4/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_16dea15095c04105a6f5a5a3ca6d4e4a/part*
_output_shapes
: 
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
S
save_4/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_4/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards*
_output_shapes
: 
α
save_4/SaveV2/tensor_namesConst*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0
Ι
save_4/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
ͺ	
save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_4/ShardedFilename
£
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilename^save_4/control_dependency*

axis *
N*
_output_shapes
:*
T0

save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const*
delete_old_dirs(

save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency*
T0*
_output_shapes
: 
δ
save_4/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Μ
!save_4/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
ͺ
save_4/AssignAssignbeta1_powersave_4/RestoreV2*(
_class
loc:@penalty/penalty_param*
use_locking(*
validate_shape(*
_output_shapes
: *
T0
¨
save_4/Assign_1Assignbeta1_power_1save_4/RestoreV2:1*
T0* 
_class
loc:@vc/dense/bias*
use_locking(*
validate_shape(*
_output_shapes
: 
?
save_4/Assign_2Assignbeta2_powersave_4/RestoreV2:2*
T0*
validate_shape(*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
use_locking(
¨
save_4/Assign_3Assignbeta2_power_1save_4/RestoreV2:3*
_output_shapes
: *
use_locking(*
validate_shape(* 
_class
loc:@vc/dense/bias*
T0
Έ
save_4/Assign_4Assignpenalty/penalty_paramsave_4/RestoreV2:4*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
use_locking(*
validate_shape(*
T0
½
save_4/Assign_5Assignpenalty/penalty_param/Adamsave_4/RestoreV2:5*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
use_locking(*
T0*
validate_shape(
Ώ
save_4/Assign_6Assignpenalty/penalty_param/Adam_1save_4/RestoreV2:6*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
­
save_4/Assign_7Assignpi/dense/biassave_4/RestoreV2:7*
use_locking(*
validate_shape(*
_output_shapes	
:* 
_class
loc:@pi/dense/bias*
T0
΅
save_4/Assign_8Assignpi/dense/kernelsave_4/RestoreV2:8*
validate_shape(*"
_class
loc:@pi/dense/kernel*
use_locking(*
T0*
_output_shapes
:	0
±
save_4/Assign_9Assignpi/dense_1/biassave_4/RestoreV2:9*"
_class
loc:@pi/dense_1/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:
Ό
save_4/Assign_10Assignpi/dense_1/kernelsave_4/RestoreV2:10*
use_locking(*$
_class
loc:@pi/dense_1/kernel* 
_output_shapes
:
*
T0*
validate_shape(
²
save_4/Assign_11Assignpi/dense_2/biassave_4/RestoreV2:11*
T0*
use_locking(*
validate_shape(*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias
»
save_4/Assign_12Assignpi/dense_2/kernelsave_4/RestoreV2:12*$
_class
loc:@pi/dense_2/kernel*
T0*
validate_shape(*
_output_shapes
:	*
use_locking(
¨
save_4/Assign_13Assign
pi/log_stdsave_4/RestoreV2:13*
_class
loc:@pi/log_std*
_output_shapes
:*
use_locking(*
validate_shape(*
T0
―
save_4/Assign_14Assignvc/dense/biassave_4/RestoreV2:14*
validate_shape(*
use_locking(*
T0* 
_class
loc:@vc/dense/bias*
_output_shapes	
:
΄
save_4/Assign_15Assignvc/dense/bias/Adamsave_4/RestoreV2:15*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(* 
_class
loc:@vc/dense/bias
Ά
save_4/Assign_16Assignvc/dense/bias/Adam_1save_4/RestoreV2:16*
use_locking(* 
_class
loc:@vc/dense/bias*
_output_shapes	
:*
validate_shape(*
T0
·
save_4/Assign_17Assignvc/dense/kernelsave_4/RestoreV2:17*
_output_shapes
:	0*"
_class
loc:@vc/dense/kernel*
validate_shape(*
T0*
use_locking(
Ό
save_4/Assign_18Assignvc/dense/kernel/Adamsave_4/RestoreV2:18*
use_locking(*
_output_shapes
:	0*
validate_shape(*
T0*"
_class
loc:@vc/dense/kernel
Ύ
save_4/Assign_19Assignvc/dense/kernel/Adam_1save_4/RestoreV2:19*
validate_shape(*
_output_shapes
:	0*
T0*
use_locking(*"
_class
loc:@vc/dense/kernel
³
save_4/Assign_20Assignvc/dense_1/biassave_4/RestoreV2:20*
T0*"
_class
loc:@vc/dense_1/bias*
validate_shape(*
use_locking(*
_output_shapes	
:
Έ
save_4/Assign_21Assignvc/dense_1/bias/Adamsave_4/RestoreV2:21*
T0*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:*
validate_shape(*
use_locking(
Ί
save_4/Assign_22Assignvc/dense_1/bias/Adam_1save_4/RestoreV2:22*
T0*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
use_locking(*
_output_shapes	
:
Ό
save_4/Assign_23Assignvc/dense_1/kernelsave_4/RestoreV2:23* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel*
validate_shape(*
use_locking(*
T0
Α
save_4/Assign_24Assignvc/dense_1/kernel/Adamsave_4/RestoreV2:24*$
_class
loc:@vc/dense_1/kernel*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:

Γ
save_4/Assign_25Assignvc/dense_1/kernel/Adam_1save_4/RestoreV2:25*
use_locking(*
validate_shape(* 
_output_shapes
:
*
T0*$
_class
loc:@vc/dense_1/kernel
²
save_4/Assign_26Assignvc/dense_2/biassave_4/RestoreV2:26*
use_locking(*
validate_shape(*
_output_shapes
:*
T0*"
_class
loc:@vc/dense_2/bias
·
save_4/Assign_27Assignvc/dense_2/bias/Adamsave_4/RestoreV2:27*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
use_locking(*
T0*
validate_shape(
Ή
save_4/Assign_28Assignvc/dense_2/bias/Adam_1save_4/RestoreV2:28*"
_class
loc:@vc/dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes
:*
T0
»
save_4/Assign_29Assignvc/dense_2/kernelsave_4/RestoreV2:29*
_output_shapes
:	*
use_locking(*
T0*
validate_shape(*$
_class
loc:@vc/dense_2/kernel
ΐ
save_4/Assign_30Assignvc/dense_2/kernel/Adamsave_4/RestoreV2:30*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
T0*
_output_shapes
:	*
validate_shape(
Β
save_4/Assign_31Assignvc/dense_2/kernel/Adam_1save_4/RestoreV2:31*
T0*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	
―
save_4/Assign_32Assignvf/dense/biassave_4/RestoreV2:32*
_output_shapes	
:*
use_locking(*
T0* 
_class
loc:@vf/dense/bias*
validate_shape(
΄
save_4/Assign_33Assignvf/dense/bias/Adamsave_4/RestoreV2:33*
use_locking(*
T0* 
_class
loc:@vf/dense/bias*
_output_shapes	
:*
validate_shape(
Ά
save_4/Assign_34Assignvf/dense/bias/Adam_1save_4/RestoreV2:34*
validate_shape(*
_output_shapes	
:*
use_locking(* 
_class
loc:@vf/dense/bias*
T0
·
save_4/Assign_35Assignvf/dense/kernelsave_4/RestoreV2:35*
_output_shapes
:	0*
validate_shape(*"
_class
loc:@vf/dense/kernel*
T0*
use_locking(
Ό
save_4/Assign_36Assignvf/dense/kernel/Adamsave_4/RestoreV2:36*
use_locking(*
T0*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0*
validate_shape(
Ύ
save_4/Assign_37Assignvf/dense/kernel/Adam_1save_4/RestoreV2:37*"
_class
loc:@vf/dense/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	0*
T0
³
save_4/Assign_38Assignvf/dense_1/biassave_4/RestoreV2:38*
use_locking(*"
_class
loc:@vf/dense_1/bias*
T0*
validate_shape(*
_output_shapes	
:
Έ
save_4/Assign_39Assignvf/dense_1/bias/Adamsave_4/RestoreV2:39*
use_locking(*"
_class
loc:@vf/dense_1/bias*
T0*
validate_shape(*
_output_shapes	
:
Ί
save_4/Assign_40Assignvf/dense_1/bias/Adam_1save_4/RestoreV2:40*
T0*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
use_locking(*
validate_shape(
Ό
save_4/Assign_41Assignvf/dense_1/kernelsave_4/RestoreV2:41* 
_output_shapes
:
*
validate_shape(*
T0*$
_class
loc:@vf/dense_1/kernel*
use_locking(
Α
save_4/Assign_42Assignvf/dense_1/kernel/Adamsave_4/RestoreV2:42* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel*
validate_shape(*
use_locking(*
T0
Γ
save_4/Assign_43Assignvf/dense_1/kernel/Adam_1save_4/RestoreV2:43* 
_output_shapes
:
*
T0*
use_locking(*
validate_shape(*$
_class
loc:@vf/dense_1/kernel
²
save_4/Assign_44Assignvf/dense_2/biassave_4/RestoreV2:44*
use_locking(*
validate_shape(*
_output_shapes
:*
T0*"
_class
loc:@vf/dense_2/bias
·
save_4/Assign_45Assignvf/dense_2/bias/Adamsave_4/RestoreV2:45*
T0*
validate_shape(*
_output_shapes
:*
use_locking(*"
_class
loc:@vf/dense_2/bias
Ή
save_4/Assign_46Assignvf/dense_2/bias/Adam_1save_4/RestoreV2:46*
T0*
use_locking(*
validate_shape(*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias
»
save_4/Assign_47Assignvf/dense_2/kernelsave_4/RestoreV2:47*
_output_shapes
:	*
T0*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
use_locking(
ΐ
save_4/Assign_48Assignvf/dense_2/kernel/Adamsave_4/RestoreV2:48*
T0*
validate_shape(*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
use_locking(
Β
save_4/Assign_49Assignvf/dense_2/kernel/Adam_1save_4/RestoreV2:49*$
_class
loc:@vf/dense_2/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	
Ζ
save_4/restore_shardNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_10^save_4/Assign_11^save_4/Assign_12^save_4/Assign_13^save_4/Assign_14^save_4/Assign_15^save_4/Assign_16^save_4/Assign_17^save_4/Assign_18^save_4/Assign_19^save_4/Assign_2^save_4/Assign_20^save_4/Assign_21^save_4/Assign_22^save_4/Assign_23^save_4/Assign_24^save_4/Assign_25^save_4/Assign_26^save_4/Assign_27^save_4/Assign_28^save_4/Assign_29^save_4/Assign_3^save_4/Assign_30^save_4/Assign_31^save_4/Assign_32^save_4/Assign_33^save_4/Assign_34^save_4/Assign_35^save_4/Assign_36^save_4/Assign_37^save_4/Assign_38^save_4/Assign_39^save_4/Assign_4^save_4/Assign_40^save_4/Assign_41^save_4/Assign_42^save_4/Assign_43^save_4/Assign_44^save_4/Assign_45^save_4/Assign_46^save_4/Assign_47^save_4/Assign_48^save_4/Assign_49^save_4/Assign_5^save_4/Assign_6^save_4/Assign_7^save_4/Assign_8^save_4/Assign_9
1
save_4/restore_allNoOp^save_4/restore_shard
[
save_5/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
r
save_5/filenamePlaceholderWithDefaultsave_5/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_5/ConstPlaceholderWithDefaultsave_5/filename*
_output_shapes
: *
shape: *
dtype0

save_5/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_0eeb34c3030c47e281793ebc3a9b1b91/part
{
save_5/StringJoin
StringJoinsave_5/Constsave_5/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_5/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_5/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 

save_5/ShardedFilenameShardedFilenamesave_5/StringJoinsave_5/ShardedFilename/shardsave_5/num_shards*
_output_shapes
: 
α
save_5/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Ι
save_5/SaveV2/shape_and_slicesConst*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ͺ	
save_5/SaveV2SaveV2save_5/ShardedFilenamesave_5/SaveV2/tensor_namessave_5/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_5/control_dependencyIdentitysave_5/ShardedFilename^save_5/SaveV2*)
_class
loc:@save_5/ShardedFilename*
_output_shapes
: *
T0
£
-save_5/MergeV2Checkpoints/checkpoint_prefixesPacksave_5/ShardedFilename^save_5/control_dependency*
T0*
_output_shapes
:*

axis *
N

save_5/MergeV2CheckpointsMergeV2Checkpoints-save_5/MergeV2Checkpoints/checkpoint_prefixessave_5/Const*
delete_old_dirs(

save_5/IdentityIdentitysave_5/Const^save_5/MergeV2Checkpoints^save_5/control_dependency*
_output_shapes
: *
T0
δ
save_5/RestoreV2/tensor_namesConst*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:2
Μ
!save_5/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_5/RestoreV2	RestoreV2save_5/Constsave_5/RestoreV2/tensor_names!save_5/RestoreV2/shape_and_slices*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
ͺ
save_5/AssignAssignbeta1_powersave_5/RestoreV2*
validate_shape(*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
T0*
use_locking(
¨
save_5/Assign_1Assignbeta1_power_1save_5/RestoreV2:1*
validate_shape(*
use_locking(*
_output_shapes
: * 
_class
loc:@vc/dense/bias*
T0
?
save_5/Assign_2Assignbeta2_powersave_5/RestoreV2:2*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
use_locking(*
validate_shape(*
T0
¨
save_5/Assign_3Assignbeta2_power_1save_5/RestoreV2:3*
use_locking(*
T0* 
_class
loc:@vc/dense/bias*
validate_shape(*
_output_shapes
: 
Έ
save_5/Assign_4Assignpenalty/penalty_paramsave_5/RestoreV2:4*
T0*
validate_shape(*
use_locking(*(
_class
loc:@penalty/penalty_param*
_output_shapes
: 
½
save_5/Assign_5Assignpenalty/penalty_param/Adamsave_5/RestoreV2:5*
_output_shapes
: *
use_locking(*
validate_shape(*(
_class
loc:@penalty/penalty_param*
T0
Ώ
save_5/Assign_6Assignpenalty/penalty_param/Adam_1save_5/RestoreV2:6*
validate_shape(*
use_locking(*(
_class
loc:@penalty/penalty_param*
T0*
_output_shapes
: 
­
save_5/Assign_7Assignpi/dense/biassave_5/RestoreV2:7*
use_locking(* 
_class
loc:@pi/dense/bias*
T0*
validate_shape(*
_output_shapes	
:
΅
save_5/Assign_8Assignpi/dense/kernelsave_5/RestoreV2:8*
validate_shape(*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	0*
use_locking(*
T0
±
save_5/Assign_9Assignpi/dense_1/biassave_5/RestoreV2:9*
_output_shapes	
:*
T0*"
_class
loc:@pi/dense_1/bias*
use_locking(*
validate_shape(
Ό
save_5/Assign_10Assignpi/dense_1/kernelsave_5/RestoreV2:10*
validate_shape(* 
_output_shapes
:
*$
_class
loc:@pi/dense_1/kernel*
use_locking(*
T0
²
save_5/Assign_11Assignpi/dense_2/biassave_5/RestoreV2:11*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(
»
save_5/Assign_12Assignpi/dense_2/kernelsave_5/RestoreV2:12*
T0*
use_locking(*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:	*
validate_shape(
¨
save_5/Assign_13Assign
pi/log_stdsave_5/RestoreV2:13*
_class
loc:@pi/log_std*
T0*
validate_shape(*
use_locking(*
_output_shapes
:
―
save_5/Assign_14Assignvc/dense/biassave_5/RestoreV2:14*
T0* 
_class
loc:@vc/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
΄
save_5/Assign_15Assignvc/dense/bias/Adamsave_5/RestoreV2:15*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(* 
_class
loc:@vc/dense/bias
Ά
save_5/Assign_16Assignvc/dense/bias/Adam_1save_5/RestoreV2:16*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:* 
_class
loc:@vc/dense/bias
·
save_5/Assign_17Assignvc/dense/kernelsave_5/RestoreV2:17*
_output_shapes
:	0*
validate_shape(*
use_locking(*
T0*"
_class
loc:@vc/dense/kernel
Ό
save_5/Assign_18Assignvc/dense/kernel/Adamsave_5/RestoreV2:18*
use_locking(*
validate_shape(*
_output_shapes
:	0*
T0*"
_class
loc:@vc/dense/kernel
Ύ
save_5/Assign_19Assignvc/dense/kernel/Adam_1save_5/RestoreV2:19*
validate_shape(*"
_class
loc:@vc/dense/kernel*
use_locking(*
T0*
_output_shapes
:	0
³
save_5/Assign_20Assignvc/dense_1/biassave_5/RestoreV2:20*"
_class
loc:@vc/dense_1/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:
Έ
save_5/Assign_21Assignvc/dense_1/bias/Adamsave_5/RestoreV2:21*"
_class
loc:@vc/dense_1/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:
Ί
save_5/Assign_22Assignvc/dense_1/bias/Adam_1save_5/RestoreV2:22*
use_locking(*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
T0*
validate_shape(
Ό
save_5/Assign_23Assignvc/dense_1/kernelsave_5/RestoreV2:23*$
_class
loc:@vc/dense_1/kernel*
validate_shape(*
T0* 
_output_shapes
:
*
use_locking(
Α
save_5/Assign_24Assignvc/dense_1/kernel/Adamsave_5/RestoreV2:24*$
_class
loc:@vc/dense_1/kernel*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:

Γ
save_5/Assign_25Assignvc/dense_1/kernel/Adam_1save_5/RestoreV2:25*
use_locking(*
validate_shape(*
T0*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:

²
save_5/Assign_26Assignvc/dense_2/biassave_5/RestoreV2:26*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*"
_class
loc:@vc/dense_2/bias
·
save_5/Assign_27Assignvc/dense_2/bias/Adamsave_5/RestoreV2:27*
use_locking(*
T0*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
validate_shape(
Ή
save_5/Assign_28Assignvc/dense_2/bias/Adam_1save_5/RestoreV2:28*
validate_shape(*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:*
T0*
use_locking(
»
save_5/Assign_29Assignvc/dense_2/kernelsave_5/RestoreV2:29*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	*$
_class
loc:@vc/dense_2/kernel
ΐ
save_5/Assign_30Assignvc/dense_2/kernel/Adamsave_5/RestoreV2:30*
_output_shapes
:	*
validate_shape(*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
T0
Β
save_5/Assign_31Assignvc/dense_2/kernel/Adam_1save_5/RestoreV2:31*
_output_shapes
:	*
validate_shape(*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
T0
―
save_5/Assign_32Assignvf/dense/biassave_5/RestoreV2:32* 
_class
loc:@vf/dense/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:
΄
save_5/Assign_33Assignvf/dense/bias/Adamsave_5/RestoreV2:33*
T0*
validate_shape(*
use_locking(* 
_class
loc:@vf/dense/bias*
_output_shapes	
:
Ά
save_5/Assign_34Assignvf/dense/bias/Adam_1save_5/RestoreV2:34*
T0*
use_locking(* 
_class
loc:@vf/dense/bias*
validate_shape(*
_output_shapes	
:
·
save_5/Assign_35Assignvf/dense/kernelsave_5/RestoreV2:35*
validate_shape(*"
_class
loc:@vf/dense/kernel*
use_locking(*
T0*
_output_shapes
:	0
Ό
save_5/Assign_36Assignvf/dense/kernel/Adamsave_5/RestoreV2:36*
validate_shape(*"
_class
loc:@vf/dense/kernel*
T0*
use_locking(*
_output_shapes
:	0
Ύ
save_5/Assign_37Assignvf/dense/kernel/Adam_1save_5/RestoreV2:37*
_output_shapes
:	0*
use_locking(*
validate_shape(*
T0*"
_class
loc:@vf/dense/kernel
³
save_5/Assign_38Assignvf/dense_1/biassave_5/RestoreV2:38*"
_class
loc:@vf/dense_1/bias*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(
Έ
save_5/Assign_39Assignvf/dense_1/bias/Adamsave_5/RestoreV2:39*"
_class
loc:@vf/dense_1/bias*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0
Ί
save_5/Assign_40Assignvf/dense_1/bias/Adam_1save_5/RestoreV2:40*
validate_shape(*"
_class
loc:@vf/dense_1/bias*
_output_shapes	
:*
T0*
use_locking(
Ό
save_5/Assign_41Assignvf/dense_1/kernelsave_5/RestoreV2:41*
validate_shape(*
T0*
use_locking(* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel
Α
save_5/Assign_42Assignvf/dense_1/kernel/Adamsave_5/RestoreV2:42*
T0*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
use_locking(*
validate_shape(
Γ
save_5/Assign_43Assignvf/dense_1/kernel/Adam_1save_5/RestoreV2:43*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel
²
save_5/Assign_44Assignvf/dense_2/biassave_5/RestoreV2:44*"
_class
loc:@vf/dense_2/bias*
validate_shape(*
_output_shapes
:*
T0*
use_locking(
·
save_5/Assign_45Assignvf/dense_2/bias/Adamsave_5/RestoreV2:45*
_output_shapes
:*
T0*"
_class
loc:@vf/dense_2/bias*
validate_shape(*
use_locking(
Ή
save_5/Assign_46Assignvf/dense_2/bias/Adam_1save_5/RestoreV2:46*
_output_shapes
:*
T0*
validate_shape(*
use_locking(*"
_class
loc:@vf/dense_2/bias
»
save_5/Assign_47Assignvf/dense_2/kernelsave_5/RestoreV2:47*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	*$
_class
loc:@vf/dense_2/kernel
ΐ
save_5/Assign_48Assignvf/dense_2/kernel/Adamsave_5/RestoreV2:48*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*$
_class
loc:@vf/dense_2/kernel
Β
save_5/Assign_49Assignvf/dense_2/kernel/Adam_1save_5/RestoreV2:49*
use_locking(*
validate_shape(*
_output_shapes
:	*$
_class
loc:@vf/dense_2/kernel*
T0
Ζ
save_5/restore_shardNoOp^save_5/Assign^save_5/Assign_1^save_5/Assign_10^save_5/Assign_11^save_5/Assign_12^save_5/Assign_13^save_5/Assign_14^save_5/Assign_15^save_5/Assign_16^save_5/Assign_17^save_5/Assign_18^save_5/Assign_19^save_5/Assign_2^save_5/Assign_20^save_5/Assign_21^save_5/Assign_22^save_5/Assign_23^save_5/Assign_24^save_5/Assign_25^save_5/Assign_26^save_5/Assign_27^save_5/Assign_28^save_5/Assign_29^save_5/Assign_3^save_5/Assign_30^save_5/Assign_31^save_5/Assign_32^save_5/Assign_33^save_5/Assign_34^save_5/Assign_35^save_5/Assign_36^save_5/Assign_37^save_5/Assign_38^save_5/Assign_39^save_5/Assign_4^save_5/Assign_40^save_5/Assign_41^save_5/Assign_42^save_5/Assign_43^save_5/Assign_44^save_5/Assign_45^save_5/Assign_46^save_5/Assign_47^save_5/Assign_48^save_5/Assign_49^save_5/Assign_5^save_5/Assign_6^save_5/Assign_7^save_5/Assign_8^save_5/Assign_9
1
save_5/restore_allNoOp^save_5/restore_shard
[
save_6/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_6/filenamePlaceholderWithDefaultsave_6/filename/input*
_output_shapes
: *
shape: *
dtype0
i
save_6/ConstPlaceholderWithDefaultsave_6/filename*
dtype0*
_output_shapes
: *
shape: 

save_6/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_a507d27529564919826a07a14df2b425/part*
_output_shapes
: 
{
save_6/StringJoin
StringJoinsave_6/Constsave_6/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_6/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
^
save_6/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 

save_6/ShardedFilenameShardedFilenamesave_6/StringJoinsave_6/ShardedFilename/shardsave_6/num_shards*
_output_shapes
: 
α
save_6/SaveV2/tensor_namesConst*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0
Ι
save_6/SaveV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2*
dtype0
ͺ	
save_6/SaveV2SaveV2save_6/ShardedFilenamesave_6/SaveV2/tensor_namessave_6/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_6/control_dependencyIdentitysave_6/ShardedFilename^save_6/SaveV2*
T0*)
_class
loc:@save_6/ShardedFilename*
_output_shapes
: 
£
-save_6/MergeV2Checkpoints/checkpoint_prefixesPacksave_6/ShardedFilename^save_6/control_dependency*
_output_shapes
:*
T0*

axis *
N

save_6/MergeV2CheckpointsMergeV2Checkpoints-save_6/MergeV2Checkpoints/checkpoint_prefixessave_6/Const*
delete_old_dirs(

save_6/IdentityIdentitysave_6/Const^save_6/MergeV2Checkpoints^save_6/control_dependency*
_output_shapes
: *
T0
δ
save_6/RestoreV2/tensor_namesConst*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0
Μ
!save_6/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_6/RestoreV2	RestoreV2save_6/Constsave_6/RestoreV2/tensor_names!save_6/RestoreV2/shape_and_slices*@
dtypes6
422*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::
ͺ
save_6/AssignAssignbeta1_powersave_6/RestoreV2*(
_class
loc:@penalty/penalty_param*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
¨
save_6/Assign_1Assignbeta1_power_1save_6/RestoreV2:1*
T0*
_output_shapes
: *
use_locking(* 
_class
loc:@vc/dense/bias*
validate_shape(
?
save_6/Assign_2Assignbeta2_powersave_6/RestoreV2:2*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*(
_class
loc:@penalty/penalty_param
¨
save_6/Assign_3Assignbeta2_power_1save_6/RestoreV2:3*
use_locking(* 
_class
loc:@vc/dense/bias*
validate_shape(*
_output_shapes
: *
T0
Έ
save_6/Assign_4Assignpenalty/penalty_paramsave_6/RestoreV2:4*
use_locking(*(
_class
loc:@penalty/penalty_param*
T0*
_output_shapes
: *
validate_shape(
½
save_6/Assign_5Assignpenalty/penalty_param/Adamsave_6/RestoreV2:5*
T0*
validate_shape(*
_output_shapes
: *
use_locking(*(
_class
loc:@penalty/penalty_param
Ώ
save_6/Assign_6Assignpenalty/penalty_param/Adam_1save_6/RestoreV2:6*
use_locking(*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
validate_shape(*
T0
­
save_6/Assign_7Assignpi/dense/biassave_6/RestoreV2:7*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(* 
_class
loc:@pi/dense/bias
΅
save_6/Assign_8Assignpi/dense/kernelsave_6/RestoreV2:8*"
_class
loc:@pi/dense/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	0
±
save_6/Assign_9Assignpi/dense_1/biassave_6/RestoreV2:9*
use_locking(*"
_class
loc:@pi/dense_1/bias*
_output_shapes	
:*
validate_shape(*
T0
Ό
save_6/Assign_10Assignpi/dense_1/kernelsave_6/RestoreV2:10*
T0* 
_output_shapes
:
*
validate_shape(*
use_locking(*$
_class
loc:@pi/dense_1/kernel
²
save_6/Assign_11Assignpi/dense_2/biassave_6/RestoreV2:11*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*"
_class
loc:@pi/dense_2/bias
»
save_6/Assign_12Assignpi/dense_2/kernelsave_6/RestoreV2:12*
validate_shape(*
T0*
use_locking(*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:	
¨
save_6/Assign_13Assign
pi/log_stdsave_6/RestoreV2:13*
use_locking(*
T0*
_output_shapes
:*
validate_shape(*
_class
loc:@pi/log_std
―
save_6/Assign_14Assignvc/dense/biassave_6/RestoreV2:14* 
_class
loc:@vc/dense/bias*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(
΄
save_6/Assign_15Assignvc/dense/bias/Adamsave_6/RestoreV2:15*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(* 
_class
loc:@vc/dense/bias
Ά
save_6/Assign_16Assignvc/dense/bias/Adam_1save_6/RestoreV2:16*
validate_shape(* 
_class
loc:@vc/dense/bias*
_output_shapes	
:*
T0*
use_locking(
·
save_6/Assign_17Assignvc/dense/kernelsave_6/RestoreV2:17*
validate_shape(*
_output_shapes
:	0*"
_class
loc:@vc/dense/kernel*
use_locking(*
T0
Ό
save_6/Assign_18Assignvc/dense/kernel/Adamsave_6/RestoreV2:18*
use_locking(*
_output_shapes
:	0*"
_class
loc:@vc/dense/kernel*
validate_shape(*
T0
Ύ
save_6/Assign_19Assignvc/dense/kernel/Adam_1save_6/RestoreV2:19*
_output_shapes
:	0*
validate_shape(*
use_locking(*
T0*"
_class
loc:@vc/dense/kernel
³
save_6/Assign_20Assignvc/dense_1/biassave_6/RestoreV2:20*"
_class
loc:@vc/dense_1/bias*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(
Έ
save_6/Assign_21Assignvc/dense_1/bias/Adamsave_6/RestoreV2:21*
_output_shapes	
:*
T0*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
use_locking(
Ί
save_6/Assign_22Assignvc/dense_1/bias/Adam_1save_6/RestoreV2:22*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0*"
_class
loc:@vc/dense_1/bias
Ό
save_6/Assign_23Assignvc/dense_1/kernelsave_6/RestoreV2:23*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
Α
save_6/Assign_24Assignvc/dense_1/kernel/Adamsave_6/RestoreV2:24*
T0*$
_class
loc:@vc/dense_1/kernel*
use_locking(* 
_output_shapes
:
*
validate_shape(
Γ
save_6/Assign_25Assignvc/dense_1/kernel/Adam_1save_6/RestoreV2:25*
validate_shape(*
use_locking(* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel*
T0
²
save_6/Assign_26Assignvc/dense_2/biassave_6/RestoreV2:26*
validate_shape(*
use_locking(*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:*
T0
·
save_6/Assign_27Assignvc/dense_2/bias/Adamsave_6/RestoreV2:27*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*"
_class
loc:@vc/dense_2/bias
Ή
save_6/Assign_28Assignvc/dense_2/bias/Adam_1save_6/RestoreV2:28*
use_locking(*
T0*"
_class
loc:@vc/dense_2/bias*
validate_shape(*
_output_shapes
:
»
save_6/Assign_29Assignvc/dense_2/kernelsave_6/RestoreV2:29*
_output_shapes
:	*
T0*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
validate_shape(
ΐ
save_6/Assign_30Assignvc/dense_2/kernel/Adamsave_6/RestoreV2:30*
T0*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	
Β
save_6/Assign_31Assignvc/dense_2/kernel/Adam_1save_6/RestoreV2:31*
_output_shapes
:	*
T0*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
validate_shape(
―
save_6/Assign_32Assignvf/dense/biassave_6/RestoreV2:32*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(* 
_class
loc:@vf/dense/bias
΄
save_6/Assign_33Assignvf/dense/bias/Adamsave_6/RestoreV2:33* 
_class
loc:@vf/dense/bias*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0
Ά
save_6/Assign_34Assignvf/dense/bias/Adam_1save_6/RestoreV2:34*
_output_shapes	
:* 
_class
loc:@vf/dense/bias*
T0*
validate_shape(*
use_locking(
·
save_6/Assign_35Assignvf/dense/kernelsave_6/RestoreV2:35*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0*
T0*
use_locking(*
validate_shape(
Ό
save_6/Assign_36Assignvf/dense/kernel/Adamsave_6/RestoreV2:36*
use_locking(*
_output_shapes
:	0*
T0*
validate_shape(*"
_class
loc:@vf/dense/kernel
Ύ
save_6/Assign_37Assignvf/dense/kernel/Adam_1save_6/RestoreV2:37*"
_class
loc:@vf/dense/kernel*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	0
³
save_6/Assign_38Assignvf/dense_1/biassave_6/RestoreV2:38*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(*"
_class
loc:@vf/dense_1/bias
Έ
save_6/Assign_39Assignvf/dense_1/bias/Adamsave_6/RestoreV2:39*
validate_shape(*"
_class
loc:@vf/dense_1/bias*
T0*
use_locking(*
_output_shapes	
:
Ί
save_6/Assign_40Assignvf/dense_1/bias/Adam_1save_6/RestoreV2:40*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*"
_class
loc:@vf/dense_1/bias
Ό
save_6/Assign_41Assignvf/dense_1/kernelsave_6/RestoreV2:41* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel*
validate_shape(*
use_locking(*
T0
Α
save_6/Assign_42Assignvf/dense_1/kernel/Adamsave_6/RestoreV2:42*
T0* 
_output_shapes
:
*
use_locking(*$
_class
loc:@vf/dense_1/kernel*
validate_shape(
Γ
save_6/Assign_43Assignvf/dense_1/kernel/Adam_1save_6/RestoreV2:43* 
_output_shapes
:
*
validate_shape(*$
_class
loc:@vf/dense_1/kernel*
use_locking(*
T0
²
save_6/Assign_44Assignvf/dense_2/biassave_6/RestoreV2:44*
_output_shapes
:*
use_locking(*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
T0
·
save_6/Assign_45Assignvf/dense_2/bias/Adamsave_6/RestoreV2:45*
use_locking(*
T0*
_output_shapes
:*
validate_shape(*"
_class
loc:@vf/dense_2/bias
Ή
save_6/Assign_46Assignvf/dense_2/bias/Adam_1save_6/RestoreV2:46*
T0*
use_locking(*
validate_shape(*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias
»
save_6/Assign_47Assignvf/dense_2/kernelsave_6/RestoreV2:47*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
T0*
use_locking(*
validate_shape(
ΐ
save_6/Assign_48Assignvf/dense_2/kernel/Adamsave_6/RestoreV2:48*
validate_shape(*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
T0*
_output_shapes
:	
Β
save_6/Assign_49Assignvf/dense_2/kernel/Adam_1save_6/RestoreV2:49*
use_locking(*
_output_shapes
:	*$
_class
loc:@vf/dense_2/kernel*
T0*
validate_shape(
Ζ
save_6/restore_shardNoOp^save_6/Assign^save_6/Assign_1^save_6/Assign_10^save_6/Assign_11^save_6/Assign_12^save_6/Assign_13^save_6/Assign_14^save_6/Assign_15^save_6/Assign_16^save_6/Assign_17^save_6/Assign_18^save_6/Assign_19^save_6/Assign_2^save_6/Assign_20^save_6/Assign_21^save_6/Assign_22^save_6/Assign_23^save_6/Assign_24^save_6/Assign_25^save_6/Assign_26^save_6/Assign_27^save_6/Assign_28^save_6/Assign_29^save_6/Assign_3^save_6/Assign_30^save_6/Assign_31^save_6/Assign_32^save_6/Assign_33^save_6/Assign_34^save_6/Assign_35^save_6/Assign_36^save_6/Assign_37^save_6/Assign_38^save_6/Assign_39^save_6/Assign_4^save_6/Assign_40^save_6/Assign_41^save_6/Assign_42^save_6/Assign_43^save_6/Assign_44^save_6/Assign_45^save_6/Assign_46^save_6/Assign_47^save_6/Assign_48^save_6/Assign_49^save_6/Assign_5^save_6/Assign_6^save_6/Assign_7^save_6/Assign_8^save_6/Assign_9
1
save_6/restore_allNoOp^save_6/restore_shard
[
save_7/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
r
save_7/filenamePlaceholderWithDefaultsave_7/filename/input*
_output_shapes
: *
shape: *
dtype0
i
save_7/ConstPlaceholderWithDefaultsave_7/filename*
shape: *
_output_shapes
: *
dtype0

save_7/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_50f63b533c4e4167820c7e7b9d0c5e1f/part
{
save_7/StringJoin
StringJoinsave_7/Constsave_7/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
S
save_7/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
^
save_7/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_7/ShardedFilenameShardedFilenamesave_7/StringJoinsave_7/ShardedFilename/shardsave_7/num_shards*
_output_shapes
: 
α
save_7/SaveV2/tensor_namesConst*
_output_shapes
:2*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Ι
save_7/SaveV2/shape_and_slicesConst*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ͺ	
save_7/SaveV2SaveV2save_7/ShardedFilenamesave_7/SaveV2/tensor_namessave_7/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_7/control_dependencyIdentitysave_7/ShardedFilename^save_7/SaveV2*)
_class
loc:@save_7/ShardedFilename*
T0*
_output_shapes
: 
£
-save_7/MergeV2Checkpoints/checkpoint_prefixesPacksave_7/ShardedFilename^save_7/control_dependency*
T0*
N*

axis *
_output_shapes
:

save_7/MergeV2CheckpointsMergeV2Checkpoints-save_7/MergeV2Checkpoints/checkpoint_prefixessave_7/Const*
delete_old_dirs(

save_7/IdentityIdentitysave_7/Const^save_7/MergeV2Checkpoints^save_7/control_dependency*
T0*
_output_shapes
: 
δ
save_7/RestoreV2/tensor_namesConst*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:2
Μ
!save_7/RestoreV2/shape_and_slicesConst*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_7/RestoreV2	RestoreV2save_7/Constsave_7/RestoreV2/tensor_names!save_7/RestoreV2/shape_and_slices*@
dtypes6
422*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::
ͺ
save_7/AssignAssignbeta1_powersave_7/RestoreV2*
_output_shapes
: *
use_locking(*
validate_shape(*(
_class
loc:@penalty/penalty_param*
T0
¨
save_7/Assign_1Assignbeta1_power_1save_7/RestoreV2:1*
validate_shape(*
use_locking(*
_output_shapes
: *
T0* 
_class
loc:@vc/dense/bias
?
save_7/Assign_2Assignbeta2_powersave_7/RestoreV2:2*(
_class
loc:@penalty/penalty_param*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
¨
save_7/Assign_3Assignbeta2_power_1save_7/RestoreV2:3*
use_locking(*
_output_shapes
: *
T0*
validate_shape(* 
_class
loc:@vc/dense/bias
Έ
save_7/Assign_4Assignpenalty/penalty_paramsave_7/RestoreV2:4*
T0*(
_class
loc:@penalty/penalty_param*
use_locking(*
_output_shapes
: *
validate_shape(
½
save_7/Assign_5Assignpenalty/penalty_param/Adamsave_7/RestoreV2:5*
use_locking(*
validate_shape(*
T0*(
_class
loc:@penalty/penalty_param*
_output_shapes
: 
Ώ
save_7/Assign_6Assignpenalty/penalty_param/Adam_1save_7/RestoreV2:6*
use_locking(*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
validate_shape(*
T0
­
save_7/Assign_7Assignpi/dense/biassave_7/RestoreV2:7*
validate_shape(*
use_locking(* 
_class
loc:@pi/dense/bias*
T0*
_output_shapes	
:
΅
save_7/Assign_8Assignpi/dense/kernelsave_7/RestoreV2:8*
validate_shape(*
T0*
use_locking(*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	0
±
save_7/Assign_9Assignpi/dense_1/biassave_7/RestoreV2:9*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0
Ό
save_7/Assign_10Assignpi/dense_1/kernelsave_7/RestoreV2:10* 
_output_shapes
:
*
use_locking(*
validate_shape(*
T0*$
_class
loc:@pi/dense_1/kernel
²
save_7/Assign_11Assignpi/dense_2/biassave_7/RestoreV2:11*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
use_locking(*
validate_shape(
»
save_7/Assign_12Assignpi/dense_2/kernelsave_7/RestoreV2:12*
validate_shape(*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:	*
T0*
use_locking(
¨
save_7/Assign_13Assign
pi/log_stdsave_7/RestoreV2:13*
use_locking(*
_class
loc:@pi/log_std*
_output_shapes
:*
validate_shape(*
T0
―
save_7/Assign_14Assignvc/dense/biassave_7/RestoreV2:14*
use_locking(*
validate_shape(* 
_class
loc:@vc/dense/bias*
T0*
_output_shapes	
:
΄
save_7/Assign_15Assignvc/dense/bias/Adamsave_7/RestoreV2:15*
use_locking(* 
_class
loc:@vc/dense/bias*
validate_shape(*
T0*
_output_shapes	
:
Ά
save_7/Assign_16Assignvc/dense/bias/Adam_1save_7/RestoreV2:16*
T0*
validate_shape(*
_output_shapes	
:* 
_class
loc:@vc/dense/bias*
use_locking(
·
save_7/Assign_17Assignvc/dense/kernelsave_7/RestoreV2:17*
T0*
use_locking(*
_output_shapes
:	0*
validate_shape(*"
_class
loc:@vc/dense/kernel
Ό
save_7/Assign_18Assignvc/dense/kernel/Adamsave_7/RestoreV2:18*
_output_shapes
:	0*
T0*
use_locking(*"
_class
loc:@vc/dense/kernel*
validate_shape(
Ύ
save_7/Assign_19Assignvc/dense/kernel/Adam_1save_7/RestoreV2:19*
use_locking(*
T0*
_output_shapes
:	0*"
_class
loc:@vc/dense/kernel*
validate_shape(
³
save_7/Assign_20Assignvc/dense_1/biassave_7/RestoreV2:20*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*"
_class
loc:@vc/dense_1/bias
Έ
save_7/Assign_21Assignvc/dense_1/bias/Adamsave_7/RestoreV2:21*"
_class
loc:@vc/dense_1/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:
Ί
save_7/Assign_22Assignvc/dense_1/bias/Adam_1save_7/RestoreV2:22*
T0*
validate_shape(*
use_locking(*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:
Ό
save_7/Assign_23Assignvc/dense_1/kernelsave_7/RestoreV2:23* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel*
validate_shape(*
use_locking(*
T0
Α
save_7/Assign_24Assignvc/dense_1/kernel/Adamsave_7/RestoreV2:24*
validate_shape(* 
_output_shapes
:
*
T0*
use_locking(*$
_class
loc:@vc/dense_1/kernel
Γ
save_7/Assign_25Assignvc/dense_1/kernel/Adam_1save_7/RestoreV2:25*
use_locking(*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:
*
validate_shape(*
T0
²
save_7/Assign_26Assignvc/dense_2/biassave_7/RestoreV2:26*
use_locking(*
validate_shape(*
T0*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:
·
save_7/Assign_27Assignvc/dense_2/bias/Adamsave_7/RestoreV2:27*
T0*
use_locking(*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
validate_shape(
Ή
save_7/Assign_28Assignvc/dense_2/bias/Adam_1save_7/RestoreV2:28*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
validate_shape(*
T0*
use_locking(
»
save_7/Assign_29Assignvc/dense_2/kernelsave_7/RestoreV2:29*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*$
_class
loc:@vc/dense_2/kernel
ΐ
save_7/Assign_30Assignvc/dense_2/kernel/Adamsave_7/RestoreV2:30*
_output_shapes
:	*
T0*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
validate_shape(
Β
save_7/Assign_31Assignvc/dense_2/kernel/Adam_1save_7/RestoreV2:31*
T0*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
validate_shape(*
_output_shapes
:	
―
save_7/Assign_32Assignvf/dense/biassave_7/RestoreV2:32* 
_class
loc:@vf/dense/bias*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(
΄
save_7/Assign_33Assignvf/dense/bias/Adamsave_7/RestoreV2:33*
T0*
validate_shape(* 
_class
loc:@vf/dense/bias*
_output_shapes	
:*
use_locking(
Ά
save_7/Assign_34Assignvf/dense/bias/Adam_1save_7/RestoreV2:34*
T0* 
_class
loc:@vf/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
·
save_7/Assign_35Assignvf/dense/kernelsave_7/RestoreV2:35*"
_class
loc:@vf/dense/kernel*
T0*
validate_shape(*
_output_shapes
:	0*
use_locking(
Ό
save_7/Assign_36Assignvf/dense/kernel/Adamsave_7/RestoreV2:36*
_output_shapes
:	0*
use_locking(*
validate_shape(*"
_class
loc:@vf/dense/kernel*
T0
Ύ
save_7/Assign_37Assignvf/dense/kernel/Adam_1save_7/RestoreV2:37*
use_locking(*
validate_shape(*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
T0
³
save_7/Assign_38Assignvf/dense_1/biassave_7/RestoreV2:38*
T0*
_output_shapes	
:*
validate_shape(*
use_locking(*"
_class
loc:@vf/dense_1/bias
Έ
save_7/Assign_39Assignvf/dense_1/bias/Adamsave_7/RestoreV2:39*
use_locking(*
T0*
validate_shape(*"
_class
loc:@vf/dense_1/bias*
_output_shapes	
:
Ί
save_7/Assign_40Assignvf/dense_1/bias/Adam_1save_7/RestoreV2:40*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
T0*
validate_shape(*
use_locking(
Ό
save_7/Assign_41Assignvf/dense_1/kernelsave_7/RestoreV2:41*$
_class
loc:@vf/dense_1/kernel*
validate_shape(* 
_output_shapes
:
*
T0*
use_locking(
Α
save_7/Assign_42Assignvf/dense_1/kernel/Adamsave_7/RestoreV2:42*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
T0*
use_locking(*
validate_shape(
Γ
save_7/Assign_43Assignvf/dense_1/kernel/Adam_1save_7/RestoreV2:43*
T0*
use_locking(*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
validate_shape(
²
save_7/Assign_44Assignvf/dense_2/biassave_7/RestoreV2:44*
validate_shape(*
use_locking(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
T0
·
save_7/Assign_45Assignvf/dense_2/bias/Adamsave_7/RestoreV2:45*
validate_shape(*
T0*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
use_locking(
Ή
save_7/Assign_46Assignvf/dense_2/bias/Adam_1save_7/RestoreV2:46*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
use_locking(*
T0
»
save_7/Assign_47Assignvf/dense_2/kernelsave_7/RestoreV2:47*
validate_shape(*
use_locking(*
_output_shapes
:	*$
_class
loc:@vf/dense_2/kernel*
T0
ΐ
save_7/Assign_48Assignvf/dense_2/kernel/Adamsave_7/RestoreV2:48*
_output_shapes
:	*
T0*$
_class
loc:@vf/dense_2/kernel*
use_locking(*
validate_shape(
Β
save_7/Assign_49Assignvf/dense_2/kernel/Adam_1save_7/RestoreV2:49*
T0*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	
Ζ
save_7/restore_shardNoOp^save_7/Assign^save_7/Assign_1^save_7/Assign_10^save_7/Assign_11^save_7/Assign_12^save_7/Assign_13^save_7/Assign_14^save_7/Assign_15^save_7/Assign_16^save_7/Assign_17^save_7/Assign_18^save_7/Assign_19^save_7/Assign_2^save_7/Assign_20^save_7/Assign_21^save_7/Assign_22^save_7/Assign_23^save_7/Assign_24^save_7/Assign_25^save_7/Assign_26^save_7/Assign_27^save_7/Assign_28^save_7/Assign_29^save_7/Assign_3^save_7/Assign_30^save_7/Assign_31^save_7/Assign_32^save_7/Assign_33^save_7/Assign_34^save_7/Assign_35^save_7/Assign_36^save_7/Assign_37^save_7/Assign_38^save_7/Assign_39^save_7/Assign_4^save_7/Assign_40^save_7/Assign_41^save_7/Assign_42^save_7/Assign_43^save_7/Assign_44^save_7/Assign_45^save_7/Assign_46^save_7/Assign_47^save_7/Assign_48^save_7/Assign_49^save_7/Assign_5^save_7/Assign_6^save_7/Assign_7^save_7/Assign_8^save_7/Assign_9
1
save_7/restore_allNoOp^save_7/restore_shard
[
save_8/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_8/filenamePlaceholderWithDefaultsave_8/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_8/ConstPlaceholderWithDefaultsave_8/filename*
dtype0*
_output_shapes
: *
shape: 

save_8/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_583f6c2495dd41029a59215e8cccd4e4/part*
dtype0
{
save_8/StringJoin
StringJoinsave_8/Constsave_8/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_8/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_8/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 

save_8/ShardedFilenameShardedFilenamesave_8/StringJoinsave_8/ShardedFilename/shardsave_8/num_shards*
_output_shapes
: 
α
save_8/SaveV2/tensor_namesConst*
_output_shapes
:2*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Ι
save_8/SaveV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2*
dtype0
ͺ	
save_8/SaveV2SaveV2save_8/ShardedFilenamesave_8/SaveV2/tensor_namessave_8/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_8/control_dependencyIdentitysave_8/ShardedFilename^save_8/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_8/ShardedFilename
£
-save_8/MergeV2Checkpoints/checkpoint_prefixesPacksave_8/ShardedFilename^save_8/control_dependency*
T0*

axis *
_output_shapes
:*
N

save_8/MergeV2CheckpointsMergeV2Checkpoints-save_8/MergeV2Checkpoints/checkpoint_prefixessave_8/Const*
delete_old_dirs(

save_8/IdentityIdentitysave_8/Const^save_8/MergeV2Checkpoints^save_8/control_dependency*
_output_shapes
: *
T0
δ
save_8/RestoreV2/tensor_namesConst*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0
Μ
!save_8/RestoreV2/shape_and_slicesConst*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_8/RestoreV2	RestoreV2save_8/Constsave_8/RestoreV2/tensor_names!save_8/RestoreV2/shape_and_slices*@
dtypes6
422*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::
ͺ
save_8/AssignAssignbeta1_powersave_8/RestoreV2*
use_locking(*
_output_shapes
: *
T0*
validate_shape(*(
_class
loc:@penalty/penalty_param
¨
save_8/Assign_1Assignbeta1_power_1save_8/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@vc/dense/bias
?
save_8/Assign_2Assignbeta2_powersave_8/RestoreV2:2*
use_locking(*(
_class
loc:@penalty/penalty_param*
validate_shape(*
T0*
_output_shapes
: 
¨
save_8/Assign_3Assignbeta2_power_1save_8/RestoreV2:3* 
_class
loc:@vc/dense/bias*
use_locking(*
validate_shape(*
_output_shapes
: *
T0
Έ
save_8/Assign_4Assignpenalty/penalty_paramsave_8/RestoreV2:4*
T0*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
validate_shape(*
use_locking(
½
save_8/Assign_5Assignpenalty/penalty_param/Adamsave_8/RestoreV2:5*
validate_shape(*
use_locking(*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
T0
Ώ
save_8/Assign_6Assignpenalty/penalty_param/Adam_1save_8/RestoreV2:6*
validate_shape(*
_output_shapes
: *
T0*(
_class
loc:@penalty/penalty_param*
use_locking(
­
save_8/Assign_7Assignpi/dense/biassave_8/RestoreV2:7*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:* 
_class
loc:@pi/dense/bias
΅
save_8/Assign_8Assignpi/dense/kernelsave_8/RestoreV2:8*
use_locking(*
_output_shapes
:	0*"
_class
loc:@pi/dense/kernel*
T0*
validate_shape(
±
save_8/Assign_9Assignpi/dense_1/biassave_8/RestoreV2:9*
validate_shape(*"
_class
loc:@pi/dense_1/bias*
T0*
_output_shapes	
:*
use_locking(
Ό
save_8/Assign_10Assignpi/dense_1/kernelsave_8/RestoreV2:10* 
_output_shapes
:
*
use_locking(*
validate_shape(*$
_class
loc:@pi/dense_1/kernel*
T0
²
save_8/Assign_11Assignpi/dense_2/biassave_8/RestoreV2:11*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
validate_shape(
»
save_8/Assign_12Assignpi/dense_2/kernelsave_8/RestoreV2:12*
validate_shape(*
_output_shapes
:	*
T0*$
_class
loc:@pi/dense_2/kernel*
use_locking(
¨
save_8/Assign_13Assign
pi/log_stdsave_8/RestoreV2:13*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*
_class
loc:@pi/log_std
―
save_8/Assign_14Assignvc/dense/biassave_8/RestoreV2:14* 
_class
loc:@vc/dense/bias*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0
΄
save_8/Assign_15Assignvc/dense/bias/Adamsave_8/RestoreV2:15*
validate_shape(* 
_class
loc:@vc/dense/bias*
T0*
use_locking(*
_output_shapes	
:
Ά
save_8/Assign_16Assignvc/dense/bias/Adam_1save_8/RestoreV2:16* 
_class
loc:@vc/dense/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:
·
save_8/Assign_17Assignvc/dense/kernelsave_8/RestoreV2:17*
T0*
use_locking(*"
_class
loc:@vc/dense/kernel*
_output_shapes
:	0*
validate_shape(
Ό
save_8/Assign_18Assignvc/dense/kernel/Adamsave_8/RestoreV2:18*
T0*
validate_shape(*"
_class
loc:@vc/dense/kernel*
_output_shapes
:	0*
use_locking(
Ύ
save_8/Assign_19Assignvc/dense/kernel/Adam_1save_8/RestoreV2:19*
_output_shapes
:	0*
use_locking(*"
_class
loc:@vc/dense/kernel*
validate_shape(*
T0
³
save_8/Assign_20Assignvc/dense_1/biassave_8/RestoreV2:20*
use_locking(*
validate_shape(*
T0*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:
Έ
save_8/Assign_21Assignvc/dense_1/bias/Adamsave_8/RestoreV2:21*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias
Ί
save_8/Assign_22Assignvc/dense_1/bias/Adam_1save_8/RestoreV2:22*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(*"
_class
loc:@vc/dense_1/bias
Ό
save_8/Assign_23Assignvc/dense_1/kernelsave_8/RestoreV2:23* 
_output_shapes
:
*
use_locking(*$
_class
loc:@vc/dense_1/kernel*
validate_shape(*
T0
Α
save_8/Assign_24Assignvc/dense_1/kernel/Adamsave_8/RestoreV2:24*
T0*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:
*
use_locking(*
validate_shape(
Γ
save_8/Assign_25Assignvc/dense_1/kernel/Adam_1save_8/RestoreV2:25*
use_locking(*$
_class
loc:@vc/dense_1/kernel*
validate_shape(* 
_output_shapes
:
*
T0
²
save_8/Assign_26Assignvc/dense_2/biassave_8/RestoreV2:26*
validate_shape(*"
_class
loc:@vc/dense_2/bias*
use_locking(*
_output_shapes
:*
T0
·
save_8/Assign_27Assignvc/dense_2/bias/Adamsave_8/RestoreV2:27*"
_class
loc:@vc/dense_2/bias*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
Ή
save_8/Assign_28Assignvc/dense_2/bias/Adam_1save_8/RestoreV2:28*
T0*
validate_shape(*
use_locking(*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias
»
save_8/Assign_29Assignvc/dense_2/kernelsave_8/RestoreV2:29*
validate_shape(*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
_output_shapes
:	*
T0
ΐ
save_8/Assign_30Assignvc/dense_2/kernel/Adamsave_8/RestoreV2:30*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	*
T0
Β
save_8/Assign_31Assignvc/dense_2/kernel/Adam_1save_8/RestoreV2:31*
validate_shape(*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
_output_shapes
:	*
T0
―
save_8/Assign_32Assignvf/dense/biassave_8/RestoreV2:32*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(* 
_class
loc:@vf/dense/bias
΄
save_8/Assign_33Assignvf/dense/bias/Adamsave_8/RestoreV2:33*
_output_shapes	
:*
use_locking(*
validate_shape(*
T0* 
_class
loc:@vf/dense/bias
Ά
save_8/Assign_34Assignvf/dense/bias/Adam_1save_8/RestoreV2:34*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:* 
_class
loc:@vf/dense/bias
·
save_8/Assign_35Assignvf/dense/kernelsave_8/RestoreV2:35*
T0*
validate_shape(*
use_locking(*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0
Ό
save_8/Assign_36Assignvf/dense/kernel/Adamsave_8/RestoreV2:36*
use_locking(*
T0*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
validate_shape(
Ύ
save_8/Assign_37Assignvf/dense/kernel/Adam_1save_8/RestoreV2:37*
validate_shape(*
_output_shapes
:	0*
use_locking(*
T0*"
_class
loc:@vf/dense/kernel
³
save_8/Assign_38Assignvf/dense_1/biassave_8/RestoreV2:38*
_output_shapes	
:*
use_locking(*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
T0
Έ
save_8/Assign_39Assignvf/dense_1/bias/Adamsave_8/RestoreV2:39*
use_locking(*"
_class
loc:@vf/dense_1/bias*
_output_shapes	
:*
validate_shape(*
T0
Ί
save_8/Assign_40Assignvf/dense_1/bias/Adam_1save_8/RestoreV2:40*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(*"
_class
loc:@vf/dense_1/bias
Ό
save_8/Assign_41Assignvf/dense_1/kernelsave_8/RestoreV2:41*
T0*
use_locking(* 
_output_shapes
:
*
validate_shape(*$
_class
loc:@vf/dense_1/kernel
Α
save_8/Assign_42Assignvf/dense_1/kernel/Adamsave_8/RestoreV2:42*
T0*
validate_shape(*
use_locking(*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:

Γ
save_8/Assign_43Assignvf/dense_1/kernel/Adam_1save_8/RestoreV2:43* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel*
T0*
use_locking(*
validate_shape(
²
save_8/Assign_44Assignvf/dense_2/biassave_8/RestoreV2:44*
validate_shape(*
use_locking(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
T0
·
save_8/Assign_45Assignvf/dense_2/bias/Adamsave_8/RestoreV2:45*
T0*
validate_shape(*
use_locking(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:
Ή
save_8/Assign_46Assignvf/dense_2/bias/Adam_1save_8/RestoreV2:46*"
_class
loc:@vf/dense_2/bias*
use_locking(*
T0*
_output_shapes
:*
validate_shape(
»
save_8/Assign_47Assignvf/dense_2/kernelsave_8/RestoreV2:47*
validate_shape(*$
_class
loc:@vf/dense_2/kernel*
use_locking(*
T0*
_output_shapes
:	
ΐ
save_8/Assign_48Assignvf/dense_2/kernel/Adamsave_8/RestoreV2:48*
_output_shapes
:	*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
T0
Β
save_8/Assign_49Assignvf/dense_2/kernel/Adam_1save_8/RestoreV2:49*$
_class
loc:@vf/dense_2/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
Ζ
save_8/restore_shardNoOp^save_8/Assign^save_8/Assign_1^save_8/Assign_10^save_8/Assign_11^save_8/Assign_12^save_8/Assign_13^save_8/Assign_14^save_8/Assign_15^save_8/Assign_16^save_8/Assign_17^save_8/Assign_18^save_8/Assign_19^save_8/Assign_2^save_8/Assign_20^save_8/Assign_21^save_8/Assign_22^save_8/Assign_23^save_8/Assign_24^save_8/Assign_25^save_8/Assign_26^save_8/Assign_27^save_8/Assign_28^save_8/Assign_29^save_8/Assign_3^save_8/Assign_30^save_8/Assign_31^save_8/Assign_32^save_8/Assign_33^save_8/Assign_34^save_8/Assign_35^save_8/Assign_36^save_8/Assign_37^save_8/Assign_38^save_8/Assign_39^save_8/Assign_4^save_8/Assign_40^save_8/Assign_41^save_8/Assign_42^save_8/Assign_43^save_8/Assign_44^save_8/Assign_45^save_8/Assign_46^save_8/Assign_47^save_8/Assign_48^save_8/Assign_49^save_8/Assign_5^save_8/Assign_6^save_8/Assign_7^save_8/Assign_8^save_8/Assign_9
1
save_8/restore_allNoOp^save_8/restore_shard
[
save_9/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_9/filenamePlaceholderWithDefaultsave_9/filename/input*
dtype0*
shape: *
_output_shapes
: 
i
save_9/ConstPlaceholderWithDefaultsave_9/filename*
dtype0*
_output_shapes
: *
shape: 

save_9/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_3328d130f822465f85b4510b06faa9bd/part
{
save_9/StringJoin
StringJoinsave_9/Constsave_9/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_9/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_9/ShardedFilename/shardConst*
_output_shapes
: *
dtype0*
value	B : 

save_9/ShardedFilenameShardedFilenamesave_9/StringJoinsave_9/ShardedFilename/shardsave_9/num_shards*
_output_shapes
: 
α
save_9/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Ι
save_9/SaveV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2*
dtype0
ͺ	
save_9/SaveV2SaveV2save_9/ShardedFilenamesave_9/SaveV2/tensor_namessave_9/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_9/control_dependencyIdentitysave_9/ShardedFilename^save_9/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_9/ShardedFilename
£
-save_9/MergeV2Checkpoints/checkpoint_prefixesPacksave_9/ShardedFilename^save_9/control_dependency*

axis *
N*
T0*
_output_shapes
:

save_9/MergeV2CheckpointsMergeV2Checkpoints-save_9/MergeV2Checkpoints/checkpoint_prefixessave_9/Const*
delete_old_dirs(

save_9/IdentityIdentitysave_9/Const^save_9/MergeV2Checkpoints^save_9/control_dependency*
T0*
_output_shapes
: 
δ
save_9/RestoreV2/tensor_namesConst*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
_output_shapes
:2
Μ
!save_9/RestoreV2/shape_and_slicesConst*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2

save_9/RestoreV2	RestoreV2save_9/Constsave_9/RestoreV2/tensor_names!save_9/RestoreV2/shape_and_slices*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
ͺ
save_9/AssignAssignbeta1_powersave_9/RestoreV2*
T0*
validate_shape(*(
_class
loc:@penalty/penalty_param*
use_locking(*
_output_shapes
: 
¨
save_9/Assign_1Assignbeta1_power_1save_9/RestoreV2:1*
_output_shapes
: *
T0* 
_class
loc:@vc/dense/bias*
validate_shape(*
use_locking(
?
save_9/Assign_2Assignbeta2_powersave_9/RestoreV2:2*
_output_shapes
: *
T0*(
_class
loc:@penalty/penalty_param*
validate_shape(*
use_locking(
¨
save_9/Assign_3Assignbeta2_power_1save_9/RestoreV2:3*
validate_shape(*
T0*
_output_shapes
: * 
_class
loc:@vc/dense/bias*
use_locking(
Έ
save_9/Assign_4Assignpenalty/penalty_paramsave_9/RestoreV2:4*
use_locking(*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
validate_shape(*
T0
½
save_9/Assign_5Assignpenalty/penalty_param/Adamsave_9/RestoreV2:5*
_output_shapes
: *
use_locking(*
T0*
validate_shape(*(
_class
loc:@penalty/penalty_param
Ώ
save_9/Assign_6Assignpenalty/penalty_param/Adam_1save_9/RestoreV2:6*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*(
_class
loc:@penalty/penalty_param
­
save_9/Assign_7Assignpi/dense/biassave_9/RestoreV2:7*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes	
:*
validate_shape(*
use_locking(
΅
save_9/Assign_8Assignpi/dense/kernelsave_9/RestoreV2:8*
T0*
validate_shape(*
use_locking(*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	0
±
save_9/Assign_9Assignpi/dense_1/biassave_9/RestoreV2:9*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(*"
_class
loc:@pi/dense_1/bias
Ό
save_9/Assign_10Assignpi/dense_1/kernelsave_9/RestoreV2:10*$
_class
loc:@pi/dense_1/kernel*
use_locking(* 
_output_shapes
:
*
validate_shape(*
T0
²
save_9/Assign_11Assignpi/dense_2/biassave_9/RestoreV2:11*
T0*
use_locking(*
validate_shape(*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias
»
save_9/Assign_12Assignpi/dense_2/kernelsave_9/RestoreV2:12*
_output_shapes
:	*
validate_shape(*
T0*$
_class
loc:@pi/dense_2/kernel*
use_locking(
¨
save_9/Assign_13Assign
pi/log_stdsave_9/RestoreV2:13*
validate_shape(*
use_locking(*
T0*
_output_shapes
:*
_class
loc:@pi/log_std
―
save_9/Assign_14Assignvc/dense/biassave_9/RestoreV2:14*
_output_shapes	
:*
use_locking(*
validate_shape(* 
_class
loc:@vc/dense/bias*
T0
΄
save_9/Assign_15Assignvc/dense/bias/Adamsave_9/RestoreV2:15*
T0* 
_class
loc:@vc/dense/bias*
_output_shapes	
:*
use_locking(*
validate_shape(
Ά
save_9/Assign_16Assignvc/dense/bias/Adam_1save_9/RestoreV2:16*
use_locking(*
_output_shapes	
:*
T0*
validate_shape(* 
_class
loc:@vc/dense/bias
·
save_9/Assign_17Assignvc/dense/kernelsave_9/RestoreV2:17*"
_class
loc:@vc/dense/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	0
Ό
save_9/Assign_18Assignvc/dense/kernel/Adamsave_9/RestoreV2:18*
_output_shapes
:	0*
T0*"
_class
loc:@vc/dense/kernel*
use_locking(*
validate_shape(
Ύ
save_9/Assign_19Assignvc/dense/kernel/Adam_1save_9/RestoreV2:19*
validate_shape(*
T0*
_output_shapes
:	0*
use_locking(*"
_class
loc:@vc/dense/kernel
³
save_9/Assign_20Assignvc/dense_1/biassave_9/RestoreV2:20*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(*"
_class
loc:@vc/dense_1/bias
Έ
save_9/Assign_21Assignvc/dense_1/bias/Adamsave_9/RestoreV2:21*
T0*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:*
use_locking(
Ί
save_9/Assign_22Assignvc/dense_1/bias/Adam_1save_9/RestoreV2:22*
T0*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:*
validate_shape(*
use_locking(
Ό
save_9/Assign_23Assignvc/dense_1/kernelsave_9/RestoreV2:23*
use_locking(*$
_class
loc:@vc/dense_1/kernel*
T0*
validate_shape(* 
_output_shapes
:

Α
save_9/Assign_24Assignvc/dense_1/kernel/Adamsave_9/RestoreV2:24*$
_class
loc:@vc/dense_1/kernel*
T0*
validate_shape(* 
_output_shapes
:
*
use_locking(
Γ
save_9/Assign_25Assignvc/dense_1/kernel/Adam_1save_9/RestoreV2:25* 
_output_shapes
:
*
validate_shape(*$
_class
loc:@vc/dense_1/kernel*
use_locking(*
T0
²
save_9/Assign_26Assignvc/dense_2/biassave_9/RestoreV2:26*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
·
save_9/Assign_27Assignvc/dense_2/bias/Adamsave_9/RestoreV2:27*
use_locking(*
_output_shapes
:*
validate_shape(*"
_class
loc:@vc/dense_2/bias*
T0
Ή
save_9/Assign_28Assignvc/dense_2/bias/Adam_1save_9/RestoreV2:28*"
_class
loc:@vc/dense_2/bias*
T0*
_output_shapes
:*
validate_shape(*
use_locking(
»
save_9/Assign_29Assignvc/dense_2/kernelsave_9/RestoreV2:29*
T0*$
_class
loc:@vc/dense_2/kernel*
_output_shapes
:	*
validate_shape(*
use_locking(
ΐ
save_9/Assign_30Assignvc/dense_2/kernel/Adamsave_9/RestoreV2:30*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	*
T0
Β
save_9/Assign_31Assignvc/dense_2/kernel/Adam_1save_9/RestoreV2:31*
T0*$
_class
loc:@vc/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	
―
save_9/Assign_32Assignvf/dense/biassave_9/RestoreV2:32*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:* 
_class
loc:@vf/dense/bias
΄
save_9/Assign_33Assignvf/dense/bias/Adamsave_9/RestoreV2:33*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:* 
_class
loc:@vf/dense/bias
Ά
save_9/Assign_34Assignvf/dense/bias/Adam_1save_9/RestoreV2:34*
T0*
validate_shape(* 
_class
loc:@vf/dense/bias*
use_locking(*
_output_shapes	
:
·
save_9/Assign_35Assignvf/dense/kernelsave_9/RestoreV2:35*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
validate_shape(*
T0*
use_locking(
Ό
save_9/Assign_36Assignvf/dense/kernel/Adamsave_9/RestoreV2:36*
validate_shape(*
T0*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
use_locking(
Ύ
save_9/Assign_37Assignvf/dense/kernel/Adam_1save_9/RestoreV2:37*
T0*
validate_shape(*"
_class
loc:@vf/dense/kernel*
use_locking(*
_output_shapes
:	0
³
save_9/Assign_38Assignvf/dense_1/biassave_9/RestoreV2:38*"
_class
loc:@vf/dense_1/bias*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(
Έ
save_9/Assign_39Assignvf/dense_1/bias/Adamsave_9/RestoreV2:39*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
T0*
use_locking(*
validate_shape(
Ί
save_9/Assign_40Assignvf/dense_1/bias/Adam_1save_9/RestoreV2:40*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
use_locking(*
validate_shape(*
T0
Ό
save_9/Assign_41Assignvf/dense_1/kernelsave_9/RestoreV2:41*
use_locking(*$
_class
loc:@vf/dense_1/kernel*
validate_shape(* 
_output_shapes
:
*
T0
Α
save_9/Assign_42Assignvf/dense_1/kernel/Adamsave_9/RestoreV2:42*
T0*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
validate_shape(*
use_locking(
Γ
save_9/Assign_43Assignvf/dense_1/kernel/Adam_1save_9/RestoreV2:43*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*$
_class
loc:@vf/dense_1/kernel
²
save_9/Assign_44Assignvf/dense_2/biassave_9/RestoreV2:44*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
use_locking(*
T0*
validate_shape(
·
save_9/Assign_45Assignvf/dense_2/bias/Adamsave_9/RestoreV2:45*
T0*
validate_shape(*
use_locking(*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias
Ή
save_9/Assign_46Assignvf/dense_2/bias/Adam_1save_9/RestoreV2:46*"
_class
loc:@vf/dense_2/bias*
T0*
_output_shapes
:*
validate_shape(*
use_locking(
»
save_9/Assign_47Assignvf/dense_2/kernelsave_9/RestoreV2:47*
use_locking(*
validate_shape(*
_output_shapes
:	*
T0*$
_class
loc:@vf/dense_2/kernel
ΐ
save_9/Assign_48Assignvf/dense_2/kernel/Adamsave_9/RestoreV2:48*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*$
_class
loc:@vf/dense_2/kernel
Β
save_9/Assign_49Assignvf/dense_2/kernel/Adam_1save_9/RestoreV2:49*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	*
T0
Ζ
save_9/restore_shardNoOp^save_9/Assign^save_9/Assign_1^save_9/Assign_10^save_9/Assign_11^save_9/Assign_12^save_9/Assign_13^save_9/Assign_14^save_9/Assign_15^save_9/Assign_16^save_9/Assign_17^save_9/Assign_18^save_9/Assign_19^save_9/Assign_2^save_9/Assign_20^save_9/Assign_21^save_9/Assign_22^save_9/Assign_23^save_9/Assign_24^save_9/Assign_25^save_9/Assign_26^save_9/Assign_27^save_9/Assign_28^save_9/Assign_29^save_9/Assign_3^save_9/Assign_30^save_9/Assign_31^save_9/Assign_32^save_9/Assign_33^save_9/Assign_34^save_9/Assign_35^save_9/Assign_36^save_9/Assign_37^save_9/Assign_38^save_9/Assign_39^save_9/Assign_4^save_9/Assign_40^save_9/Assign_41^save_9/Assign_42^save_9/Assign_43^save_9/Assign_44^save_9/Assign_45^save_9/Assign_46^save_9/Assign_47^save_9/Assign_48^save_9/Assign_49^save_9/Assign_5^save_9/Assign_6^save_9/Assign_7^save_9/Assign_8^save_9/Assign_9
1
save_9/restore_allNoOp^save_9/restore_shard
\
save_10/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
t
save_10/filenamePlaceholderWithDefaultsave_10/filename/input*
shape: *
_output_shapes
: *
dtype0
k
save_10/ConstPlaceholderWithDefaultsave_10/filename*
dtype0*
_output_shapes
: *
shape: 

save_10/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_fc16064b476748138a147a28b76d2eaa/part
~
save_10/StringJoin
StringJoinsave_10/Constsave_10/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_10/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
_
save_10/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_10/ShardedFilenameShardedFilenamesave_10/StringJoinsave_10/ShardedFilename/shardsave_10/num_shards*
_output_shapes
: 
β
save_10/SaveV2/tensor_namesConst*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
_output_shapes
:2*
dtype0
Κ
save_10/SaveV2/shape_and_slicesConst*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2
?	
save_10/SaveV2SaveV2save_10/ShardedFilenamesave_10/SaveV2/tensor_namessave_10/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_10/control_dependencyIdentitysave_10/ShardedFilename^save_10/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_10/ShardedFilename
¦
.save_10/MergeV2Checkpoints/checkpoint_prefixesPacksave_10/ShardedFilename^save_10/control_dependency*
N*
T0*

axis *
_output_shapes
:

save_10/MergeV2CheckpointsMergeV2Checkpoints.save_10/MergeV2Checkpoints/checkpoint_prefixessave_10/Const*
delete_old_dirs(

save_10/IdentityIdentitysave_10/Const^save_10/MergeV2Checkpoints^save_10/control_dependency*
_output_shapes
: *
T0
ε
save_10/RestoreV2/tensor_namesConst*
_output_shapes
:2*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Ν
"save_10/RestoreV2/shape_and_slicesConst*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2

save_10/RestoreV2	RestoreV2save_10/Constsave_10/RestoreV2/tensor_names"save_10/RestoreV2/shape_and_slices*@
dtypes6
422*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::
¬
save_10/AssignAssignbeta1_powersave_10/RestoreV2*
use_locking(*
validate_shape(*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
T0
ͺ
save_10/Assign_1Assignbeta1_power_1save_10/RestoreV2:1*
validate_shape(* 
_class
loc:@vc/dense/bias*
use_locking(*
T0*
_output_shapes
: 
°
save_10/Assign_2Assignbeta2_powersave_10/RestoreV2:2*
validate_shape(*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
T0*
use_locking(
ͺ
save_10/Assign_3Assignbeta2_power_1save_10/RestoreV2:3* 
_class
loc:@vc/dense/bias*
use_locking(*
_output_shapes
: *
validate_shape(*
T0
Ί
save_10/Assign_4Assignpenalty/penalty_paramsave_10/RestoreV2:4*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*(
_class
loc:@penalty/penalty_param
Ώ
save_10/Assign_5Assignpenalty/penalty_param/Adamsave_10/RestoreV2:5*
use_locking(*
_output_shapes
: *
validate_shape(*(
_class
loc:@penalty/penalty_param*
T0
Α
save_10/Assign_6Assignpenalty/penalty_param/Adam_1save_10/RestoreV2:6*
validate_shape(*
use_locking(*
T0*(
_class
loc:@penalty/penalty_param*
_output_shapes
: 
―
save_10/Assign_7Assignpi/dense/biassave_10/RestoreV2:7*
validate_shape(* 
_class
loc:@pi/dense/bias*
T0*
_output_shapes	
:*
use_locking(
·
save_10/Assign_8Assignpi/dense/kernelsave_10/RestoreV2:8*"
_class
loc:@pi/dense/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	0
³
save_10/Assign_9Assignpi/dense_1/biassave_10/RestoreV2:9*
use_locking(*"
_class
loc:@pi/dense_1/bias*
T0*
_output_shapes	
:*
validate_shape(
Ύ
save_10/Assign_10Assignpi/dense_1/kernelsave_10/RestoreV2:10*
T0* 
_output_shapes
:
*
validate_shape(*
use_locking(*$
_class
loc:@pi/dense_1/kernel
΄
save_10/Assign_11Assignpi/dense_2/biassave_10/RestoreV2:11*
validate_shape(*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
use_locking(*
T0
½
save_10/Assign_12Assignpi/dense_2/kernelsave_10/RestoreV2:12*
validate_shape(*
T0*
_output_shapes
:	*
use_locking(*$
_class
loc:@pi/dense_2/kernel
ͺ
save_10/Assign_13Assign
pi/log_stdsave_10/RestoreV2:13*
_output_shapes
:*
use_locking(*
validate_shape(*
_class
loc:@pi/log_std*
T0
±
save_10/Assign_14Assignvc/dense/biassave_10/RestoreV2:14*
_output_shapes	
:*
validate_shape(* 
_class
loc:@vc/dense/bias*
T0*
use_locking(
Ά
save_10/Assign_15Assignvc/dense/bias/Adamsave_10/RestoreV2:15* 
_class
loc:@vc/dense/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:
Έ
save_10/Assign_16Assignvc/dense/bias/Adam_1save_10/RestoreV2:16*
validate_shape(*
use_locking(* 
_class
loc:@vc/dense/bias*
T0*
_output_shapes	
:
Ή
save_10/Assign_17Assignvc/dense/kernelsave_10/RestoreV2:17*
use_locking(*
_output_shapes
:	0*
validate_shape(*"
_class
loc:@vc/dense/kernel*
T0
Ύ
save_10/Assign_18Assignvc/dense/kernel/Adamsave_10/RestoreV2:18*
use_locking(*"
_class
loc:@vc/dense/kernel*
_output_shapes
:	0*
validate_shape(*
T0
ΐ
save_10/Assign_19Assignvc/dense/kernel/Adam_1save_10/RestoreV2:19*
use_locking(*"
_class
loc:@vc/dense/kernel*
T0*
validate_shape(*
_output_shapes
:	0
΅
save_10/Assign_20Assignvc/dense_1/biassave_10/RestoreV2:20*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(*"
_class
loc:@vc/dense_1/bias
Ί
save_10/Assign_21Assignvc/dense_1/bias/Adamsave_10/RestoreV2:21*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias
Ό
save_10/Assign_22Assignvc/dense_1/bias/Adam_1save_10/RestoreV2:22*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
T0*
use_locking(*
_output_shapes	
:
Ύ
save_10/Assign_23Assignvc/dense_1/kernelsave_10/RestoreV2:23*$
_class
loc:@vc/dense_1/kernel*
use_locking(* 
_output_shapes
:
*
validate_shape(*
T0
Γ
save_10/Assign_24Assignvc/dense_1/kernel/Adamsave_10/RestoreV2:24*
use_locking(*$
_class
loc:@vc/dense_1/kernel*
validate_shape(* 
_output_shapes
:
*
T0
Ε
save_10/Assign_25Assignvc/dense_1/kernel/Adam_1save_10/RestoreV2:25*
validate_shape(*
use_locking(*
T0*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:

΄
save_10/Assign_26Assignvc/dense_2/biassave_10/RestoreV2:26*
validate_shape(*
_output_shapes
:*
use_locking(*"
_class
loc:@vc/dense_2/bias*
T0
Ή
save_10/Assign_27Assignvc/dense_2/bias/Adamsave_10/RestoreV2:27*
_output_shapes
:*
validate_shape(*
T0*
use_locking(*"
_class
loc:@vc/dense_2/bias
»
save_10/Assign_28Assignvc/dense_2/bias/Adam_1save_10/RestoreV2:28*
_output_shapes
:*
validate_shape(*
T0*"
_class
loc:@vc/dense_2/bias*
use_locking(
½
save_10/Assign_29Assignvc/dense_2/kernelsave_10/RestoreV2:29*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(
Β
save_10/Assign_30Assignvc/dense_2/kernel/Adamsave_10/RestoreV2:30*
_output_shapes
:	*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
validate_shape(*
T0
Δ
save_10/Assign_31Assignvc/dense_2/kernel/Adam_1save_10/RestoreV2:31*$
_class
loc:@vc/dense_2/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	
±
save_10/Assign_32Assignvf/dense/biassave_10/RestoreV2:32*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:* 
_class
loc:@vf/dense/bias
Ά
save_10/Assign_33Assignvf/dense/bias/Adamsave_10/RestoreV2:33* 
_class
loc:@vf/dense/bias*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0
Έ
save_10/Assign_34Assignvf/dense/bias/Adam_1save_10/RestoreV2:34*
use_locking(* 
_class
loc:@vf/dense/bias*
T0*
_output_shapes	
:*
validate_shape(
Ή
save_10/Assign_35Assignvf/dense/kernelsave_10/RestoreV2:35*
_output_shapes
:	0*
T0*"
_class
loc:@vf/dense/kernel*
validate_shape(*
use_locking(
Ύ
save_10/Assign_36Assignvf/dense/kernel/Adamsave_10/RestoreV2:36*
use_locking(*
_output_shapes
:	0*
T0*"
_class
loc:@vf/dense/kernel*
validate_shape(
ΐ
save_10/Assign_37Assignvf/dense/kernel/Adam_1save_10/RestoreV2:37*
_output_shapes
:	0*
use_locking(*"
_class
loc:@vf/dense/kernel*
validate_shape(*
T0
΅
save_10/Assign_38Assignvf/dense_1/biassave_10/RestoreV2:38*
validate_shape(*
T0*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
use_locking(
Ί
save_10/Assign_39Assignvf/dense_1/bias/Adamsave_10/RestoreV2:39*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(*"
_class
loc:@vf/dense_1/bias
Ό
save_10/Assign_40Assignvf/dense_1/bias/Adam_1save_10/RestoreV2:40*
use_locking(*
T0*
validate_shape(*"
_class
loc:@vf/dense_1/bias*
_output_shapes	
:
Ύ
save_10/Assign_41Assignvf/dense_1/kernelsave_10/RestoreV2:41* 
_output_shapes
:
*
T0*$
_class
loc:@vf/dense_1/kernel*
use_locking(*
validate_shape(
Γ
save_10/Assign_42Assignvf/dense_1/kernel/Adamsave_10/RestoreV2:42*$
_class
loc:@vf/dense_1/kernel*
validate_shape(*
T0*
use_locking(* 
_output_shapes
:

Ε
save_10/Assign_43Assignvf/dense_1/kernel/Adam_1save_10/RestoreV2:43*
validate_shape(*
use_locking(* 
_output_shapes
:
*
T0*$
_class
loc:@vf/dense_1/kernel
΄
save_10/Assign_44Assignvf/dense_2/biassave_10/RestoreV2:44*
use_locking(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
T0*
validate_shape(
Ή
save_10/Assign_45Assignvf/dense_2/bias/Adamsave_10/RestoreV2:45*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
use_locking(*
validate_shape(*
T0
»
save_10/Assign_46Assignvf/dense_2/bias/Adam_1save_10/RestoreV2:46*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
T0*
use_locking(
½
save_10/Assign_47Assignvf/dense_2/kernelsave_10/RestoreV2:47*
validate_shape(*$
_class
loc:@vf/dense_2/kernel*
use_locking(*
_output_shapes
:	*
T0
Β
save_10/Assign_48Assignvf/dense_2/kernel/Adamsave_10/RestoreV2:48*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(
Δ
save_10/Assign_49Assignvf/dense_2/kernel/Adam_1save_10/RestoreV2:49*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
validate_shape(*
T0
ω
save_10/restore_shardNoOp^save_10/Assign^save_10/Assign_1^save_10/Assign_10^save_10/Assign_11^save_10/Assign_12^save_10/Assign_13^save_10/Assign_14^save_10/Assign_15^save_10/Assign_16^save_10/Assign_17^save_10/Assign_18^save_10/Assign_19^save_10/Assign_2^save_10/Assign_20^save_10/Assign_21^save_10/Assign_22^save_10/Assign_23^save_10/Assign_24^save_10/Assign_25^save_10/Assign_26^save_10/Assign_27^save_10/Assign_28^save_10/Assign_29^save_10/Assign_3^save_10/Assign_30^save_10/Assign_31^save_10/Assign_32^save_10/Assign_33^save_10/Assign_34^save_10/Assign_35^save_10/Assign_36^save_10/Assign_37^save_10/Assign_38^save_10/Assign_39^save_10/Assign_4^save_10/Assign_40^save_10/Assign_41^save_10/Assign_42^save_10/Assign_43^save_10/Assign_44^save_10/Assign_45^save_10/Assign_46^save_10/Assign_47^save_10/Assign_48^save_10/Assign_49^save_10/Assign_5^save_10/Assign_6^save_10/Assign_7^save_10/Assign_8^save_10/Assign_9
3
save_10/restore_allNoOp^save_10/restore_shard
\
save_11/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
t
save_11/filenamePlaceholderWithDefaultsave_11/filename/input*
_output_shapes
: *
dtype0*
shape: 
k
save_11/ConstPlaceholderWithDefaultsave_11/filename*
shape: *
dtype0*
_output_shapes
: 

save_11/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_5adc2b899f2b48bcbcdd81d875f4848c/part*
_output_shapes
: 
~
save_11/StringJoin
StringJoinsave_11/Constsave_11/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
T
save_11/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
_
save_11/ShardedFilename/shardConst*
value	B : *
_output_shapes
: *
dtype0

save_11/ShardedFilenameShardedFilenamesave_11/StringJoinsave_11/ShardedFilename/shardsave_11/num_shards*
_output_shapes
: 
β
save_11/SaveV2/tensor_namesConst*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
_output_shapes
:2*
dtype0
Κ
save_11/SaveV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2
?	
save_11/SaveV2SaveV2save_11/ShardedFilenamesave_11/SaveV2/tensor_namessave_11/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_11/control_dependencyIdentitysave_11/ShardedFilename^save_11/SaveV2*
_output_shapes
: **
_class 
loc:@save_11/ShardedFilename*
T0
¦
.save_11/MergeV2Checkpoints/checkpoint_prefixesPacksave_11/ShardedFilename^save_11/control_dependency*
T0*
_output_shapes
:*
N*

axis 

save_11/MergeV2CheckpointsMergeV2Checkpoints.save_11/MergeV2Checkpoints/checkpoint_prefixessave_11/Const*
delete_old_dirs(

save_11/IdentityIdentitysave_11/Const^save_11/MergeV2Checkpoints^save_11/control_dependency*
T0*
_output_shapes
: 
ε
save_11/RestoreV2/tensor_namesConst*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:2
Ν
"save_11/RestoreV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2

save_11/RestoreV2	RestoreV2save_11/Constsave_11/RestoreV2/tensor_names"save_11/RestoreV2/shape_and_slices*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
¬
save_11/AssignAssignbeta1_powersave_11/RestoreV2*(
_class
loc:@penalty/penalty_param*
validate_shape(*
use_locking(*
_output_shapes
: *
T0
ͺ
save_11/Assign_1Assignbeta1_power_1save_11/RestoreV2:1* 
_class
loc:@vc/dense/bias*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
°
save_11/Assign_2Assignbeta2_powersave_11/RestoreV2:2*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
use_locking(*
validate_shape(*
T0
ͺ
save_11/Assign_3Assignbeta2_power_1save_11/RestoreV2:3*
_output_shapes
: *
validate_shape(* 
_class
loc:@vc/dense/bias*
T0*
use_locking(
Ί
save_11/Assign_4Assignpenalty/penalty_paramsave_11/RestoreV2:4*
T0*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
use_locking(*
validate_shape(
Ώ
save_11/Assign_5Assignpenalty/penalty_param/Adamsave_11/RestoreV2:5*
_output_shapes
: *
validate_shape(*(
_class
loc:@penalty/penalty_param*
use_locking(*
T0
Α
save_11/Assign_6Assignpenalty/penalty_param/Adam_1save_11/RestoreV2:6*
T0*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
use_locking(*
validate_shape(
―
save_11/Assign_7Assignpi/dense/biassave_11/RestoreV2:7*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(* 
_class
loc:@pi/dense/bias
·
save_11/Assign_8Assignpi/dense/kernelsave_11/RestoreV2:8*
T0*
validate_shape(*
_output_shapes
:	0*
use_locking(*"
_class
loc:@pi/dense/kernel
³
save_11/Assign_9Assignpi/dense_1/biassave_11/RestoreV2:9*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:*"
_class
loc:@pi/dense_1/bias
Ύ
save_11/Assign_10Assignpi/dense_1/kernelsave_11/RestoreV2:10*$
_class
loc:@pi/dense_1/kernel*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:

΄
save_11/Assign_11Assignpi/dense_2/biassave_11/RestoreV2:11*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes
:
½
save_11/Assign_12Assignpi/dense_2/kernelsave_11/RestoreV2:12*
_output_shapes
:	*
use_locking(*$
_class
loc:@pi/dense_2/kernel*
T0*
validate_shape(
ͺ
save_11/Assign_13Assign
pi/log_stdsave_11/RestoreV2:13*
validate_shape(*
_class
loc:@pi/log_std*
use_locking(*
_output_shapes
:*
T0
±
save_11/Assign_14Assignvc/dense/biassave_11/RestoreV2:14*
T0* 
_class
loc:@vc/dense/bias*
_output_shapes	
:*
use_locking(*
validate_shape(
Ά
save_11/Assign_15Assignvc/dense/bias/Adamsave_11/RestoreV2:15*
validate_shape(*
_output_shapes	
:* 
_class
loc:@vc/dense/bias*
T0*
use_locking(
Έ
save_11/Assign_16Assignvc/dense/bias/Adam_1save_11/RestoreV2:16*
_output_shapes	
:*
validate_shape(*
use_locking(* 
_class
loc:@vc/dense/bias*
T0
Ή
save_11/Assign_17Assignvc/dense/kernelsave_11/RestoreV2:17*"
_class
loc:@vc/dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	0*
T0
Ύ
save_11/Assign_18Assignvc/dense/kernel/Adamsave_11/RestoreV2:18*"
_class
loc:@vc/dense/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	0
ΐ
save_11/Assign_19Assignvc/dense/kernel/Adam_1save_11/RestoreV2:19*
_output_shapes
:	0*
T0*
use_locking(*
validate_shape(*"
_class
loc:@vc/dense/kernel
΅
save_11/Assign_20Assignvc/dense_1/biassave_11/RestoreV2:20*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*"
_class
loc:@vc/dense_1/bias
Ί
save_11/Assign_21Assignvc/dense_1/bias/Adamsave_11/RestoreV2:21*
use_locking(*
validate_shape(*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
T0
Ό
save_11/Assign_22Assignvc/dense_1/bias/Adam_1save_11/RestoreV2:22*
T0*
_output_shapes	
:*
validate_shape(*
use_locking(*"
_class
loc:@vc/dense_1/bias
Ύ
save_11/Assign_23Assignvc/dense_1/kernelsave_11/RestoreV2:23* 
_output_shapes
:
*
use_locking(*
validate_shape(*
T0*$
_class
loc:@vc/dense_1/kernel
Γ
save_11/Assign_24Assignvc/dense_1/kernel/Adamsave_11/RestoreV2:24*
T0*
use_locking(*
validate_shape(*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:

Ε
save_11/Assign_25Assignvc/dense_1/kernel/Adam_1save_11/RestoreV2:25*
T0*$
_class
loc:@vc/dense_1/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:

΄
save_11/Assign_26Assignvc/dense_2/biassave_11/RestoreV2:26*
T0*
validate_shape(*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:*
use_locking(
Ή
save_11/Assign_27Assignvc/dense_2/bias/Adamsave_11/RestoreV2:27*
use_locking(*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
T0*
validate_shape(
»
save_11/Assign_28Assignvc/dense_2/bias/Adam_1save_11/RestoreV2:28*
_output_shapes
:*
use_locking(*
validate_shape(*
T0*"
_class
loc:@vc/dense_2/bias
½
save_11/Assign_29Assignvc/dense_2/kernelsave_11/RestoreV2:29*
validate_shape(*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
_output_shapes
:	*
T0
Β
save_11/Assign_30Assignvc/dense_2/kernel/Adamsave_11/RestoreV2:30*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	*$
_class
loc:@vc/dense_2/kernel
Δ
save_11/Assign_31Assignvc/dense_2/kernel/Adam_1save_11/RestoreV2:31*$
_class
loc:@vc/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	*
T0
±
save_11/Assign_32Assignvf/dense/biassave_11/RestoreV2:32*
use_locking(*
validate_shape(* 
_class
loc:@vf/dense/bias*
_output_shapes	
:*
T0
Ά
save_11/Assign_33Assignvf/dense/bias/Adamsave_11/RestoreV2:33* 
_class
loc:@vf/dense/bias*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(
Έ
save_11/Assign_34Assignvf/dense/bias/Adam_1save_11/RestoreV2:34*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(* 
_class
loc:@vf/dense/bias
Ή
save_11/Assign_35Assignvf/dense/kernelsave_11/RestoreV2:35*
validate_shape(*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
use_locking(*
T0
Ύ
save_11/Assign_36Assignvf/dense/kernel/Adamsave_11/RestoreV2:36*"
_class
loc:@vf/dense/kernel*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	0
ΐ
save_11/Assign_37Assignvf/dense/kernel/Adam_1save_11/RestoreV2:37*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
use_locking(*
validate_shape(*
T0
΅
save_11/Assign_38Assignvf/dense_1/biassave_11/RestoreV2:38*
T0*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
use_locking(
Ί
save_11/Assign_39Assignvf/dense_1/bias/Adamsave_11/RestoreV2:39*
use_locking(*
validate_shape(*
T0*"
_class
loc:@vf/dense_1/bias*
_output_shapes	
:
Ό
save_11/Assign_40Assignvf/dense_1/bias/Adam_1save_11/RestoreV2:40*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(
Ύ
save_11/Assign_41Assignvf/dense_1/kernelsave_11/RestoreV2:41*$
_class
loc:@vf/dense_1/kernel*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(
Γ
save_11/Assign_42Assignvf/dense_1/kernel/Adamsave_11/RestoreV2:42* 
_output_shapes
:
*
validate_shape(*
T0*
use_locking(*$
_class
loc:@vf/dense_1/kernel
Ε
save_11/Assign_43Assignvf/dense_1/kernel/Adam_1save_11/RestoreV2:43*
T0*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
use_locking(*
validate_shape(
΄
save_11/Assign_44Assignvf/dense_2/biassave_11/RestoreV2:44*
validate_shape(*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias*
use_locking(*
T0
Ή
save_11/Assign_45Assignvf/dense_2/bias/Adamsave_11/RestoreV2:45*
validate_shape(*
T0*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias*
use_locking(
»
save_11/Assign_46Assignvf/dense_2/bias/Adam_1save_11/RestoreV2:46*
T0*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
use_locking(
½
save_11/Assign_47Assignvf/dense_2/kernelsave_11/RestoreV2:47*
use_locking(*
_output_shapes
:	*
validate_shape(*$
_class
loc:@vf/dense_2/kernel*
T0
Β
save_11/Assign_48Assignvf/dense_2/kernel/Adamsave_11/RestoreV2:48*
_output_shapes
:	*
T0*
use_locking(*
validate_shape(*$
_class
loc:@vf/dense_2/kernel
Δ
save_11/Assign_49Assignvf/dense_2/kernel/Adam_1save_11/RestoreV2:49*
validate_shape(*$
_class
loc:@vf/dense_2/kernel*
T0*
_output_shapes
:	*
use_locking(
ω
save_11/restore_shardNoOp^save_11/Assign^save_11/Assign_1^save_11/Assign_10^save_11/Assign_11^save_11/Assign_12^save_11/Assign_13^save_11/Assign_14^save_11/Assign_15^save_11/Assign_16^save_11/Assign_17^save_11/Assign_18^save_11/Assign_19^save_11/Assign_2^save_11/Assign_20^save_11/Assign_21^save_11/Assign_22^save_11/Assign_23^save_11/Assign_24^save_11/Assign_25^save_11/Assign_26^save_11/Assign_27^save_11/Assign_28^save_11/Assign_29^save_11/Assign_3^save_11/Assign_30^save_11/Assign_31^save_11/Assign_32^save_11/Assign_33^save_11/Assign_34^save_11/Assign_35^save_11/Assign_36^save_11/Assign_37^save_11/Assign_38^save_11/Assign_39^save_11/Assign_4^save_11/Assign_40^save_11/Assign_41^save_11/Assign_42^save_11/Assign_43^save_11/Assign_44^save_11/Assign_45^save_11/Assign_46^save_11/Assign_47^save_11/Assign_48^save_11/Assign_49^save_11/Assign_5^save_11/Assign_6^save_11/Assign_7^save_11/Assign_8^save_11/Assign_9
3
save_11/restore_allNoOp^save_11/restore_shard
\
save_12/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
t
save_12/filenamePlaceholderWithDefaultsave_12/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_12/ConstPlaceholderWithDefaultsave_12/filename*
dtype0*
_output_shapes
: *
shape: 

save_12/StringJoin/inputs_1Const*<
value3B1 B+_temp_722bf2dbc2ff4b6bb45bd4fbcdde0000/part*
dtype0*
_output_shapes
: 
~
save_12/StringJoin
StringJoinsave_12/Constsave_12/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_12/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
_
save_12/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_12/ShardedFilenameShardedFilenamesave_12/StringJoinsave_12/ShardedFilename/shardsave_12/num_shards*
_output_shapes
: 
β
save_12/SaveV2/tensor_namesConst*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
_output_shapes
:2*
dtype0
Κ
save_12/SaveV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2*
dtype0
?	
save_12/SaveV2SaveV2save_12/ShardedFilenamesave_12/SaveV2/tensor_namessave_12/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_12/control_dependencyIdentitysave_12/ShardedFilename^save_12/SaveV2*
T0*
_output_shapes
: **
_class 
loc:@save_12/ShardedFilename
¦
.save_12/MergeV2Checkpoints/checkpoint_prefixesPacksave_12/ShardedFilename^save_12/control_dependency*
N*
T0*
_output_shapes
:*

axis 

save_12/MergeV2CheckpointsMergeV2Checkpoints.save_12/MergeV2Checkpoints/checkpoint_prefixessave_12/Const*
delete_old_dirs(

save_12/IdentityIdentitysave_12/Const^save_12/MergeV2Checkpoints^save_12/control_dependency*
_output_shapes
: *
T0
ε
save_12/RestoreV2/tensor_namesConst*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
_output_shapes
:2*
dtype0
Ν
"save_12/RestoreV2/shape_and_slicesConst*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_12/RestoreV2	RestoreV2save_12/Constsave_12/RestoreV2/tensor_names"save_12/RestoreV2/shape_and_slices*@
dtypes6
422*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::
¬
save_12/AssignAssignbeta1_powersave_12/RestoreV2*
T0*(
_class
loc:@penalty/penalty_param*
use_locking(*
validate_shape(*
_output_shapes
: 
ͺ
save_12/Assign_1Assignbeta1_power_1save_12/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(* 
_class
loc:@vc/dense/bias*
T0
°
save_12/Assign_2Assignbeta2_powersave_12/RestoreV2:2*
T0*
use_locking(*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
validate_shape(
ͺ
save_12/Assign_3Assignbeta2_power_1save_12/RestoreV2:3*
T0*
validate_shape(*
_output_shapes
: *
use_locking(* 
_class
loc:@vc/dense/bias
Ί
save_12/Assign_4Assignpenalty/penalty_paramsave_12/RestoreV2:4*(
_class
loc:@penalty/penalty_param*
T0*
validate_shape(*
_output_shapes
: *
use_locking(
Ώ
save_12/Assign_5Assignpenalty/penalty_param/Adamsave_12/RestoreV2:5*(
_class
loc:@penalty/penalty_param*
T0*
_output_shapes
: *
use_locking(*
validate_shape(
Α
save_12/Assign_6Assignpenalty/penalty_param/Adam_1save_12/RestoreV2:6*(
_class
loc:@penalty/penalty_param*
validate_shape(*
T0*
use_locking(*
_output_shapes
: 
―
save_12/Assign_7Assignpi/dense/biassave_12/RestoreV2:7*
T0*
_output_shapes	
:*
validate_shape(*
use_locking(* 
_class
loc:@pi/dense/bias
·
save_12/Assign_8Assignpi/dense/kernelsave_12/RestoreV2:8*
use_locking(*
T0*
validate_shape(*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	0
³
save_12/Assign_9Assignpi/dense_1/biassave_12/RestoreV2:9*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:
Ύ
save_12/Assign_10Assignpi/dense_1/kernelsave_12/RestoreV2:10*
use_locking(* 
_output_shapes
:
*
validate_shape(*
T0*$
_class
loc:@pi/dense_1/kernel
΄
save_12/Assign_11Assignpi/dense_2/biassave_12/RestoreV2:11*
_output_shapes
:*
use_locking(*
T0*
validate_shape(*"
_class
loc:@pi/dense_2/bias
½
save_12/Assign_12Assignpi/dense_2/kernelsave_12/RestoreV2:12*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*$
_class
loc:@pi/dense_2/kernel
ͺ
save_12/Assign_13Assign
pi/log_stdsave_12/RestoreV2:13*
T0*
validate_shape(*
_class
loc:@pi/log_std*
use_locking(*
_output_shapes
:
±
save_12/Assign_14Assignvc/dense/biassave_12/RestoreV2:14*
validate_shape(*
T0*
use_locking(* 
_class
loc:@vc/dense/bias*
_output_shapes	
:
Ά
save_12/Assign_15Assignvc/dense/bias/Adamsave_12/RestoreV2:15*
use_locking(*
validate_shape(*
_output_shapes	
:* 
_class
loc:@vc/dense/bias*
T0
Έ
save_12/Assign_16Assignvc/dense/bias/Adam_1save_12/RestoreV2:16*
use_locking(*
_output_shapes	
:*
T0*
validate_shape(* 
_class
loc:@vc/dense/bias
Ή
save_12/Assign_17Assignvc/dense/kernelsave_12/RestoreV2:17*
T0*
validate_shape(*"
_class
loc:@vc/dense/kernel*
use_locking(*
_output_shapes
:	0
Ύ
save_12/Assign_18Assignvc/dense/kernel/Adamsave_12/RestoreV2:18*
_output_shapes
:	0*"
_class
loc:@vc/dense/kernel*
use_locking(*
validate_shape(*
T0
ΐ
save_12/Assign_19Assignvc/dense/kernel/Adam_1save_12/RestoreV2:19*
T0*
validate_shape(*"
_class
loc:@vc/dense/kernel*
_output_shapes
:	0*
use_locking(
΅
save_12/Assign_20Assignvc/dense_1/biassave_12/RestoreV2:20*
T0*
use_locking(*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:
Ί
save_12/Assign_21Assignvc/dense_1/bias/Adamsave_12/RestoreV2:21*
T0*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
use_locking(*
validate_shape(
Ό
save_12/Assign_22Assignvc/dense_1/bias/Adam_1save_12/RestoreV2:22*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*"
_class
loc:@vc/dense_1/bias
Ύ
save_12/Assign_23Assignvc/dense_1/kernelsave_12/RestoreV2:23* 
_output_shapes
:
*
T0*$
_class
loc:@vc/dense_1/kernel*
validate_shape(*
use_locking(
Γ
save_12/Assign_24Assignvc/dense_1/kernel/Adamsave_12/RestoreV2:24*
validate_shape(* 
_output_shapes
:
*
T0*$
_class
loc:@vc/dense_1/kernel*
use_locking(
Ε
save_12/Assign_25Assignvc/dense_1/kernel/Adam_1save_12/RestoreV2:25* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel*
validate_shape(*
use_locking(*
T0
΄
save_12/Assign_26Assignvc/dense_2/biassave_12/RestoreV2:26*
T0*
validate_shape(*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:*
use_locking(
Ή
save_12/Assign_27Assignvc/dense_2/bias/Adamsave_12/RestoreV2:27*
T0*
validate_shape(*
use_locking(*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias
»
save_12/Assign_28Assignvc/dense_2/bias/Adam_1save_12/RestoreV2:28*
use_locking(*"
_class
loc:@vc/dense_2/bias*
T0*
validate_shape(*
_output_shapes
:
½
save_12/Assign_29Assignvc/dense_2/kernelsave_12/RestoreV2:29*$
_class
loc:@vc/dense_2/kernel*
_output_shapes
:	*
T0*
use_locking(*
validate_shape(
Β
save_12/Assign_30Assignvc/dense_2/kernel/Adamsave_12/RestoreV2:30*$
_class
loc:@vc/dense_2/kernel*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(
Δ
save_12/Assign_31Assignvc/dense_2/kernel/Adam_1save_12/RestoreV2:31*
T0*$
_class
loc:@vc/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	
±
save_12/Assign_32Assignvf/dense/biassave_12/RestoreV2:32* 
_class
loc:@vf/dense/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:
Ά
save_12/Assign_33Assignvf/dense/bias/Adamsave_12/RestoreV2:33*
_output_shapes	
:*
validate_shape(*
T0*
use_locking(* 
_class
loc:@vf/dense/bias
Έ
save_12/Assign_34Assignvf/dense/bias/Adam_1save_12/RestoreV2:34*
validate_shape(* 
_class
loc:@vf/dense/bias*
use_locking(*
T0*
_output_shapes	
:
Ή
save_12/Assign_35Assignvf/dense/kernelsave_12/RestoreV2:35*
validate_shape(*
use_locking(*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
T0
Ύ
save_12/Assign_36Assignvf/dense/kernel/Adamsave_12/RestoreV2:36*
T0*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
use_locking(*
validate_shape(
ΐ
save_12/Assign_37Assignvf/dense/kernel/Adam_1save_12/RestoreV2:37*
T0*
_output_shapes
:	0*
validate_shape(*
use_locking(*"
_class
loc:@vf/dense/kernel
΅
save_12/Assign_38Assignvf/dense_1/biassave_12/RestoreV2:38*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*"
_class
loc:@vf/dense_1/bias
Ί
save_12/Assign_39Assignvf/dense_1/bias/Adamsave_12/RestoreV2:39*
_output_shapes	
:*
T0*
validate_shape(*"
_class
loc:@vf/dense_1/bias*
use_locking(
Ό
save_12/Assign_40Assignvf/dense_1/bias/Adam_1save_12/RestoreV2:40*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(
Ύ
save_12/Assign_41Assignvf/dense_1/kernelsave_12/RestoreV2:41*
use_locking(*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
T0*
validate_shape(
Γ
save_12/Assign_42Assignvf/dense_1/kernel/Adamsave_12/RestoreV2:42*
use_locking(*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
T0*
validate_shape(
Ε
save_12/Assign_43Assignvf/dense_1/kernel/Adam_1save_12/RestoreV2:43*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel
΄
save_12/Assign_44Assignvf/dense_2/biassave_12/RestoreV2:44*
validate_shape(*
use_locking(*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias*
T0
Ή
save_12/Assign_45Assignvf/dense_2/bias/Adamsave_12/RestoreV2:45*
T0*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
use_locking(*
_output_shapes
:
»
save_12/Assign_46Assignvf/dense_2/bias/Adam_1save_12/RestoreV2:46*
use_locking(*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
T0
½
save_12/Assign_47Assignvf/dense_2/kernelsave_12/RestoreV2:47*
_output_shapes
:	*
validate_shape(*
use_locking(*
T0*$
_class
loc:@vf/dense_2/kernel
Β
save_12/Assign_48Assignvf/dense_2/kernel/Adamsave_12/RestoreV2:48*
T0*
validate_shape(*
_output_shapes
:	*
use_locking(*$
_class
loc:@vf/dense_2/kernel
Δ
save_12/Assign_49Assignvf/dense_2/kernel/Adam_1save_12/RestoreV2:49*
use_locking(*
T0*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
_output_shapes
:	
ω
save_12/restore_shardNoOp^save_12/Assign^save_12/Assign_1^save_12/Assign_10^save_12/Assign_11^save_12/Assign_12^save_12/Assign_13^save_12/Assign_14^save_12/Assign_15^save_12/Assign_16^save_12/Assign_17^save_12/Assign_18^save_12/Assign_19^save_12/Assign_2^save_12/Assign_20^save_12/Assign_21^save_12/Assign_22^save_12/Assign_23^save_12/Assign_24^save_12/Assign_25^save_12/Assign_26^save_12/Assign_27^save_12/Assign_28^save_12/Assign_29^save_12/Assign_3^save_12/Assign_30^save_12/Assign_31^save_12/Assign_32^save_12/Assign_33^save_12/Assign_34^save_12/Assign_35^save_12/Assign_36^save_12/Assign_37^save_12/Assign_38^save_12/Assign_39^save_12/Assign_4^save_12/Assign_40^save_12/Assign_41^save_12/Assign_42^save_12/Assign_43^save_12/Assign_44^save_12/Assign_45^save_12/Assign_46^save_12/Assign_47^save_12/Assign_48^save_12/Assign_49^save_12/Assign_5^save_12/Assign_6^save_12/Assign_7^save_12/Assign_8^save_12/Assign_9
3
save_12/restore_allNoOp^save_12/restore_shard
\
save_13/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
t
save_13/filenamePlaceholderWithDefaultsave_13/filename/input*
shape: *
_output_shapes
: *
dtype0
k
save_13/ConstPlaceholderWithDefaultsave_13/filename*
dtype0*
_output_shapes
: *
shape: 

save_13/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_ae25f6da373742aaabe0a63882370e79/part
~
save_13/StringJoin
StringJoinsave_13/Constsave_13/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
T
save_13/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
_
save_13/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 

save_13/ShardedFilenameShardedFilenamesave_13/StringJoinsave_13/ShardedFilename/shardsave_13/num_shards*
_output_shapes
: 
β
save_13/SaveV2/tensor_namesConst*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0
Κ
save_13/SaveV2/shape_and_slicesConst*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?	
save_13/SaveV2SaveV2save_13/ShardedFilenamesave_13/SaveV2/tensor_namessave_13/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_13/control_dependencyIdentitysave_13/ShardedFilename^save_13/SaveV2*
T0**
_class 
loc:@save_13/ShardedFilename*
_output_shapes
: 
¦
.save_13/MergeV2Checkpoints/checkpoint_prefixesPacksave_13/ShardedFilename^save_13/control_dependency*
T0*
N*
_output_shapes
:*

axis 

save_13/MergeV2CheckpointsMergeV2Checkpoints.save_13/MergeV2Checkpoints/checkpoint_prefixessave_13/Const*
delete_old_dirs(

save_13/IdentityIdentitysave_13/Const^save_13/MergeV2Checkpoints^save_13/control_dependency*
T0*
_output_shapes
: 
ε
save_13/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Ν
"save_13/RestoreV2/shape_and_slicesConst*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_13/RestoreV2	RestoreV2save_13/Constsave_13/RestoreV2/tensor_names"save_13/RestoreV2/shape_and_slices*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
¬
save_13/AssignAssignbeta1_powersave_13/RestoreV2*
_output_shapes
: *
validate_shape(*
use_locking(*(
_class
loc:@penalty/penalty_param*
T0
ͺ
save_13/Assign_1Assignbeta1_power_1save_13/RestoreV2:1*
use_locking(*
T0* 
_class
loc:@vc/dense/bias*
_output_shapes
: *
validate_shape(
°
save_13/Assign_2Assignbeta2_powersave_13/RestoreV2:2*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
validate_shape(*
use_locking(*
T0
ͺ
save_13/Assign_3Assignbeta2_power_1save_13/RestoreV2:3*
validate_shape(*
use_locking(*
_output_shapes
: *
T0* 
_class
loc:@vc/dense/bias
Ί
save_13/Assign_4Assignpenalty/penalty_paramsave_13/RestoreV2:4*(
_class
loc:@penalty/penalty_param*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
Ώ
save_13/Assign_5Assignpenalty/penalty_param/Adamsave_13/RestoreV2:5*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*(
_class
loc:@penalty/penalty_param
Α
save_13/Assign_6Assignpenalty/penalty_param/Adam_1save_13/RestoreV2:6*
T0*
use_locking(*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
validate_shape(
―
save_13/Assign_7Assignpi/dense/biassave_13/RestoreV2:7*
_output_shapes	
:* 
_class
loc:@pi/dense/bias*
validate_shape(*
use_locking(*
T0
·
save_13/Assign_8Assignpi/dense/kernelsave_13/RestoreV2:8*
validate_shape(*
_output_shapes
:	0*
T0*"
_class
loc:@pi/dense/kernel*
use_locking(
³
save_13/Assign_9Assignpi/dense_1/biassave_13/RestoreV2:9*
validate_shape(*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes	
:
Ύ
save_13/Assign_10Assignpi/dense_1/kernelsave_13/RestoreV2:10*$
_class
loc:@pi/dense_1/kernel*
validate_shape(* 
_output_shapes
:
*
T0*
use_locking(
΄
save_13/Assign_11Assignpi/dense_2/biassave_13/RestoreV2:11*
T0*"
_class
loc:@pi/dense_2/bias*
use_locking(*
validate_shape(*
_output_shapes
:
½
save_13/Assign_12Assignpi/dense_2/kernelsave_13/RestoreV2:12*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:	*
validate_shape(
ͺ
save_13/Assign_13Assign
pi/log_stdsave_13/RestoreV2:13*
_class
loc:@pi/log_std*
T0*
use_locking(*
_output_shapes
:*
validate_shape(
±
save_13/Assign_14Assignvc/dense/biassave_13/RestoreV2:14*
use_locking(*
validate_shape(* 
_class
loc:@vc/dense/bias*
T0*
_output_shapes	
:
Ά
save_13/Assign_15Assignvc/dense/bias/Adamsave_13/RestoreV2:15*
_output_shapes	
:*
use_locking(*
T0* 
_class
loc:@vc/dense/bias*
validate_shape(
Έ
save_13/Assign_16Assignvc/dense/bias/Adam_1save_13/RestoreV2:16*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0* 
_class
loc:@vc/dense/bias
Ή
save_13/Assign_17Assignvc/dense/kernelsave_13/RestoreV2:17*
use_locking(*
_output_shapes
:	0*"
_class
loc:@vc/dense/kernel*
T0*
validate_shape(
Ύ
save_13/Assign_18Assignvc/dense/kernel/Adamsave_13/RestoreV2:18*"
_class
loc:@vc/dense/kernel*
use_locking(*
_output_shapes
:	0*
validate_shape(*
T0
ΐ
save_13/Assign_19Assignvc/dense/kernel/Adam_1save_13/RestoreV2:19*
T0*
_output_shapes
:	0*
use_locking(*"
_class
loc:@vc/dense/kernel*
validate_shape(
΅
save_13/Assign_20Assignvc/dense_1/biassave_13/RestoreV2:20*
T0*"
_class
loc:@vc/dense_1/bias*
use_locking(*
_output_shapes	
:*
validate_shape(
Ί
save_13/Assign_21Assignvc/dense_1/bias/Adamsave_13/RestoreV2:21*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(*"
_class
loc:@vc/dense_1/bias
Ό
save_13/Assign_22Assignvc/dense_1/bias/Adam_1save_13/RestoreV2:22*
T0*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:*
validate_shape(*
use_locking(
Ύ
save_13/Assign_23Assignvc/dense_1/kernelsave_13/RestoreV2:23*
validate_shape(*$
_class
loc:@vc/dense_1/kernel*
T0*
use_locking(* 
_output_shapes
:

Γ
save_13/Assign_24Assignvc/dense_1/kernel/Adamsave_13/RestoreV2:24* 
_output_shapes
:
*
validate_shape(*$
_class
loc:@vc/dense_1/kernel*
use_locking(*
T0
Ε
save_13/Assign_25Assignvc/dense_1/kernel/Adam_1save_13/RestoreV2:25*
use_locking(*
T0*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:
*
validate_shape(
΄
save_13/Assign_26Assignvc/dense_2/biassave_13/RestoreV2:26*"
_class
loc:@vc/dense_2/bias*
validate_shape(*
_output_shapes
:*
T0*
use_locking(
Ή
save_13/Assign_27Assignvc/dense_2/bias/Adamsave_13/RestoreV2:27*
use_locking(*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
validate_shape(*
T0
»
save_13/Assign_28Assignvc/dense_2/bias/Adam_1save_13/RestoreV2:28*
T0*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:*
use_locking(*
validate_shape(
½
save_13/Assign_29Assignvc/dense_2/kernelsave_13/RestoreV2:29*
validate_shape(*
T0*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
_output_shapes
:	
Β
save_13/Assign_30Assignvc/dense_2/kernel/Adamsave_13/RestoreV2:30*$
_class
loc:@vc/dense_2/kernel*
_output_shapes
:	*
use_locking(*
T0*
validate_shape(
Δ
save_13/Assign_31Assignvc/dense_2/kernel/Adam_1save_13/RestoreV2:31*
_output_shapes
:	*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
T0*
validate_shape(
±
save_13/Assign_32Assignvf/dense/biassave_13/RestoreV2:32*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(* 
_class
loc:@vf/dense/bias
Ά
save_13/Assign_33Assignvf/dense/bias/Adamsave_13/RestoreV2:33*
_output_shapes	
:*
validate_shape(*
use_locking(* 
_class
loc:@vf/dense/bias*
T0
Έ
save_13/Assign_34Assignvf/dense/bias/Adam_1save_13/RestoreV2:34*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0* 
_class
loc:@vf/dense/bias
Ή
save_13/Assign_35Assignvf/dense/kernelsave_13/RestoreV2:35*
validate_shape(*
_output_shapes
:	0*
use_locking(*"
_class
loc:@vf/dense/kernel*
T0
Ύ
save_13/Assign_36Assignvf/dense/kernel/Adamsave_13/RestoreV2:36*"
_class
loc:@vf/dense/kernel*
validate_shape(*
_output_shapes
:	0*
T0*
use_locking(
ΐ
save_13/Assign_37Assignvf/dense/kernel/Adam_1save_13/RestoreV2:37*"
_class
loc:@vf/dense/kernel*
use_locking(*
_output_shapes
:	0*
validate_shape(*
T0
΅
save_13/Assign_38Assignvf/dense_1/biassave_13/RestoreV2:38*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
T0*
use_locking(*
validate_shape(
Ί
save_13/Assign_39Assignvf/dense_1/bias/Adamsave_13/RestoreV2:39*
T0*"
_class
loc:@vf/dense_1/bias*
use_locking(*
validate_shape(*
_output_shapes	
:
Ό
save_13/Assign_40Assignvf/dense_1/bias/Adam_1save_13/RestoreV2:40*
validate_shape(*"
_class
loc:@vf/dense_1/bias*
use_locking(*
T0*
_output_shapes	
:
Ύ
save_13/Assign_41Assignvf/dense_1/kernelsave_13/RestoreV2:41*
use_locking(* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel*
T0*
validate_shape(
Γ
save_13/Assign_42Assignvf/dense_1/kernel/Adamsave_13/RestoreV2:42*
use_locking(*
T0*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
validate_shape(
Ε
save_13/Assign_43Assignvf/dense_1/kernel/Adam_1save_13/RestoreV2:43*$
_class
loc:@vf/dense_1/kernel*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(
΄
save_13/Assign_44Assignvf/dense_2/biassave_13/RestoreV2:44*
use_locking(*
T0*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
validate_shape(
Ή
save_13/Assign_45Assignvf/dense_2/bias/Adamsave_13/RestoreV2:45*
validate_shape(*
use_locking(*
T0*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias
»
save_13/Assign_46Assignvf/dense_2/bias/Adam_1save_13/RestoreV2:46*"
_class
loc:@vf/dense_2/bias*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
½
save_13/Assign_47Assignvf/dense_2/kernelsave_13/RestoreV2:47*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
validate_shape(*
T0
Β
save_13/Assign_48Assignvf/dense_2/kernel/Adamsave_13/RestoreV2:48*$
_class
loc:@vf/dense_2/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	
Δ
save_13/Assign_49Assignvf/dense_2/kernel/Adam_1save_13/RestoreV2:49*
validate_shape(*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
use_locking(*
T0
ω
save_13/restore_shardNoOp^save_13/Assign^save_13/Assign_1^save_13/Assign_10^save_13/Assign_11^save_13/Assign_12^save_13/Assign_13^save_13/Assign_14^save_13/Assign_15^save_13/Assign_16^save_13/Assign_17^save_13/Assign_18^save_13/Assign_19^save_13/Assign_2^save_13/Assign_20^save_13/Assign_21^save_13/Assign_22^save_13/Assign_23^save_13/Assign_24^save_13/Assign_25^save_13/Assign_26^save_13/Assign_27^save_13/Assign_28^save_13/Assign_29^save_13/Assign_3^save_13/Assign_30^save_13/Assign_31^save_13/Assign_32^save_13/Assign_33^save_13/Assign_34^save_13/Assign_35^save_13/Assign_36^save_13/Assign_37^save_13/Assign_38^save_13/Assign_39^save_13/Assign_4^save_13/Assign_40^save_13/Assign_41^save_13/Assign_42^save_13/Assign_43^save_13/Assign_44^save_13/Assign_45^save_13/Assign_46^save_13/Assign_47^save_13/Assign_48^save_13/Assign_49^save_13/Assign_5^save_13/Assign_6^save_13/Assign_7^save_13/Assign_8^save_13/Assign_9
3
save_13/restore_allNoOp^save_13/restore_shard
\
save_14/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
t
save_14/filenamePlaceholderWithDefaultsave_14/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_14/ConstPlaceholderWithDefaultsave_14/filename*
shape: *
_output_shapes
: *
dtype0

save_14/StringJoin/inputs_1Const*<
value3B1 B+_temp_b3c2255ee6a14d95a85a81c270f055e4/part*
_output_shapes
: *
dtype0
~
save_14/StringJoin
StringJoinsave_14/Constsave_14/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
T
save_14/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
_
save_14/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 

save_14/ShardedFilenameShardedFilenamesave_14/StringJoinsave_14/ShardedFilename/shardsave_14/num_shards*
_output_shapes
: 
β
save_14/SaveV2/tensor_namesConst*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
_output_shapes
:2
Κ
save_14/SaveV2/shape_and_slicesConst*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?	
save_14/SaveV2SaveV2save_14/ShardedFilenamesave_14/SaveV2/tensor_namessave_14/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_14/control_dependencyIdentitysave_14/ShardedFilename^save_14/SaveV2**
_class 
loc:@save_14/ShardedFilename*
T0*
_output_shapes
: 
¦
.save_14/MergeV2Checkpoints/checkpoint_prefixesPacksave_14/ShardedFilename^save_14/control_dependency*

axis *
_output_shapes
:*
T0*
N

save_14/MergeV2CheckpointsMergeV2Checkpoints.save_14/MergeV2Checkpoints/checkpoint_prefixessave_14/Const*
delete_old_dirs(

save_14/IdentityIdentitysave_14/Const^save_14/MergeV2Checkpoints^save_14/control_dependency*
T0*
_output_shapes
: 
ε
save_14/RestoreV2/tensor_namesConst*
_output_shapes
:2*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Ν
"save_14/RestoreV2/shape_and_slicesConst*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2

save_14/RestoreV2	RestoreV2save_14/Constsave_14/RestoreV2/tensor_names"save_14/RestoreV2/shape_and_slices*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
¬
save_14/AssignAssignbeta1_powersave_14/RestoreV2*
validate_shape(*(
_class
loc:@penalty/penalty_param*
use_locking(*
T0*
_output_shapes
: 
ͺ
save_14/Assign_1Assignbeta1_power_1save_14/RestoreV2:1*
use_locking(*
validate_shape(* 
_class
loc:@vc/dense/bias*
_output_shapes
: *
T0
°
save_14/Assign_2Assignbeta2_powersave_14/RestoreV2:2*
use_locking(*(
_class
loc:@penalty/penalty_param*
validate_shape(*
_output_shapes
: *
T0
ͺ
save_14/Assign_3Assignbeta2_power_1save_14/RestoreV2:3*
T0* 
_class
loc:@vc/dense/bias*
_output_shapes
: *
validate_shape(*
use_locking(
Ί
save_14/Assign_4Assignpenalty/penalty_paramsave_14/RestoreV2:4*
validate_shape(*
use_locking(*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
T0
Ώ
save_14/Assign_5Assignpenalty/penalty_param/Adamsave_14/RestoreV2:5*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
validate_shape(*
T0*
use_locking(
Α
save_14/Assign_6Assignpenalty/penalty_param/Adam_1save_14/RestoreV2:6*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
validate_shape(*
T0*
use_locking(
―
save_14/Assign_7Assignpi/dense/biassave_14/RestoreV2:7*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:* 
_class
loc:@pi/dense/bias
·
save_14/Assign_8Assignpi/dense/kernelsave_14/RestoreV2:8*
use_locking(*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes
:	0*
T0
³
save_14/Assign_9Assignpi/dense_1/biassave_14/RestoreV2:9*
_output_shapes	
:*"
_class
loc:@pi/dense_1/bias*
T0*
use_locking(*
validate_shape(
Ύ
save_14/Assign_10Assignpi/dense_1/kernelsave_14/RestoreV2:10*$
_class
loc:@pi/dense_1/kernel*
use_locking(*
T0*
validate_shape(* 
_output_shapes
:

΄
save_14/Assign_11Assignpi/dense_2/biassave_14/RestoreV2:11*
use_locking(*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
T0*
validate_shape(
½
save_14/Assign_12Assignpi/dense_2/kernelsave_14/RestoreV2:12*$
_class
loc:@pi/dense_2/kernel*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	
ͺ
save_14/Assign_13Assign
pi/log_stdsave_14/RestoreV2:13*
use_locking(*
validate_shape(*
_output_shapes
:*
T0*
_class
loc:@pi/log_std
±
save_14/Assign_14Assignvc/dense/biassave_14/RestoreV2:14* 
_class
loc:@vc/dense/bias*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(
Ά
save_14/Assign_15Assignvc/dense/bias/Adamsave_14/RestoreV2:15*
_output_shapes	
:*
T0* 
_class
loc:@vc/dense/bias*
use_locking(*
validate_shape(
Έ
save_14/Assign_16Assignvc/dense/bias/Adam_1save_14/RestoreV2:16*
_output_shapes	
:* 
_class
loc:@vc/dense/bias*
T0*
validate_shape(*
use_locking(
Ή
save_14/Assign_17Assignvc/dense/kernelsave_14/RestoreV2:17*"
_class
loc:@vc/dense/kernel*
validate_shape(*
_output_shapes
:	0*
T0*
use_locking(
Ύ
save_14/Assign_18Assignvc/dense/kernel/Adamsave_14/RestoreV2:18*
_output_shapes
:	0*
T0*
validate_shape(*
use_locking(*"
_class
loc:@vc/dense/kernel
ΐ
save_14/Assign_19Assignvc/dense/kernel/Adam_1save_14/RestoreV2:19*
T0*
_output_shapes
:	0*"
_class
loc:@vc/dense/kernel*
validate_shape(*
use_locking(
΅
save_14/Assign_20Assignvc/dense_1/biassave_14/RestoreV2:20*
validate_shape(*
T0*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
use_locking(
Ί
save_14/Assign_21Assignvc/dense_1/bias/Adamsave_14/RestoreV2:21*
use_locking(*"
_class
loc:@vc/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:
Ό
save_14/Assign_22Assignvc/dense_1/bias/Adam_1save_14/RestoreV2:22*"
_class
loc:@vc/dense_1/bias*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0
Ύ
save_14/Assign_23Assignvc/dense_1/kernelsave_14/RestoreV2:23* 
_output_shapes
:
*
validate_shape(*$
_class
loc:@vc/dense_1/kernel*
T0*
use_locking(
Γ
save_14/Assign_24Assignvc/dense_1/kernel/Adamsave_14/RestoreV2:24*
validate_shape(*
T0*
use_locking(* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel
Ε
save_14/Assign_25Assignvc/dense_1/kernel/Adam_1save_14/RestoreV2:25*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
΄
save_14/Assign_26Assignvc/dense_2/biassave_14/RestoreV2:26*
validate_shape(*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:*
T0*
use_locking(
Ή
save_14/Assign_27Assignvc/dense_2/bias/Adamsave_14/RestoreV2:27*
validate_shape(*
T0*
use_locking(*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:
»
save_14/Assign_28Assignvc/dense_2/bias/Adam_1save_14/RestoreV2:28*
T0*"
_class
loc:@vc/dense_2/bias*
use_locking(*
_output_shapes
:*
validate_shape(
½
save_14/Assign_29Assignvc/dense_2/kernelsave_14/RestoreV2:29*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
validate_shape(*
_output_shapes
:	*
T0
Β
save_14/Assign_30Assignvc/dense_2/kernel/Adamsave_14/RestoreV2:30*$
_class
loc:@vc/dense_2/kernel*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(
Δ
save_14/Assign_31Assignvc/dense_2/kernel/Adam_1save_14/RestoreV2:31*$
_class
loc:@vc/dense_2/kernel*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(
±
save_14/Assign_32Assignvf/dense/biassave_14/RestoreV2:32*
T0*
validate_shape(* 
_class
loc:@vf/dense/bias*
_output_shapes	
:*
use_locking(
Ά
save_14/Assign_33Assignvf/dense/bias/Adamsave_14/RestoreV2:33*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(* 
_class
loc:@vf/dense/bias
Έ
save_14/Assign_34Assignvf/dense/bias/Adam_1save_14/RestoreV2:34*
_output_shapes	
:* 
_class
loc:@vf/dense/bias*
T0*
validate_shape(*
use_locking(
Ή
save_14/Assign_35Assignvf/dense/kernelsave_14/RestoreV2:35*
T0*
validate_shape(*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
use_locking(
Ύ
save_14/Assign_36Assignvf/dense/kernel/Adamsave_14/RestoreV2:36*
T0*
_output_shapes
:	0*
validate_shape(*"
_class
loc:@vf/dense/kernel*
use_locking(
ΐ
save_14/Assign_37Assignvf/dense/kernel/Adam_1save_14/RestoreV2:37*
T0*
use_locking(*
validate_shape(*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0
΅
save_14/Assign_38Assignvf/dense_1/biassave_14/RestoreV2:38*
T0*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
use_locking(
Ί
save_14/Assign_39Assignvf/dense_1/bias/Adamsave_14/RestoreV2:39*
T0*
_output_shapes	
:*
validate_shape(*"
_class
loc:@vf/dense_1/bias*
use_locking(
Ό
save_14/Assign_40Assignvf/dense_1/bias/Adam_1save_14/RestoreV2:40*"
_class
loc:@vf/dense_1/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:
Ύ
save_14/Assign_41Assignvf/dense_1/kernelsave_14/RestoreV2:41*
T0*$
_class
loc:@vf/dense_1/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:

Γ
save_14/Assign_42Assignvf/dense_1/kernel/Adamsave_14/RestoreV2:42*
use_locking(*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
T0*
validate_shape(
Ε
save_14/Assign_43Assignvf/dense_1/kernel/Adam_1save_14/RestoreV2:43*
use_locking(*
T0*
validate_shape(*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:

΄
save_14/Assign_44Assignvf/dense_2/biassave_14/RestoreV2:44*
validate_shape(*
T0*
use_locking(*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias
Ή
save_14/Assign_45Assignvf/dense_2/bias/Adamsave_14/RestoreV2:45*
use_locking(*
_output_shapes
:*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
T0
»
save_14/Assign_46Assignvf/dense_2/bias/Adam_1save_14/RestoreV2:46*
use_locking(*
_output_shapes
:*
T0*
validate_shape(*"
_class
loc:@vf/dense_2/bias
½
save_14/Assign_47Assignvf/dense_2/kernelsave_14/RestoreV2:47*
_output_shapes
:	*
T0*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
use_locking(
Β
save_14/Assign_48Assignvf/dense_2/kernel/Adamsave_14/RestoreV2:48*
use_locking(*
T0*
_output_shapes
:	*$
_class
loc:@vf/dense_2/kernel*
validate_shape(
Δ
save_14/Assign_49Assignvf/dense_2/kernel/Adam_1save_14/RestoreV2:49*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
_output_shapes
:	*
T0
ω
save_14/restore_shardNoOp^save_14/Assign^save_14/Assign_1^save_14/Assign_10^save_14/Assign_11^save_14/Assign_12^save_14/Assign_13^save_14/Assign_14^save_14/Assign_15^save_14/Assign_16^save_14/Assign_17^save_14/Assign_18^save_14/Assign_19^save_14/Assign_2^save_14/Assign_20^save_14/Assign_21^save_14/Assign_22^save_14/Assign_23^save_14/Assign_24^save_14/Assign_25^save_14/Assign_26^save_14/Assign_27^save_14/Assign_28^save_14/Assign_29^save_14/Assign_3^save_14/Assign_30^save_14/Assign_31^save_14/Assign_32^save_14/Assign_33^save_14/Assign_34^save_14/Assign_35^save_14/Assign_36^save_14/Assign_37^save_14/Assign_38^save_14/Assign_39^save_14/Assign_4^save_14/Assign_40^save_14/Assign_41^save_14/Assign_42^save_14/Assign_43^save_14/Assign_44^save_14/Assign_45^save_14/Assign_46^save_14/Assign_47^save_14/Assign_48^save_14/Assign_49^save_14/Assign_5^save_14/Assign_6^save_14/Assign_7^save_14/Assign_8^save_14/Assign_9
3
save_14/restore_allNoOp^save_14/restore_shard
\
save_15/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
t
save_15/filenamePlaceholderWithDefaultsave_15/filename/input*
dtype0*
shape: *
_output_shapes
: 
k
save_15/ConstPlaceholderWithDefaultsave_15/filename*
dtype0*
_output_shapes
: *
shape: 

save_15/StringJoin/inputs_1Const*<
value3B1 B+_temp_2d1b8a3fd508437cae235394d35e854a/part*
dtype0*
_output_shapes
: 
~
save_15/StringJoin
StringJoinsave_15/Constsave_15/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_15/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
_
save_15/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 

save_15/ShardedFilenameShardedFilenamesave_15/StringJoinsave_15/ShardedFilename/shardsave_15/num_shards*
_output_shapes
: 
β
save_15/SaveV2/tensor_namesConst*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:2
Κ
save_15/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?	
save_15/SaveV2SaveV2save_15/ShardedFilenamesave_15/SaveV2/tensor_namessave_15/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_15/control_dependencyIdentitysave_15/ShardedFilename^save_15/SaveV2*
T0*
_output_shapes
: **
_class 
loc:@save_15/ShardedFilename
¦
.save_15/MergeV2Checkpoints/checkpoint_prefixesPacksave_15/ShardedFilename^save_15/control_dependency*
N*
T0*

axis *
_output_shapes
:

save_15/MergeV2CheckpointsMergeV2Checkpoints.save_15/MergeV2Checkpoints/checkpoint_prefixessave_15/Const*
delete_old_dirs(

save_15/IdentityIdentitysave_15/Const^save_15/MergeV2Checkpoints^save_15/control_dependency*
T0*
_output_shapes
: 
ε
save_15/RestoreV2/tensor_namesConst*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:2
Ν
"save_15/RestoreV2/shape_and_slicesConst*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_15/RestoreV2	RestoreV2save_15/Constsave_15/RestoreV2/tensor_names"save_15/RestoreV2/shape_and_slices*@
dtypes6
422*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::
¬
save_15/AssignAssignbeta1_powersave_15/RestoreV2*
T0*
_output_shapes
: *
validate_shape(*(
_class
loc:@penalty/penalty_param*
use_locking(
ͺ
save_15/Assign_1Assignbeta1_power_1save_15/RestoreV2:1*
validate_shape(* 
_class
loc:@vc/dense/bias*
use_locking(*
_output_shapes
: *
T0
°
save_15/Assign_2Assignbeta2_powersave_15/RestoreV2:2*
T0*
validate_shape(*
use_locking(*(
_class
loc:@penalty/penalty_param*
_output_shapes
: 
ͺ
save_15/Assign_3Assignbeta2_power_1save_15/RestoreV2:3*
validate_shape(*
_output_shapes
: * 
_class
loc:@vc/dense/bias*
T0*
use_locking(
Ί
save_15/Assign_4Assignpenalty/penalty_paramsave_15/RestoreV2:4*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*(
_class
loc:@penalty/penalty_param
Ώ
save_15/Assign_5Assignpenalty/penalty_param/Adamsave_15/RestoreV2:5*
T0*
_output_shapes
: *
validate_shape(*(
_class
loc:@penalty/penalty_param*
use_locking(
Α
save_15/Assign_6Assignpenalty/penalty_param/Adam_1save_15/RestoreV2:6*(
_class
loc:@penalty/penalty_param*
use_locking(*
validate_shape(*
T0*
_output_shapes
: 
―
save_15/Assign_7Assignpi/dense/biassave_15/RestoreV2:7*
validate_shape(*
_output_shapes	
:*
T0* 
_class
loc:@pi/dense/bias*
use_locking(
·
save_15/Assign_8Assignpi/dense/kernelsave_15/RestoreV2:8*
_output_shapes
:	0*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
use_locking(
³
save_15/Assign_9Assignpi/dense_1/biassave_15/RestoreV2:9*
validate_shape(*
_output_shapes	
:*
use_locking(*"
_class
loc:@pi/dense_1/bias*
T0
Ύ
save_15/Assign_10Assignpi/dense_1/kernelsave_15/RestoreV2:10* 
_output_shapes
:
*
T0*
validate_shape(*$
_class
loc:@pi/dense_1/kernel*
use_locking(
΄
save_15/Assign_11Assignpi/dense_2/biassave_15/RestoreV2:11*
validate_shape(*"
_class
loc:@pi/dense_2/bias*
use_locking(*
T0*
_output_shapes
:
½
save_15/Assign_12Assignpi/dense_2/kernelsave_15/RestoreV2:12*
use_locking(*
T0*
_output_shapes
:	*
validate_shape(*$
_class
loc:@pi/dense_2/kernel
ͺ
save_15/Assign_13Assign
pi/log_stdsave_15/RestoreV2:13*
use_locking(*
_output_shapes
:*
_class
loc:@pi/log_std*
T0*
validate_shape(
±
save_15/Assign_14Assignvc/dense/biassave_15/RestoreV2:14*
T0*
use_locking(*
validate_shape(* 
_class
loc:@vc/dense/bias*
_output_shapes	
:
Ά
save_15/Assign_15Assignvc/dense/bias/Adamsave_15/RestoreV2:15*
T0*
use_locking(*
_output_shapes	
:* 
_class
loc:@vc/dense/bias*
validate_shape(
Έ
save_15/Assign_16Assignvc/dense/bias/Adam_1save_15/RestoreV2:16*
use_locking(* 
_class
loc:@vc/dense/bias*
_output_shapes	
:*
validate_shape(*
T0
Ή
save_15/Assign_17Assignvc/dense/kernelsave_15/RestoreV2:17*"
_class
loc:@vc/dense/kernel*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	0
Ύ
save_15/Assign_18Assignvc/dense/kernel/Adamsave_15/RestoreV2:18*
validate_shape(*"
_class
loc:@vc/dense/kernel*
T0*
use_locking(*
_output_shapes
:	0
ΐ
save_15/Assign_19Assignvc/dense/kernel/Adam_1save_15/RestoreV2:19*
validate_shape(*
T0*"
_class
loc:@vc/dense/kernel*
use_locking(*
_output_shapes
:	0
΅
save_15/Assign_20Assignvc/dense_1/biassave_15/RestoreV2:20*
T0*
use_locking(*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
validate_shape(
Ί
save_15/Assign_21Assignvc/dense_1/bias/Adamsave_15/RestoreV2:21*
use_locking(*
T0*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
validate_shape(
Ό
save_15/Assign_22Assignvc/dense_1/bias/Adam_1save_15/RestoreV2:22*
_output_shapes	
:*
use_locking(*
T0*"
_class
loc:@vc/dense_1/bias*
validate_shape(
Ύ
save_15/Assign_23Assignvc/dense_1/kernelsave_15/RestoreV2:23* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel*
validate_shape(*
T0*
use_locking(
Γ
save_15/Assign_24Assignvc/dense_1/kernel/Adamsave_15/RestoreV2:24*
T0* 
_output_shapes
:
*
use_locking(*$
_class
loc:@vc/dense_1/kernel*
validate_shape(
Ε
save_15/Assign_25Assignvc/dense_1/kernel/Adam_1save_15/RestoreV2:25* 
_output_shapes
:
*
validate_shape(*
use_locking(*
T0*$
_class
loc:@vc/dense_1/kernel
΄
save_15/Assign_26Assignvc/dense_2/biassave_15/RestoreV2:26*
validate_shape(*
T0*"
_class
loc:@vc/dense_2/bias*
use_locking(*
_output_shapes
:
Ή
save_15/Assign_27Assignvc/dense_2/bias/Adamsave_15/RestoreV2:27*
_output_shapes
:*
use_locking(*
T0*
validate_shape(*"
_class
loc:@vc/dense_2/bias
»
save_15/Assign_28Assignvc/dense_2/bias/Adam_1save_15/RestoreV2:28*"
_class
loc:@vc/dense_2/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:
½
save_15/Assign_29Assignvc/dense_2/kernelsave_15/RestoreV2:29*
T0*$
_class
loc:@vc/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	
Β
save_15/Assign_30Assignvc/dense_2/kernel/Adamsave_15/RestoreV2:30*
_output_shapes
:	*$
_class
loc:@vc/dense_2/kernel*
validate_shape(*
T0*
use_locking(
Δ
save_15/Assign_31Assignvc/dense_2/kernel/Adam_1save_15/RestoreV2:31*
_output_shapes
:	*
use_locking(*
T0*
validate_shape(*$
_class
loc:@vc/dense_2/kernel
±
save_15/Assign_32Assignvf/dense/biassave_15/RestoreV2:32*
_output_shapes	
:*
use_locking(* 
_class
loc:@vf/dense/bias*
T0*
validate_shape(
Ά
save_15/Assign_33Assignvf/dense/bias/Adamsave_15/RestoreV2:33*
_output_shapes	
:* 
_class
loc:@vf/dense/bias*
validate_shape(*
use_locking(*
T0
Έ
save_15/Assign_34Assignvf/dense/bias/Adam_1save_15/RestoreV2:34*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(* 
_class
loc:@vf/dense/bias
Ή
save_15/Assign_35Assignvf/dense/kernelsave_15/RestoreV2:35*
T0*"
_class
loc:@vf/dense/kernel*
validate_shape(*
_output_shapes
:	0*
use_locking(
Ύ
save_15/Assign_36Assignvf/dense/kernel/Adamsave_15/RestoreV2:36*
use_locking(*
validate_shape(*"
_class
loc:@vf/dense/kernel*
T0*
_output_shapes
:	0
ΐ
save_15/Assign_37Assignvf/dense/kernel/Adam_1save_15/RestoreV2:37*
use_locking(*
validate_shape(*
T0*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0
΅
save_15/Assign_38Assignvf/dense_1/biassave_15/RestoreV2:38*
T0*
validate_shape(*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
use_locking(
Ί
save_15/Assign_39Assignvf/dense_1/bias/Adamsave_15/RestoreV2:39*
T0*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
use_locking(*
validate_shape(
Ό
save_15/Assign_40Assignvf/dense_1/bias/Adam_1save_15/RestoreV2:40*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
T0*
use_locking(
Ύ
save_15/Assign_41Assignvf/dense_1/kernelsave_15/RestoreV2:41*
validate_shape(*
use_locking(*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
T0
Γ
save_15/Assign_42Assignvf/dense_1/kernel/Adamsave_15/RestoreV2:42*$
_class
loc:@vf/dense_1/kernel*
validate_shape(*
T0*
use_locking(* 
_output_shapes
:

Ε
save_15/Assign_43Assignvf/dense_1/kernel/Adam_1save_15/RestoreV2:43*
validate_shape(*
use_locking(*$
_class
loc:@vf/dense_1/kernel*
T0* 
_output_shapes
:

΄
save_15/Assign_44Assignvf/dense_2/biassave_15/RestoreV2:44*
T0*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
use_locking(*
validate_shape(
Ή
save_15/Assign_45Assignvf/dense_2/bias/Adamsave_15/RestoreV2:45*"
_class
loc:@vf/dense_2/bias*
T0*
_output_shapes
:*
validate_shape(*
use_locking(
»
save_15/Assign_46Assignvf/dense_2/bias/Adam_1save_15/RestoreV2:46*
use_locking(*"
_class
loc:@vf/dense_2/bias*
T0*
_output_shapes
:*
validate_shape(
½
save_15/Assign_47Assignvf/dense_2/kernelsave_15/RestoreV2:47*
validate_shape(*
T0*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	*
use_locking(
Β
save_15/Assign_48Assignvf/dense_2/kernel/Adamsave_15/RestoreV2:48*
T0*
use_locking(*
_output_shapes
:	*$
_class
loc:@vf/dense_2/kernel*
validate_shape(
Δ
save_15/Assign_49Assignvf/dense_2/kernel/Adam_1save_15/RestoreV2:49*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
_output_shapes
:	*
T0*
use_locking(
ω
save_15/restore_shardNoOp^save_15/Assign^save_15/Assign_1^save_15/Assign_10^save_15/Assign_11^save_15/Assign_12^save_15/Assign_13^save_15/Assign_14^save_15/Assign_15^save_15/Assign_16^save_15/Assign_17^save_15/Assign_18^save_15/Assign_19^save_15/Assign_2^save_15/Assign_20^save_15/Assign_21^save_15/Assign_22^save_15/Assign_23^save_15/Assign_24^save_15/Assign_25^save_15/Assign_26^save_15/Assign_27^save_15/Assign_28^save_15/Assign_29^save_15/Assign_3^save_15/Assign_30^save_15/Assign_31^save_15/Assign_32^save_15/Assign_33^save_15/Assign_34^save_15/Assign_35^save_15/Assign_36^save_15/Assign_37^save_15/Assign_38^save_15/Assign_39^save_15/Assign_4^save_15/Assign_40^save_15/Assign_41^save_15/Assign_42^save_15/Assign_43^save_15/Assign_44^save_15/Assign_45^save_15/Assign_46^save_15/Assign_47^save_15/Assign_48^save_15/Assign_49^save_15/Assign_5^save_15/Assign_6^save_15/Assign_7^save_15/Assign_8^save_15/Assign_9
3
save_15/restore_allNoOp^save_15/restore_shard
\
save_16/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
t
save_16/filenamePlaceholderWithDefaultsave_16/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_16/ConstPlaceholderWithDefaultsave_16/filename*
_output_shapes
: *
shape: *
dtype0

save_16/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_36ca6dc1abd5431b80746eb445885d81/part
~
save_16/StringJoin
StringJoinsave_16/Constsave_16/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_16/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
_
save_16/ShardedFilename/shardConst*
value	B : *
_output_shapes
: *
dtype0

save_16/ShardedFilenameShardedFilenamesave_16/StringJoinsave_16/ShardedFilename/shardsave_16/num_shards*
_output_shapes
: 
β
save_16/SaveV2/tensor_namesConst*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
_output_shapes
:2
Κ
save_16/SaveV2/shape_and_slicesConst*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?	
save_16/SaveV2SaveV2save_16/ShardedFilenamesave_16/SaveV2/tensor_namessave_16/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_16/control_dependencyIdentitysave_16/ShardedFilename^save_16/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_16/ShardedFilename
¦
.save_16/MergeV2Checkpoints/checkpoint_prefixesPacksave_16/ShardedFilename^save_16/control_dependency*
T0*
N*

axis *
_output_shapes
:

save_16/MergeV2CheckpointsMergeV2Checkpoints.save_16/MergeV2Checkpoints/checkpoint_prefixessave_16/Const*
delete_old_dirs(

save_16/IdentityIdentitysave_16/Const^save_16/MergeV2Checkpoints^save_16/control_dependency*
T0*
_output_shapes
: 
ε
save_16/RestoreV2/tensor_namesConst*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0
Ν
"save_16/RestoreV2/shape_and_slicesConst*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2

save_16/RestoreV2	RestoreV2save_16/Constsave_16/RestoreV2/tensor_names"save_16/RestoreV2/shape_and_slices*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
¬
save_16/AssignAssignbeta1_powersave_16/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
validate_shape(*(
_class
loc:@penalty/penalty_param
ͺ
save_16/Assign_1Assignbeta1_power_1save_16/RestoreV2:1*
validate_shape(*
use_locking(* 
_class
loc:@vc/dense/bias*
_output_shapes
: *
T0
°
save_16/Assign_2Assignbeta2_powersave_16/RestoreV2:2*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *(
_class
loc:@penalty/penalty_param
ͺ
save_16/Assign_3Assignbeta2_power_1save_16/RestoreV2:3*
use_locking(* 
_class
loc:@vc/dense/bias*
_output_shapes
: *
validate_shape(*
T0
Ί
save_16/Assign_4Assignpenalty/penalty_paramsave_16/RestoreV2:4*
T0*
validate_shape(*
use_locking(*
_output_shapes
: *(
_class
loc:@penalty/penalty_param
Ώ
save_16/Assign_5Assignpenalty/penalty_param/Adamsave_16/RestoreV2:5*(
_class
loc:@penalty/penalty_param*
use_locking(*
validate_shape(*
_output_shapes
: *
T0
Α
save_16/Assign_6Assignpenalty/penalty_param/Adam_1save_16/RestoreV2:6*
T0*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
validate_shape(*
use_locking(
―
save_16/Assign_7Assignpi/dense/biassave_16/RestoreV2:7*
T0*
validate_shape(*
use_locking(* 
_class
loc:@pi/dense/bias*
_output_shapes	
:
·
save_16/Assign_8Assignpi/dense/kernelsave_16/RestoreV2:8*
T0*
validate_shape(*
_output_shapes
:	0*
use_locking(*"
_class
loc:@pi/dense/kernel
³
save_16/Assign_9Assignpi/dense_1/biassave_16/RestoreV2:9*"
_class
loc:@pi/dense_1/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:
Ύ
save_16/Assign_10Assignpi/dense_1/kernelsave_16/RestoreV2:10*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
T0* 
_output_shapes
:
*
use_locking(
΄
save_16/Assign_11Assignpi/dense_2/biassave_16/RestoreV2:11*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes
:
½
save_16/Assign_12Assignpi/dense_2/kernelsave_16/RestoreV2:12*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:	*
validate_shape(
ͺ
save_16/Assign_13Assign
pi/log_stdsave_16/RestoreV2:13*
use_locking(*
_output_shapes
:*
T0*
_class
loc:@pi/log_std*
validate_shape(
±
save_16/Assign_14Assignvc/dense/biassave_16/RestoreV2:14*
use_locking(*
T0* 
_class
loc:@vc/dense/bias*
validate_shape(*
_output_shapes	
:
Ά
save_16/Assign_15Assignvc/dense/bias/Adamsave_16/RestoreV2:15*
use_locking(* 
_class
loc:@vc/dense/bias*
validate_shape(*
_output_shapes	
:*
T0
Έ
save_16/Assign_16Assignvc/dense/bias/Adam_1save_16/RestoreV2:16* 
_class
loc:@vc/dense/bias*
use_locking(*
_output_shapes	
:*
T0*
validate_shape(
Ή
save_16/Assign_17Assignvc/dense/kernelsave_16/RestoreV2:17*
_output_shapes
:	0*
validate_shape(*
use_locking(*
T0*"
_class
loc:@vc/dense/kernel
Ύ
save_16/Assign_18Assignvc/dense/kernel/Adamsave_16/RestoreV2:18*"
_class
loc:@vc/dense/kernel*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	0
ΐ
save_16/Assign_19Assignvc/dense/kernel/Adam_1save_16/RestoreV2:19*"
_class
loc:@vc/dense/kernel*
_output_shapes
:	0*
validate_shape(*
T0*
use_locking(
΅
save_16/Assign_20Assignvc/dense_1/biassave_16/RestoreV2:20*
_output_shapes	
:*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
use_locking(*
T0
Ί
save_16/Assign_21Assignvc/dense_1/bias/Adamsave_16/RestoreV2:21*
use_locking(*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
T0*
_output_shapes	
:
Ό
save_16/Assign_22Assignvc/dense_1/bias/Adam_1save_16/RestoreV2:22*
use_locking(*
T0*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
validate_shape(
Ύ
save_16/Assign_23Assignvc/dense_1/kernelsave_16/RestoreV2:23*$
_class
loc:@vc/dense_1/kernel*
validate_shape(*
T0*
use_locking(* 
_output_shapes
:

Γ
save_16/Assign_24Assignvc/dense_1/kernel/Adamsave_16/RestoreV2:24* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel*
validate_shape(*
T0*
use_locking(
Ε
save_16/Assign_25Assignvc/dense_1/kernel/Adam_1save_16/RestoreV2:25*
validate_shape(*$
_class
loc:@vc/dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

΄
save_16/Assign_26Assignvc/dense_2/biassave_16/RestoreV2:26*
validate_shape(*
T0*
use_locking(*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:
Ή
save_16/Assign_27Assignvc/dense_2/bias/Adamsave_16/RestoreV2:27*
T0*"
_class
loc:@vc/dense_2/bias*
use_locking(*
validate_shape(*
_output_shapes
:
»
save_16/Assign_28Assignvc/dense_2/bias/Adam_1save_16/RestoreV2:28*"
_class
loc:@vc/dense_2/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes
:
½
save_16/Assign_29Assignvc/dense_2/kernelsave_16/RestoreV2:29*
validate_shape(*
T0*
use_locking(*
_output_shapes
:	*$
_class
loc:@vc/dense_2/kernel
Β
save_16/Assign_30Assignvc/dense_2/kernel/Adamsave_16/RestoreV2:30*
_output_shapes
:	*$
_class
loc:@vc/dense_2/kernel*
T0*
validate_shape(*
use_locking(
Δ
save_16/Assign_31Assignvc/dense_2/kernel/Adam_1save_16/RestoreV2:31*
_output_shapes
:	*
validate_shape(*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
T0
±
save_16/Assign_32Assignvf/dense/biassave_16/RestoreV2:32*
_output_shapes	
:*
T0*
validate_shape(* 
_class
loc:@vf/dense/bias*
use_locking(
Ά
save_16/Assign_33Assignvf/dense/bias/Adamsave_16/RestoreV2:33*
validate_shape(* 
_class
loc:@vf/dense/bias*
_output_shapes	
:*
use_locking(*
T0
Έ
save_16/Assign_34Assignvf/dense/bias/Adam_1save_16/RestoreV2:34*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(* 
_class
loc:@vf/dense/bias
Ή
save_16/Assign_35Assignvf/dense/kernelsave_16/RestoreV2:35*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0*
validate_shape(*
use_locking(*
T0
Ύ
save_16/Assign_36Assignvf/dense/kernel/Adamsave_16/RestoreV2:36*
use_locking(*
T0*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
validate_shape(
ΐ
save_16/Assign_37Assignvf/dense/kernel/Adam_1save_16/RestoreV2:37*
use_locking(*
T0*
_output_shapes
:	0*
validate_shape(*"
_class
loc:@vf/dense/kernel
΅
save_16/Assign_38Assignvf/dense_1/biassave_16/RestoreV2:38*
T0*
use_locking(*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
validate_shape(
Ί
save_16/Assign_39Assignvf/dense_1/bias/Adamsave_16/RestoreV2:39*
validate_shape(*
T0*"
_class
loc:@vf/dense_1/bias*
_output_shapes	
:*
use_locking(
Ό
save_16/Assign_40Assignvf/dense_1/bias/Adam_1save_16/RestoreV2:40*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias
Ύ
save_16/Assign_41Assignvf/dense_1/kernelsave_16/RestoreV2:41*$
_class
loc:@vf/dense_1/kernel*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(
Γ
save_16/Assign_42Assignvf/dense_1/kernel/Adamsave_16/RestoreV2:42*$
_class
loc:@vf/dense_1/kernel*
use_locking(*
validate_shape(* 
_output_shapes
:
*
T0
Ε
save_16/Assign_43Assignvf/dense_1/kernel/Adam_1save_16/RestoreV2:43*$
_class
loc:@vf/dense_1/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
*
T0
΄
save_16/Assign_44Assignvf/dense_2/biassave_16/RestoreV2:44*
T0*
validate_shape(*
use_locking(*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias
Ή
save_16/Assign_45Assignvf/dense_2/bias/Adamsave_16/RestoreV2:45*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias*
use_locking(*
T0*
validate_shape(
»
save_16/Assign_46Assignvf/dense_2/bias/Adam_1save_16/RestoreV2:46*
use_locking(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0
½
save_16/Assign_47Assignvf/dense_2/kernelsave_16/RestoreV2:47*$
_class
loc:@vf/dense_2/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
Β
save_16/Assign_48Assignvf/dense_2/kernel/Adamsave_16/RestoreV2:48*$
_class
loc:@vf/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(*
use_locking(
Δ
save_16/Assign_49Assignvf/dense_2/kernel/Adam_1save_16/RestoreV2:49*
use_locking(*
T0*
_output_shapes
:	*
validate_shape(*$
_class
loc:@vf/dense_2/kernel
ω
save_16/restore_shardNoOp^save_16/Assign^save_16/Assign_1^save_16/Assign_10^save_16/Assign_11^save_16/Assign_12^save_16/Assign_13^save_16/Assign_14^save_16/Assign_15^save_16/Assign_16^save_16/Assign_17^save_16/Assign_18^save_16/Assign_19^save_16/Assign_2^save_16/Assign_20^save_16/Assign_21^save_16/Assign_22^save_16/Assign_23^save_16/Assign_24^save_16/Assign_25^save_16/Assign_26^save_16/Assign_27^save_16/Assign_28^save_16/Assign_29^save_16/Assign_3^save_16/Assign_30^save_16/Assign_31^save_16/Assign_32^save_16/Assign_33^save_16/Assign_34^save_16/Assign_35^save_16/Assign_36^save_16/Assign_37^save_16/Assign_38^save_16/Assign_39^save_16/Assign_4^save_16/Assign_40^save_16/Assign_41^save_16/Assign_42^save_16/Assign_43^save_16/Assign_44^save_16/Assign_45^save_16/Assign_46^save_16/Assign_47^save_16/Assign_48^save_16/Assign_49^save_16/Assign_5^save_16/Assign_6^save_16/Assign_7^save_16/Assign_8^save_16/Assign_9
3
save_16/restore_allNoOp^save_16/restore_shard
\
save_17/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
t
save_17/filenamePlaceholderWithDefaultsave_17/filename/input*
shape: *
dtype0*
_output_shapes
: 
k
save_17/ConstPlaceholderWithDefaultsave_17/filename*
dtype0*
shape: *
_output_shapes
: 

save_17/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_71a5aa3df5eb433b9658855cff475180/part*
dtype0
~
save_17/StringJoin
StringJoinsave_17/Constsave_17/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
T
save_17/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
_
save_17/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_17/ShardedFilenameShardedFilenamesave_17/StringJoinsave_17/ShardedFilename/shardsave_17/num_shards*
_output_shapes
: 
β
save_17/SaveV2/tensor_namesConst*
_output_shapes
:2*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Κ
save_17/SaveV2/shape_and_slicesConst*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?	
save_17/SaveV2SaveV2save_17/ShardedFilenamesave_17/SaveV2/tensor_namessave_17/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_17/control_dependencyIdentitysave_17/ShardedFilename^save_17/SaveV2*
T0**
_class 
loc:@save_17/ShardedFilename*
_output_shapes
: 
¦
.save_17/MergeV2Checkpoints/checkpoint_prefixesPacksave_17/ShardedFilename^save_17/control_dependency*
_output_shapes
:*
T0*
N*

axis 

save_17/MergeV2CheckpointsMergeV2Checkpoints.save_17/MergeV2Checkpoints/checkpoint_prefixessave_17/Const*
delete_old_dirs(

save_17/IdentityIdentitysave_17/Const^save_17/MergeV2Checkpoints^save_17/control_dependency*
T0*
_output_shapes
: 
ε
save_17/RestoreV2/tensor_namesConst*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
_output_shapes
:2
Ν
"save_17/RestoreV2/shape_and_slicesConst*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_17/RestoreV2	RestoreV2save_17/Constsave_17/RestoreV2/tensor_names"save_17/RestoreV2/shape_and_slices*@
dtypes6
422*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::
¬
save_17/AssignAssignbeta1_powersave_17/RestoreV2*
use_locking(*
_output_shapes
: *
validate_shape(*(
_class
loc:@penalty/penalty_param*
T0
ͺ
save_17/Assign_1Assignbeta1_power_1save_17/RestoreV2:1*
use_locking(*
validate_shape(*
_output_shapes
: * 
_class
loc:@vc/dense/bias*
T0
°
save_17/Assign_2Assignbeta2_powersave_17/RestoreV2:2*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*(
_class
loc:@penalty/penalty_param
ͺ
save_17/Assign_3Assignbeta2_power_1save_17/RestoreV2:3*
_output_shapes
: *
validate_shape(* 
_class
loc:@vc/dense/bias*
T0*
use_locking(
Ί
save_17/Assign_4Assignpenalty/penalty_paramsave_17/RestoreV2:4*(
_class
loc:@penalty/penalty_param*
validate_shape(*
use_locking(*
_output_shapes
: *
T0
Ώ
save_17/Assign_5Assignpenalty/penalty_param/Adamsave_17/RestoreV2:5*
use_locking(*
T0*
validate_shape(*(
_class
loc:@penalty/penalty_param*
_output_shapes
: 
Α
save_17/Assign_6Assignpenalty/penalty_param/Adam_1save_17/RestoreV2:6*
use_locking(*
validate_shape(*
_output_shapes
: *
T0*(
_class
loc:@penalty/penalty_param
―
save_17/Assign_7Assignpi/dense/biassave_17/RestoreV2:7*
_output_shapes	
:*
T0* 
_class
loc:@pi/dense/bias*
use_locking(*
validate_shape(
·
save_17/Assign_8Assignpi/dense/kernelsave_17/RestoreV2:8*
_output_shapes
:	0*
validate_shape(*
use_locking(*"
_class
loc:@pi/dense/kernel*
T0
³
save_17/Assign_9Assignpi/dense_1/biassave_17/RestoreV2:9*
T0*
validate_shape(*
_output_shapes	
:*"
_class
loc:@pi/dense_1/bias*
use_locking(
Ύ
save_17/Assign_10Assignpi/dense_1/kernelsave_17/RestoreV2:10*
use_locking(*$
_class
loc:@pi/dense_1/kernel* 
_output_shapes
:
*
T0*
validate_shape(
΄
save_17/Assign_11Assignpi/dense_2/biassave_17/RestoreV2:11*"
_class
loc:@pi/dense_2/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes
:
½
save_17/Assign_12Assignpi/dense_2/kernelsave_17/RestoreV2:12*
use_locking(*$
_class
loc:@pi/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(
ͺ
save_17/Assign_13Assign
pi/log_stdsave_17/RestoreV2:13*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*
_class
loc:@pi/log_std
±
save_17/Assign_14Assignvc/dense/biassave_17/RestoreV2:14*
_output_shapes	
:* 
_class
loc:@vc/dense/bias*
use_locking(*
validate_shape(*
T0
Ά
save_17/Assign_15Assignvc/dense/bias/Adamsave_17/RestoreV2:15*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:* 
_class
loc:@vc/dense/bias
Έ
save_17/Assign_16Assignvc/dense/bias/Adam_1save_17/RestoreV2:16*
validate_shape(* 
_class
loc:@vc/dense/bias*
T0*
use_locking(*
_output_shapes	
:
Ή
save_17/Assign_17Assignvc/dense/kernelsave_17/RestoreV2:17*
use_locking(*"
_class
loc:@vc/dense/kernel*
validate_shape(*
_output_shapes
:	0*
T0
Ύ
save_17/Assign_18Assignvc/dense/kernel/Adamsave_17/RestoreV2:18*
use_locking(*"
_class
loc:@vc/dense/kernel*
validate_shape(*
_output_shapes
:	0*
T0
ΐ
save_17/Assign_19Assignvc/dense/kernel/Adam_1save_17/RestoreV2:19*"
_class
loc:@vc/dense/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	0
΅
save_17/Assign_20Assignvc/dense_1/biassave_17/RestoreV2:20*
T0*
validate_shape(*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:*
use_locking(
Ί
save_17/Assign_21Assignvc/dense_1/bias/Adamsave_17/RestoreV2:21*"
_class
loc:@vc/dense_1/bias*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(
Ό
save_17/Assign_22Assignvc/dense_1/bias/Adam_1save_17/RestoreV2:22*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
T0*
use_locking(*
validate_shape(
Ύ
save_17/Assign_23Assignvc/dense_1/kernelsave_17/RestoreV2:23*$
_class
loc:@vc/dense_1/kernel*
use_locking(*
T0*
validate_shape(* 
_output_shapes
:

Γ
save_17/Assign_24Assignvc/dense_1/kernel/Adamsave_17/RestoreV2:24*
validate_shape(*$
_class
loc:@vc/dense_1/kernel* 
_output_shapes
:
*
use_locking(*
T0
Ε
save_17/Assign_25Assignvc/dense_1/kernel/Adam_1save_17/RestoreV2:25* 
_output_shapes
:
*
validate_shape(*$
_class
loc:@vc/dense_1/kernel*
use_locking(*
T0
΄
save_17/Assign_26Assignvc/dense_2/biassave_17/RestoreV2:26*"
_class
loc:@vc/dense_2/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
Ή
save_17/Assign_27Assignvc/dense_2/bias/Adamsave_17/RestoreV2:27*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
use_locking(*
T0*
validate_shape(
»
save_17/Assign_28Assignvc/dense_2/bias/Adam_1save_17/RestoreV2:28*
T0*
use_locking(*"
_class
loc:@vc/dense_2/bias*
validate_shape(*
_output_shapes
:
½
save_17/Assign_29Assignvc/dense_2/kernelsave_17/RestoreV2:29*
T0*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
validate_shape(*
_output_shapes
:	
Β
save_17/Assign_30Assignvc/dense_2/kernel/Adamsave_17/RestoreV2:30*
_output_shapes
:	*
T0*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
validate_shape(
Δ
save_17/Assign_31Assignvc/dense_2/kernel/Adam_1save_17/RestoreV2:31*
use_locking(*
validate_shape(*
T0*$
_class
loc:@vc/dense_2/kernel*
_output_shapes
:	
±
save_17/Assign_32Assignvf/dense/biassave_17/RestoreV2:32*
_output_shapes	
:*
T0*
use_locking(* 
_class
loc:@vf/dense/bias*
validate_shape(
Ά
save_17/Assign_33Assignvf/dense/bias/Adamsave_17/RestoreV2:33*
T0* 
_class
loc:@vf/dense/bias*
_output_shapes	
:*
validate_shape(*
use_locking(
Έ
save_17/Assign_34Assignvf/dense/bias/Adam_1save_17/RestoreV2:34*
_output_shapes	
:*
T0* 
_class
loc:@vf/dense/bias*
use_locking(*
validate_shape(
Ή
save_17/Assign_35Assignvf/dense/kernelsave_17/RestoreV2:35*
validate_shape(*"
_class
loc:@vf/dense/kernel*
T0*
use_locking(*
_output_shapes
:	0
Ύ
save_17/Assign_36Assignvf/dense/kernel/Adamsave_17/RestoreV2:36*"
_class
loc:@vf/dense/kernel*
T0*
_output_shapes
:	0*
use_locking(*
validate_shape(
ΐ
save_17/Assign_37Assignvf/dense/kernel/Adam_1save_17/RestoreV2:37*"
_class
loc:@vf/dense/kernel*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	0
΅
save_17/Assign_38Assignvf/dense_1/biassave_17/RestoreV2:38*
use_locking(*"
_class
loc:@vf/dense_1/bias*
_output_shapes	
:*
T0*
validate_shape(
Ί
save_17/Assign_39Assignvf/dense_1/bias/Adamsave_17/RestoreV2:39*
_output_shapes	
:*
use_locking(*"
_class
loc:@vf/dense_1/bias*
T0*
validate_shape(
Ό
save_17/Assign_40Assignvf/dense_1/bias/Adam_1save_17/RestoreV2:40*
T0*"
_class
loc:@vf/dense_1/bias*
_output_shapes	
:*
validate_shape(*
use_locking(
Ύ
save_17/Assign_41Assignvf/dense_1/kernelsave_17/RestoreV2:41* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel*
T0*
use_locking(*
validate_shape(
Γ
save_17/Assign_42Assignvf/dense_1/kernel/Adamsave_17/RestoreV2:42* 
_output_shapes
:
*
use_locking(*
T0*$
_class
loc:@vf/dense_1/kernel*
validate_shape(
Ε
save_17/Assign_43Assignvf/dense_1/kernel/Adam_1save_17/RestoreV2:43*
use_locking(*
T0*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
validate_shape(
΄
save_17/Assign_44Assignvf/dense_2/biassave_17/RestoreV2:44*"
_class
loc:@vf/dense_2/bias*
T0*
validate_shape(*
_output_shapes
:*
use_locking(
Ή
save_17/Assign_45Assignvf/dense_2/bias/Adamsave_17/RestoreV2:45*
use_locking(*
validate_shape(*
_output_shapes
:*
T0*"
_class
loc:@vf/dense_2/bias
»
save_17/Assign_46Assignvf/dense_2/bias/Adam_1save_17/RestoreV2:46*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
use_locking(*
_output_shapes
:*
T0
½
save_17/Assign_47Assignvf/dense_2/kernelsave_17/RestoreV2:47*
T0*$
_class
loc:@vf/dense_2/kernel*
use_locking(*
_output_shapes
:	*
validate_shape(
Β
save_17/Assign_48Assignvf/dense_2/kernel/Adamsave_17/RestoreV2:48*
validate_shape(*
T0*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	
Δ
save_17/Assign_49Assignvf/dense_2/kernel/Adam_1save_17/RestoreV2:49*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
validate_shape(*
_output_shapes
:	*
T0
ω
save_17/restore_shardNoOp^save_17/Assign^save_17/Assign_1^save_17/Assign_10^save_17/Assign_11^save_17/Assign_12^save_17/Assign_13^save_17/Assign_14^save_17/Assign_15^save_17/Assign_16^save_17/Assign_17^save_17/Assign_18^save_17/Assign_19^save_17/Assign_2^save_17/Assign_20^save_17/Assign_21^save_17/Assign_22^save_17/Assign_23^save_17/Assign_24^save_17/Assign_25^save_17/Assign_26^save_17/Assign_27^save_17/Assign_28^save_17/Assign_29^save_17/Assign_3^save_17/Assign_30^save_17/Assign_31^save_17/Assign_32^save_17/Assign_33^save_17/Assign_34^save_17/Assign_35^save_17/Assign_36^save_17/Assign_37^save_17/Assign_38^save_17/Assign_39^save_17/Assign_4^save_17/Assign_40^save_17/Assign_41^save_17/Assign_42^save_17/Assign_43^save_17/Assign_44^save_17/Assign_45^save_17/Assign_46^save_17/Assign_47^save_17/Assign_48^save_17/Assign_49^save_17/Assign_5^save_17/Assign_6^save_17/Assign_7^save_17/Assign_8^save_17/Assign_9
3
save_17/restore_allNoOp^save_17/restore_shard
\
save_18/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
t
save_18/filenamePlaceholderWithDefaultsave_18/filename/input*
_output_shapes
: *
shape: *
dtype0
k
save_18/ConstPlaceholderWithDefaultsave_18/filename*
_output_shapes
: *
dtype0*
shape: 

save_18/StringJoin/inputs_1Const*<
value3B1 B+_temp_9606d36848be4d129541e7cb0fcd5cc4/part*
_output_shapes
: *
dtype0
~
save_18/StringJoin
StringJoinsave_18/Constsave_18/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_18/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
_
save_18/ShardedFilename/shardConst*
_output_shapes
: *
dtype0*
value	B : 

save_18/ShardedFilenameShardedFilenamesave_18/StringJoinsave_18/ShardedFilename/shardsave_18/num_shards*
_output_shapes
: 
β
save_18/SaveV2/tensor_namesConst*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0
Κ
save_18/SaveV2/shape_and_slicesConst*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2
?	
save_18/SaveV2SaveV2save_18/ShardedFilenamesave_18/SaveV2/tensor_namessave_18/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_18/control_dependencyIdentitysave_18/ShardedFilename^save_18/SaveV2*
T0**
_class 
loc:@save_18/ShardedFilename*
_output_shapes
: 
¦
.save_18/MergeV2Checkpoints/checkpoint_prefixesPacksave_18/ShardedFilename^save_18/control_dependency*
_output_shapes
:*
T0*
N*

axis 

save_18/MergeV2CheckpointsMergeV2Checkpoints.save_18/MergeV2Checkpoints/checkpoint_prefixessave_18/Const*
delete_old_dirs(

save_18/IdentityIdentitysave_18/Const^save_18/MergeV2Checkpoints^save_18/control_dependency*
_output_shapes
: *
T0
ε
save_18/RestoreV2/tensor_namesConst*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
_output_shapes
:2*
dtype0
Ν
"save_18/RestoreV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:2*
dtype0

save_18/RestoreV2	RestoreV2save_18/Constsave_18/RestoreV2/tensor_names"save_18/RestoreV2/shape_and_slices*@
dtypes6
422*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::
¬
save_18/AssignAssignbeta1_powersave_18/RestoreV2*
validate_shape(*
T0*(
_class
loc:@penalty/penalty_param*
use_locking(*
_output_shapes
: 
ͺ
save_18/Assign_1Assignbeta1_power_1save_18/RestoreV2:1*
use_locking(*
T0*
_output_shapes
: * 
_class
loc:@vc/dense/bias*
validate_shape(
°
save_18/Assign_2Assignbeta2_powersave_18/RestoreV2:2*
T0*(
_class
loc:@penalty/penalty_param*
validate_shape(*
_output_shapes
: *
use_locking(
ͺ
save_18/Assign_3Assignbeta2_power_1save_18/RestoreV2:3*
use_locking(*
validate_shape(*
_output_shapes
: * 
_class
loc:@vc/dense/bias*
T0
Ί
save_18/Assign_4Assignpenalty/penalty_paramsave_18/RestoreV2:4*
T0*
_output_shapes
: *
validate_shape(*
use_locking(*(
_class
loc:@penalty/penalty_param
Ώ
save_18/Assign_5Assignpenalty/penalty_param/Adamsave_18/RestoreV2:5*(
_class
loc:@penalty/penalty_param*
T0*
validate_shape(*
use_locking(*
_output_shapes
: 
Α
save_18/Assign_6Assignpenalty/penalty_param/Adam_1save_18/RestoreV2:6*
T0*(
_class
loc:@penalty/penalty_param*
validate_shape(*
_output_shapes
: *
use_locking(
―
save_18/Assign_7Assignpi/dense/biassave_18/RestoreV2:7*
T0*
use_locking(* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes	
:
·
save_18/Assign_8Assignpi/dense/kernelsave_18/RestoreV2:8*
validate_shape(*
_output_shapes
:	0*
T0*
use_locking(*"
_class
loc:@pi/dense/kernel
³
save_18/Assign_9Assignpi/dense_1/biassave_18/RestoreV2:9*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ύ
save_18/Assign_10Assignpi/dense_1/kernelsave_18/RestoreV2:10* 
_output_shapes
:
*
validate_shape(*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel
΄
save_18/Assign_11Assignpi/dense_2/biassave_18/RestoreV2:11*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*"
_class
loc:@pi/dense_2/bias
½
save_18/Assign_12Assignpi/dense_2/kernelsave_18/RestoreV2:12*
T0*
validate_shape(*
use_locking(*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:	
ͺ
save_18/Assign_13Assign
pi/log_stdsave_18/RestoreV2:13*
T0*
use_locking(*
validate_shape(*
_output_shapes
:*
_class
loc:@pi/log_std
±
save_18/Assign_14Assignvc/dense/biassave_18/RestoreV2:14* 
_class
loc:@vc/dense/bias*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(
Ά
save_18/Assign_15Assignvc/dense/bias/Adamsave_18/RestoreV2:15*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0* 
_class
loc:@vc/dense/bias
Έ
save_18/Assign_16Assignvc/dense/bias/Adam_1save_18/RestoreV2:16*
_output_shapes	
:* 
_class
loc:@vc/dense/bias*
T0*
use_locking(*
validate_shape(
Ή
save_18/Assign_17Assignvc/dense/kernelsave_18/RestoreV2:17*
_output_shapes
:	0*
use_locking(*"
_class
loc:@vc/dense/kernel*
T0*
validate_shape(
Ύ
save_18/Assign_18Assignvc/dense/kernel/Adamsave_18/RestoreV2:18*
_output_shapes
:	0*
use_locking(*
validate_shape(*"
_class
loc:@vc/dense/kernel*
T0
ΐ
save_18/Assign_19Assignvc/dense/kernel/Adam_1save_18/RestoreV2:19*
use_locking(*
_output_shapes
:	0*
T0*
validate_shape(*"
_class
loc:@vc/dense/kernel
΅
save_18/Assign_20Assignvc/dense_1/biassave_18/RestoreV2:20*
use_locking(*"
_class
loc:@vc/dense_1/bias*
validate_shape(*
_output_shapes	
:*
T0
Ί
save_18/Assign_21Assignvc/dense_1/bias/Adamsave_18/RestoreV2:21*
validate_shape(*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
use_locking(*
T0
Ό
save_18/Assign_22Assignvc/dense_1/bias/Adam_1save_18/RestoreV2:22*
validate_shape(*
use_locking(*
T0*"
_class
loc:@vc/dense_1/bias*
_output_shapes	
:
Ύ
save_18/Assign_23Assignvc/dense_1/kernelsave_18/RestoreV2:23*$
_class
loc:@vc/dense_1/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
*
T0
Γ
save_18/Assign_24Assignvc/dense_1/kernel/Adamsave_18/RestoreV2:24*
validate_shape(*$
_class
loc:@vc/dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

Ε
save_18/Assign_25Assignvc/dense_1/kernel/Adam_1save_18/RestoreV2:25* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(*$
_class
loc:@vc/dense_1/kernel
΄
save_18/Assign_26Assignvc/dense_2/biassave_18/RestoreV2:26*
use_locking(*
validate_shape(*
T0*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:
Ή
save_18/Assign_27Assignvc/dense_2/bias/Adamsave_18/RestoreV2:27*
validate_shape(*"
_class
loc:@vc/dense_2/bias*
_output_shapes
:*
use_locking(*
T0
»
save_18/Assign_28Assignvc/dense_2/bias/Adam_1save_18/RestoreV2:28*
validate_shape(*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
use_locking(*
T0
½
save_18/Assign_29Assignvc/dense_2/kernelsave_18/RestoreV2:29*
validate_shape(*$
_class
loc:@vc/dense_2/kernel*
T0*
use_locking(*
_output_shapes
:	
Β
save_18/Assign_30Assignvc/dense_2/kernel/Adamsave_18/RestoreV2:30*
validate_shape(*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
T0*
_output_shapes
:	
Δ
save_18/Assign_31Assignvc/dense_2/kernel/Adam_1save_18/RestoreV2:31*
T0*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
_output_shapes
:	*
validate_shape(
±
save_18/Assign_32Assignvf/dense/biassave_18/RestoreV2:32*
T0*
_output_shapes	
:* 
_class
loc:@vf/dense/bias*
validate_shape(*
use_locking(
Ά
save_18/Assign_33Assignvf/dense/bias/Adamsave_18/RestoreV2:33*
validate_shape(*
_output_shapes	
:*
use_locking(* 
_class
loc:@vf/dense/bias*
T0
Έ
save_18/Assign_34Assignvf/dense/bias/Adam_1save_18/RestoreV2:34* 
_class
loc:@vf/dense/bias*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(
Ή
save_18/Assign_35Assignvf/dense/kernelsave_18/RestoreV2:35*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel
Ύ
save_18/Assign_36Assignvf/dense/kernel/Adamsave_18/RestoreV2:36*
validate_shape(*
T0*
use_locking(*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0
ΐ
save_18/Assign_37Assignvf/dense/kernel/Adam_1save_18/RestoreV2:37*
validate_shape(*
T0*
use_locking(*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0
΅
save_18/Assign_38Assignvf/dense_1/biassave_18/RestoreV2:38*"
_class
loc:@vf/dense_1/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:
Ί
save_18/Assign_39Assignvf/dense_1/bias/Adamsave_18/RestoreV2:39*
use_locking(*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
_output_shapes	
:*
T0
Ό
save_18/Assign_40Assignvf/dense_1/bias/Adam_1save_18/RestoreV2:40*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias
Ύ
save_18/Assign_41Assignvf/dense_1/kernelsave_18/RestoreV2:41*
validate_shape(*$
_class
loc:@vf/dense_1/kernel*
use_locking(* 
_output_shapes
:
*
T0
Γ
save_18/Assign_42Assignvf/dense_1/kernel/Adamsave_18/RestoreV2:42*
use_locking(*
T0*$
_class
loc:@vf/dense_1/kernel*
validate_shape(* 
_output_shapes
:

Ε
save_18/Assign_43Assignvf/dense_1/kernel/Adam_1save_18/RestoreV2:43*
use_locking(*
T0*$
_class
loc:@vf/dense_1/kernel*
validate_shape(* 
_output_shapes
:

΄
save_18/Assign_44Assignvf/dense_2/biassave_18/RestoreV2:44*
use_locking(*"
_class
loc:@vf/dense_2/bias*
T0*
_output_shapes
:*
validate_shape(
Ή
save_18/Assign_45Assignvf/dense_2/bias/Adamsave_18/RestoreV2:45*"
_class
loc:@vf/dense_2/bias*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
»
save_18/Assign_46Assignvf/dense_2/bias/Adam_1save_18/RestoreV2:46*
validate_shape(*
T0*
use_locking(*
_output_shapes
:*"
_class
loc:@vf/dense_2/bias
½
save_18/Assign_47Assignvf/dense_2/kernelsave_18/RestoreV2:47*
validate_shape(*
_output_shapes
:	*
T0*
use_locking(*$
_class
loc:@vf/dense_2/kernel
Β
save_18/Assign_48Assignvf/dense_2/kernel/Adamsave_18/RestoreV2:48*
validate_shape(*$
_class
loc:@vf/dense_2/kernel*
use_locking(*
T0*
_output_shapes
:	
Δ
save_18/Assign_49Assignvf/dense_2/kernel/Adam_1save_18/RestoreV2:49*
_output_shapes
:	*
validate_shape(*
use_locking(*
T0*$
_class
loc:@vf/dense_2/kernel
ω
save_18/restore_shardNoOp^save_18/Assign^save_18/Assign_1^save_18/Assign_10^save_18/Assign_11^save_18/Assign_12^save_18/Assign_13^save_18/Assign_14^save_18/Assign_15^save_18/Assign_16^save_18/Assign_17^save_18/Assign_18^save_18/Assign_19^save_18/Assign_2^save_18/Assign_20^save_18/Assign_21^save_18/Assign_22^save_18/Assign_23^save_18/Assign_24^save_18/Assign_25^save_18/Assign_26^save_18/Assign_27^save_18/Assign_28^save_18/Assign_29^save_18/Assign_3^save_18/Assign_30^save_18/Assign_31^save_18/Assign_32^save_18/Assign_33^save_18/Assign_34^save_18/Assign_35^save_18/Assign_36^save_18/Assign_37^save_18/Assign_38^save_18/Assign_39^save_18/Assign_4^save_18/Assign_40^save_18/Assign_41^save_18/Assign_42^save_18/Assign_43^save_18/Assign_44^save_18/Assign_45^save_18/Assign_46^save_18/Assign_47^save_18/Assign_48^save_18/Assign_49^save_18/Assign_5^save_18/Assign_6^save_18/Assign_7^save_18/Assign_8^save_18/Assign_9
3
save_18/restore_allNoOp^save_18/restore_shard
\
save_19/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
t
save_19/filenamePlaceholderWithDefaultsave_19/filename/input*
_output_shapes
: *
shape: *
dtype0
k
save_19/ConstPlaceholderWithDefaultsave_19/filename*
dtype0*
_output_shapes
: *
shape: 

save_19/StringJoin/inputs_1Const*<
value3B1 B+_temp_4842491aa53e4226bcd79a0fb27f39b5/part*
_output_shapes
: *
dtype0
~
save_19/StringJoin
StringJoinsave_19/Constsave_19/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
T
save_19/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
_
save_19/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_19/ShardedFilenameShardedFilenamesave_19/StringJoinsave_19/ShardedFilename/shardsave_19/num_shards*
_output_shapes
: 
β
save_19/SaveV2/tensor_namesConst*
_output_shapes
:2*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Κ
save_19/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?	
save_19/SaveV2SaveV2save_19/ShardedFilenamesave_19/SaveV2/tensor_namessave_19/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_19/control_dependencyIdentitysave_19/ShardedFilename^save_19/SaveV2*
T0*
_output_shapes
: **
_class 
loc:@save_19/ShardedFilename
¦
.save_19/MergeV2Checkpoints/checkpoint_prefixesPacksave_19/ShardedFilename^save_19/control_dependency*
N*
T0*

axis *
_output_shapes
:

save_19/MergeV2CheckpointsMergeV2Checkpoints.save_19/MergeV2Checkpoints/checkpoint_prefixessave_19/Const*
delete_old_dirs(

save_19/IdentityIdentitysave_19/Const^save_19/MergeV2Checkpoints^save_19/control_dependency*
T0*
_output_shapes
: 
ε
save_19/RestoreV2/tensor_namesConst*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0
Ν
"save_19/RestoreV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2

save_19/RestoreV2	RestoreV2save_19/Constsave_19/RestoreV2/tensor_names"save_19/RestoreV2/shape_and_slices*@
dtypes6
422*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::
¬
save_19/AssignAssignbeta1_powersave_19/RestoreV2*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*(
_class
loc:@penalty/penalty_param
ͺ
save_19/Assign_1Assignbeta1_power_1save_19/RestoreV2:1*
T0*
validate_shape(*
_output_shapes
: * 
_class
loc:@vc/dense/bias*
use_locking(
°
save_19/Assign_2Assignbeta2_powersave_19/RestoreV2:2*
use_locking(*
T0*(
_class
loc:@penalty/penalty_param*
validate_shape(*
_output_shapes
: 
ͺ
save_19/Assign_3Assignbeta2_power_1save_19/RestoreV2:3*
validate_shape(*
use_locking(* 
_class
loc:@vc/dense/bias*
_output_shapes
: *
T0
Ί
save_19/Assign_4Assignpenalty/penalty_paramsave_19/RestoreV2:4*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*(
_class
loc:@penalty/penalty_param
Ώ
save_19/Assign_5Assignpenalty/penalty_param/Adamsave_19/RestoreV2:5*
use_locking(*(
_class
loc:@penalty/penalty_param*
T0*
_output_shapes
: *
validate_shape(
Α
save_19/Assign_6Assignpenalty/penalty_param/Adam_1save_19/RestoreV2:6*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
T0*
use_locking(*
validate_shape(
―
save_19/Assign_7Assignpi/dense/biassave_19/RestoreV2:7* 
_class
loc:@pi/dense/bias*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0
·
save_19/Assign_8Assignpi/dense/kernelsave_19/RestoreV2:8*
_output_shapes
:	0*
use_locking(*
validate_shape(*
T0*"
_class
loc:@pi/dense/kernel
³
save_19/Assign_9Assignpi/dense_1/biassave_19/RestoreV2:9*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0
Ύ
save_19/Assign_10Assignpi/dense_1/kernelsave_19/RestoreV2:10* 
_output_shapes
:
*
validate_shape(*
use_locking(*$
_class
loc:@pi/dense_1/kernel*
T0
΄
save_19/Assign_11Assignpi/dense_2/biassave_19/RestoreV2:11*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
T0*
_output_shapes
:*
use_locking(
½
save_19/Assign_12Assignpi/dense_2/kernelsave_19/RestoreV2:12*$
_class
loc:@pi/dense_2/kernel*
use_locking(*
_output_shapes
:	*
T0*
validate_shape(
ͺ
save_19/Assign_13Assign
pi/log_stdsave_19/RestoreV2:13*
_class
loc:@pi/log_std*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
±
save_19/Assign_14Assignvc/dense/biassave_19/RestoreV2:14* 
_class
loc:@vc/dense/bias*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(
Ά
save_19/Assign_15Assignvc/dense/bias/Adamsave_19/RestoreV2:15*
T0* 
_class
loc:@vc/dense/bias*
use_locking(*
_output_shapes	
:*
validate_shape(
Έ
save_19/Assign_16Assignvc/dense/bias/Adam_1save_19/RestoreV2:16*
T0*
validate_shape(* 
_class
loc:@vc/dense/bias*
use_locking(*
_output_shapes	
:
Ή
save_19/Assign_17Assignvc/dense/kernelsave_19/RestoreV2:17*
validate_shape(*
_output_shapes
:	0*
use_locking(*
T0*"
_class
loc:@vc/dense/kernel
Ύ
save_19/Assign_18Assignvc/dense/kernel/Adamsave_19/RestoreV2:18*
_output_shapes
:	0*"
_class
loc:@vc/dense/kernel*
use_locking(*
T0*
validate_shape(
ΐ
save_19/Assign_19Assignvc/dense/kernel/Adam_1save_19/RestoreV2:19*"
_class
loc:@vc/dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	0*
T0
΅
save_19/Assign_20Assignvc/dense_1/biassave_19/RestoreV2:20*"
_class
loc:@vc/dense_1/bias*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0
Ί
save_19/Assign_21Assignvc/dense_1/bias/Adamsave_19/RestoreV2:21*
validate_shape(*
_output_shapes	
:*
T0*"
_class
loc:@vc/dense_1/bias*
use_locking(
Ό
save_19/Assign_22Assignvc/dense_1/bias/Adam_1save_19/RestoreV2:22*
T0*"
_class
loc:@vc/dense_1/bias*
use_locking(*
validate_shape(*
_output_shapes	
:
Ύ
save_19/Assign_23Assignvc/dense_1/kernelsave_19/RestoreV2:23*
validate_shape(*$
_class
loc:@vc/dense_1/kernel*
T0* 
_output_shapes
:
*
use_locking(
Γ
save_19/Assign_24Assignvc/dense_1/kernel/Adamsave_19/RestoreV2:24*$
_class
loc:@vc/dense_1/kernel*
use_locking(* 
_output_shapes
:
*
validate_shape(*
T0
Ε
save_19/Assign_25Assignvc/dense_1/kernel/Adam_1save_19/RestoreV2:25*
use_locking(*
validate_shape(* 
_output_shapes
:
*$
_class
loc:@vc/dense_1/kernel*
T0
΄
save_19/Assign_26Assignvc/dense_2/biassave_19/RestoreV2:26*
T0*
validate_shape(*"
_class
loc:@vc/dense_2/bias*
use_locking(*
_output_shapes
:
Ή
save_19/Assign_27Assignvc/dense_2/bias/Adamsave_19/RestoreV2:27*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@vc/dense_2/bias
»
save_19/Assign_28Assignvc/dense_2/bias/Adam_1save_19/RestoreV2:28*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
use_locking(*
T0*
validate_shape(
½
save_19/Assign_29Assignvc/dense_2/kernelsave_19/RestoreV2:29*
validate_shape(*
_output_shapes
:	*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
T0
Β
save_19/Assign_30Assignvc/dense_2/kernel/Adamsave_19/RestoreV2:30*
validate_shape(*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
T0*
_output_shapes
:	
Δ
save_19/Assign_31Assignvc/dense_2/kernel/Adam_1save_19/RestoreV2:31*
T0*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
_output_shapes
:	*
validate_shape(
±
save_19/Assign_32Assignvf/dense/biassave_19/RestoreV2:32*
_output_shapes	
:*
validate_shape(* 
_class
loc:@vf/dense/bias*
use_locking(*
T0
Ά
save_19/Assign_33Assignvf/dense/bias/Adamsave_19/RestoreV2:33* 
_class
loc:@vf/dense/bias*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(
Έ
save_19/Assign_34Assignvf/dense/bias/Adam_1save_19/RestoreV2:34*
use_locking(* 
_class
loc:@vf/dense/bias*
T0*
_output_shapes	
:*
validate_shape(
Ή
save_19/Assign_35Assignvf/dense/kernelsave_19/RestoreV2:35*
T0*
_output_shapes
:	0*
use_locking(*"
_class
loc:@vf/dense/kernel*
validate_shape(
Ύ
save_19/Assign_36Assignvf/dense/kernel/Adamsave_19/RestoreV2:36*
use_locking(*
validate_shape(*
_output_shapes
:	0*"
_class
loc:@vf/dense/kernel*
T0
ΐ
save_19/Assign_37Assignvf/dense/kernel/Adam_1save_19/RestoreV2:37*"
_class
loc:@vf/dense/kernel*
_output_shapes
:	0*
T0*
use_locking(*
validate_shape(
΅
save_19/Assign_38Assignvf/dense_1/biassave_19/RestoreV2:38*
validate_shape(*"
_class
loc:@vf/dense_1/bias*
use_locking(*
_output_shapes	
:*
T0
Ί
save_19/Assign_39Assignvf/dense_1/bias/Adamsave_19/RestoreV2:39*"
_class
loc:@vf/dense_1/bias*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(
Ό
save_19/Assign_40Assignvf/dense_1/bias/Adam_1save_19/RestoreV2:40*
T0*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
use_locking(
Ύ
save_19/Assign_41Assignvf/dense_1/kernelsave_19/RestoreV2:41*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:
*$
_class
loc:@vf/dense_1/kernel
Γ
save_19/Assign_42Assignvf/dense_1/kernel/Adamsave_19/RestoreV2:42*
validate_shape(* 
_output_shapes
:
*
use_locking(*$
_class
loc:@vf/dense_1/kernel*
T0
Ε
save_19/Assign_43Assignvf/dense_1/kernel/Adam_1save_19/RestoreV2:43*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*$
_class
loc:@vf/dense_1/kernel
΄
save_19/Assign_44Assignvf/dense_2/biassave_19/RestoreV2:44*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
use_locking(*
T0*
_output_shapes
:
Ή
save_19/Assign_45Assignvf/dense_2/bias/Adamsave_19/RestoreV2:45*
_output_shapes
:*
T0*"
_class
loc:@vf/dense_2/bias*
validate_shape(*
use_locking(
»
save_19/Assign_46Assignvf/dense_2/bias/Adam_1save_19/RestoreV2:46*
validate_shape(*
_output_shapes
:*
use_locking(*"
_class
loc:@vf/dense_2/bias*
T0
½
save_19/Assign_47Assignvf/dense_2/kernelsave_19/RestoreV2:47*$
_class
loc:@vf/dense_2/kernel*
T0*
use_locking(*
_output_shapes
:	*
validate_shape(
Β
save_19/Assign_48Assignvf/dense_2/kernel/Adamsave_19/RestoreV2:48*
T0*
validate_shape(*
use_locking(*$
_class
loc:@vf/dense_2/kernel*
_output_shapes
:	
Δ
save_19/Assign_49Assignvf/dense_2/kernel/Adam_1save_19/RestoreV2:49*$
_class
loc:@vf/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(*
use_locking(
ω
save_19/restore_shardNoOp^save_19/Assign^save_19/Assign_1^save_19/Assign_10^save_19/Assign_11^save_19/Assign_12^save_19/Assign_13^save_19/Assign_14^save_19/Assign_15^save_19/Assign_16^save_19/Assign_17^save_19/Assign_18^save_19/Assign_19^save_19/Assign_2^save_19/Assign_20^save_19/Assign_21^save_19/Assign_22^save_19/Assign_23^save_19/Assign_24^save_19/Assign_25^save_19/Assign_26^save_19/Assign_27^save_19/Assign_28^save_19/Assign_29^save_19/Assign_3^save_19/Assign_30^save_19/Assign_31^save_19/Assign_32^save_19/Assign_33^save_19/Assign_34^save_19/Assign_35^save_19/Assign_36^save_19/Assign_37^save_19/Assign_38^save_19/Assign_39^save_19/Assign_4^save_19/Assign_40^save_19/Assign_41^save_19/Assign_42^save_19/Assign_43^save_19/Assign_44^save_19/Assign_45^save_19/Assign_46^save_19/Assign_47^save_19/Assign_48^save_19/Assign_49^save_19/Assign_5^save_19/Assign_6^save_19/Assign_7^save_19/Assign_8^save_19/Assign_9
3
save_19/restore_allNoOp^save_19/restore_shard
\
save_20/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_20/filenamePlaceholderWithDefaultsave_20/filename/input*
shape: *
_output_shapes
: *
dtype0
k
save_20/ConstPlaceholderWithDefaultsave_20/filename*
shape: *
_output_shapes
: *
dtype0

save_20/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_7318d0e47245469da4c9421830a01346/part
~
save_20/StringJoin
StringJoinsave_20/Constsave_20/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_20/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
_
save_20/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_20/ShardedFilenameShardedFilenamesave_20/StringJoinsave_20/ShardedFilename/shardsave_20/num_shards*
_output_shapes
: 
β
save_20/SaveV2/tensor_namesConst*
_output_shapes
:2*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1*
dtype0
Κ
save_20/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:2*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?	
save_20/SaveV2SaveV2save_20/ShardedFilenamesave_20/SaveV2/tensor_namessave_20/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1penalty/penalty_parampenalty/penalty_param/Adampenalty/penalty_param/Adam_1pi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdvc/dense/biasvc/dense/bias/Adamvc/dense/bias/Adam_1vc/dense/kernelvc/dense/kernel/Adamvc/dense/kernel/Adam_1vc/dense_1/biasvc/dense_1/bias/Adamvc/dense_1/bias/Adam_1vc/dense_1/kernelvc/dense_1/kernel/Adamvc/dense_1/kernel/Adam_1vc/dense_2/biasvc/dense_2/bias/Adamvc/dense_2/bias/Adam_1vc/dense_2/kernelvc/dense_2/kernel/Adamvc/dense_2/kernel/Adam_1vf/dense/biasvf/dense/bias/Adamvf/dense/bias/Adam_1vf/dense/kernelvf/dense/kernel/Adamvf/dense/kernel/Adam_1vf/dense_1/biasvf/dense_1/bias/Adamvf/dense_1/bias/Adam_1vf/dense_1/kernelvf/dense_1/kernel/Adamvf/dense_1/kernel/Adam_1vf/dense_2/biasvf/dense_2/bias/Adamvf/dense_2/bias/Adam_1vf/dense_2/kernelvf/dense_2/kernel/Adamvf/dense_2/kernel/Adam_1*@
dtypes6
422

save_20/control_dependencyIdentitysave_20/ShardedFilename^save_20/SaveV2**
_class 
loc:@save_20/ShardedFilename*
_output_shapes
: *
T0
¦
.save_20/MergeV2Checkpoints/checkpoint_prefixesPacksave_20/ShardedFilename^save_20/control_dependency*
N*

axis *
T0*
_output_shapes
:

save_20/MergeV2CheckpointsMergeV2Checkpoints.save_20/MergeV2Checkpoints/checkpoint_prefixessave_20/Const*
delete_old_dirs(

save_20/IdentityIdentitysave_20/Const^save_20/MergeV2Checkpoints^save_20/control_dependency*
T0*
_output_shapes
: 
ε
save_20/RestoreV2/tensor_namesConst*
_output_shapes
:2*
dtype0*
valueB2Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpenalty/penalty_paramBpenalty/penalty_param/AdamBpenalty/penalty_param/Adam_1Bpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBvc/dense/biasBvc/dense/bias/AdamBvc/dense/bias/Adam_1Bvc/dense/kernelBvc/dense/kernel/AdamBvc/dense/kernel/Adam_1Bvc/dense_1/biasBvc/dense_1/bias/AdamBvc/dense_1/bias/Adam_1Bvc/dense_1/kernelBvc/dense_1/kernel/AdamBvc/dense_1/kernel/Adam_1Bvc/dense_2/biasBvc/dense_2/bias/AdamBvc/dense_2/bias/Adam_1Bvc/dense_2/kernelBvc/dense_2/kernel/AdamBvc/dense_2/kernel/Adam_1Bvf/dense/biasBvf/dense/bias/AdamBvf/dense/bias/Adam_1Bvf/dense/kernelBvf/dense/kernel/AdamBvf/dense/kernel/Adam_1Bvf/dense_1/biasBvf/dense_1/bias/AdamBvf/dense_1/bias/Adam_1Bvf/dense_1/kernelBvf/dense_1/kernel/AdamBvf/dense_1/kernel/Adam_1Bvf/dense_2/biasBvf/dense_2/bias/AdamBvf/dense_2/bias/Adam_1Bvf/dense_2/kernelBvf/dense_2/kernel/AdamBvf/dense_2/kernel/Adam_1
Ν
"save_20/RestoreV2/shape_and_slicesConst*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_20/RestoreV2	RestoreV2save_20/Constsave_20/RestoreV2/tensor_names"save_20/RestoreV2/shape_and_slices*ή
_output_shapesΛ
Θ::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
¬
save_20/AssignAssignbeta1_powersave_20/RestoreV2*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*(
_class
loc:@penalty/penalty_param
ͺ
save_20/Assign_1Assignbeta1_power_1save_20/RestoreV2:1*
T0*
use_locking(*
_output_shapes
: *
validate_shape(* 
_class
loc:@vc/dense/bias
°
save_20/Assign_2Assignbeta2_powersave_20/RestoreV2:2*(
_class
loc:@penalty/penalty_param*
_output_shapes
: *
use_locking(*
validate_shape(*
T0
ͺ
save_20/Assign_3Assignbeta2_power_1save_20/RestoreV2:3* 
_class
loc:@vc/dense/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes
: 
Ί
save_20/Assign_4Assignpenalty/penalty_paramsave_20/RestoreV2:4*
validate_shape(*
use_locking(*
T0*
_output_shapes
: *(
_class
loc:@penalty/penalty_param
Ώ
save_20/Assign_5Assignpenalty/penalty_param/Adamsave_20/RestoreV2:5*
T0*
_output_shapes
: *(
_class
loc:@penalty/penalty_param*
validate_shape(*
use_locking(
Α
save_20/Assign_6Assignpenalty/penalty_param/Adam_1save_20/RestoreV2:6*
use_locking(*(
_class
loc:@penalty/penalty_param*
T0*
validate_shape(*
_output_shapes
: 
―
save_20/Assign_7Assignpi/dense/biassave_20/RestoreV2:7* 
_class
loc:@pi/dense/bias*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0
·
save_20/Assign_8Assignpi/dense/kernelsave_20/RestoreV2:8*
use_locking(*
_output_shapes
:	0*"
_class
loc:@pi/dense/kernel*
T0*
validate_shape(
³
save_20/Assign_9Assignpi/dense_1/biassave_20/RestoreV2:9*"
_class
loc:@pi/dense_1/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:
Ύ
save_20/Assign_10Assignpi/dense_1/kernelsave_20/RestoreV2:10*$
_class
loc:@pi/dense_1/kernel*
validate_shape(* 
_output_shapes
:
*
T0*
use_locking(
΄
save_20/Assign_11Assignpi/dense_2/biassave_20/RestoreV2:11*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
T0*
use_locking(*
validate_shape(
½
save_20/Assign_12Assignpi/dense_2/kernelsave_20/RestoreV2:12*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes
:	*
T0*
use_locking(
ͺ
save_20/Assign_13Assign
pi/log_stdsave_20/RestoreV2:13*
use_locking(*
_output_shapes
:*
validate_shape(*
_class
loc:@pi/log_std*
T0
±
save_20/Assign_14Assignvc/dense/biassave_20/RestoreV2:14*
validate_shape(*
_output_shapes	
:* 
_class
loc:@vc/dense/bias*
T0*
use_locking(
Ά
save_20/Assign_15Assignvc/dense/bias/Adamsave_20/RestoreV2:15*
T0*
_output_shapes	
:*
use_locking(* 
_class
loc:@vc/dense/bias*
validate_shape(
Έ
save_20/Assign_16Assignvc/dense/bias/Adam_1save_20/RestoreV2:16*
T0*
use_locking(* 
_class
loc:@vc/dense/bias*
_output_shapes	
:*
validate_shape(
Ή
save_20/Assign_17Assignvc/dense/kernelsave_20/RestoreV2:17*
T0*"
_class
loc:@vc/dense/kernel*
_output_shapes
:	0*
use_locking(*
validate_shape(
Ύ
save_20/Assign_18Assignvc/dense/kernel/Adamsave_20/RestoreV2:18*
use_locking(*
validate_shape(*
_output_shapes
:	0*"
_class
loc:@vc/dense/kernel*
T0
ΐ
save_20/Assign_19Assignvc/dense/kernel/Adam_1save_20/RestoreV2:19*
T0*
_output_shapes
:	0*
validate_shape(*"
_class
loc:@vc/dense/kernel*
use_locking(
΅
save_20/Assign_20Assignvc/dense_1/biassave_20/RestoreV2:20*"
_class
loc:@vc/dense_1/bias*
T0*
use_locking(*
_output_shapes	
:*
validate_shape(
Ί
save_20/Assign_21Assignvc/dense_1/bias/Adamsave_20/RestoreV2:21*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(*"
_class
loc:@vc/dense_1/bias
Ό
save_20/Assign_22Assignvc/dense_1/bias/Adam_1save_20/RestoreV2:22*
validate_shape(*
_output_shapes	
:*"
_class
loc:@vc/dense_1/bias*
T0*
use_locking(
Ύ
save_20/Assign_23Assignvc/dense_1/kernelsave_20/RestoreV2:23*
T0*
use_locking(* 
_output_shapes
:
*
validate_shape(*$
_class
loc:@vc/dense_1/kernel
Γ
save_20/Assign_24Assignvc/dense_1/kernel/Adamsave_20/RestoreV2:24* 
_output_shapes
:
*
validate_shape(*
use_locking(*$
_class
loc:@vc/dense_1/kernel*
T0
Ε
save_20/Assign_25Assignvc/dense_1/kernel/Adam_1save_20/RestoreV2:25*
T0*
use_locking(* 
_output_shapes
:
*
validate_shape(*$
_class
loc:@vc/dense_1/kernel
΄
save_20/Assign_26Assignvc/dense_2/biassave_20/RestoreV2:26*
T0*
validate_shape(*
_output_shapes
:*"
_class
loc:@vc/dense_2/bias*
use_locking(
Ή
save_20/Assign_27Assignvc/dense_2/bias/Adamsave_20/RestoreV2:27*
use_locking(*
_output_shapes
:*
validate_shape(*"
_class
loc:@vc/dense_2/bias*
T0
»
save_20/Assign_28Assignvc/dense_2/bias/Adam_1save_20/RestoreV2:28*"
_class
loc:@vc/dense_2/bias*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
½
save_20/Assign_29Assignvc/dense_2/kernelsave_20/RestoreV2:29*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
validate_shape(*
T0*
_output_shapes
:	
Β
save_20/Assign_30Assignvc/dense_2/kernel/Adamsave_20/RestoreV2:30*
use_locking(*$
_class
loc:@vc/dense_2/kernel*
T0*
validate_shape(*
_output_shapes
:	
Δ
save_20/Assign_31Assignvc/dense_2/kernel/Adam_1save_20/RestoreV2:31*
validate_shape(*
T0*$
_class
loc:@vc/dense_2/kernel*
use_locking(*
_output_shapes
:	
±
save_20/Assign_32Assignvf/dense/biassave_20/RestoreV2:32*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(* 
_class
loc:@vf/dense/bias
Ά
save_20/Assign_33Assignvf/dense/bias/Adamsave_20/RestoreV2:33*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(* 
_class
loc:@vf/dense/bias
Έ
save_20/Assign_34Assignvf/dense/bias/Adam_1save_20/RestoreV2:34*
_output_shapes	
:*
T0*
validate_shape(* 
_class
loc:@vf/dense/bias*
use_locking(
Ή
save_20/Assign_35Assignvf/dense/kernelsave_20/RestoreV2:35*"
_class
loc:@vf/dense/kernel*
use_locking(*
_output_shapes
:	0*
T0*
validate_shape(
Ύ
save_20/Assign_36Assignvf/dense/kernel/Adamsave_20/RestoreV2:36*
use_locking(*
_output_shapes
:	0*
validate_shape(*
T0*"
_class
loc:@vf/dense/kernel
ΐ
save_20/Assign_37Assignvf/dense/kernel/Adam_1save_20/RestoreV2:37*
T0*
_output_shapes
:	0*
use_locking(*"
_class
loc:@vf/dense/kernel*
validate_shape(
΅
save_20/Assign_38Assignvf/dense_1/biassave_20/RestoreV2:38*
use_locking(*
validate_shape(*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
T0
Ί
save_20/Assign_39Assignvf/dense_1/bias/Adamsave_20/RestoreV2:39*
_output_shapes	
:*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
T0*
use_locking(
Ό
save_20/Assign_40Assignvf/dense_1/bias/Adam_1save_20/RestoreV2:40*
use_locking(*"
_class
loc:@vf/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:
Ύ
save_20/Assign_41Assignvf/dense_1/kernelsave_20/RestoreV2:41*
validate_shape(*
T0* 
_output_shapes
:
*
use_locking(*$
_class
loc:@vf/dense_1/kernel
Γ
save_20/Assign_42Assignvf/dense_1/kernel/Adamsave_20/RestoreV2:42* 
_output_shapes
:
*
validate_shape(*$
_class
loc:@vf/dense_1/kernel*
use_locking(*
T0
Ε
save_20/Assign_43Assignvf/dense_1/kernel/Adam_1save_20/RestoreV2:43*$
_class
loc:@vf/dense_1/kernel* 
_output_shapes
:
*
use_locking(*
validate_shape(*
T0
΄
save_20/Assign_44Assignvf/dense_2/biassave_20/RestoreV2:44*
T0*
validate_shape(*"
_class
loc:@vf/dense_2/bias*
_output_shapes
:*
use_locking(
Ή
save_20/Assign_45Assignvf/dense_2/bias/Adamsave_20/RestoreV2:45*
use_locking(*
_output_shapes
:*
T0*
validate_shape(*"
_class
loc:@vf/dense_2/bias
»
save_20/Assign_46Assignvf/dense_2/bias/Adam_1save_20/RestoreV2:46*"
_class
loc:@vf/dense_2/bias*
use_locking(*
_output_shapes
:*
validate_shape(*
T0
½
save_20/Assign_47Assignvf/dense_2/kernelsave_20/RestoreV2:47*
_output_shapes
:	*
use_locking(*
T0*
validate_shape(*$
_class
loc:@vf/dense_2/kernel
Β
save_20/Assign_48Assignvf/dense_2/kernel/Adamsave_20/RestoreV2:48*$
_class
loc:@vf/dense_2/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	
Δ
save_20/Assign_49Assignvf/dense_2/kernel/Adam_1save_20/RestoreV2:49*
T0*$
_class
loc:@vf/dense_2/kernel*
use_locking(*
_output_shapes
:	*
validate_shape(
ω
save_20/restore_shardNoOp^save_20/Assign^save_20/Assign_1^save_20/Assign_10^save_20/Assign_11^save_20/Assign_12^save_20/Assign_13^save_20/Assign_14^save_20/Assign_15^save_20/Assign_16^save_20/Assign_17^save_20/Assign_18^save_20/Assign_19^save_20/Assign_2^save_20/Assign_20^save_20/Assign_21^save_20/Assign_22^save_20/Assign_23^save_20/Assign_24^save_20/Assign_25^save_20/Assign_26^save_20/Assign_27^save_20/Assign_28^save_20/Assign_29^save_20/Assign_3^save_20/Assign_30^save_20/Assign_31^save_20/Assign_32^save_20/Assign_33^save_20/Assign_34^save_20/Assign_35^save_20/Assign_36^save_20/Assign_37^save_20/Assign_38^save_20/Assign_39^save_20/Assign_4^save_20/Assign_40^save_20/Assign_41^save_20/Assign_42^save_20/Assign_43^save_20/Assign_44^save_20/Assign_45^save_20/Assign_46^save_20/Assign_47^save_20/Assign_48^save_20/Assign_49^save_20/Assign_5^save_20/Assign_6^save_20/Assign_7^save_20/Assign_8^save_20/Assign_9
3
save_20/restore_allNoOp^save_20/restore_shard "E
save_20/Const:0save_20/Identity:0save_20/restore_all (5 @F8"π
trainable_variablesΨΥ
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
{
pi/dense_2/kernel:0pi/dense_2/kernel/Assignpi/dense_2/kernel/read:02.pi/dense_2/kernel/Initializer/random_uniform:08
j
pi/dense_2/bias:0pi/dense_2/bias/Assignpi/dense_2/bias/read:02#pi/dense_2/bias/Initializer/zeros:08
R
pi/log_std:0pi/log_std/Assignpi/log_std/read:02pi/log_std/initial_value:08
s
vf/dense/kernel:0vf/dense/kernel/Assignvf/dense/kernel/read:02,vf/dense/kernel/Initializer/random_uniform:08
b
vf/dense/bias:0vf/dense/bias/Assignvf/dense/bias/read:02!vf/dense/bias/Initializer/zeros:08
{
vf/dense_1/kernel:0vf/dense_1/kernel/Assignvf/dense_1/kernel/read:02.vf/dense_1/kernel/Initializer/random_uniform:08
j
vf/dense_1/bias:0vf/dense_1/bias/Assignvf/dense_1/bias/read:02#vf/dense_1/bias/Initializer/zeros:08
{
vf/dense_2/kernel:0vf/dense_2/kernel/Assignvf/dense_2/kernel/read:02.vf/dense_2/kernel/Initializer/random_uniform:08
j
vf/dense_2/bias:0vf/dense_2/bias/Assignvf/dense_2/bias/read:02#vf/dense_2/bias/Initializer/zeros:08
s
vc/dense/kernel:0vc/dense/kernel/Assignvc/dense/kernel/read:02,vc/dense/kernel/Initializer/random_uniform:08
b
vc/dense/bias:0vc/dense/bias/Assignvc/dense/bias/read:02!vc/dense/bias/Initializer/zeros:08
{
vc/dense_1/kernel:0vc/dense_1/kernel/Assignvc/dense_1/kernel/read:02.vc/dense_1/kernel/Initializer/random_uniform:08
j
vc/dense_1/bias:0vc/dense_1/bias/Assignvc/dense_1/bias/read:02#vc/dense_1/bias/Initializer/zeros:08
{
vc/dense_2/kernel:0vc/dense_2/kernel/Assignvc/dense_2/kernel/read:02.vc/dense_2/kernel/Initializer/random_uniform:08
j
vc/dense_2/bias:0vc/dense_2/bias/Assignvc/dense_2/bias/read:02#vc/dense_2/bias/Initializer/zeros:08
~
penalty/penalty_param:0penalty/penalty_param/Assignpenalty/penalty_param/read:02%penalty/penalty_param/initial_value:08"β/
	variablesΤ/Ρ/
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
{
pi/dense_2/kernel:0pi/dense_2/kernel/Assignpi/dense_2/kernel/read:02.pi/dense_2/kernel/Initializer/random_uniform:08
j
pi/dense_2/bias:0pi/dense_2/bias/Assignpi/dense_2/bias/read:02#pi/dense_2/bias/Initializer/zeros:08
R
pi/log_std:0pi/log_std/Assignpi/log_std/read:02pi/log_std/initial_value:08
s
vf/dense/kernel:0vf/dense/kernel/Assignvf/dense/kernel/read:02,vf/dense/kernel/Initializer/random_uniform:08
b
vf/dense/bias:0vf/dense/bias/Assignvf/dense/bias/read:02!vf/dense/bias/Initializer/zeros:08
{
vf/dense_1/kernel:0vf/dense_1/kernel/Assignvf/dense_1/kernel/read:02.vf/dense_1/kernel/Initializer/random_uniform:08
j
vf/dense_1/bias:0vf/dense_1/bias/Assignvf/dense_1/bias/read:02#vf/dense_1/bias/Initializer/zeros:08
{
vf/dense_2/kernel:0vf/dense_2/kernel/Assignvf/dense_2/kernel/read:02.vf/dense_2/kernel/Initializer/random_uniform:08
j
vf/dense_2/bias:0vf/dense_2/bias/Assignvf/dense_2/bias/read:02#vf/dense_2/bias/Initializer/zeros:08
s
vc/dense/kernel:0vc/dense/kernel/Assignvc/dense/kernel/read:02,vc/dense/kernel/Initializer/random_uniform:08
b
vc/dense/bias:0vc/dense/bias/Assignvc/dense/bias/read:02!vc/dense/bias/Initializer/zeros:08
{
vc/dense_1/kernel:0vc/dense_1/kernel/Assignvc/dense_1/kernel/read:02.vc/dense_1/kernel/Initializer/random_uniform:08
j
vc/dense_1/bias:0vc/dense_1/bias/Assignvc/dense_1/bias/read:02#vc/dense_1/bias/Initializer/zeros:08
{
vc/dense_2/kernel:0vc/dense_2/kernel/Assignvc/dense_2/kernel/read:02.vc/dense_2/kernel/Initializer/random_uniform:08
j
vc/dense_2/bias:0vc/dense_2/bias/Assignvc/dense_2/bias/read:02#vc/dense_2/bias/Initializer/zeros:08
~
penalty/penalty_param:0penalty/penalty_param/Assignpenalty/penalty_param/read:02%penalty/penalty_param/initial_value:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0

penalty/penalty_param/Adam:0!penalty/penalty_param/Adam/Assign!penalty/penalty_param/Adam/read:02.penalty/penalty_param/Adam/Initializer/zeros:0

penalty/penalty_param/Adam_1:0#penalty/penalty_param/Adam_1/Assign#penalty/penalty_param/Adam_1/read:020penalty/penalty_param/Adam_1/Initializer/zeros:0
\
beta1_power_1:0beta1_power_1/Assignbeta1_power_1/read:02beta1_power_1/initial_value:0
\
beta2_power_1:0beta2_power_1/Assignbeta2_power_1/read:02beta2_power_1/initial_value:0
|
vf/dense/kernel/Adam:0vf/dense/kernel/Adam/Assignvf/dense/kernel/Adam/read:02(vf/dense/kernel/Adam/Initializer/zeros:0

vf/dense/kernel/Adam_1:0vf/dense/kernel/Adam_1/Assignvf/dense/kernel/Adam_1/read:02*vf/dense/kernel/Adam_1/Initializer/zeros:0
t
vf/dense/bias/Adam:0vf/dense/bias/Adam/Assignvf/dense/bias/Adam/read:02&vf/dense/bias/Adam/Initializer/zeros:0
|
vf/dense/bias/Adam_1:0vf/dense/bias/Adam_1/Assignvf/dense/bias/Adam_1/read:02(vf/dense/bias/Adam_1/Initializer/zeros:0

vf/dense_1/kernel/Adam:0vf/dense_1/kernel/Adam/Assignvf/dense_1/kernel/Adam/read:02*vf/dense_1/kernel/Adam/Initializer/zeros:0

vf/dense_1/kernel/Adam_1:0vf/dense_1/kernel/Adam_1/Assignvf/dense_1/kernel/Adam_1/read:02,vf/dense_1/kernel/Adam_1/Initializer/zeros:0
|
vf/dense_1/bias/Adam:0vf/dense_1/bias/Adam/Assignvf/dense_1/bias/Adam/read:02(vf/dense_1/bias/Adam/Initializer/zeros:0

vf/dense_1/bias/Adam_1:0vf/dense_1/bias/Adam_1/Assignvf/dense_1/bias/Adam_1/read:02*vf/dense_1/bias/Adam_1/Initializer/zeros:0

vf/dense_2/kernel/Adam:0vf/dense_2/kernel/Adam/Assignvf/dense_2/kernel/Adam/read:02*vf/dense_2/kernel/Adam/Initializer/zeros:0

vf/dense_2/kernel/Adam_1:0vf/dense_2/kernel/Adam_1/Assignvf/dense_2/kernel/Adam_1/read:02,vf/dense_2/kernel/Adam_1/Initializer/zeros:0
|
vf/dense_2/bias/Adam:0vf/dense_2/bias/Adam/Assignvf/dense_2/bias/Adam/read:02(vf/dense_2/bias/Adam/Initializer/zeros:0

vf/dense_2/bias/Adam_1:0vf/dense_2/bias/Adam_1/Assignvf/dense_2/bias/Adam_1/read:02*vf/dense_2/bias/Adam_1/Initializer/zeros:0
|
vc/dense/kernel/Adam:0vc/dense/kernel/Adam/Assignvc/dense/kernel/Adam/read:02(vc/dense/kernel/Adam/Initializer/zeros:0

vc/dense/kernel/Adam_1:0vc/dense/kernel/Adam_1/Assignvc/dense/kernel/Adam_1/read:02*vc/dense/kernel/Adam_1/Initializer/zeros:0
t
vc/dense/bias/Adam:0vc/dense/bias/Adam/Assignvc/dense/bias/Adam/read:02&vc/dense/bias/Adam/Initializer/zeros:0
|
vc/dense/bias/Adam_1:0vc/dense/bias/Adam_1/Assignvc/dense/bias/Adam_1/read:02(vc/dense/bias/Adam_1/Initializer/zeros:0

vc/dense_1/kernel/Adam:0vc/dense_1/kernel/Adam/Assignvc/dense_1/kernel/Adam/read:02*vc/dense_1/kernel/Adam/Initializer/zeros:0

vc/dense_1/kernel/Adam_1:0vc/dense_1/kernel/Adam_1/Assignvc/dense_1/kernel/Adam_1/read:02,vc/dense_1/kernel/Adam_1/Initializer/zeros:0
|
vc/dense_1/bias/Adam:0vc/dense_1/bias/Adam/Assignvc/dense_1/bias/Adam/read:02(vc/dense_1/bias/Adam/Initializer/zeros:0

vc/dense_1/bias/Adam_1:0vc/dense_1/bias/Adam_1/Assignvc/dense_1/bias/Adam_1/read:02*vc/dense_1/bias/Adam_1/Initializer/zeros:0

vc/dense_2/kernel/Adam:0vc/dense_2/kernel/Adam/Assignvc/dense_2/kernel/Adam/read:02*vc/dense_2/kernel/Adam/Initializer/zeros:0

vc/dense_2/kernel/Adam_1:0vc/dense_2/kernel/Adam_1/Assignvc/dense_2/kernel/Adam_1/read:02,vc/dense_2/kernel/Adam_1/Initializer/zeros:0
|
vc/dense_2/bias/Adam:0vc/dense_2/bias/Adam/Assignvc/dense_2/bias/Adam/read:02(vc/dense_2/bias/Adam/Initializer/zeros:0

vc/dense_2/bias/Adam_1:0vc/dense_2/bias/Adam_1/Assignvc/dense_2/bias/Adam_1/read:02*vc/dense_2/bias/Adam_1/Initializer/zeros:0"
train_op

Adam
Adam_1*Ο
serving_default»
)
x$
Placeholder:0?????????0%
pi
pi/add:0?????????$
v
vf/Squeeze:0?????????%
vc
vc/Squeeze:0?????????tensorflow/serving/predict