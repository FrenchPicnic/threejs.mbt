///|
#external
type Light

///|
pub trait IsLight: IsObject {}

///|
pub impl IsObject for Light

///|
pub impl IsLight for Light

///|
pub impl @js.Cast for Light with into(value) {
  value |> ffi_to_Light |> _.to_option()
}

///|
pub impl @js.Cast for Light with from(value) {
  value |> js_identity
}

///|
pub extern "js" fn ffi_to_Light(x : @js.Value) -> @js.Nullable[Light] = "(x) => x instanceof THREE.Light ? x : null"
