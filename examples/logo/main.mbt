///|
fn main {
  //
  let scene = @three.Scene::new()
  scene.background("#a0a0a0")

  //
  let light = @three.DirectionalLight::new("white", 12.5)
  light.set_position(5, 2, 1)
  scene.add(light |> @three.js_identity)

  //
  let camera = @three.Camera::new(55, 2, 1.1, 70)
  camera.set_position(-3.6, 0.5, 0.4)
  camera.lookat(10, 0, 0)
  camera.set_rotation(
    -1.0225770885688956, -1.548136710346424, -1.022462880761241, "XYZ",
  )

  //
  let control = @three.OrbitControl::new(camera, "#c")
  control.update() |> ignore

  //
  let rederer = @three.Render::newWebGL("#c")
  rederer.render(scene |> @three.js_identity, camera)
  rederer.setPixelRatio(@tmath.devicePixelRatio())
  rederer.setSize(@tmath.innerWidth(), @tmath.innerHeight(), false)

  //
  let a = @three.GLTFLoader::new()
  let onload : (@three.GLTF) -> Unit = fn(gltf : @three.GLTF) {
    let a = gltf
    a.scene().set_position(0, 0, 0)
    let _ = scene.add(a.scene() |> @three.js_identity)
    rederer.render(scene |> @three.js_identity, camera)
  }

  // let darco = @three.DRACOLoader::new()
  // darco.setDecoderPath(
  //   "https://www.gstatic.com/draco/versioned/decoders/1.5.7/",
  // )
  // a.setDRACOLoader(darco)

  @three.GLTFLoader::load(a, "./logo/assets/logo.glb", onload)
  fn update(time : Double) {
    rederer.render(scene |> @three.js_identity, camera)
    ignore(@three.request_animation_frame(update))
  }

  ignore(@three.request_animation_frame(update))
}
