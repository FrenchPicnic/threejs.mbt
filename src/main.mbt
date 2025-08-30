///|
fn main {
  let mut scene = Scene::new()
  let capsule = Geometry::{
    bufferGeometry: newBox(1, 1, 1, 1, 1, 1),
    primitive: BoxGeometry,
  }
  let cube = Mesh::new(capsule.bufferGeometry)
  scene = Object::add(scene, cube)
  let mut camera = Camera::new(75, 2, 0.1, 5)
  camera = camera.setPosition(0, 0, 2)
  let rederer = Render::new("#c")
  ignore(rederer.render(scene, camera))
}
