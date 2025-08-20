///|
#external
pub type Scene

///|
pub extern "js" fn Scene::new() -> Scene =
  #|function() {
  #|const scene = new THREE.Scene();
  #|return scene;
  #|}

///|
pub extern "js" fn Scene::add(
  scene : Scene,
  geometry : BufferGeometry,
) -> Scene =
  #|function(scene,geometry) {
  #|const material = new THREE.MeshBasicMaterial( { color: 0x44aa88 } ); // greenish blue
  #|const cube = new THREE.Mesh( geometry, material );
  #|scene.add( cube );
  #|return scene;
  #|}
