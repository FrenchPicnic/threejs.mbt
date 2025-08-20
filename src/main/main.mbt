///|
fn main {
  let mut scene = @lib.Scene::new()
  // let cube = @lib.Geometry::{
  //   bufferGeometry: @lib.newBox(1, 1, 1, 0, 0, 0),
  //   primitive: @lib.BoxGeometry,
  // }
  // scene = scene.add(cube.bufferGeometry)
  let capsule = @lib.Geometry::{
    bufferGeometry: @lib.newCapsule(1, 1, 2, 4, 0),
    primitive: @lib.CapsuleGeometry,
  }
  scene = scene.add(capsule.bufferGeometry)
  let camera = @lib.Camera::new(75, 2, 0.1, 15)
  let rederer = @lib.Render::new()
  ignore(rederer.render(scene, camera))
}
