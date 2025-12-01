///|
#external
type PerspectiveCamera

///|
pub impl IsPerspectiveCamera for PerspectiveCamera

///|
pub impl IsObject for PerspectiveCamera

///|
pub trait IsPerspectiveCamera: IsCamera {
  // TODO: 
  // aspect(Self) -> Float = _
  // far(Self) -> Float = _
  // film_gauge(Self) -> Float = _
  // film_offset(Self) -> Float = _
  // focus(Self) -> Float = _
  // fov(Self) -> Float = _
  // is_perspective_camera(Self) -> Bool = _
  // near(Self) -> Float = _
  // view(Self) -> @js.Nullable[@js.Value] = _
  // zoom(Self) -> Float = _
  clear_view_offset(Self) -> Unit = _
  get_effective_fov(Self) -> Float = _
  get_film_height(Self) -> Float = _
  get_film_width(Self) -> Float = _
  get_focal_length(Self) -> Float = _
  // get_view_bounds(Self) -> @js.Nullable[@js.Value] = _
  // get_view_size(Self) -> @js.Nullable[@js.Value] = _
  set_focal_length(Self, Float) -> Unit = _
  set_view_offset(Self, Float, Float, Float, Float, Float, Float) -> Unit = _
  update_projection_matrix(Self) -> Unit = _
}

///|
pub impl @js.Cast for PerspectiveCamera with into(value) {
  value |> ffi_to_perspective_camera |> _.to_option()
}

///|
pub impl @js.Cast for PerspectiveCamera with from(value) {
  value |> js_identity
}

///|
impl IsPerspectiveCamera with clear_view_offset(self) -> Unit {
  perspective_clear_view_offset_ffi(self |> js_identity)
}

///|
impl IsPerspectiveCamera with get_effective_fov(self) -> Float {
  perspective_get_effective_fov_ffi(self |> js_identity)
}

///|
impl IsPerspectiveCamera with get_film_height(self) -> Float {
  perspective_get_film_height_ffi(self |> js_identity)
}

///|
impl IsPerspectiveCamera with get_film_width(self) -> Float {
  perspective_get_film_width_ffi(self |> js_identity)
}

///|
impl IsPerspectiveCamera with get_focal_length(self) -> Float {
  perspective_get_focal_length_ffi(self |> js_identity)
}

///|
impl IsPerspectiveCamera with set_focal_length(self, length) -> Unit {
  perspective_set_focal_length_ffi(self |> js_identity, length)
}

///|
impl IsPerspectiveCamera with set_view_offset(
  self,
  x,
  y,
  width,
  height,
  aspect,
  zoom,
) -> Unit {
  perspective_set_view_offset_ffi(
    self |> js_identity,
    x,
    y,
    width,
    height,
    aspect,
    zoom,
  )
}

///|
impl IsPerspectiveCamera with update_projection_matrix(self) -> Unit {
  perspective_update_projection_matrix_ffi(self |> js_identity)
}

///|
pub extern "js" fn ffi_to_perspective_camera(
  x : @js.Value,
) -> @js.Nullable[PerspectiveCamera] = "(x) => x instanceof THREE.PerspectiveCamera ? x : null"

///|
pub extern "js" fn PerspectiveCamera::new(
  fov : Float,
  aspect : Float,
  near : Float,
  far : Float,
) -> Camera =
  #|(fov, aspect, near, far) => new THREE.PerspectiveCamera( fov, aspect, near, far );

///|
pub extern "js" fn perspective_clear_view_offset_ffi(
  camera : @js.Value,
) -> Unit = "(camera) => camera.clearViewOffset()"

///|
pub extern "js" fn perspective_get_effective_fov_ffi(
  camera : @js.Value,
) -> Float = "(camera) => camera.getEffectiveFOV()"

///|
pub extern "js" fn perspective_get_film_height_ffi(camera : @js.Value) -> Float = "(camera) => camera.getFilmHeight()"

///|
pub extern "js" fn perspective_get_film_width_ffi(camera : @js.Value) -> Float = "(camera) => camera.getFilmWidth()"

///|
pub extern "js" fn perspective_get_focal_length_ffi(
  camera : @js.Value,
) -> Float = "(camera) => camera.getFocalLength()"

///|
pub extern "js" fn perspective_set_focal_length_ffi(
  camera : @js.Value,
  length : Float,
) -> Unit = "(camera, length) => camera.setFocalLength(length)"

///|
pub extern "js" fn perspective_set_view_offset_ffi(
  camera : @js.Value,
  x : Float,
  y : Float,
  width : Float,
  height : Float,
  aspect : Float,
  zoom : Float,
) -> Unit = "(camera, x, y, width, height, aspect, zoom) => camera.setViewOffset(x, y, width, height, aspect, zoom)"

///|
pub extern "js" fn perspective_update_projection_matrix_ffi(
  camera : @js.Value,
) -> Unit = "(camera) => camera.updateProjectionMatrix()"
