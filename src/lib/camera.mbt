///|
#external
pub type Camera

///|
pub extern "js" fn Camera::new(
  fov : Float,
  aspect : Float,
  near : Float,
  far : Float,
) -> Camera =
  #|function(fov, aspect, near, far) {
  #|const camera = new THREE.PerspectiveCamera( fov, aspect, near, far );
  #|camera.position.z = 2;
  #|return camera;
  #|}
