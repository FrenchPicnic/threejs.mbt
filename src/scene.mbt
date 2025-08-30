///|
#external
pub type Scene

///|
impl Object3D for Scene

///|
pub extern "js" fn Scene::new() -> Object =
  #|function() {
  #|const scene = new THREE.Scene();
  #|return scene;
  #|}
