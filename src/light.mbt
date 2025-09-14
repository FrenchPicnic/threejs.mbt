///|
#external
type Light

///|
#external
type DirectionalLight

///|
pub impl IsDirectionalLight for DirectionalLight

///|
pub impl IsObject for DirectionalLight

///|
pub trait IsDirectionalLight: IsObject {}

///|
pub extern "js" fn DirectionalLight::new(
  color : String,
  intensity : Float,
) -> DirectionalLight =
  #|(color,intensity) => new THREE.DirectionalLight(color, intensity)

///|
pub impl @js.Cast for DirectionalLight with into(value) {
  value |> ffi_to_directionalLight |> _.to_option()
}

///|
pub impl @js.Cast for DirectionalLight with from(value) {
  value |> js_identity
}

///|
pub extern "js" fn ffi_to_directionalLight(
  x : @js.Value,
) -> @js.Nullable[DirectionalLight] = "(x) => x instanceof THREE.DirectionalLight ? x : null"
