///|
#external
pub type Mesh

///|
impl Object3D for Mesh

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
