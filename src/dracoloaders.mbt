///|
#external
type DRACOLoader

///|
pub impl IsGLTFLoader for DRACOLoader

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
