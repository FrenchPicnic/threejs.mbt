///|
#external
type Loader

///|
#external
type GLTFLoader

///|
#external
type DRACOLoader

///|
#external
type GLTF

///|
pub trait IsGLTFLoader {}

///|
pub impl IsGLTFLoader for GLTFLoader

///|
pub impl IsGLTFLoader for DRACOLoader

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

///|
pub extern "js" fn DRACOLoader::new() -> DRACOLoader =
  #|() => new DRACOLoader();

///|
/// see https://github.com/google/draco/releases
/// https://www.gstatic.com/draco/versioned/decoders/1.5.7/
pub extern "js" fn DRACOLoader::setDecoderPath(
  self : DRACOLoader,
  path : String,
) -> Unit =
  #|(self,path) => self.setDecoderPath(path);

///|
pub extern "js" fn DRACOLoader::load(
  loader : DRACOLoader,
  path : String,
  onload : (GLTF) -> Unit,
) -> Unit =
  #|function(loader,path,onload){
  #|loader.load(path, onload);
  #|}
