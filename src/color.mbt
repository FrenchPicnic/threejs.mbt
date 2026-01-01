///|
#external
type Color

///|
pub impl IsColor for Color

///|
pub trait IsColor: @js.Cast {}

///|
pub impl @js.Cast for Color with into(value) {
  value |> ffi_to_color |> _.to_option()
}

///|
pub impl @js.Cast for Color with from(value) {
  value |> js_identity
}

///|
/// TODO: Add Color methods here
pub extern "js" fn Color::new(r : Float, g : Float, b : Float) -> Color = "(r, g, b) => new THREE.Color(r, g, b)"

///|
pub extern "js" fn ffi_to_color(x : @js.Value) -> @js.Nullable[Color] = "(x) => x instanceof THREE.Color ? x : null"
