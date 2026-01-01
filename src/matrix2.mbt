///|
#external
type Matrix2

///|
pub impl IsMatrix2 for Matrix2

///|
pub trait IsMatrix2: @js.Cast {
  // from_array(Self, Array[Float]) -> Matrix2 = _
  identity(Self) -> Unit = _
  set(Self, Float, Float, Float, Float) -> Unit = _
}

///|
pub impl @js.Cast for Matrix2 with into(value) {
  value |> ffi_to_matrix2 |> _.to_option()
}

///|
pub impl @js.Cast for Matrix2 with from(value) {
  value |> js_identity
}

///|
/// TODO: Add Matrix2 methods here
pub extern "js" fn Matrix2::new(
  n11 : Float,
  n12 : Float,
  n21 : Float,
  n22 : Float,
) -> Matrix2 = "(n11, n12, n21, n22) => new THREE.Matrix2(n11, n12, n21, n22)"

///|
pub extern "js" fn ffi_to_matrix2(x : @js.Value) -> @js.Nullable[Matrix2] = "(x) => x instanceof THREE.Matrix2 ? x : null"

///|
impl IsMatrix2 with identity(self) -> Unit {
  matrix2_identity_ffi(self |> js_identity)
}

///|
impl IsMatrix2 with set(self, n11, n12, n21, n22) -> Unit {
  matrix2_set_ffi(self |> js_identity, n11, n12, n21, n22)
}

///|
pub extern "js" fn matrix2_identity_ffi(vec : @js.Value) -> Unit = "(vec) => vec.identity()"

///|
pub extern "js" fn matrix2_set_ffi(
  vec : @js.Value,
  n11 : Float,
  n12 : Float,
  n21 : Float,
  n22 : Float,
) -> Unit = "(vec,n11,n12,n21,n22) => vec.set(n11,n12,n21,n22)"
