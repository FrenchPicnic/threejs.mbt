///|
#external
pub type Render

///|
pub extern "js" fn Render::new() -> Render =
  #|function() {
  #|const canvas = document.querySelector( '#c' );
  #|const renderer = new THREE.WebGLRenderer( { antialias: true, canvas } );
  #|return renderer;
  #|}

///|
pub extern "js" fn Render::render(
  renderer : Render,
  scene : Scene,
  camera : Camera,
) -> Render =
  #|function(renderer,scene,camera) {
  #|renderer.render( scene, camera );
  #|}
