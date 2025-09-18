///|
/// To use this module, you need to add 
/// ```html
/// import { OrbitControls } from 'three/addons/controls/OrbitControls.js';
/// window.OrbitControls = OrbitControls;
/// ```
/// to your main .html file.
#external
type OrbitControl

///|
pub impl IsOrbitControls for OrbitControl

///|
pub impl IsControl for OrbitControl

///|
pub impl @js.Cast for OrbitControl with into(value) {
  value |> ffi_to_orbit_control |> _.to_option()
}

///|
pub impl @js.Cast for OrbitControl with from(value) {
  value |> js_identity
}

///|
pub extern "js" fn ffi_to_orbit_control(
  x : @js.Value,
) -> @js.Nullable[OrbitControl] = "(x) => x instanceof OrbitControls ? x : null"

///|
pub trait IsOrbitControls: IsControl {
  update(Self) -> Bool = _
}

///|
pub extern "js" fn OrbitControl::new(
  camera : Camera,
  element : String,
) -> OrbitControl =
  #| (camera, element) => new OrbitControls(camera, document.querySelector( element ))

///|
impl IsOrbitControls with update(self) -> Bool {
  self |> js_identity |> orbit_update_ffi
}

///|
pub extern "js" fn orbit_update_ffi(orbit : @js.Value) -> Bool =
  #|(orbit) => orbit.update()
