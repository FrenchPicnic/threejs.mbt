///|
#external
pub type Scene

///|
impl IsObject for Scene

///|
pub impl @js.Cast for Scene with into(value) {
  value |> ffi_to_scene |> _.to_option()
}

///|
pub impl @js.Cast for Scene with from(value) {
  value |> js_identity
}

///|
pub extern "js" fn Scene::new() -> Scene =
  #|() => new THREE.Scene();

///|
pub extern "js" fn ffi_to_scene(x : @js.Value) -> @js.Nullable[Scene] = "(x) => x instanceof THREE.Scene ? x : null"
