///|
#external
pub type Render

///|
pub trait IsWebGLRenderer {}

///|
pub extern "js" fn Render::newWebGL(canvas : String) -> Render =
  #|function(canavas) {
  #|const canvas = document.querySelector( canavas );
  #|const renderer = new THREE.WebGLRenderer( { antialias: true, canvas } );
  #|return renderer;
  #|}

///|
pub extern "js" fn Render::render(
  renderer : Render,
  scene : @js.Value,
  camera : Camera,
) -> Unit =
  #|(renderer,scene,camera) => renderer.render( scene, camera );

///|
pub extern "js" fn Render::setPixelRatio(
  renderer : Render,
  value : Float,
) -> Unit =
  #|(renderer,value) => renderer.setPixelRatio( value );

///|
pub extern "js" fn Render::setSize(
  renderer : Render,
  width : Int,
  height : Int,
  updateStyle : Bool,
) -> Unit =
  #|(renderer,width,height,updateStyle) => renderer.setSize( width, height, updateStyle);
