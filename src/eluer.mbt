///|
#external
type Eluer

///|
pub impl IsEluer for Eluer

///|
pub trait IsEluer: @js.Cast {
  x(Self) -> Float = _
  y(Self) -> Float = _
  z(Self) -> Float = _
  order(Self) -> String = _
  set(Self, Float, Float, Float, String) -> Unit = _
}

///|
pub impl @js.Cast for Eluer with into(value) {
  value |> ffi_to_eluer |> _.to_option()
}

///|
pub impl @js.Cast for Eluer with from(value) {
  value |> js_identity
}

///|
pub extern "js" fn ffi_to_eluer(x : @js.Value) -> @js.Nullable[Eluer] = "(x) => x instanceof THREE.Euler ? x : null"

///|
impl IsEluer with x(self) {
  self |> js_identity |> eluer_x_ffi
}

///|
impl IsEluer with y(self) {
  self |> js_identity |> eluer_y_ffi
}

///|
impl IsEluer with z(self) {
  self |> js_identity |> eluer_z_ffi
}

///|
impl IsEluer with order(self) {
  self |> js_identity |> eluer_order_ffi
}

///|
impl IsEluer with set(self, x : Float, y : Float, z : Float, order : String) {
  match order {
    "XYZ" | "YZX" | "ZXY" | "XZY" | "YXZ" | "ZYX" =>
      eluer_set_ffi(self |> js_identity, x, y, z, order)
    _ => abort("unknown order")
  }
}

///|
pub extern "js" fn eluer_x_ffi(obj : @js.Value) -> Float =
  #| (obj) => obj.x()

///|
pub extern "js" fn eluer_y_ffi(obj : @js.Value) -> Float =
  #| (obj) => obj.y()

///|
pub extern "js" fn eluer_z_ffi(obj : @js.Value) -> Float =
  #| (obj) => obj.z()

///|
pub extern "js" fn eluer_order_ffi(obj : @js.Value) -> String =
  #| (obj) => obj.order()

///|
pub extern "js" fn eluer_set_ffi(
  obj : @js.Value,
  x : Float,
  y : Float,
  z : Float,
  order : String,
) -> Unit =
  #| (obj,x,y,z,order) => obj.set(x,y,z,order)
