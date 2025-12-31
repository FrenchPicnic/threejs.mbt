///|
#external
type OrthographicCamera

///|
pub impl IsOrthographicCamera for OrthographicCamera

///|
pub impl IsCamera for OrthographicCamera

///|
pub impl IsObject for OrthographicCamera

///|
pub trait IsOrthographicCamera: IsCamera {
  //TODO:
  // bottom(Self) -> Float = _
  // far(Self) -> Float = _
  // is_orthographic_camera(Self) -> Bool = _
  // left(Self) -> Float = _
  // near(Self) -> Float = _
  // right(Self) -> Float = _
  // top(Self) -> Float = _
  // view(Self) -> @js.Nullable[@js.Value] = _
  // zoom(Self) -> Float = _
  clear_view_offset(Self) -> Unit = _
  set_view_offset(Self, Float, Float, Float, Float, Float, Float) -> Unit = _
  update_projection_matrix(Self) -> Unit = _
}

///|
pub impl @js.Cast for OrthographicCamera with into(value) {
  value |> ffi_to_orthographic_camera |> _.to_option()
}

///|
pub impl @js.Cast for OrthographicCamera with from(value) {
  value |> js_identity
}

///|
impl IsOrthographicCamera with clear_view_offset(self) -> Unit {
  self |> js_identity |> orthographic_clear_view_offset_ffi
}

///|
impl IsOrthographicCamera with set_view_offset(
  self,
  fullheight : Float,
  fullwidth : Float,
  x : Float,
  y : Float,
  width : Float,
  height : Float,
) -> Unit {
  orthographic_set_view_offset_ffi(
    self |> js_identity,
    fullheight,
    fullwidth,
    x,
    y,
    width,
    height,
  )
}

///|
impl IsOrthographicCamera with update_projection_matrix(self) -> Unit {
  self |> js_identity |> orthographic_update_projection_matrix_ffi
}

///|
pub extern "js" fn ffi_to_orthographic_camera(
  x : @js.Value,
) -> @js.Nullable[OrthographicCamera] = "(x) => x instanceof THREE.OrthographicCamera ? x : null"

///|
pub extern "js" fn OrthographicCamera::new(
  left : Float,
  right : Float,
  top : Float,
  bottom : Float,
  near : Float,
  far : Float,
) -> Camera =
  #|(left,right,top,bottom,near,far) => new THREE.OrthographicCamera(left, right, top, bottom, near, far);

///|
pub extern "js" fn orthographic_clear_view_offset_ffi(
  camera : @js.Value,
) -> Unit =
  #|(camera) => camera.clearViewOffset();

///|
pub extern "js" fn orthographic_set_view_offset_ffi(
  camera : @js.Value,
  fullwidth : Float,
  fullheight : Float,
  x : Float,
  y : Float,
  width : Float,
  height : Float,
) -> Unit =
  #|(camera,fullwidth,fullheight,x,y,width,height) => camera.setViewOffset(fullwidth, fullheight, x, y, width, height);

///|
pub extern "js" fn orthographic_update_projection_matrix_ffi(
  camera : @js.Value,
) -> Unit =
  #|(camera) => camera.updateProjectionMatrix();
