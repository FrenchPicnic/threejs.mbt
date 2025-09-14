///|
#external
pub type Camera

///|
pub impl IsObject for Camera

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
pub extern "js" fn Camera::new(
  fov : Float,
  aspect : Float,
  near : Float,
  far : Float,
) -> Camera =
  #|(fov, aspect, near, far) => new THREE.PerspectiveCamera( fov, aspect, near, far );
