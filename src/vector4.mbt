///|
#external
type Vector4

///|
pub impl IsVector4 for Vector4

///|
pub trait IsVector4: @js.Cast {
  x(Self) -> Float = _
  y(Self) -> Float = _
  z(Self) -> Float = _
  add(Self, Vector4) -> Unit = _
  add_scalar(Self, Float) -> Unit = _
  add_scaled_vector(Self, Vector4, Float) -> Unit = _
  add_vectors(Self, Vector4, Vector4) -> Vector4 = _
  // TODO:
  // apply_matrix4(Self, Matrix4) -> Unit = _
  ceil(Self) -> Unit = _
  clamp(Self, Vector4, Vector4) -> Unit = _
  clamp_length(Self, Float, Float) -> Unit = _
  clamp_scalar(Self, Float, Float) -> Unit = _
  clone(Self) -> Vector4 = _
  copy(Self, Vector4) -> Unit = _
  divide(Self, Vector4) -> Unit = _
  divide_scalar(Self, Float) -> Unit = _
  dot(Self, Vector4) -> Float = _
  equals(Self, Vector4) -> Bool = _
  floor(Self) -> Unit = _
  // from_array(Self, Array[Float]) -> Unit = _
  // from_buffer_attribute(Self, BufferAttribute) -> Unit = _
  get_component(Self, Int) -> Float = _
  length(Self) -> Float = _
  length_sq(Self) -> Float = _
  lerp(Self, Vector4, Float) -> Unit = _
  lerp_vectors(Self, Vector4, Vector4, Float) -> Vector4 = _
  manhattan_length(Self) -> Float = _
  max(Self, Vector4) -> Vector4 = _
  min(Self, Vector4) -> Vector4 = _
  multiply(Self, Vector4) -> Unit = _
  multiply_scalar(Self, Float) -> Vector4 = _
  multiply_vectors(Self, Vector4, Vector4) -> Vector4 = _
  negate(Self) -> Unit = _
  normalize(Self) -> Unit = _
  random(Self) -> Unit = _
  round(Self) -> Unit = _
  round_to_zero(Self) -> Unit = _
  set(Self, Float, Float, Float) -> Unit = _
  // set_axis_angle_from_quaternion(Self, Quaternion) -> Unit = _
  // set_axis_angle_from_rotation_matrix(Self, Matrix4) -> Unit = _
  set_component(Self, Int, Float) -> Unit = _
  // set_from_matrix_position(Self, Matrix4) -> Unit = _
  set_length(Self, Float) -> Unit = _
  set_scalar(Self, Float) -> Unit = _
  set_x(Self, Float) -> Unit = _
  set_y(Self, Float) -> Unit = _
  set_z(Self, Float) -> Unit = _
  set_w(Self, Float) -> Unit = _
  sub(Self, Vector4) -> Unit = _
  sub_scalar(Self, Float) -> Unit = _
  sub_vectors(Self, Vector4, Vector4) -> Vector4 = _
  // to_array(Self, Array[Float], Int) -> Array[Float] = _

}

///|
pub impl @js.Cast for Vector4 with into(value) {
  value |> ffi_to_vector4 |> _.to_option()
}

///|
pub impl @js.Cast for Vector4 with from(value) {
  value |> js_identity
}

///|
pub extern "js" fn ffi_to_vector4(x : @js.Value) -> @js.Nullable[Vector4] = "(x) => x instanceof THREE.Vector4 ? x : null"

///|
pub extern "js" fn Vector4::new(
  x : Float,
  y : Float,
  z : Float,
  w : Float,
) -> Vector4 = "(x,y,z,w) => new THREE.Vector4(x,y,z,w)"

///|
impl IsVector4 with x(self) -> Float {
  vector4_x_ffi(self |> js_identity)
}

///|
impl IsVector4 with y(self) -> Float {
  vector4_y_ffi(self |> js_identity)
}

///|
impl IsVector4 with z(self) -> Float {
  vector4_z_ffi(self |> js_identity)
}

///|
impl IsVector4 with add(self, v : Vector4) -> Unit {
  vector4_add_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector4 with add_scalar(self, s : Float) -> Unit {
  vector4_add_scalar_ffi(self |> js_identity, s)
}

///|
impl IsVector4 with add_scaled_vector(self, v : Vector4, s : Float) -> Unit {
  vector4_add_scaled_vector_ffi(self |> js_identity, v |> js_identity, s)
}

///|
impl IsVector4 with add_vectors(self, a : Vector4, b : Vector4) -> Vector4 {
  vector4_add_vectors_ffi(
    self |> js_identity,
    a |> js_identity,
    b |> js_identity,
  )
}

///|
impl IsVector4 with ceil(self) -> Unit {
  vector4_ceil_ffi(self |> js_identity)
}

///|
impl IsVector4 with clamp(self, minv : Vector4, maxv : Vector4) -> Unit {
  vector4_clamp_ffi(
    self |> js_identity,
    minv |> js_identity,
    maxv |> js_identity,
  )
}

///|
impl IsVector4 with clamp_length(self, minv : Float, maxv : Float) -> Unit {
  vector4_clamp_length_ffi(
    self |> js_identity,
    minv |> js_identity,
    maxv |> js_identity,
  )
}

///|
impl IsVector4 with clamp_scalar(self, minv : Float, maxv : Float) -> Unit {
  vector4_clamp_scalar_ffi(
    self |> js_identity,
    minv |> js_identity,
    maxv |> js_identity,
  )
}

///|
impl IsVector4 with clone(self) -> Vector4 {
  vector4_clone_ffi(self |> js_identity)
}

///|
impl IsVector4 with copy(self, v : Vector4) -> Unit {
  vector4_copy_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector4 with divide(self, v : Vector4) -> Unit {
  vector4_divide_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector4 with divide_scalar(self, scalar : Float) -> Unit {
  vector4_divide_scalar_ffi(self |> js_identity, scalar)
}

///|
impl IsVector4 with dot(self, v : Vector4) -> Float {
  vector4_dot_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector4 with equals(self, v : Vector4) -> Bool {
  vector4_equals_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector4 with floor(self) -> Unit {
  vector4_floor_ffi(self |> js_identity)
}

///|
impl IsVector4 with get_component(self, index : Int) -> Float {
  vector4_get_component_ffi(self |> js_identity, index)
}

///|
impl IsVector4 with length(self) -> Float {
  vector4_length_ffi(self |> js_identity)
}

///|
impl IsVector4 with length_sq(self) -> Float {
  vector4_length_sq_ffi(self |> js_identity)
}

///|
impl IsVector4 with lerp(self, v : Vector4, alpha : Float) -> Unit {
  vector4_lerp_ffi(self |> js_identity, v |> js_identity, alpha)
}

///|
impl IsVector4 with lerp_vectors(
  self,
  v1 : Vector4,
  v2 : Vector4,
  alpha : Float,
) -> Vector4 {
  vector4_lerp_vectors_ffi(
    self |> js_identity,
    v1 |> js_identity,
    v2 |> js_identity,
    alpha,
  )
}

///|
impl IsVector4 with manhattan_length(self) -> Float {
  vector4_manhattan_length_ffi(self |> js_identity)
}

///|
impl IsVector4 with max(self, v : Vector4) -> Vector4 {
  vector4_max_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector4 with min(self, v : Vector4) -> Vector4 {
  vector4_min_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector4 with multiply(self, v : Vector4) -> Unit {
  vector4_multiply_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector4 with multiply_scalar(self, scalar : Float) -> Vector4 {
  vector4_multiply_scalar_ffi(self |> js_identity, scalar)
}

///|
impl IsVector4 with multiply_vectors(self, a : Vector4, b : Vector4) -> Vector4 {
  vector4_multiply_vectors_ffi(
    self |> js_identity,
    a |> js_identity,
    b |> js_identity,
  )
}

///|
impl IsVector4 with negate(self) -> Unit {
  vector4_negate_ffi(self |> js_identity)
}

///|
impl IsVector4 with normalize(self) -> Unit {
  vector4_normalize_ffi(self |> js_identity)
}

///|
impl IsVector4 with random(self) -> Unit {
  vector4_random_ffi(self |> js_identity)
}

///|
impl IsVector4 with round(self) -> Unit {
  vector4_round_ffi(self |> js_identity)
}

///|
impl IsVector4 with round_to_zero(self) -> Unit {
  vector4_round_to_zero_ffi(self |> js_identity)
}

///|
impl IsVector4 with set(self, x : Float, y : Float, z : Float) -> Unit {
  vector4_set_ffi(self |> js_identity, x, y, z)
}

///|
impl IsVector4 with set_component(self, index : Int, value : Float) -> Unit {
  vector4_set_component_ffi(self |> js_identity, index, value)
}

///|
impl IsVector4 with set_length(self, length : Float) -> Unit {
  vector4_set_length_ffi(self |> js_identity, length)
}

///|
impl IsVector4 with set_scalar(self, length : Float) -> Unit {
  vector4_set_scalar_ffi(self |> js_identity, length)
}

///|
impl IsVector4 with set_x(self, x : Float) -> Unit {
  vector4_set_x_ffi(self |> js_identity, x)
}

///|
impl IsVector4 with set_y(self, y : Float) -> Unit {
  vector4_set_y_ffi(self |> js_identity, y)
}

///|
impl IsVector4 with set_z(self, z : Float) -> Unit {
  vector4_set_z_ffi(self |> js_identity, z)
}

///|
impl IsVector4 with set_w(self, w : Float) -> Unit {
  vector4_set_w_ffi(self |> js_identity, w)
}

///|
impl IsVector4 with sub(self, v : Vector4) -> Unit {
  vector4_sub_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector4 with sub_scalar(self, s : Float) -> Unit {
  vector4_sub_scalar_ffi(self |> js_identity, s)
}

///|
impl IsVector4 with sub_vectors(self, a : Vector4, b : Vector4) -> Vector4 {
  vector4_sub_vectors_ffi(
    self |> js_identity,
    a |> js_identity,
    b |> js_identity,
  )
}

///|
pub extern "js" fn vector4_x_ffi(vec : @js.Value) -> Float = "(vec) => vec.x"

///|
pub extern "js" fn vector4_y_ffi(vec : @js.Value) -> Float = "(vec) => vec.y"

///|
pub extern "js" fn vector4_z_ffi(vec : @js.Value) -> Float = "(vec) => vec.z"

///|
pub extern "js" fn vector4_add_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec) => vec.add(v)"

///|
pub extern "js" fn vector4_add_scalar_ffi(vec : @js.Value, s : Float) -> Unit = "(vec) => vec.addScalar(s)"

///|
pub extern "js" fn vector4_add_scaled_vector_ffi(
  vec : @js.Value,
  v : @js.Value,
  s : Float,
) -> Unit = "(vec,v,s) => vec.addScalarVector(s)"

///|
pub extern "js" fn vector4_add_vectors_ffi(
  vec : @js.Value,
  a : @js.Value,
  b : @js.Value,
) -> Vector4 = "(vec,a,b) => vec.addVectors(a,b)"

///|
pub extern "js" fn vector4_ceil_ffi(vec : @js.Value) -> Unit = "(vec) => vec.ceil()"

///|
pub extern "js" fn vector4_clamp_ffi(
  vec : @js.Value,
  minv : @js.Value,
  maxv : @js.Value,
) -> Unit = "(vec,minv,maxv) => vec.clamp(minv,maxv)"

///|
pub extern "js" fn vector4_clamp_length_ffi(
  vec : @js.Value,
  minv : Float,
  maxv : Float,
) -> Unit = "(vec,minv,maxv) => vec.clampLength(minv,maxv)"

///|
pub extern "js" fn vector4_clamp_scalar_ffi(
  vec : @js.Value,
  minv : Float,
  maxv : Float,
) -> Unit = "(vec,minv,maxv) => vec.clampScalar(minv,maxv)"

///|
pub extern "js" fn vector4_clone_ffi(vec : @js.Value) -> Vector4 = "(vec) => vec.clone()"

///|
pub extern "js" fn vector4_copy_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec,v) => vec.copy(v)"

///|
pub extern "js" fn vector4_divide_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec,v) => vec.divide(v)"

///|
pub extern "js" fn vector4_divide_scalar_ffi(
  vec : @js.Value,
  scalar : Float,
) -> Unit = "(vec,scalar) => vec.divideScalar(scalar)"

///|
pub extern "js" fn vector4_dot_ffi(vec : @js.Value, v : @js.Value) -> Float = "(vec,v) => vec.dot(v)"

///|
pub extern "js" fn vector4_equals_ffi(vec : @js.Value, v : @js.Value) -> Bool = "(vec,v) => vec.equals(v)"

///|
pub extern "js" fn vector4_floor_ffi(vec : @js.Value) -> Unit = "(vec) => vec.floor(v)"

///|
// pub extern "js" fn vector4_from_array_ffi(vec : @js.Value) -> Unit = "(vec) => vec.floor(v)"

///|
// pub extern "js" fn vector4_from_buffer_attribute_ffi(vec : @js.Value) -> Unit = "(vec) => vec.floor(v)"

///|
pub extern "js" fn vector4_get_component_ffi(
  vec : @js.Value,
  index : Int,
) -> Float = "(vec,index) => vec.getComponent(index)"

///|
pub extern "js" fn vector4_length_ffi(vec : @js.Value) -> Float = "(vec) => vec.length()"

///|
pub extern "js" fn vector4_length_sq_ffi(vec : @js.Value) -> Float = "(vec) => vec.lengthSq()"

///|
pub extern "js" fn vector4_lerp_ffi(
  vec : @js.Value,
  v : @js.Value,
  alpha : Float,
) -> Unit = "(vec,v,alpha) => vec.lerp(v,alpha)"

///|
pub extern "js" fn vector4_lerp_vectors_ffi(
  vec : @js.Value,
  v1 : @js.Value,
  v2 : @js.Value,
  alpha : Float,
) -> Vector4 = "(vec,v1,v2,alpha) => vec.lerpVectors(v1,v2,alpha)"

///|
pub extern "js" fn vector4_manhattan_length_ffi(vec : @js.Value) -> Float = "(vec) => vec.manhattanLength()"

///|
pub extern "js" fn vector4_max_ffi(vec : @js.Value, v : @js.Value) -> Vector4 = "(vec,v) => vec.max(v)"

///|
pub extern "js" fn vector4_min_ffi(vec : @js.Value, v : @js.Value) -> Vector4 = "(vec,v) => vec.min(v)"

///|
pub extern "js" fn vector4_multiply_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec,v) => vec.multiply(v)"

///|
pub extern "js" fn vector4_multiply_scalar_ffi(
  vec : @js.Value,
  v : Float,
) -> Vector4 = "(vec,v) => vec.multiplyScalar(v)"

///|
pub extern "js" fn vector4_multiply_vectors_ffi(
  vec : @js.Value,
  a : @js.Value,
  b : @js.Value,
) -> Vector4 = "(vec,a,b) => vec.multiplyVectors(a,b)"

///|
pub extern "js" fn vector4_negate_ffi(vec : @js.Value) -> Unit = "(vec) => vec.negate()"

///|
pub extern "js" fn vector4_normalize_ffi(vec : @js.Value) -> Unit = "(vec) => vec.normalize()"

///|
pub extern "js" fn vector4_random_ffi(vec : @js.Value) -> Unit = "(vec) => vec.random()"

///|
pub extern "js" fn vector4_round_ffi(vec : @js.Value) -> Unit = "(vec) => vec.round()"

///|
pub extern "js" fn vector4_round_to_zero_ffi(vec : @js.Value) -> Unit = "(vec) => vec.roundToZero()"

///|
pub extern "js" fn vector4_set_ffi(
  vec : @js.Value,
  x : Float,
  y : Float,
  z : Float,
) -> Unit = "(vec,x,y,z) => vec.set(x,y,z)"

///|
pub extern "js" fn vector4_set_component_ffi(
  vec : @js.Value,
  index : Int,
  value : Float,
) -> Unit = "(vec,index,value) => vec.setComponent(index,value)"

///|
pub extern "js" fn vector4_set_length_ffi(
  vec : @js.Value,
  length : Float,
) -> Unit = "(vec,length) => vec.setLength(length)"

///|
pub extern "js" fn vector4_set_scalar_ffi(
  vec : @js.Value,
  scalar : Float,
) -> Unit = "(vec,scalar) => vec.setScalar(scalar)"

///|
pub extern "js" fn vector4_set_x_ffi(vec : @js.Value, x : Float) -> Unit = "(vec,x) => vec.setX(x)"

///|
pub extern "js" fn vector4_set_y_ffi(vec : @js.Value, y : Float) -> Unit = "(vec,y) => vec.setY(y)"

///|
pub extern "js" fn vector4_set_z_ffi(vec : @js.Value, z : Float) -> Unit = "(vec,z) => vec.setZ(z)"

///|
pub extern "js" fn vector4_set_w_ffi(vec : @js.Value, w : Float) -> Unit = "(vec,w) => vec.setW(w)"

///|
pub extern "js" fn vector4_sub_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec,v) => vec.sub(v)"

///|
pub extern "js" fn vector4_sub_scalar_ffi(vec : @js.Value, s : Float) -> Unit = "(vec,s) => vec.subScalar(s)"

///|
pub extern "js" fn vector4_sub_vectors_ffi(
  vec : @js.Value,
  a : @js.Value,
  b : @js.Value,
) -> Vector4 = "(vec,a,b) => vec.subVectors(a,b)"

///|
// pub extern "js" fn vector4_to_array_ffi(vec : @js.Value, s : Float) -> Unit = "(vec,s) => vec.subScalar(s)"
