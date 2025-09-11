///|
#external
pub type Mesh

///|
impl IsObject for Mesh

///|
pub impl @js.Cast for Mesh with into(value) {
  value |> ffi_to_mesh |> _.to_option()
}

///|
pub impl @js.Cast for Mesh with from(value) {
  value |> js_identity
}

///|
pub extern "js" fn Mesh::new(
  geometry : BufferGeometry,
  // material : Material,
) -> Object =
  #|function(geometry) {
  #|const material = new THREE.MeshBasicMaterial( { color: 0x44aa88 } ); // greenish blue
  #|const mesh = new THREE.Mesh( geometry, material );
  #|return mesh;
  #|}

///|
pub extern "js" fn ffi_to_mesh(x : @js.Value) -> @js.Nullable[Mesh] = "(x) => x instanceof THREE.Mesh ? x : null"
