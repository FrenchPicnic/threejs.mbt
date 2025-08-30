///|
#external
pub type Render

///|
pub extern "js" fn Render::new(canvas : String) -> Render =
  #|function(canavas) {
  #|const canvas = document.querySelector( canavas );
  #|const renderer = new THREE.WebGLRenderer( { antialias: true, canvas } );
  #|return renderer;
  #|}

///|
pub extern "js" fn Render::render(
  renderer : Render,
  scene : Object,
  camera : Object,
) -> Render =
  #|function(renderer,scene,camera) {
  #|renderer.render( scene, camera );
  #|}
