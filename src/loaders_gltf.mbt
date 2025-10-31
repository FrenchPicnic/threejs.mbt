///|
#external
type GLTFLoader

///|
#external
type GLTF

///|
pub trait IsGLTFLoader {}

///|
pub impl IsGLTFLoader for GLTFLoader

///|
pub extern "js" fn GLTFLoader::load(
  loader : GLTFLoader,
  path : String,
  onload : (GLTF) -> Unit,
) -> Unit =
  #|function(loader,path,onload){
  #|loader.load(path, onload);
  #|}

///|
pub extern "js" fn GLTFLoader::new() -> GLTFLoader =
  #|() => new GLTFLoader();

///|
pub extern "js" fn GLTFLoader::setDRACOLoader(
  self : GLTFLoader,
  dracoLoader : DRACOLoader,
) -> Unit =
  #|(self,dracoLoader) => self.setDRACOLoader(dracoLoader);

///|
pub extern "js" fn GLTF::scene(self : GLTF) -> Scene =
  #|(self) => self.scene
