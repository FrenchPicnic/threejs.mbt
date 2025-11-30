///|
#external
type Vector3

///|
pub impl IsVector3 for Vector3

///|
pub trait IsVector3: @js.Cast {
  x(Self) -> Float = _
  y(Self) -> Float = _
  z(Self) -> Float = _
  add(Self, Vector3) -> Vector3 = _
  add_scalar(Self, Float) -> Vector3 = _
  add_scaled_vector(Self, Vector3, Float) -> Vector3 = _
  add_vectors(Self, Vector3, Vector3) -> Vector3 = _
  angle_to(Self, Vector3) -> Float = _
  apply_axis_angle(Self, Vector3, Float) -> Vector3 = _
  // apply_euler(Self, Euler) -> Vector3 = _
  // apply_matrix3(Self, Matrix3) -> Vector3 = _
  // apply_matrix4(Self, Matrix4) -> Vector3 = _
  // apply_normal_matrix(Self, Matrix3) -> Vector3 = _
  // apply_quaternion(Self, Quaternion) -> Vector3 = _
  ceil(Self) -> Vector3 = _
  clamp(Self, Vector3, Vector3) -> Vector3 = _
  clamp_length(Self, Float, Float) -> Vector3 = _
  clamp_scalar(Self, Float, Float) -> Vector3 = _
  clone(Self) -> Vector3 = _
  copy(Self, Vector3) -> Vector3 = _
  cross(Self, Vector3) -> Vector3 = _
  cross_vectors(Self, Vector3, Vector3) -> Vector3 = _
  distance_to(Self, Vector3) -> Float = _
  distance_to_squared(Self, Vector3) -> Float = _
  divide(Self, Vector3) -> Vector3 = _
  divide_scalar(Self, Float) -> Vector3 = _
  dot(Self, Vector3) -> Float = _
  equals(Self, Vector3) -> Bool = _
  floor(Self) -> Vector3 = _
  // from_array(Self, Array[Float]) -> Vector3 = _
  // from_buffer_attribute(Self, BufferAttribute) -> Vector3 = _
  get_component(Self, Int) -> Float = _
  length(Self) -> Float = _
  length_sq(Self) -> Float = _
  lerp(Self, Vector3, Float) -> Vector3 = _
  lerp_vectors(Self, Vector3, Vector3, Float) -> Vector3 = _
  manhattan_distance_to(Self, Vector3) -> Float = _
  manhattan_length(Self) -> Float = _
  max(Self, Vector3) -> Vector3 = _
  min(Self, Vector3) -> Vector3 = _
  multiply(Self, Vector3) -> Vector3 = _
  multiply_scalar(Self, Float) -> Vector3 = _
  multiply_vectors(Self, Vector3, Vector3) -> Vector3 = _
  negate(Self) -> Vector3 = _
  normalize(Self) -> Vector3 = _
}

///|
pub impl @js.Cast for Vector3 with into(value) {
  value |> ffi_to_vector3 |> _.to_option()
}

///|
pub impl @js.Cast for Vector3 with from(value) {
  value |> js_identity
}

///|
pub extern "js" fn ffi_to_vector3(x : @js.Value) -> @js.Nullable[Vector3] = "(x) => x instanceof THREE.Vector3 ? x : null"

///|
impl IsVector3 with x(self) -> Float {
  vector_x_ffi(self |> js_identity)
}

///|
impl IsVector3 with y(self) -> Float {
  vector_y_ffi(self |> js_identity)
}

///|
impl IsVector3 with z(self) -> Float {
  vector_z_ffi(self |> js_identity)
}

///|
impl IsVector3 with add(self, v : Vector3) -> Vector3 {
  vector_add_ffi(self |> js_identity, vec |> js_identity)
}

///|
impl IsVector3 with add_scalar(self, s : Float) -> Vector3 {
  vector_add_scalar_ffi(self |> js_identity, s)
}

///|
impl IsVector3 with add_scaled_vector(self, v : Vector3, s : Float) -> Vector3 {
  vector_add_scaled_vector_ffi(self |> js_identity, v |> js_identity, s)
}

///|
impl IsVector3 with add_vectors(self, a : Vector3, b : Vector3) -> Vector3 {
  vector_add_vectors_ffi(
    self |> js_identity,
    a |> js_identity,
    b |> js_identity,
  )
}

///|
impl IsVector3 with angle_to(self, v : Vector3) -> Float {
  vector_angle_to_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with apply_axis_angle(self, axis : Vector3, angle : Float) -> Vector3 {
  vector_applye_axis_angle_ffi(self |> js_identity, axis |> js_identity, angle)
}

///|
pub extern "js" fn Vector3::new(x : Float, y : Float, z : Float) -> Vector3 = "(x,y,z) => new THREE.Vector3(x,y,z)"

///|
pub extern "js" fn vector_x_ffi(vec : @js.Value) -> Float = "(vec) => vec.x"

///|
pub extern "js" fn vector_y_ffi(vec : @js.Value) -> Float = "(vec) => vec.y"

///|
pub extern "js" fn vector_z_ffi(vec : @js.Value) -> Float = "(vec) => vec.z"

///|
pub extern "js" fn vector_add_ffi(vec : @js.Value, v : @js.Value) -> Vector3 = "(vec) => vec.add(v)"

///|
pub extern "js" fn vector_add_scalar_ffi(vec : @js.Value, s : Float) -> Vector3 = "(vec) => vec.addScalar(s)"

///|
pub extern "js" fn vector_add_scaled_vector_ffi(
  vec : @js.Value,
  v : @js.Value,
  s : Float,
) -> Vector3 = "(vec,v,s) => vec.addScalarVector(s)"

///|
pub extern "js" fn vector_add_vectors_ffi(
  vec : @js.Value,
  a : @js.Value,
  b : @js.Value,
) -> Vector3 = "(vec,a,b) => vec.addVectors(a,b)"

///|
pub extern "js" fn vector_angle_to_ffi(vec : @js.Value, v : @js.Value) -> Float = "(vec,v) => vec.angleTo(v)"

///|
pub extern "js" fn vector_applye_axis_angle_ffi(
  vec : @js.Value,
  axis : @js.Value,
  angle : Float,
) -> Vector3 = "(vec,axis,angle) => vec.applyAxisAngle(axis,angle)"

///|
pub extern "js" fn vector_ceil_ffi(vec : @js.Value) -> Vector3 = "(vec) => vec.ceil()"

///|
pub extern "js" fn vector_clamp_ffi(
  vec : @js.Value,
  minv : @js.Value,
  maxv : @js.Value,
) -> Vector3 = "(vec,minv,maxv) => vec.clamp(minv,maxv)"

///|
pub extern "js" fn vector_clamp_length_ffi(
  vec : @js.Value,
  minv : Float,
  maxv : Float,
) -> Vector3 = "(vec,minv,maxv) => vec.clampLength(minv,maxv)"

///|
pub extern "js" fn vector_clamp_scalar_ffi(
  vec : @js.Value,
  minv : Float,
  maxv : Float,
) -> Vector3 = "(vec,minv,maxv) => vec.clampScalar(minv,maxv)"

///|
pub extern "js" fn vector_clone_ffi(vec : @js.Value) -> Vector3 = "(vec) => vec.clone()"

///|
pub extern "js" fn vector_copy_ffi(vec : @js.Value, v : @js.Value) -> Vector3 = "(vec,v) => vec.copy(v)"

///|
pub extern "js" fn vector_cross_ffi(vec : @js.Value, v : @js.Value) -> Vector3 = "(vec,v) => vec.cross(v)"
