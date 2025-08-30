///|
#external
pub type Object

///|
pub(open) trait Object3D {
  castShadow(Object) -> Bool = _
  id(Object) -> Int = _
  add(Object, Object) -> Object = _
  setPosition(Object, Int, Int, Int) -> Object = _
}

///|
impl Object3D for Object

///|
impl Object3D with castShadow(obj : Object) {
  castShadow_ffi(obj)
}

///|
impl Object3D with id(obj : Object) {
  id_ffi(obj)
}

///|
impl Object3D with add(parent : Object, child : Object) {
  add_ffi(parent, child)
}

///|
impl Object3D with setPosition(self : Object, x : Int, y : Int, z : Int) {
  setPosition_ffi(self, x, y, z)
}

///|
pub extern "js" fn castShadow_ffi(obj : Object) -> Bool =
  #| (obj) => obj.castShadow()

///|
pub extern "js" fn id_ffi(obj : Object) -> Int =
  #| (obj) => obj.id()

///|
pub extern "js" fn add_ffi(parent : Object, child : Object) -> Object =
  #|function(parent,child) {
  #|parent.add( child );
  #|return parent;
  #|}

///|
pub extern "js" fn setPosition_ffi(
  obj : Object,
  x : Int,
  y : Int,
  z : Int,
) -> Object =
  #|function(obj,x,y,z) {
  #|obj.position.set(x,y,z)
  #|return obj;
  #|}
