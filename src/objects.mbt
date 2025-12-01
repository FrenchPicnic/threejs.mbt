///|
#external
type Object

///|
pub impl IsObject for Object

///|
pub trait IsObject: @js.Cast {
  // // animations(Self) -> Array[Animation] = _
  cast_shadow(Self) -> Bool = _
  // // children(Self) -> Array[Object] = _
  // // custom_depth_material(Self) -> Material? = _
  // // custom_distance_material(Self) -> Material? = _
  // frustum_culled(Self) -> Bool = _
  id(Self) -> Int = _
  // is_object3d(Self) -> Bool = _
  // // layers(Self) -> Int = _
  // // matrix(Self) -> @js.Value = _
  // matrix_auto_update(Self) -> Bool = _
  // // matrix_world(Self) -> @js.Value = _
  // matrix_world_auto_update(Self) -> Bool = _
  // matrix_world_needs_update(Self) -> Bool = _
  // // model_view_matrix(Self) -> @js.Value = _
  // name(Self) -> String = _
  // // normal_matrix(Self) -> @js.Value = _
  // parent(Self) -> Object = _
  // position(Self) -> Vector3 = _
  // // quaternion(Self) -> Quaternion = _
  // receive_shadow(Self) -> Bool = _
  // render_order(Self) -> Int = _
  // // rotation(Self) -> Euler = _
  // scale(Self) -> Vector3 = _
  // type_(Self) -> String = _
  // up(Self) -> Vector3 = _
  // // user_data(Self) -> @js.Value = _
  // uuid(Self) -> String = _
  // visible(Self) -> Bool = _
  // default_matrix_auto_update(Self) -> Bool = _
  // default_matrix_world_auto_update(Self) -> Bool = _
  // default_up(Self) -> Vector3 = _
  add(Self, Object) -> Unit = _
  // apply_matrix4(Self, @js.Value) -> Unit = _
  // apply_quaternion(Self, @js.Value) -> Unit = _
  attach(Self, Object) -> Unit = _
  clear(Self) -> Unit = _
  clone(Self, Bool) -> Object = _
  copy(Self, Object, Bool) -> Object = _
  // get_object_by_id(Self, Int) -> Object? = _
  // get_object_by_name(Self, String) -> Object? = _
  // get_object_by_property(Self, String, @js.Value) -> Object? = _
  // get_objects_by_property(Self, String, @js.Value) -> Object? = _
  get_world_direction(Self, Vector3) -> Vector3 = _
  get_world_position(Self, Vector3) -> Vector3 = _
  // get_world_quaternion(Self, target : Quaternion) -> Quaternion = _
  get_world_scale(Self, Vector3) -> Vector3 = _
  local_to_world(Self, Vector3) -> Vector3 = _
  lookat(Self, Float, Float, Float) -> Unit = _
  remove(Self, @js.Value) -> Unit = _
  remove_from_parent(Self) -> Unit = _
  rotate_on_axis(Self, Vector3, Float) -> Unit = _
  rotate_on_world_axis(Self, Vector3, Float) -> Unit = _
  rotate_x(Self, Float) -> Unit = _
  rotate_y(Self, Float) -> Unit = _
  rotate_z(Self, Float) -> Unit = _
  set_rotation_from_axis_angle(Self, Vector3, Float) -> Unit = _
  translate_on_axis(Self, Vector3, Float) -> Unit = _
  translate_x(Self, Float) -> Unit = _
  translate_y(Self, Float) -> Unit = _
  translate_z(Self, Float) -> Unit = _
  update_matrix(Self) -> Unit = _
  world_to_local(Self, Vector3) -> Vector3 = _
  set_position(Self, Float, Float, Float) -> Unit = _
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
impl IsObject with cast_shadow(self) {
  object_cast_shadow_ffi(self |> js_identity)
}

///|
impl IsObject with id(self) {
  object_id_ffi(self |> js_identity)
}

///|
impl IsObject with add(self, child : Object) {
  object_add_ffi(self |> js_identity, child |> js_identity)
}

///|
impl IsObject with attach(self, child : Object) {
  object_attach_ffi(self |> js_identity, child |> js_identity)
}

///|
impl IsObject with clear(self) {
  object_clear_ffi(self |> js_identity)
}

///|
impl IsObject with clone(self, recursive : Bool) {
  object_clone_ffi(self |> js_identity, recursive)
}

///|
impl IsObject with copy(self, source : Object, recursive : Bool) {
  object_copy_ffi(self |> js_identity, source |> js_identity, recursive)
}

///|
impl IsObject with get_world_direction(self, target : Vector3) {
  object_get_world_direction_ffi(self |> js_identity, target |> js_identity)
}

///|
impl IsObject with get_world_position(self, target : Vector3) {
  object_get_world_position_ffi(self |> js_identity, target |> js_identity)
}

///|
impl IsObject with get_world_scale(self, target : Vector3) {
  object_get_world_scale_ffi(self |> js_identity, target |> js_identity)
}

///|
impl IsObject with local_to_world(self, target : Vector3) {
  object_local_to_world_ffi(self |> js_identity, target |> js_identity)
}

///|
impl IsObject with lookat(self, x : Float, y : Float, z : Float) {
  object_lookat_ffi(self |> js_identity, x, y, z)
}

///|
impl IsObject with remove(self, child : @js.Value) {
  object_remove_ffi(self |> js_identity, child)
}

///|
impl IsObject with remove_from_parent(self) {
  object_remove_from_parent_ffi(self |> js_identity)
}

///|
impl IsObject with rotate_on_axis(self, axis : Vector3, angle : Float) {
  object_rotate_on_axis_ffi(self |> js_identity, axis |> js_identity, angle)
}

///|
impl IsObject with rotate_on_world_axis(self, axis : Vector3, angle : Float) {
  object_rotate_on_world_axis_ffi(
    self |> js_identity,
    axis |> js_identity,
    angle,
  )
}

///|
impl IsObject with rotate_x(self, angle : Float) {
  object_rotate_x_ffi(self |> js_identity, angle)
}

///|
impl IsObject with rotate_y(self, angle : Float) {
  object_rotate_y_ffi(self |> js_identity, angle)
}

///|
impl IsObject with rotate_z(self, angle : Float) {
  object_rotate_z_ffi(self |> js_identity, angle)
}

///|
impl IsObject with set_rotation_from_axis_angle(
  self,
  axis : Vector3,
  angle : Float,
) {
  object_set_rotation_from_axis_angle_ffi(
    self |> js_identity,
    axis |> js_identity,
    angle,
  )
}

///|
impl IsObject with translate_on_axis(self, axis : Vector3, distance : Float) {
  object_transltae_on_axis_ffi(
    self |> js_identity,
    axis |> js_identity,
    distance,
  )
}

///|
impl IsObject with translate_x(self, distance : Float) {
  object_translate_x_ffi(self |> js_identity, distance)
}

///|
impl IsObject with translate_y(self, distance : Float) {
  object_translate_y_ffi(self |> js_identity, distance)
}

///|
impl IsObject with translate_z(self, distance : Float) {
  object_translate_z_ffi(self |> js_identity, distance)
}

///|
impl IsObject with update_matrix(self) {
  object_update_matrix_ffi(self |> js_identity)
}

///|
impl IsObject with world_to_local(self, target : Vector3) {
  object_world_to_local_ffi(self |> js_identity, target |> js_identity)
}

///|
impl IsObject with set_position(self, x : Float, y : Float, z : Float) {
  object_set_position_ffi(self |> js_identity, x, y, z)
}

///|
impl IsObject with set_rotation(
  self,
  x : Float,
  y : Float,
  z : Float,
  order : String,
) {
  object_set_rotation_ffi(self |> js_identity, x, y, z, order)
}

///|
pub extern "js" fn object_cast_shadow_ffi(obj : @js.Value) -> Bool =
  #| (obj) => obj.castShadow()

///|
pub extern "js" fn object_frustum_culled_ffi(obj : @js.Value) -> Bool = "(obj) => obj.frustumCulled()"

///|
pub extern "js" fn object_id_ffi(obj : @js.Value) -> Int =
  #| (obj) => obj.id()

///|
pub extern "js" fn object_is_object3d_ffi(obj : @js.Value) -> Bool = "(obj) => obj.isObject3D()"

///|
pub extern "js" fn object_matrix_auto_update_ffi(obj : @js.Value) -> Bool = "(obj) => obj.matrixAutoUpdate()"

///|
pub extern "js" fn object_add_ffi(
  parent : @js.Value,
  child : @js.Value,
) -> Unit =
  #|(parent, child) => parent.add( child );

///|
pub extern "js" fn object_attach_ffi(
  obj : @js.Value,
  object : @js.Value,
) -> Unit =
  #|(obj, object) => obj.attach( object );

///|
pub extern "js" fn object_clear_ffi(obj : @js.Value) -> Unit =
  #|(obj) => obj.clear();

///|
pub extern "js" fn object_clone_ffi(
  obj : @js.Value,
  recursive : Bool,
) -> Object =
  #|(obj, recursive) => obj.clone( recursive );

///|
pub extern "js" fn object_copy_ffi(
  obj : @js.Value,
  object : @js.Value,
  recursive : Bool,
) -> Object =
  #|(obj, object,recursive) => obj.copy( object,recursive );

///|
pub extern "js" fn object_get_world_direction_ffi(
  obj : @js.Value,
  target : @js.Value,
) -> Vector3 =
  #|(obj, target) => obj.getWorldDirection( target );

///|
pub extern "js" fn object_get_world_position_ffi(
  obj : @js.Value,
  target : @js.Value,
) -> Vector3 =
  #|(obj, target) => obj.getWorldPosition( target );

///|
pub extern "js" fn object_get_world_scale_ffi(
  obj : @js.Value,
  target : @js.Value,
) -> Vector3 =
  #|(obj, target) => obj.getWorldScale( target );

///|
pub extern "js" fn object_local_to_world_ffi(
  obj : @js.Value,
  vector : @js.Value,
) -> Vector3 =
  #|(obj, vector) => obj.localToWorld( vector );

///|
pub extern "js" fn object_lookat_ffi(
  obj : @js.Value,
  x : Float,
  y : Float,
  z : Float,
) -> Unit =
  #|(obj,x,y,z) => obj.lookAt(x,y,z);

///|
pub extern "js" fn object_remove_ffi(
  parent : @js.Value,
  child : @js.Value,
) -> Unit =
  #|(parent, child) => parent.remove( child );

///|
pub extern "js" fn object_remove_from_parent_ffi(obj : @js.Value) -> Unit =
  #|(obj) => obj.removeFromParent();

///|
pub extern "js" fn object_rotate_on_axis_ffi(
  obj : @js.Value,
  axis : @js.Value,
  angle : Float,
) -> Unit =
  #|(obj,axis,angle) => obj.rotateOnAxis( axis, angle );

///|
pub extern "js" fn object_rotate_on_world_axis_ffi(
  obj : @js.Value,
  axis : @js.Value,
  angle : Float,
) -> Unit =
  #|(obj,axis,angle) => obj.rotateOnWorldAxis( axis, angle );

///|
pub extern "js" fn object_rotate_x_ffi(obj : @js.Value, angle : Float) -> Unit =
  #|(obj,angle) => obj.rotateX(  angle );

///|
pub extern "js" fn object_rotate_y_ffi(obj : @js.Value, angle : Float) -> Unit =
  #|(obj,angle) => obj.rotateY(  angle );

///|
pub extern "js" fn object_rotate_z_ffi(obj : @js.Value, angle : Float) -> Unit =
  #|(obj,angle) => obj.rotateZ(  angle );

///|
pub extern "js" fn object_set_rotation_from_axis_angle_ffi(
  obj : @js.Value,
  axis : @js.Value,
  angle : Float,
) -> Unit =
  #|(obj,axis,angle) => obj.setRotationFromAxisAngle( axis, angle );

///|
pub extern "js" fn object_translate_x_ffi(
  obj : @js.Value,
  distance : Float,
) -> Unit =
  #|(obj,distance) => obj.translateX( distance );

///|
pub extern "js" fn object_translate_y_ffi(
  obj : @js.Value,
  distance : Float,
) -> Unit =
  #|(obj,distance) => obj.translateY( distance );

///|
pub extern "js" fn object_translate_z_ffi(
  obj : @js.Value,
  distance : Float,
) -> Unit =
  #|(obj,distance) => obj.translateZ( distance );

///|
pub extern "js" fn object_world_to_local_ffi(
  obj : @js.Value,
  vector : Vector3,
) -> Vector3 =
  #|(obj,vector) => obj.worldToLocal( vector );

///|
pub extern "js" fn object_set_position_ffi(
  obj : @js.Value,
  x : Float,
  y : Float,
  z : Float,
) -> Unit =
  #|(obj,x,y,z) => obj.position.set(x,y,z);

///|
pub extern "js" fn object_set_rotation_ffi(
  obj : @js.Value,
  x : Float,
  y : Float,
  z : Float,
  order : String,
) -> Unit =
  #|(obj,x,y,z,order) => obj.rotation.set(x,y,z,order);

///|
pub extern "js" fn object_update_matrix_ffi(obj : @js.Value) -> Unit =
  #|(obj) => obj.updateMatrix();

///|
pub extern "js" fn object_transltae_on_axis_ffi(
  obj : @js.Value,
  axis : @js.Value,
  distance : Float,
) -> Unit =
  #|(obj,axis,distance) => obj.translateOnAxis( axis, distance );
