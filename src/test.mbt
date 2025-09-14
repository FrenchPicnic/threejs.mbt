///|
pub fn simp_ffi() -> String {
  simp()
}

///|
extern "js" fn simp() -> String =
  #|function() {
  #|const canvas = document.querySelector( '#c' );
  #|const renderer = new THREE.WebGLRenderer( { antialias: true, canvas } );
  #|const fov = 75;
  #|const aspect = 2; // the canvas default
  #|const near = 0.1;
  #|const far = 5;
  #|const camera = new THREE.PerspectiveCamera( fov, aspect, near, far );
  #|camera.position.z = 2;
  #|const scene = new THREE.Scene();
  #|const boxWidth = 1;
  #|const boxHeight = 1;
  #|const boxDepth = 1;
  #|const geometry = new THREE.BoxGeometry( boxWidth, boxHeight, boxDepth );
  #|const material = new THREE.MeshBasicMaterial( { color: 0x44aa88 } ); // greenish blue
  #|const cube = new THREE.Mesh( geometry, material );
  #|scene.add( cube );
  #|renderer.render( scene, camera );
  #|}

///|
fn rolling_cube() -> Unit {
  let scene = Scene::new()
  let capsule = Geometry::{
    bufferGeometry: newBox(1, 1, 1, 1, 1, 1),
    primitive: BoxGeometry,
  }
  let cube = Mesh::new(capsule.bufferGeometry)
  scene.add(cube |> js_identity)
  let camera = Camera::new(75, 2, 0.1, 5)
  camera.set_position(0, 0, 2)
  let rederer = Render::newWebGL("#c")
  let light = DirectionalLight::new("white", 1)
  light.set_position(-1.8, 0.6, 2.7)
  scene.add(light |> js_identity)
  rederer.setPixelRatio(1)
  rederer.setSize(800, 600, false)
  fn update(time : Double) {
    let ti = time.to_float() * 0.001
    cube.set_rotation(ti, ti, 0, "XYZ")
    rederer.render(scene |> js_identity, camera)
    ignore(request_animation_frame(update))
  }

  ignore(request_animation_frame(update))
}

///|
fn gltf() -> Unit {
  let a = GLTFLoader::new()
  let light = DirectionalLight::new("white", 12.5)
  light.set_position(5, 5, 5)
  let scene = Scene::new()
  scene.background("#a0a0a0")
  scene.add(light |> js_identity)
  let camera = Camera::new(15, 2, 1.1, 70)
  camera.set_position(3, 0, 2)
  camera.lookat(0, 0, 0)
  let rederer = Render::newWebGL("#c")
  rederer.render(scene |> js_identity, camera)
  rederer.setPixelRatio(1)
  rederer.setSize(800, 600, false)
  let onload : (GLTF) -> Unit = fn(gltf : GLTF) {
    scene.add(gltf.scene() |> js_identity)
    rederer.render(scene |> js_identity, camera)
  }
  let darco = DRACOLoader::new()
  darco.setDecoderPath(
    "https://www.gstatic.com/draco/versioned/decoders/1.5.7/",
  )
  a.setDRACOLoader(darco)
  GLTFLoader::load(a, "/resource/model/logo.glb", onload)
}
//  camera.lookAt(new THREE.Vector3(0, 0, 0));
//     const rederer = frenchpicnic$threejs$$Render$new("#c");
//     rederer.setPixelRatio(window.devicePixelRatio);
//     rederer.setSize(window.innerWidth, window.innerHeight);
//     frenchpicnic$threejs$$Render$render(rederer, scene, camera);

// ///|
// fn gltf() -> Unit {
//   let a = GLTFLoader::new()
//   let light = DirectionalLight::new("white", 12.5)
//   light.set_position(5, 5, 5)
//   let scene = Scene::new()
//   scene.background("#a0a0a0")
//   scene.add(light |> js_identity)
//   let camera = Camera::new(15, 2, 1.1, 70)
//   camera.set_position(3, 0, 2)
//   let onload : (GLTF) -> Unit = fn(gltf : GLTF) {
//     scene.add(gltf.scene() |> js_identity)
//   }
//   let rederer = Render::new("#c")
//   rederer.render(scene |> js_identity, camera)
//   GLTFLoader::load(a, "", onload)
// }
// // camera.lookAt(new THREE.Vector3(0, 0, 0));
// //  rederer.setPixelRatio(window.devicePixelRatio);
// //     rederer.setSize(window.innerWidth, window.innerHeight);

// ///|
// pub extern "js" fn GLTFLoader::load(
//   loader : GLTFLoader,
//   path : String,
//   onload : (GLTF) -> Unit,
// ) -> Unit =
//   #|function(loader,path,onload){
//   #|loader.load(path, onload);
//   #|}
