///|
#external
type Vector3

///|
pub impl IsVector3 for Vector3

///|
pub trait IsVector3: @js.Cast {
  x(Self) -> Float = _
}

///|
pub impl @js.Cast for Vector3 with into(value) {
  value |> ffi_to_vector3 |> _.to_option()
}

///|
pub impl @js.Cast for Vector3 with from(value) {
  value |> js_identity
}

///|
pub extern "js" fn ffi_to_vector3(x : @js.Value) -> @js.Nullable[Vector3] = "(x) => x instanceof THREE.Vector3 ? x : null"

///|
impl IsVector3 with x(self) -> Float {
  vector_x_ffi(self |> js_identity)
}

///|
pub extern "js" fn vector_x_ffi(vec : @js.Value) -> Float = "(vec) => vec.x"
