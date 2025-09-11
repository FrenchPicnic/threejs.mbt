///|
fn main {
  let scene = Scene::new()
  let capsule = Geometry::{
    bufferGeometry: newBox(1, 1, 1, 1, 1, 1),
    primitive: BoxGeometry,
  }
  let cube = Mesh::new(capsule.bufferGeometry)
  scene.add(cube |> js_identity)
  let camera = Camera::new(75, 2, 0.1, 5)
  camera.set_position(0, 0, 2)
  let rederer = Render::new("#c")
  fn update(time : Double) {
    let ti = time.to_float() * 0.001
    cube.set_rotation(ti, ti, 0, "XYZ")
    rederer.render(scene |> js_identity, camera)
    ignore(request_animation_frame(update))
  }

  ignore(request_animation_frame(update))
}
