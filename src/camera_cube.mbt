///|
#external
type CubeCamera

///|
pub impl IsCubeCamera for CubeCamera

///|
pub impl IsCamera for CubeCamera

///|
pub impl IsObject for CubeCamera

///|
pub trait IsCubeCamera: IsCamera {
  //TODO:
  // active_mipmap_level(Self) -> Float = _
  // coordinate_system(Self) -> String = _
  // render_target(Self) -> RenderTarget = _
  // update(Self, Renderer, Scene) -> Unit = _
  update_coordinate_system(Self) -> Unit = _
}

///|
pub impl @js.Cast for CubeCamera with into(value) {
  value |> ffi_to_cube_camera |> _.to_option()
}

///|
pub impl @js.Cast for CubeCamera with from(value) {
  value |> js_identity
}

///|
impl IsCubeCamera with update_coordinate_system(self) -> Unit {
  self |> js_identity |> cube_update_coordinate_system_ffi
}

///|
pub extern "js" fn ffi_to_cube_camera(
  x : @js.Value,
) -> @js.Nullable[CubeCamera] = "(x) => x instanceof THREE.CubeCamera ? x : null"

///|
// pub extern "js" fn OrthographicCamera::new(
//   left : Float,
//   right : Float,
//   render_target : Float
// ) -> Camera =
//   #|(left,right,top,bottom,near,far) => new THREE.OrthographicCamera(left, right, top, bottom, near, far);

///|
pub extern "js" fn cube_update_coordinate_system_ffi(
  camera : @js.Value,
) -> Unit = "(camera) => camera.updateCoordinateSystem()"
