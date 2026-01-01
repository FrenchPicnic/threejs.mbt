///|
#external
type Box2

///|
pub impl IsBox2 for Box2

///|
pub trait IsBox2: @js.Cast {
  clamp_point(Self, Vector2, Vector2) -> Vector2 = _
  clone(Self) -> Box2 = _
  contains_box(Self, Box2) -> Bool = _
  contains_point(Self, Vector2) -> Bool = _
  copy(Self, Box2) -> Unit = _
  distance_to_point(Self, Vector2) -> Float = _
  equals(Self, Box2) -> Bool = _
  expand_by_point(Self, Vector2) -> Unit = _
  expand_by_scalar(Self, Float) -> Unit = _
  expand_by_vector(Self, Vector2) -> Unit = _
  get_center(Self, Vector2) -> Vector2 = _
  get_parameter(Self, Vector2, Vector2) -> Vector2 = _
  get_size(Self, Vector2) -> Vector2 = _
  intersect(Self, Box2) -> Unit = _
  intersects_box(Self, Box2) -> Bool = _
  is_empty(Self) -> Bool = _
  make_empty(Self) -> Unit = _
  set(Self, Vector2, Vector2) -> Unit = _
  set_from_center_and_size(Self, Vector2, Vector2) -> Unit = _
  // set_from_points(Self, Array[Vector2]) -> Self = _
  translate(Self, Vector2) -> Unit = _
  union(Self, Box2) -> Unit = _
}

///|
pub impl @js.Cast for Box2 with into(value) {
  value |> ffi_to_box2 |> _.to_option()
}

///|
pub impl @js.Cast for Box2 with from(value) {
  value |> js_identity
}

///|
impl IsBox2 with clamp_point(self, point : Vector2, target : Vector2) -> Vector2 {
  box2_clamp_point_ffi(
    self |> js_identity,
    point |> js_identity,
    target |> js_identity,
  )
}

///|
impl IsBox2 with clone(self) -> Box2 {
  box2_clone_ffi(self |> js_identity)
}

///|
impl IsBox2 with contains_box(self, other : Box2) -> Bool {
  box2_contains_box_ffi(self |> js_identity, other |> js_identity)
}

///|
impl IsBox2 with contains_point(self, point : Vector2) -> Bool {
  box2_contains_point_ffi(self |> js_identity, point |> js_identity)
}

///|
impl IsBox2 with copy(self, other : Box2) -> Unit {
  box2_copy_ffi(self |> js_identity, other |> js_identity)
}

///|
impl IsBox2 with distance_to_point(self, point : Vector2) -> Float {
  box2_distance_to_point_ffi(self |> js_identity, point |> js_identity)
}

///|
impl IsBox2 with equals(self, other : Box2) -> Bool {
  box2_equals_ffi(self |> js_identity, other |> js_identity)
}

///|
impl IsBox2 with expand_by_point(self, point : Vector2) -> Unit {
  box2_expand_by_point_ffi(self |> js_identity, point |> js_identity)
}

///|
impl IsBox2 with expand_by_scalar(self, scalar : Float) -> Unit {
  box2_expand_by_scalar_ffi(self |> js_identity, scalar |> js_identity)
}

///|
impl IsBox2 with expand_by_vector(self, vector : Vector2) -> Unit {
  box2_expand_by_vector_ffi(self |> js_identity, vector |> js_identity)
}

///|
impl IsBox2 with get_center(self, target : Vector2) -> Vector2 {
  box2_get_center_ffi(self |> js_identity, target |> js_identity)
}

///|
impl IsBox2 with get_parameter(self, point : Vector2, target : Vector2) -> Vector2 {
  box2_get_parameter_ffi(
    self |> js_identity,
    point |> js_identity,
    target |> js_identity,
  )
}

///|
impl IsBox2 with get_size(self, target : Vector2) -> Vector2 {
  box2_get_size_ffi(self |> js_identity, target |> js_identity)
}

///|
impl IsBox2 with intersect(self, box : Box2) -> Unit {
  box2_intersect_ffi(self |> js_identity, box |> js_identity)
}

///|
impl IsBox2 with intersects_box(self, box : Box2) -> Bool {
  box2_intersects_box_ffi(self |> js_identity, box |> js_identity)
}

///|
impl IsBox2 with is_empty(self) -> Bool {
  box2_is_empty_ffi(self |> js_identity)
}

///|
impl IsBox2 with make_empty(self) -> Unit {
  box2_make_empty_ffi(self |> js_identity)
}

///|
impl IsBox2 with set(self, min : Vector2, max : Vector2) -> Unit {
  box2_set_ffi(self |> js_identity, min |> js_identity, max |> js_identity)
}

///|
impl IsBox2 with set_from_center_and_size(
  self,
  center : Vector2,
  size : Vector2,
) -> Unit {
  box2_set_from_center_and_size_ffi(
    self |> js_identity,
    center |> js_identity,
    size |> js_identity,
  )
}

///|
impl IsBox2 with translate(self, offset : Vector2) -> Unit {
  box2_translate_ffi(self |> js_identity, offset |> js_identity)
}

///|
impl IsBox2 with union(self, box : Box2) -> Unit {
  box2_union_ffi(self |> js_identity, box |> js_identity)
}

///|
pub extern "js" fn box2_clone_ffi(box : @js.Value) -> Box2 = "(box) => box.clone()"

///|
pub extern "js" fn box2_copy_ffi(box : @js.Value, other : @js.Value) -> Unit = "(box, other) => box.copy(other)"

///|
pub extern "js" fn box2_distance_to_point_ffi(
  box : @js.Value,
  point : @js.Value,
) -> Float = "(box, point) => box.distanceToPoint(point)"

///|
pub extern "js" fn box2_equals_ffi(box : @js.Value, other : @js.Value) -> Bool = "(box, other) => box.equals(other)"

///|
pub extern "js" fn box2_contains_point_ffi(
  box : @js.Value,
  point : @js.Value,
) -> Bool = "(box, point) => box.containsPoint(point)"

///|
pub extern "js" fn box2_contains_box_ffi(
  box : @js.Value,
  other : @js.Value,
) -> Bool = "(box, other) => box.containsBox(other)"

///|
pub extern "js" fn box2_clamp_point_ffi(
  box : @js.Value,
  point : @js.Value,
  target : @js.Value,
) -> Vector2 = "(box, point, target) => box.clampPoint(point, target)"

///|
pub extern "js" fn Box2::new(min : Vector2, max : Vector2) -> Box2 = "(min, max) => new THREE.Box2(min, max)"

///|
pub extern "js" fn ffi_to_box2(x : @js.Value) -> @js.Nullable[Box2] = "(x) => x instanceof THREE.Box2 ? x : null"

///|
pub extern "js" fn box2_expand_by_point_ffi(
  box : @js.Value,
  other : @js.Value,
) -> Unit = "(box, other) => box.expandByPoint(other)"

///|
pub extern "js" fn box2_expand_by_scalar_ffi(
  box : @js.Value,
  other : Float,
) -> Unit = "(box, other) => box.expandByScalar(other)"

///|
pub extern "js" fn box2_expand_by_vector_ffi(
  box : @js.Value,
  other : @js.Value,
) -> Unit = "(box, other) => box.expandByVector(other)"

///|
pub extern "js" fn box2_get_center_ffi(
  box : @js.Value,
  target : @js.Value,
) -> Vector2 = "(box, target) => box.getCenter(target)"

///|
pub extern "js" fn box2_get_parameter_ffi(
  box : @js.Value,
  point : @js.Value,
  target : @js.Value,
) -> Vector2 = "(box, point, target) => box.getParameter(point, target)"

///|
pub extern "js" fn box2_get_size_ffi(
  box : @js.Value,
  target : @js.Value,
) -> Vector2 = "(box, target) => box.getSize(target)"

///|
pub extern "js" fn box2_intersect_ffi(
  box : @js.Value,
  other : @js.Value,
) -> Unit = "(box, other) => box.intersect(other)"

///|
pub extern "js" fn box2_intersects_box_ffi(
  box : @js.Value,
  other : @js.Value,
) -> Bool = "(box, other) => box.intersectsBox(other)"

///|
pub extern "js" fn box2_is_empty_ffi(box : @js.Value) -> Bool = "(box) => box.isEmpty()"

///|
pub extern "js" fn box2_make_empty_ffi(box : @js.Value) -> Unit = "(box) => box.makeEmpty()"

///|
pub extern "js" fn box2_set_ffi(
  box : @js.Value,
  min : @js.Value,
  max : @js.Value,
) -> Unit = "(box, min, max) => box.set(min, max)"

///|
pub extern "js" fn box2_set_from_center_and_size_ffi(
  box : @js.Value,
  center : @js.Value,
  size : @js.Value,
) -> Unit = "(box, center, size) => box.setFromCenterAndSize(center, size)"

///|
pub extern "js" fn box2_translate_ffi(
  box : @js.Value,
  offset : @js.Value,
) -> Unit = "(box, offset) => box.translate(offset)"

///|
pub extern "js" fn box2_union_ffi(box : @js.Value, other : @js.Value) -> Unit = "(box, other) => box.union(other)"
