///|
#external
pub type Camera

///|
pub impl IsObject for Camera

///|
pub trait IsCamera: IsObject {}

///|
pub impl @js.Cast for Camera with into(value) {
  value |> ffi_to_camera |> _.to_option()
}

///|
pub impl @js.Cast for Camera with from(value) {
  value |> js_identity
}

///|
pub extern "js" fn ffi_to_camera(x : @js.Value) -> @js.Nullable[Camera] = "(x) => x instanceof THREE.Camera ? x : null"

///|
pub extern "js" fn Camera::new() -> Camera =
  #|() => new THREE.Camera();
