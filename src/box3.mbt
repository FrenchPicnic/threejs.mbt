///|
#external
type Box3

///|
pub impl IsBox3 for Box3

///|
pub trait IsBox3: @js.Cast {
  // apply_matrix4(Self, Matrix4) -> Box3 = _
  clamp_point(Self, Vector3, Vector3) -> Vector3 = _
  clone(Self) -> Box3 = _
  contains_box(Self, Box3) -> Bool = _
  contains_point(Self, Vector3) -> Bool = _
  copy(Self, Box3) -> Unit = _
  distance_to_point(Self, Vector3) -> Float = _
  equals(Self, Box3) -> Bool = _
  // expand_by_object(Self, Object3D,Bool) -> Unit = _
  expand_by_point(Self, Vector3) -> Unit = _
  expand_by_scalar(Self, Float) -> Unit = _
  expand_by_vector(Self, Vector3) -> Unit = _
  // form_json(Self, Object) -> Unit = _
  // get_bounding_sphere(Self, Sphere) -> Sphere = _
  get_center(Self, Vector3) -> Vector3 = _
  get_parameter(Self, Vector3, Vector3) -> Vector3 = _
  get_size(Self, Vector3) -> Vector3 = _
  intersect(Self, Box3) -> Unit = _
  intersects_box(Self, Box3) -> Bool = _
  // intersects_plane(Self, Plane) -> Bool = _
  // intersects_sphere(Self, Sphere) -> Bool = _
  // intersect_triangle(Self,Triangle) -> Bool = _
  is_empty(Self) -> Bool = _
  make_empty(Self) -> Unit = _
  set(Self, Vector3, Vector3) -> Unit = _
  // set_from_buffer_attribute(Self, BufferAttribute) -> Unit = _
  // set_from_array(Self, Array[Float]) -> Unit = _
  // set_from_object(Self, Object3D,Bool) -> Unit = _
  set_from_center_and_size(Self, Vector3, Vector3) -> Unit = _
  // set_from_points(Self, Array[Vector3]) -> Self = _
  // to_json(Self, Object) -> Unit = _
  translate(Self, Vector3) -> Unit = _
  union(Self, Box3) -> Unit = _
}

///|
pub impl @js.Cast for Box3 with into(value) {
  value |> ffi_to_box3 |> _.to_option()
}

///|
pub impl @js.Cast for Box3 with from(value) {
  value |> js_identity
}

///|
impl IsBox3 with clamp_point(self, point : Vector3, target : Vector3) -> Vector3 {
  box3_clamp_point_ffi(
    self |> js_identity,
    point |> js_identity,
    target |> js_identity,
  )
}

///|
impl IsBox3 with clone(self) -> Box3 {
  box3_clone_ffi(self |> js_identity)
}

///|
impl IsBox3 with contains_box(self, other : Box3) -> Bool {
  box3_contains_box_ffi(self |> js_identity, other |> js_identity)
}

///|
impl IsBox3 with contains_point(self, point : Vector3) -> Bool {
  box3_contains_point_ffi(self |> js_identity, point |> js_identity)
}

///|
impl IsBox3 with copy(self, other : Box3) -> Unit {
  box3_copy_ffi(self |> js_identity, other |> js_identity)
}

///|
impl IsBox3 with distance_to_point(self, point : Vector3) -> Float {
  box3_distance_to_point_ffi(self |> js_identity, point |> js_identity)
}

///|
impl IsBox3 with equals(self, other : Box3) -> Bool {
  box3_equals_ffi(self |> js_identity, other |> js_identity)
}

///|
impl IsBox3 with expand_by_point(self, point : Vector3) -> Unit {
  box3_expand_by_point_ffi(self |> js_identity, point |> js_identity)
}

///|
impl IsBox3 with expand_by_scalar(self, scalar : Float) -> Unit {
  box3_expand_by_scalar_ffi(self |> js_identity, scalar |> js_identity)
}

///|
impl IsBox3 with expand_by_vector(self, vector : Vector3) -> Unit {
  box3_expand_by_vector_ffi(self |> js_identity, vector |> js_identity)
}

///|
impl IsBox3 with get_center(self, target : Vector3) -> Vector3 {
  box3_get_center_ffi(self |> js_identity, target |> js_identity)
}

///|
impl IsBox3 with get_parameter(self, point : Vector3, target : Vector3) -> Vector3 {
  box3_get_parameter_ffi(
    self |> js_identity,
    point |> js_identity,
    target |> js_identity,
  )
}

///|
impl IsBox3 with get_size(self, target : Vector3) -> Vector3 {
  box3_get_size_ffi(self |> js_identity, target |> js_identity)
}

///|
impl IsBox3 with intersect(self, box : Box3) -> Unit {
  box3_intersect_ffi(self |> js_identity, box |> js_identity)
}

///|
impl IsBox3 with intersects_box(self, box : Box3) -> Bool {
  box3_intersects_box_ffi(self |> js_identity, box |> js_identity)
}

///|
impl IsBox3 with is_empty(self) -> Bool {
  box3_is_empty_ffi(self |> js_identity)
}

///|
impl IsBox3 with make_empty(self) -> Unit {
  box3_make_empty_ffi(self |> js_identity)
}

///|
impl IsBox3 with set(self, min : Vector3, max : Vector3) -> Unit {
  box3_set_ffi(self |> js_identity, min |> js_identity, max |> js_identity)
}

///|
impl IsBox3 with set_from_center_and_size(
  self,
  center : Vector3,
  size : Vector3,
) -> Unit {
  box3_set_from_center_and_size_ffi(
    self |> js_identity,
    center |> js_identity,
    size |> js_identity,
  )
}

///|
impl IsBox3 with translate(self, offset : Vector3) -> Unit {
  box3_translate_ffi(self |> js_identity, offset |> js_identity)
}

///|
impl IsBox3 with union(self, box : Box3) -> Unit {
  box3_union_ffi(self |> js_identity, box |> js_identity)
}

///|
pub extern "js" fn box3_clone_ffi(box : @js.Value) -> Box3 = "(box) => box.clone()"

///|
pub extern "js" fn box3_copy_ffi(box : @js.Value, other : @js.Value) -> Unit = "(box, other) => box.copy(other)"

///|
pub extern "js" fn box3_distance_to_point_ffi(
  box : @js.Value,
  point : @js.Value,
) -> Float = "(box, point) => box.distanceToPoint(point)"

///|
pub extern "js" fn box3_equals_ffi(box : @js.Value, other : @js.Value) -> Bool = "(box, other) => box.equals(other)"

///|
pub extern "js" fn box3_contains_point_ffi(
  box : @js.Value,
  point : @js.Value,
) -> Bool = "(box, point) => box.containsPoint(point)"

///|
pub extern "js" fn box3_contains_box_ffi(
  box : @js.Value,
  other : @js.Value,
) -> Bool = "(box, other) => box.containsBox(other)"

///|
pub extern "js" fn box3_clamp_point_ffi(
  box : @js.Value,
  point : @js.Value,
  target : @js.Value,
) -> Vector3 = "(box, point, target) => box.clampPoint(point, target)"

///|
pub extern "js" fn Box3::new(min : Vector3, max : Vector3) -> Box3 = "(min, max) => new THREE.Box3(min, max)"

///|
pub extern "js" fn ffi_to_box3(x : @js.Value) -> @js.Nullable[Box3] = "(x) => x instanceof THREE.Box3 ? x : null"

///|
pub extern "js" fn box3_expand_by_point_ffi(
  box : @js.Value,
  other : @js.Value,
) -> Unit = "(box, other) => box.expandByPoint(other)"

///|
pub extern "js" fn box3_expand_by_scalar_ffi(
  box : @js.Value,
  other : Float,
) -> Unit = "(box, other) => box.expandByScalar(other)"

///|
pub extern "js" fn box3_expand_by_vector_ffi(
  box : @js.Value,
  other : @js.Value,
) -> Unit = "(box, other) => box.expandByVector(other)"

///|
pub extern "js" fn box3_get_center_ffi(
  box : @js.Value,
  target : @js.Value,
) -> Vector3 = "(box, target) => box.getCenter(target)"

///|
pub extern "js" fn box3_get_parameter_ffi(
  box : @js.Value,
  point : @js.Value,
  target : @js.Value,
) -> Vector3 = "(box, point, target) => box.getParameter(point, target)"

///|
pub extern "js" fn box3_get_size_ffi(
  box : @js.Value,
  target : @js.Value,
) -> Vector3 = "(box, target) => box.getSize(target)"

///|
pub extern "js" fn box3_intersect_ffi(
  box : @js.Value,
  other : @js.Value,
) -> Unit = "(box, other) => box.intersect(other)"

///|
pub extern "js" fn box3_intersects_box_ffi(
  box : @js.Value,
  other : @js.Value,
) -> Bool = "(box, other) => box.intersectsBox(other)"

///|
pub extern "js" fn box3_is_empty_ffi(box : @js.Value) -> Bool = "(box) => box.isEmpty()"

///|
pub extern "js" fn box3_make_empty_ffi(box : @js.Value) -> Unit = "(box) => box.makeEmpty()"

///|
pub extern "js" fn box3_set_ffi(
  box : @js.Value,
  min : @js.Value,
  max : @js.Value,
) -> Unit = "(box, min, max) => box.set(min, max)"

///|
pub extern "js" fn box3_set_from_center_and_size_ffi(
  box : @js.Value,
  center : @js.Value,
  size : @js.Value,
) -> Unit = "(box, center, size) => box.setFromCenterAndSize(center, size)"

///|
pub extern "js" fn box3_translate_ffi(
  box : @js.Value,
  offset : @js.Value,
) -> Unit = "(box, offset) => box.translate(offset)"

///|
pub extern "js" fn box3_union_ffi(box : @js.Value, other : @js.Value) -> Unit = "(box, other) => box.union(other)"
