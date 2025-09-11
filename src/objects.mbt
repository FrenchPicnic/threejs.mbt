///|
#external
type Object

///|
pub impl IsObject for Object

///|
pub trait IsObject: @js.Cast {
  add(Self, @js.Value) -> Unit = _
  cast_shadow(Object) -> Bool = _
  id(Object) -> Int = _
  set_position(Self, Int, Int, Int) -> Unit = _
  set_rotation(Self, Float, Float, Float, String) -> Unit = _
}

///|
pub impl @js.Cast for Object with into(value) {
  value |> ffi_to_object |> _.to_option()
}

///|
pub impl @js.Cast for Object with from(value) {
  value |> js_identity
}

///|
pub extern "js" fn ffi_to_object(x : @js.Value) -> @js.Nullable[Object] = "(x) => x instanceof THREE.Object3D ? x : null"

///|
impl IsObject with cast_shadow(obj : Object) {
  cast_shadow_ffi(obj)
}

///|
impl IsObject with id(obj : Object) {
  id_ffi(obj)
}

///|
impl IsObject with add(self, child : @js.Value) {
  add_ffi(self |> js_identity, child)
}

///|
impl IsObject with set_position(self, x : Int, y : Int, z : Int) {
  set_position_ffi(self |> js_identity, x, y, z)
}

///|
impl IsObject with set_rotation(
  self,
  x : Float,
  y : Float,
  z : Float,
  order : String,
) {
  set_rotation_ffi(self |> js_identity, x, y, z, order)
}

///|
pub extern "js" fn cast_shadow_ffi(obj : Object) -> Bool =
  #| (obj) => obj.castShadow()

///|
pub extern "js" fn id_ffi(obj : Object) -> Int =
  #| (obj) => obj.id()

///|
pub extern "js" fn add_ffi(parent : @js.Value, child : @js.Value) -> Unit =
  #|(parent, child) => parent.add( child );

///|
pub extern "js" fn set_position_ffi(
  obj : @js.Value,
  x : Int,
  y : Int,
  z : Int,
) -> Unit =
  #|(obj,x,y,z) => obj.position.set(x,y,z);

///|
pub extern "js" fn set_rotation_ffi(
  obj : @js.Value,
  x : Float,
  y : Float,
  z : Float,
  order : String,
) -> Unit =
  #|(obj,x,y,z,order) => obj.rotation.set(x,y,z,order);
