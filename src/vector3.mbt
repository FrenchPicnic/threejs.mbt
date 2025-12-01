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
  add(Self, Vector3) -> Unit = _
  add_scalar(Self, Float) -> Unit = _
  add_scaled_vector(Self, Vector3, Float) -> Unit = _
  add_vectors(Self, Vector3, Vector3) -> Vector3 = _
  angle_to(Self, Vector3) -> Float = _
  apply_axis_angle(Self, Vector3, Float) -> Unit = _
  // TODO:
  // apply_euler(Self, Euler) -> Unit = _
  // apply_matrix3(Self, Matrix3) -> Unit = _
  // apply_matrix4(Self, Matrix4) -> Unit = _
  // apply_normal_matrix(Self, Matrix3) -> Unit = _
  // apply_quaternion(Self, Quaternion) -> Unit = _
  ceil(Self) -> Unit = _
  clamp(Self, Vector3, Vector3) -> Unit = _
  clamp_length(Self, Float, Float) -> Unit = _
  clamp_scalar(Self, Float, Float) -> Unit = _
  clone(Self) -> Vector3 = _
  copy(Self, Vector3) -> Unit = _
  cross(Self, Vector3) -> Unit = _
  cross_vectors(Self, Vector3, Vector3) -> Vector3 = _
  distance_to(Self, Vector3) -> Float = _
  distance_to_squared(Self, Vector3) -> Float = _
  divide(Self, Vector3) -> Unit = _
  divide_scalar(Self, Float) -> Unit = _
  dot(Self, Vector3) -> Float = _
  equals(Self, Vector3) -> Bool = _
  floor(Self) -> Unit = _
  // from_array(Self, Array[Float]) -> Unit = _
  // from_buffer_attribute(Self, BufferAttribute) -> Unit = _
  get_component(Self, Int) -> Float = _
  length(Self) -> Float = _
  length_sq(Self) -> Float = _
  lerp(Self, Vector3, Float) -> Unit = _
  lerp_vectors(Self, Vector3, Vector3, Float) -> Vector3 = _
  manhattan_distance_to(Self, Vector3) -> Float = _
  manhattan_length(Self) -> Float = _
  max(Self, Vector3) -> Vector3 = _
  min(Self, Vector3) -> Vector3 = _
  multiply(Self, Vector3) -> Unit = _
  multiply_scalar(Self, Float) -> Vector3 = _
  multiply_vectors(Self, Vector3, Vector3) -> Vector3 = _
  negate(Self) -> Unit = _
  normalize(Self) -> Unit = _
  project(Self, Camera) -> Unit = _
  project_on_plane(Self, Vector3) -> Unit = _
  project_on_vector(Self, Vector3) -> Unit = _
  random(Self) -> Unit = _
  random_direction(Self) -> Unit = _
  reflect(Self, Vector3) -> Unit = _
  round(Self) -> Unit = _
  round_to_zero(Self) -> Unit = _
  set(Self, Float, Float, Float) -> Unit = _
  set_component(Self, Int, Float) -> Unit = _
  // set_from_color(Self, Color) -> Unit = _
  // set_from_cylindrical(Self, Cylindrical) -> Unit = _
  set_from_cylindrical_coords(Self, Float, Float, Float) -> Unit = _
  // set_from_euler(Self, Euler) -> Unit = _
  // set_from_matrix3_column(Self, Matrix3, Int) -> Unit = _
  // set_from_matrix_column(Self, Matrix4, Int) -> Unit = _
  // set_from_matrix_position(Self, Matrix4) -> Unit = _
  // set_from_matrix_scale(Self, Matrix4) -> Unit = _
  // set_from_spherical(Self, Spherical) -> Unit = _
  set_from_spherical_coords(Self, Float, Float, Float) -> Unit = _
  set_length(Self, Float) -> Unit = _
  set_scalar(Self, Float) -> Unit = _
  set_x(Self, Float) -> Unit = _
  set_y(Self, Float) -> Unit = _
  set_z(Self, Float) -> Unit = _
  sub(Self, Vector3) -> Unit = _
  sub_scalar(Self, Float) -> Unit = _
  sub_vectors(Self, Vector3, Vector3) -> Vector3 = _
  // to_array(Self, Array[Float], Int) -> Array[Float] = _
  // transform_direction(Self, Matrix4) -> Unit = _
  unproject(Self, Camera) -> Unit = _
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
impl IsVector3 with add(self, v : Vector3) -> Unit {
  vector_add_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with add_scalar(self, s : Float) -> Unit {
  vector_add_scalar_ffi(self |> js_identity, s)
}

///|
impl IsVector3 with add_scaled_vector(self, v : Vector3, s : Float) -> Unit {
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
impl IsVector3 with apply_axis_angle(self, axis : Vector3, angle : Float) -> Unit {
  vector_applye_axis_angle_ffi(self |> js_identity, axis |> js_identity, angle)
}

///|
impl IsVector3 with ceil(self) -> Unit {
  vector_ceil_ffi(self |> js_identity)
}

///|
impl IsVector3 with clamp(self, minv : Vector3, maxv : Vector3) -> Unit {
  vector_clamp_ffi(
    self |> js_identity,
    minv |> js_identity,
    maxv |> js_identity,
  )
}

///|
impl IsVector3 with clamp_length(self, minv : Float, maxv : Float) -> Unit {
  vector_clamp_length_ffi(
    self |> js_identity,
    minv |> js_identity,
    maxv |> js_identity,
  )
}

///|
impl IsVector3 with clamp_scalar(self, minv : Float, maxv : Float) -> Unit {
  vector_clamp_scalar_ffi(
    self |> js_identity,
    minv |> js_identity,
    maxv |> js_identity,
  )
}

///|
impl IsVector3 with clone(self) -> Vector3 {
  vector_clone_ffi(self |> js_identity)
}

///|
impl IsVector3 with copy(self, v : Vector3) -> Unit {
  vector_copy_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with cross(self, v : Vector3) -> Unit {
  vector_cross_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with cross_vectors(self, a : Vector3, b : Vector3) -> Vector3 {
  vector_cross_vectors_ffi(
    self |> js_identity,
    a |> js_identity,
    b |> js_identity,
  )
}

///|
impl IsVector3 with distance_to(self, v : Vector3) -> Float {
  vector_distance_to_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with distance_to_squared(self, v : Vector3) -> Float {
  vector_distance_to_squared_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with divide(self, v : Vector3) -> Unit {
  vector_divide_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with divide_scalar(self, scalar : Float) -> Unit {
  vector_divide_scalar_ffi(self |> js_identity, scalar)
}

///|
impl IsVector3 with dot(self, v : Vector3) -> Float {
  vector_dot_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with equals(self, v : Vector3) -> Bool {
  vector_equals_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with floor(self) -> Unit {
  vector_floor_ffi(self |> js_identity)
}

///|
impl IsVector3 with get_component(self, index : Int) -> Float {
  vector_get_component_ffi(self |> js_identity, index)
}

///|
impl IsVector3 with length(self) -> Float {
  vector_length_ffi(self |> js_identity)
}

///|
impl IsVector3 with length_sq(self) -> Float {
  vector_length_sq_ffi(self |> js_identity)
}

///|
impl IsVector3 with lerp(self, v : Vector3, alpha : Float) -> Unit {
  vector_lerp_ffi(self |> js_identity, v |> js_identity, alpha)
}

///|
impl IsVector3 with lerp_vectors(
  self,
  v1 : Vector3,
  v2 : Vector3,
  alpha : Float,
) -> Vector3 {
  vector_lerp_vectors_ffi(
    self |> js_identity,
    v1 |> js_identity,
    v2 |> js_identity,
    alpha,
  )
}

///|
impl IsVector3 with manhattan_distance_to(self, v : Vector3) -> Float {
  vector_manhattan_distance_to_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with manhattan_length(self) -> Float {
  vector_manhattan_length_ffi(self |> js_identity)
}

///|
impl IsVector3 with max(self, v : Vector3) -> Vector3 {
  vector_max_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with min(self, v : Vector3) -> Vector3 {
  vector_min_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with multiply(self, v : Vector3) -> Unit {
  vector_multiply_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with multiply_scalar(self, scalar : Float) -> Vector3 {
  vector_multiply_scalar_ffi(self |> js_identity, scalar)
}

///|
impl IsVector3 with multiply_vectors(self, a : Vector3, b : Vector3) -> Vector3 {
  vector_multiply_vectors_ffi(
    self |> js_identity,
    a |> js_identity,
    b |> js_identity,
  )
}

///|
impl IsVector3 with negate(self) -> Unit {
  vector_negate_ffi(self |> js_identity)
}

///|
impl IsVector3 with normalize(self) -> Unit {
  vector_normalize_ffi(self |> js_identity)
}

///|
impl IsVector3 with project(self, camera : Camera) -> Unit {
  vector_project_ffi(self |> js_identity, camera |> js_identity)
}

///|
impl IsVector3 with project_on_plane(self, plane : Vector3) -> Unit {
  vector_project_on_plane_ffi(self |> js_identity, plane |> js_identity)
}

///|
impl IsVector3 with project_on_vector(self, vector : Vector3) -> Unit {
  vector_project_on_vector_ffi(self |> js_identity, vector |> js_identity)
}

///|
impl IsVector3 with random(self) -> Unit {
  vector_random_ffi(self |> js_identity)
}

///|
impl IsVector3 with random_direction(self) -> Unit {
  vector_random_direction_ffi(self |> js_identity)
}

///|
impl IsVector3 with reflect(self, normal : Vector3) -> Unit {
  vector_reflect_ffi(self |> js_identity, normal |> js_identity)
}

///|
impl IsVector3 with round(self) -> Unit {
  vector_round_ffi(self |> js_identity)
}

///|
impl IsVector3 with round_to_zero(self) -> Unit {
  vector_round_to_zero_ffi(self |> js_identity)
}

///|
impl IsVector3 with set(self, x : Float, y : Float, z : Float) -> Unit {
  vector_set_ffi(self |> js_identity, x, y, z)
}

///|
impl IsVector3 with set_component(self, index : Int, value : Float) -> Unit {
  vector_set_component_ffi(self |> js_identity, index, value)
}

///|
impl IsVector3 with set_from_cylindrical_coords(
  self,
  radius : Float,
  theta : Float,
  y : Float,
) -> Unit {
  vector_set_from_cylindrical_coords_ffi(self |> js_identity, radius, theta, y)
}

///|
impl IsVector3 with set_from_spherical_coords(
  self,
  radius : Float,
  theta : Float,
  y : Float,
) -> Unit {
  vector_set_from_spherical_coords_ffi(self |> js_identity, radius, theta, y)
}

///|
impl IsVector3 with set_length(self, length : Float) -> Unit {
  vector_set_length_ffi(self |> js_identity, length)
}

///|
impl IsVector3 with set_scalar(self, length : Float) -> Unit {
  vector_set_scalar_ffi(self |> js_identity, length)
}

///|
impl IsVector3 with set_x(self, x : Float) -> Unit {
  vector_set_x_ffi(self |> js_identity, x)
}

///|
impl IsVector3 with set_y(self, y : Float) -> Unit {
  vector_set_y_ffi(self |> js_identity, y)
}

///|
impl IsVector3 with set_z(self, z : Float) -> Unit {
  vector_set_z_ffi(self |> js_identity, z)
}

///|
impl IsVector3 with sub(self, v : Vector3) -> Unit {
  vector_sub_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector3 with sub_scalar(self, s : Float) -> Unit {
  vector_sub_scalar_ffi(self |> js_identity, s)
}

///|
impl IsVector3 with sub_vectors(self, a : Vector3, b : Vector3) -> Vector3 {
  vector_sub_vectors_ffi(
    self |> js_identity,
    a |> js_identity,
    b |> js_identity,
  )
}

///|
impl IsVector3 with unproject(self, camera : Camera) -> Unit {
  vector_sub_scalar_ffi(self |> js_identity, camera |> js_identity)
}

///|
pub extern "js" fn Vector3::new(x : Float, y : Float, z : Float) -> Unit = "(x,y,z) => new THREE.Vector3(x,y,z)"

///|
pub extern "js" fn vector_x_ffi(vec : @js.Value) -> Float = "(vec) => vec.x"

///|
pub extern "js" fn vector_y_ffi(vec : @js.Value) -> Float = "(vec) => vec.y"

///|
pub extern "js" fn vector_z_ffi(vec : @js.Value) -> Float = "(vec) => vec.z"

///|
pub extern "js" fn vector_add_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec) => vec.add(v)"

///|
pub extern "js" fn vector_add_scalar_ffi(vec : @js.Value, s : Float) -> Unit = "(vec) => vec.addScalar(s)"

///|
pub extern "js" fn vector_add_scaled_vector_ffi(
  vec : @js.Value,
  v : @js.Value,
  s : Float,
) -> Unit = "(vec,v,s) => vec.addScalarVector(s)"

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
) -> Unit = "(vec,axis,angle) => vec.applyAxisAngle(axis,angle)"

///|
pub extern "js" fn vector_ceil_ffi(vec : @js.Value) -> Unit = "(vec) => vec.ceil()"

///|
pub extern "js" fn vector_clamp_ffi(
  vec : @js.Value,
  minv : @js.Value,
  maxv : @js.Value,
) -> Unit = "(vec,minv,maxv) => vec.clamp(minv,maxv)"

///|
pub extern "js" fn vector_clamp_length_ffi(
  vec : @js.Value,
  minv : Float,
  maxv : Float,
) -> Unit = "(vec,minv,maxv) => vec.clampLength(minv,maxv)"

///|
pub extern "js" fn vector_clamp_scalar_ffi(
  vec : @js.Value,
  minv : Float,
  maxv : Float,
) -> Unit = "(vec,minv,maxv) => vec.clampScalar(minv,maxv)"

///|
pub extern "js" fn vector_clone_ffi(vec : @js.Value) -> Vector3 = "(vec) => vec.clone()"

///|
pub extern "js" fn vector_copy_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec,v) => vec.copy(v)"

///|
pub extern "js" fn vector_cross_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec,v) => vec.cross(v)"

///|
pub extern "js" fn vector_cross_vectors_ffi(
  vec : @js.Value,
  a : @js.Value,
  b : @js.Value,
) -> Vector3 = "(vec,a,b) => vec.crossVectors(a,b)"

///|
pub extern "js" fn vector_distance_to_ffi(
  vec : @js.Value,
  v : @js.Value,
) -> Float = "(vec,v) => vec.distanceTo(v)"

///|
pub extern "js" fn vector_distance_to_squared_ffi(
  vec : @js.Value,
  v : @js.Value,
) -> Float = "(vec,v) => vec.distanceToSquared(v)"

///|
pub extern "js" fn vector_divide_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec,v) => vec.divide(v)"

///|
pub extern "js" fn vector_divide_scalar_ffi(
  vec : @js.Value,
  scalar : Float,
) -> Unit = "(vec,scalar) => vec.divideScalar(scalar)"

///|
pub extern "js" fn vector_dot_ffi(vec : @js.Value, v : @js.Value) -> Float = "(vec,v) => vec.dot(v)"

///|
pub extern "js" fn vector_equals_ffi(vec : @js.Value, v : @js.Value) -> Bool = "(vec,v) => vec.equals(v)"

///|
pub extern "js" fn vector_floor_ffi(vec : @js.Value) -> Unit = "(vec) => vec.floor(v)"

///|
// pub extern "js" fn vector_from_array_ffi(vec : @js.Value) -> Unit = "(vec) => vec.floor(v)"

///|
// pub extern "js" fn vector_from_buffer_attribute_ffi(vec : @js.Value) -> Unit = "(vec) => vec.floor(v)"

///|
pub extern "js" fn vector_get_component_ffi(
  vec : @js.Value,
  index : Int,
) -> Float = "(vec,index) => vec.getComponent(index)"

///|
pub extern "js" fn vector_length_ffi(vec : @js.Value) -> Float = "(vec) => vec.length()"

///|
pub extern "js" fn vector_length_sq_ffi(vec : @js.Value) -> Float = "(vec) => vec.lengthSq()"

///|
pub extern "js" fn vector_lerp_ffi(
  vec : @js.Value,
  v : @js.Value,
  alpha : Float,
) -> Unit = "(vec,v,alpha) => vec.lerp(v,alpha)"

///|
pub extern "js" fn vector_lerp_vectors_ffi(
  vec : @js.Value,
  v1 : @js.Value,
  v2 : @js.Value,
  alpha : Float,
) -> Vector3 = "(vec,v1,v2,alpha) => vec.lerpVectors(v1,v2,alpha)"

///|
pub extern "js" fn vector_manhattan_distance_to_ffi(
  vec : @js.Value,
  v : @js.Value,
) -> Float = "(vec,v) => vec.manhattanDistanceTo(v)"

///|
pub extern "js" fn vector_manhattan_length_ffi(vec : @js.Value) -> Float = "(vec) => vec.manhattanLength()"

///|
pub extern "js" fn vector_max_ffi(vec : @js.Value, v : @js.Value) -> Vector3 = "(vec,v) => vec.max(v)"

///|
pub extern "js" fn vector_min_ffi(vec : @js.Value, v : @js.Value) -> Vector3 = "(vec,v) => vec.min(v)"

///|
pub extern "js" fn vector_multiply_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec,v) => vec.multiply(v)"

///|
pub extern "js" fn vector_multiply_scalar_ffi(
  vec : @js.Value,
  v : Float,
) -> Vector3 = "(vec,v) => vec.multiplyScalar(v)"

///|
pub extern "js" fn vector_multiply_vectors_ffi(
  vec : @js.Value,
  a : @js.Value,
  b : @js.Value,
) -> Vector3 = "(vec,a,b) => vec.multiplyVectors(a,b)"

///|
pub extern "js" fn vector_negate_ffi(vec : @js.Value) -> Unit = "(vec) => vec.negate()"

///|
pub extern "js" fn vector_normalize_ffi(vec : @js.Value) -> Unit = "(vec) => vec.normalize()"

///|
pub extern "js" fn vector_project_ffi(
  vec : @js.Value,
  camera : @js.Value,
) -> Unit = "(vec,camera) => vec.project(camera)"

///|
pub extern "js" fn vector_project_on_plane_ffi(
  vec : @js.Value,
  plane : @js.Value,
) -> Unit = "(vec,plane) => vec.projectOnPlane(plane)"

///|
pub extern "js" fn vector_project_on_vector_ffi(
  vec : @js.Value,
  v : @js.Value,
) -> Unit = "(vec,v) => vec.projectOnVector(v)"

///|
pub extern "js" fn vector_random_ffi(vec : @js.Value) -> Unit = "(vec) => vec.random()"

///|
pub extern "js" fn vector_random_direction_ffi(vec : @js.Value) -> Unit = "(vec) => vec.randomDirection()"

///|
pub extern "js" fn vector_reflect_ffi(
  vec : @js.Value,
  normal : @js.Value,
) -> Unit = "(vec,normal) => vec.reflect(normal)"

///|
pub extern "js" fn vector_round_ffi(vec : @js.Value) -> Unit = "(vec) => vec.round()"

///|
pub extern "js" fn vector_round_to_zero_ffi(vec : @js.Value) -> Unit = "(vec) => vec.roundToZero()"

///|
pub extern "js" fn vector_set_ffi(
  vec : @js.Value,
  x : Float,
  y : Float,
  z : Float,
) -> Unit = "(vec,x,y,z) => vec.set(x,y,z)"

///|
pub extern "js" fn vector_set_component_ffi(
  vec : @js.Value,
  index : Int,
  value : Float,
) -> Unit = "(vec,index,value) => vec.setComponent(index,value)"

///|
// pub extern "js" fn vector_set_from_color_ffi(vec : @js.Value) -> Unit = "(vec,x,y,z) => vec.set(x,y,z)"

///|
// pub extern "js" fn vector_set_from_cylindrical_ffi(vec : @js.Value) -> Unit = "(vec,x,y,z) => vec.set(x,y,z)"

///|
pub extern "js" fn vector_set_from_cylindrical_coords_ffi(
  vec : @js.Value,
  radius : Float,
  theta : Float,
  y : Float,
) -> Unit = "(vec,radius,theta,y) => vec.setFromCylindricalCoords(radius,theta,y)"

///|
// pub extern "js" fn vector_set_from_euler_ffi(
//   vec : @js.Value,
//   euler : @js.Value,
// ) -> Unit = "(vec,euler) => vec.setFromEuler(euler)"

///|
// pub extern "js" fn vector_set_from_matrix3_column_ffi(
//   vec : @js.Value,
//   matrix : @js.Value,
//   index : Float,
// ) -> Unit = "(vec,x,y,z) => vec.set(x,y,z)"

///|
// pub extern "js" fn vector_set_from_matrix_column_ffi(
//   vec : @js.Value,
//   matrix : @js.Value,
//   index : Float,
// ) -> Unit = "(vec,x,y,z) => vec.set(x,y,z)"

///|
// pub extern "js" fn vector_set_from_matrix_position_ffi(
//   vec : @js.Value,
//   matrix : @js.Value,
//   index : Float,
// ) -> Unit = "(vec,x,y,z) => vec.set(x,y,z)"

///|
// pub extern "js" fn vector_set_from_matrix_scale_ffi(
//   vec : @js.Value,
//   matrix : @js.Value,
//   index : Float,
// ) -> Unit = "(vec,x,y,z) => vec.set(x,y,z)"

///|
// pub extern "js" fn vector_set_from_spherical_ffi(
//   vec : @js.Value,
//   matrix : @js.Value,
//   index : Float,
// ) -> Unit = "(vec,x,y,z) => vec.set(x,y,z)"

///|
pub extern "js" fn vector_set_from_spherical_coords_ffi(
  vec : @js.Value,
  radius : Float,
  phi : Float,
  theta : Float,
) -> Unit = "(vec,radius,phi,theta) => vec.setFromSphericalCoords(radius,phi,theta)"

///|
pub extern "js" fn vector_set_length_ffi(
  vec : @js.Value,
  length : Float,
) -> Unit = "(vec,length) => vec.setLength(length)"

///|
pub extern "js" fn vector_set_scalar_ffi(
  vec : @js.Value,
  scalar : Float,
) -> Unit = "(vec,scalar) => vec.setScalar(scalar)"

///|
pub extern "js" fn vector_set_x_ffi(vec : @js.Value, x : Float) -> Unit = "(vec,x) => vec.setX(x)"

///|
pub extern "js" fn vector_set_y_ffi(vec : @js.Value, y : Float) -> Unit = "(vec,y) => vec.setY(y)"

///|
pub extern "js" fn vector_set_z_ffi(vec : @js.Value, z : Float) -> Unit = "(vec,z) => vec.setZ(z)"

///|
pub extern "js" fn vector_sub_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec,v) => vec.sub(v)"

///|
pub extern "js" fn vector_sub_scalar_ffi(vec : @js.Value, s : Float) -> Unit = "(vec,s) => vec.subScalar(s)"

///|
pub extern "js" fn vector_sub_vectors_ffi(
  vec : @js.Value,
  a : @js.Value,
  b : @js.Value,
) -> Vector3 = "(vec,a,b) => vec.subVectors(a,b)"

///|
// pub extern "js" fn vector_to_array_ffi(vec : @js.Value, s : Float) -> Unit = "(vec,s) => vec.subScalar(s)"

///|
// pub extern "js" fn vector_transform_direction_ffi(vec : @js.Value, s : Float) -> Unit = "(vec,s) => vec.subScalar(s)"

///|
pub extern "js" fn vector_unproject_ffi(
  vec : @js.Value,
  camera : @js.Value,
) -> Unit = "(vec,camera) => vec.unproject(camera)"
