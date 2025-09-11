///|
#external
type Material

///|
#external
type MeshPhongMaterial

///|
pub impl IsMaterial for Material

///|
pub trait IsMaterial: @js.Cast {}

///|
pub impl @js.Cast for Material with into(value) {
  value |> ffi_to_material |> _.to_option()
}

///|
pub impl @js.Cast for Material with from(value) {
  value |> js_identity
}

///|
pub extern "js" fn ffi_to_material(x : @js.Value) -> @js.Nullable[Material] = "(x) => x instanceof THREE.Material ? x : null"

///|
pub extern "js" fn meshBasicMaterial() -> Material =
  #|
