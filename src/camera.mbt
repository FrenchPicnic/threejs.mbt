///|
#external
pub type Camera

///|
pub impl IsObject for Camera

///|
pub trait IsCamera: IsObject {
  get_world_direction(Self, Vector3) -> Vector3 = _
}

///|
pub impl @js.Cast for Camera with into(value) {
  value |> ffi_to_camera |> _.to_option()
}

///|
pub impl @js.Cast for Camera with from(value) {
  value |> js_identity
}

///|
impl IsCamera with get_world_direction(self, target : Vector3) -> Vector3 {
  camera_get_world_direction_ffi(self |> js_identity, target |> js_identity)
}

///|
pub extern "js" fn ffi_to_camera(x : @js.Value) -> @js.Nullable[Camera] = "(x) => x instanceof THREE.Camera ? x : null"

///|
pub extern "js" fn Camera::new() -> Camera =
  #|() => new THREE.Camera();

///|
pub extern "js" fn camera_get_world_direction_ffi(
  camera : @js.Value,
  target : @js.Value,
) -> Vector3 =
  #|(camera, target) => camera.getWorldDirection(target);
