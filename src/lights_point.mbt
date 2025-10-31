///|
#external
type PointLight

///|
pub impl IsPointLight for PointLight

///|
pub impl IsObject for PointLight

///|
pub trait IsPointLight: IsLight {
  decay(Self) -> Float = _
  distance(Self) -> Float = _
}

///|
impl IsPointLight with decay(self) {
  self |> js_identity |> decay_ffi
}

///|
impl IsPointLight with distance(self) {
  self |> js_identity |> distance_ffi
}

///|
pub extern "js" fn PointLight::new(
  color : String,
  intensity : Float,
  distance : Float,
  decay : Float,
) -> DirectionalLight =
  #|(color,intensity,distance,decay) => new THREE.PointLight(color, intensity,distance,decay)

///|
pub impl @js.Cast for PointLight with into(value) {
  value |> ffi_to_pointLight |> _.to_option()
}

///|
pub impl @js.Cast for PointLight with from(value) {
  value |> js_identity
}

///|
pub extern "js" fn ffi_to_pointLight(x : @js.Value) -> @js.Nullable[PointLight] = "(x) => x instanceof THREE.PointLight ? x : null"

///|
pub extern "js" fn decay_ffi(obj : @js.Value) -> Float =
  #| (obj) => obj.decay()

///|
pub extern "js" fn distance_ffi(obj : @js.Value) -> Float =
  #| (obj) => obj.distance()
