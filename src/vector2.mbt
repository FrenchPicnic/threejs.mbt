///|
#external
type Vector2

///|
pub impl IsVector2 for Vector2

///|
pub trait IsVector2: @js.Cast {
  //TODO: 
  // height(Self) -> Float = _
  // width(Self) -> Float = _
  // x(Self) -> Float = _
  // y(Self) -> Float = _
  // is_vector2(Self) -> Bool = _

  add(Self, Vector2) -> Unit = _
  add_scalar(Self, Float) -> Unit = _
  add_scalar_vector(Self, Vector2, Float) -> Unit = _
  add_vectors(Self, Vector2, Vector2) -> Unit = _
  angle(Self) -> Float = _
  angle_to(Self, Vector2) -> Float = _
  // apply_matrix3(Self, Matrix3) -> Unit = _
  ceil(Self) -> Unit = _
  clamp(Self, Vector2, Vector2) -> Unit = _
  clamp_scalar(Self, Float, Float) -> Unit = _
  clamp_length(Self, Float, Float) -> Unit = _
  clone(Self) -> Vector2 = _
  copy(Self, Vector2) -> Unit = _
  cross(Self, Vector2) -> Float = _
  distance_to(Self, Vector2) -> Float = _
  distance_to_squared(Self, Vector2) -> Float = _
  divide(Self, Vector2) -> Unit = _
  divide_scalar(Self, Float) -> Unit = _
  dot(Self, Vector2) -> Float = _
  equals(Self, Vector2) -> Bool = _
  floor(Self) -> Unit = _
  // from_array(Self, Array[Float]) -> Unit = _
  // from_buffer_attribute(Self, BufferAttribute, Int) -> Unit = _
  get_component(Self, Int) -> Float = _
  length(Self) -> Float = _
  length_sq(Self) -> Float = _
  lerp(Self, Vector2, Float) -> Unit = _
  lerp_vectors(Self, Vector2, Vector2, Float) -> Unit = _
  manhattan_distance_to(Self, Vector2) -> Float = _
  manhattan_length(Self) -> Float = _
  max(Self, Vector2) -> Unit = _
  min(Self, Vector2) -> Unit = _
  multiply(Self, Vector2) -> Unit = _
  multiply_scalar(Self, Float) -> Unit = _
  negate(Self) -> Unit = _
  normalize(Self) -> Unit = _
  random(Self) -> Unit = _
  rotate_around(Self, Vector2, Float) -> Unit = _
  round(Self) -> Unit = _
  round_to_zero(Self) -> Unit = _
  set(Self, Float, Float) -> Unit = _
  set_component(Self, Int, Float) -> Unit = _
  set_length(Self, Float) -> Unit = _
  set_scalar(Self, Float) -> Unit = _
  set_x(Self, Float) -> Unit = _
  set_y(Self, Float) -> Unit = _
  sub(Self, Vector2) -> Unit = _
  sub_scalar(Self, Float) -> Unit = _
  sub_vectors(Self, Vector2, Vector2) -> Unit = _
  // to_array(Self, Array[Float]) -> Unit = _
}

///|
pub impl @js.Cast for Vector2 with into(value) {
  value |> ffi_to_vector2 |> _.to_option()
}

///|
pub impl @js.Cast for Vector2 with from(value) {
  value |> js_identity
}

///|
impl IsVector2 with add(self, v : Vector2) -> Unit {
  vector2_add_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with add_scalar(self, s : Float) -> Unit {
  vector2_add_scalar_ffi(self |> js_identity, s)
}

///|
impl IsVector2 with add_scalar_vector(self, v : Vector2, s : Float) -> Unit {
  vector2_add_scalar_vector_ffi(self |> js_identity, v |> js_identity, s)
}

///|
impl IsVector2 with add_vectors(self, a : Vector2, b : Vector2) -> Unit {
  vector2_add_vectors_ffi(
    self |> js_identity,
    a |> js_identity,
    b |> js_identity,
  )
}

///|
impl IsVector2 with angle(self) -> Float {
  vector2_angle_ffi(self |> js_identity)
}

///|
impl IsVector2 with angle_to(self, v : Vector2) -> Float {
  vector2_angle_to_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with ceil(self) -> Unit {
  vector2_ceil_ffi(self |> js_identity)
}

///|
impl IsVector2 with clamp(self, min : Vector2, max : Vector2) -> Unit {
  vector2_clamp_ffi(self |> js_identity, min |> js_identity, max |> js_identity)
}

///|
impl IsVector2 with clamp_length(self, min : Float, max : Float) -> Unit {
  vector2_clamp_length_ffi(self |> js_identity, min, max)
}

///|
impl IsVector2 with clamp_scalar(self, min : Float, max : Float) -> Unit {
  vector2_clamp_scalar_ffi(self |> js_identity, min, max)
}

///|
impl IsVector2 with clone(self) -> Vector2 {
  vector2_clone_ffi(self |> js_identity)
}

///|
impl IsVector2 with copy(self, v : Vector2) -> Unit {
  vector2_copy_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with cross(self, v : Vector2) -> Float {
  vector2_cross_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with distance_to(self, v : Vector2) -> Float {
  vector2_distance_to_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with distance_to_squared(self, v : Vector2) -> Float {
  vector2_distance_to_squared_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with divide(self, v : Vector2) -> Unit {
  vector2_divide_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with divide_scalar(self, s : Float) -> Unit {
  vector2_divide_scalar_ffi(self |> js_identity, s)
}

///|
impl IsVector2 with dot(self, v : Vector2) -> Float {
  vector2_dot_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with equals(self, v : Vector2) -> Bool {
  vector2_equals_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with floor(self) -> Unit {
  vector2_floor_ffi(self |> js_identity)
}

///|
impl IsVector2 with get_component(self, index : Int) -> Float {
  vector2_get_component_ffi(self |> js_identity, index)
}

///|
impl IsVector2 with length(self) -> Float {
  vector2_length_ffi(self |> js_identity)
}

///|
impl IsVector2 with length_sq(self) -> Float {
  vector2_length_sq_ffi(self |> js_identity)
}

///|
impl IsVector2 with lerp(self, v : Vector2, alpha : Float) -> Unit {
  vector2_lerp_ffi(self |> js_identity, v |> js_identity, alpha)
}

///|
impl IsVector2 with lerp_vectors(
  self,
  v1 : Vector2,
  v2 : Vector2,
  alpha : Float,
) -> Unit {
  vector2_lerp_vectors_ffi(
    self |> js_identity,
    v1 |> js_identity,
    v2 |> js_identity,
    alpha,
  )
}

///|
impl IsVector2 with manhattan_distance_to(self, v : Vector2) -> Float {
  vector2_manhattan_distance_to_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with manhattan_length(self) -> Float {
  vector2_manhattan_length_ffi(self |> js_identity)
}

///|
impl IsVector2 with max(self, v : Vector2) -> Unit {
  vector2_max_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with min(self, v : Vector2) -> Unit {
  vector2_min_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with multiply(self, v : Vector2) -> Unit {
  vector2_multiply_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with multiply_scalar(self, s : Float) -> Unit {
  vector2_multiply_scalar_ffi(self |> js_identity, s)
}

///|
impl IsVector2 with negate(self) -> Unit {
  vector2_negate_ffi(self |> js_identity)
}

///|
impl IsVector2 with normalize(self) -> Unit {
  vector2_normalize_ffi(self |> js_identity)
}

///|
impl IsVector2 with random(self) -> Unit {
  vector2_random_ffi(self |> js_identity)
}

///|
impl IsVector2 with rotate_around(self, center : Vector2, angle : Float) -> Unit {
  vector2_rotate_around_ffi(self |> js_identity, center |> js_identity, angle)
}

///|
impl IsVector2 with round(self) -> Unit {
  vector2_round_ffi(self |> js_identity)
}

///|
impl IsVector2 with round_to_zero(self) -> Unit {
  vector2_round_to_zero_ffi(self |> js_identity)
}

///|
impl IsVector2 with set(self, x : Float, y : Float) -> Unit {
  vector2_set_ffi(self |> js_identity, x, y)
}

///|
impl IsVector2 with set_component(self, index : Int, value : Float) -> Unit {
  vector2_set_component_ffi(self |> js_identity, index, value)
}

///|
impl IsVector2 with set_length(self, length : Float) -> Unit {
  vector2_set_length_ffi(self |> js_identity, length)
}

///|
impl IsVector2 with set_scalar(self, scalar : Float) -> Unit {
  vector2_set_length_ffi(self |> js_identity, scalar)
}

///|
impl IsVector2 with set_x(self, x : Float) -> Unit {
  vector2_set_x_ffi(self |> js_identity, x)
}

///|
impl IsVector2 with set_y(self, y : Float) -> Unit {
  vector2_set_y_ffi(self |> js_identity, y)
}

///|
impl IsVector2 with sub(self, v : Vector2) -> Unit {
  vector2_sub_ffi(self |> js_identity, v |> js_identity)
}

///|
impl IsVector2 with sub_scalar(self, scalar : Float) -> Unit {
  vector2_sub_scalar_ffi(self |> js_identity, scalar)
}

///|
impl IsVector2 with sub_vectors(self, a : Vector2, b : Vector2) -> Unit {
  vector2_sub_vectors_ffi(
    self |> js_identity,
    a |> js_identity,
    b |> js_identity,
  )
}

///|
pub extern "js" fn ffi_to_vector2(x : @js.Value) -> @js.Nullable[Vector2] = "(x) => x instanceof THREE.Vector2 ? x : null"

///|
pub extern "js" fn vector2_add_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec, v) => vec.add(v)"

///|
pub extern "js" fn vector2_add_scalar_ffi(vec : @js.Value, s : Float) -> Unit = "(vec, s) => vec.addScalar(s)"

///|
pub extern "js" fn vector2_add_scalar_vector_ffi(
  vec : @js.Value,
  v : @js.Value,
  s : Float,
) -> Unit = "(vec, v, s) => vec.addScalarVector(v, s)"

///|
pub extern "js" fn vector2_add_vectors_ffi(
  vec : @js.Value,
  a : @js.Value,
  b : @js.Value,
) -> Unit = "(vec, a, b) => vec.addVectors(a, b)"

///|
pub extern "js" fn vector2_angle_ffi(vec : @js.Value) -> Float = "(vec) => vec.angle()"

///|
pub extern "js" fn vector2_angle_to_ffi(
  vec : @js.Value,
  v : @js.Value,
) -> Float = "(vec, v) => vec.angleTo(v)"

///|
pub extern "js" fn vector2_ceil_ffi(vec : @js.Value) -> Unit = "(vec) => vec.ceil()"

///|
pub extern "js" fn vector2_clamp_ffi(
  vec : @js.Value,
  min : @js.Value,
  max : @js.Value,
) -> Unit = "(vec, min, max) => vec.clamp(min, max)"

///|
pub extern "js" fn vector2_clamp_length_ffi(
  vec : @js.Value,
  min : Float,
  max : Float,
) -> Unit = "(vec, min, max) => vec.clampLength(min, max)"

///|
pub extern "js" fn vector2_clamp_scalar_ffi(
  vec : @js.Value,
  min : Float,
  max : Float,
) -> Unit = "(vec, min, max) => vec.clampScalar(min, max)"

///|
pub extern "js" fn vector2_clone_ffi(vec : @js.Value) -> Vector2 = "(vec) => vec.clone()"

///|
pub extern "js" fn vector2_copy_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec, v) => vec.copy(v)"

///|
pub extern "js" fn vector2_cross_ffi(vec : @js.Value, v : @js.Value) -> Float = "(vec, v) => vec.cross(v)"

///|
pub extern "js" fn vector2_distance_to_ffi(
  vec : @js.Value,
  v : @js.Value,
) -> Float = "(vec, v) => vec.distanceTo(v)"

///|
pub extern "js" fn vector2_distance_to_squared_ffi(
  vec : @js.Value,
  v : @js.Value,
) -> Float = "(vec, v) => vec.distanceToSquared(v)"

///|
pub extern "js" fn vector2_divide_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec, v) => vec.divide(v)"

///|
pub extern "js" fn vector2_divide_scalar_ffi(
  vec : @js.Value,
  s : Float,
) -> Unit = "(vec, s) => vec.divideScalar(s)"

///|
pub extern "js" fn vector2_dot_ffi(vec : @js.Value, s : Float) -> Float = "(vec, s) => vec.dot(s)"

///|
pub extern "js" fn vector2_equals_ffi(vec : @js.Value, v : Vector2) -> Bool = "(vec, v) => vec.equals(v)"

///|
pub extern "js" fn vector2_floor_ffi(vec : @js.Value) -> Unit = "(vec) => vec.floor()"

///|
pub extern "js" fn vector2_get_component_ffi(
  vec : @js.Value,
  index : Int,
) -> Float = "(vec, index) => vec.getComponent(index)"

///|
pub extern "js" fn vector2_length_ffi(vec : @js.Value) -> Float = "(vec) => vec.length()"

///|
pub extern "js" fn vector2_length_sq_ffi(vec : @js.Value) -> Float = "(vec) => vec.lengthSq()"

///|
pub extern "js" fn vector2_lerp_ffi(
  vec : @js.Value,
  v : @js.Value,
  alpha : Float,
) -> Unit = "(vec, v, alpha) => vec.lerp(v, alpha)"

///|
pub extern "js" fn vector2_lerp_vectors_ffi(
  vec : @js.Value,
  v1 : @js.Value,
  v2 : @js.Value,
  alpha : Float,
) -> Unit = "(vec, v1, v2, alpha) => vec.lerpVectors(v1, v2, alpha)"

///|
pub extern "js" fn vector2_manhattan_distance_to_ffi(
  vec : @js.Value,
  v : @js.Value,
) -> Float = "(vec, v) => vec.manhattanDistanceTo(v)"

///|
pub extern "js" fn vector2_manhattan_length_ffi(vec : @js.Value) -> Float = "(vec) => vec.manhattanLength()"

///|
pub extern "js" fn vector2_max_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec, v) => vec.max(v)"

///|
pub extern "js" fn vector2_min_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec, v) => vec.min(v)"

///|
pub extern "js" fn vector2_multiply_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec, v) => vec.multiply(v)"

///|
pub extern "js" fn vector2_multiply_scalar_ffi(
  vec : @js.Value,
  s : Float,
) -> Unit = "(vec, s) => vec.multiplyScalar(s)"

///|
pub extern "js" fn vector2_negate_ffi(vec : @js.Value) -> Unit = "(vec) => vec.negate()"

///|
pub extern "js" fn vector2_normalize_ffi(vec : @js.Value) -> Unit = "(vec) => vec.normalize()"

///|
pub extern "js" fn vector2_random_ffi(vec : @js.Value) -> Unit = "(vec) => vec.random()"

///|
pub extern "js" fn vector2_rotate_around_ffi(
  vec : @js.Value,
  center : @js.Value,
  angle : Float,
) -> Unit = "(vec, center, angle) => vec.rotateAround(center, angle)"

///|
pub extern "js" fn vector2_round_ffi(vec : @js.Value) -> Unit = "(vec) => vec.round()"

///|
pub extern "js" fn vector2_round_to_zero_ffi(vec : @js.Value) -> Unit = "(vec) => vec.roundToZero()"

///|
pub extern "js" fn vector2_set_ffi(
  vec : @js.Value,
  x : Float,
  y : Float,
) -> Unit = "(vec, x, y) => vec.set(x, y)"

///|
pub extern "js" fn vector2_set_component_ffi(
  vec : @js.Value,
  index : Int,
  value : Float,
) -> Unit = "(vec, index, value) => vec.setComponent(index, value)"

///|
pub extern "js" fn vector2_set_length_ffi(
  vec : @js.Value,
  length : Float,
) -> Unit = "(vec, length) => vec.setLength(length)"

///|
pub extern "js" fn vector2_set_x_ffi(vec : @js.Value, x : Float) -> Unit = "(vec, x) => vec.setX(x)"

///|
pub extern "js" fn vector2_set_y_ffi(vec : @js.Value, y : Float) -> Unit = "(vec, y) => vec.setY(y)"

///|
pub extern "js" fn vector2_sub_ffi(vec : @js.Value, v : @js.Value) -> Unit = "(vec, v) => vec.sub(v)"

///|
pub extern "js" fn vector2_sub_scalar_ffi(
  vec : @js.Value,
  scalar : Float,
) -> Unit = "(vec, scalar) => vec.subScalar(scalar)"

///|
pub extern "js" fn vector2_sub_vectors_ffi(
  vec : @js.Value,
  a : @js.Value,
  b : @js.Value,
) -> Unit = "(vec, a, b) => vec.subVectors(a, b)"
