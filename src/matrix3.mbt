///|
#external
type Matrix3

///|
pub impl IsMatrix3 for Matrix3

///|
pub trait IsMatrix3: @js.Cast {
  clone(Self) -> Matrix3 = _
  copy(Self, Matrix3) -> Unit = _
  determinant(Self) -> Float = _
  equals(Self, Matrix3) -> Bool = _
  extract_basis(Self, Vector3, Vector3, Vector3) -> Unit = _
  // from_array(Self, Array[Float]) -> Unit = _
  // get_normal_matrix(Self, Matrix4) -> Unit = _
  identity(Self) -> Unit = _
  invert(Self) -> Unit = _
  make_rotation(Self, Float) -> Unit = _
  make_scale(Self, Float, Float) -> Unit = _
  make_translation(Self, Float, Float) -> Unit = _
  multiply(Self, Matrix3) -> Matrix3 = _
  multiply_matrices(Self, Matrix3, Matrix3) -> Unit = _
  multiply_scalar(Self, Float) -> Unit = _
  premultiply(Self, Matrix3) -> Unit = _
  rotate(Self, Float) -> Unit = _
  scale(Self, Float, Float) -> Unit = _
  set(Self, Float, Float, Float, Float, Float, Float, Float, Float, Float) -> Unit = _
  // set_from_matrix4(Self, Matrix4) -> Unit = _
  set_uv_transform(Self, Float, Float, Float, Float, Float, Float, Float) -> Unit = _
  // to_array(Self, Array[Float], Int) -> Unit = _
  translate(Self, Float, Float) -> Unit = _
  transpose(Self) -> Unit = _
}

///|
pub impl @js.Cast for Matrix3 with into(value) {
  value |> ffi_to_matrix3 |> _.to_option()
}

///|
pub impl @js.Cast for Matrix3 with from(value) {
  value |> js_identity
}

///|
/// TODO: Add Matrix3 methods here
pub extern "js" fn Matrix3::new(
  n11 : Float,
  n12 : Float,
  n13 : Float,
  n21 : Float,
  n22 : Float,
  n23 : Float,
  n31 : Float,
  n32 : Float,
  n33 : Float,
) -> Matrix3 = "(n11, n12, n13, n21, n22, n23, n31, n32, n33) => new THREE.Matrix3(n11, n12, n13, n21, n22, n23, n31, n32, n33)"

///|
pub extern "js" fn ffi_to_matrix3(x : @js.Value) -> @js.Nullable[Matrix3] = "(x) => x instanceof THREE.Matrix3 ? x : null"

///|
impl IsMatrix3 with clone(self) -> Matrix3 {
  matrix3_clone_ffi(self |> js_identity)
}

///|
impl IsMatrix3 with copy(self, matrix) -> Unit {
  matrix3_copy_ffi(self |> js_identity, matrix |> js_identity)
}

///|
impl IsMatrix3 with determinant(self) -> Float {
  matrix3_determinant_ffi(self |> js_identity)
}

///|
impl IsMatrix3 with equals(self, matrix) -> Bool {
  matrix3_equals_ffi(self |> js_identity, matrix |> js_identity)
}

///|
impl IsMatrix3 with extract_basis(self, x_axis, y_axis, z_axis) -> Unit {
  matrix3_extract_basis_ffi(
    self |> js_identity,
    x_axis |> js_identity,
    y_axis |> js_identity,
    z_axis |> js_identity,
  )
}

///|
impl IsMatrix3 with identity(self) -> Unit {
  matrix3_identity_ffi(self |> js_identity)
}

///|
impl IsMatrix3 with invert(self) -> Unit {
  matrix3_invert_ffi(self |> js_identity)
}

///|
impl IsMatrix3 with make_rotation(self, angle) -> Unit {
  matrix3_make_rotation_ffi(self |> js_identity, angle)
}

///|
impl IsMatrix3 with make_scale(self, x, y) -> Unit {
  matrix3_make_scale_ffi(self |> js_identity, x, y)
}

///|
impl IsMatrix3 with make_translation(self, x, y) -> Unit {
  matrix3_make_translation_ffi(self |> js_identity, x, y)
}

///|
impl IsMatrix3 with multiply(self, matrix) -> Matrix3 {
  matrix3_multiply_ffi(self |> js_identity, matrix |> js_identity)
}

///|
impl IsMatrix3 with multiply_matrices(self, a, b) -> Unit {
  matrix3_multiply_matrices_ffi(
    self |> js_identity,
    a |> js_identity,
    b |> js_identity,
  )
}

///|
impl IsMatrix3 with multiply_scalar(self, s) -> Unit {
  matrix3_multiply_scalar_ffi(self |> js_identity, s)
}

///|
impl IsMatrix3 with premultiply(self, matrix) -> Unit {
  matrix3_premultiply_ffi(self |> js_identity, matrix |> js_identity)
}

///|
impl IsMatrix3 with rotate(self, angle) -> Unit {
  matrix3_rotate_ffi(self |> js_identity, angle)
}

///|
impl IsMatrix3 with scale(self, x, y) -> Unit {
  matrix3_scale_ffi(self |> js_identity, x, y)
}

///|
impl IsMatrix3 with set(self, n11, n12, n13, n21, n22, n23, n31, n32, n33) -> Unit {
  matrix3_set_ffi(
    self |> js_identity,
    n11,
    n12,
    n13,
    n21,
    n22,
    n23,
    n31,
    n32,
    n33,
  )
}

///|
impl IsMatrix3 with set_uv_transform(self, n11, n12, n13, n21, n22, n23, n31) -> Unit {
  matrix3_set_uv_transform_ffi(
    self |> js_identity,
    n11,
    n12,
    n13,
    n21,
    n22,
    n23,
    n31,
  )
}

///|
impl IsMatrix3 with translate(self, x, y) -> Unit {
  matrix3_translate_ffi(self |> js_identity, x, y)
}

///|
impl IsMatrix3 with transpose(self) -> Unit {
  matrix3_transpose_ffi(self |> js_identity)
}

///|
pub extern "js" fn matrix3_determinant_ffi(vec : @js.Value) -> Float = "(vec) => vec.determinant()"

///|
pub extern "js" fn matrix3_equals_ffi(
  vec : @js.Value,
  matrix : @js.Value,
) -> Bool = "(vec, matrix) => vec.equals(matrix)"

///|
pub extern "js" fn matrix3_extract_basis_ffi(
  vec : @js.Value,
  x_axis : @js.Value,
  y_axis : @js.Value,
  z_axis : @js.Value,
) -> Unit = "(vec, x_axis, y_axis, z_axis) => vec.extractBasis(x_axis, y_axis, z_axis)"

///|
pub extern "js" fn matrix3_copy_ffi(
  vec : @js.Value,
  matrix : @js.Value,
) -> Unit = "(vec, matrix) => vec.copy(matrix)"

///|
pub extern "js" fn matrix3_clone_ffi(vec : @js.Value) -> Matrix3 = "(vec) => vec.clone()"

///|
pub extern "js" fn matrix3_identity_ffi(vec : @js.Value) -> Unit = "(vec) => vec.identity()"

///|
pub extern "js" fn matrix3_invert_ffi(vec : @js.Value) -> Unit = "(vec) => vec.invert()"

///|
pub extern "js" fn matrix3_make_rotation_ffi(
  vec : @js.Value,
  angle : Float,
) -> Unit = "(vec, angle) => vec.makeRotation(angle)"

///|
pub extern "js" fn matrix3_make_scale_ffi(
  vec : @js.Value,
  x : Float,
  y : Float,
) -> Unit = "(vec, x, y) => vec.makeScale(x, y)"

///|
pub extern "js" fn matrix3_make_translation_ffi(
  vec : @js.Value,
  x : Float,
  y : Float,
) -> Unit = "(vec, x, y) => vec.makeTranslation(x, y)"

///|
/// TODO: Add more Matrix3 FFI functions here
pub extern "js" fn matrix3_multiply_ffi(
  vec : @js.Value,
  matrix : @js.Value,
) -> Matrix3 = "(vec, matrix) => vec.multiply(matrix)"

///|
pub extern "js" fn matrix3_multiply_matrices_ffi(
  vec : @js.Value,
  a : @js.Value,
  b : @js.Value,
) -> Unit = "(vec, a, b) => vec.multiplyMatrices(a, b)"

///|
pub extern "js" fn matrix3_multiply_scalar_ffi(
  vec : @js.Value,
  s : Float,
) -> Unit = "(vec, s) => vec.multiplyScalar(s)"

///|
pub extern "js" fn matrix3_premultiply_ffi(
  vec : @js.Value,
  matrix : @js.Value,
) -> Unit = "(vec, matrix) => vec.premultiply(matrix)"

///|
pub extern "js" fn matrix3_rotate_ffi(vec : @js.Value, angle : Float) -> Unit = "(vec, angle) => vec.rotate(angle)"

///|
pub extern "js" fn matrix3_scale_ffi(
  vec : @js.Value,
  x : Float,
  y : Float,
) -> Unit = "(vec, x, y) => vec.scale(x, y)"

///|
pub extern "js" fn matrix3_set_ffi(
  vec : @js.Value,
  n11 : Float,
  n12 : Float,
  n13 : Float,
  n21 : Float,
  n22 : Float,
  n23 : Float,
  n31 : Float,
  n32 : Float,
  n33 : Float,
) -> Unit = "(vec, n11, n12, n13, n21, n22, n23, n31, n32, n33) => vec.set(n11, n12, n13, n21, n22, n23, n31, n32, n33)"

///|
pub extern "js" fn matrix3_set_uv_transform_ffi(
  vec : @js.Value,
  n11 : Float,
  n12 : Float,
  n13 : Float,
  n21 : Float,
  n22 : Float,
  n23 : Float,
  n31 : Float,
) -> Unit = "(vec, n11, n12, n13, n21, n22, n23, n31) => vec.setUVTransform(n11, n12, n13, n21, n22, n23, n31)"

///|
pub extern "js" fn matrix3_translate_ffi(
  vec : @js.Value,
  x : Float,
  y : Float,
) -> Unit = "(vec, x, y) => vec.translate(x, y)"

///|
pub extern "js" fn matrix3_transpose_ffi(vec : @js.Value) -> Unit = "(vec) => vec.transpose()"
