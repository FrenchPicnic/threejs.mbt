///|
#external
pub type Camera

///|
impl Object3D for Camera

///|
pub extern "js" fn Camera::new(
  fov : Float,
  aspect : Float,
  near : Float,
  far : Float,
) -> Object =
  #|function(fov, aspect, near, far) {
  #|const camera = new THREE.PerspectiveCamera( fov, aspect, near, far );
  #|return camera;
  #|}
