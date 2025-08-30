///|
pub(all) struct Geometry {
  bufferGeometry : BufferGeometry
  primitive : Primitive
}

///|
pub(all) enum Primitive {
  BoxGeometry
  CapsuleGeometry
  CircleGeometry
  ConeGeometry
  CylinderGeometry
  DodecahedronGeometry
  EdgesGeometry
  ExtrudeGeometry
  IcosahedronGeometry
  LatheGeometry
  OctahedronGeometry
  ParametricGeometry
  PlaneGeometry
  PolyhedronGeometry
  RingGeometry
  ShapeGeometry
  SphereGeometry
  TetrahedronGeometry
  TorusGeometry
  TorusKnotGeometry
  TubeGeometry
  WireframeGeometry
}

///|
#external
pub type BufferGeometry

///|
pub extern "js" fn newBox(
  width : Int,
  height : Int,
  depth : Int,
  widthSegments : Int,
  heightSegments : Int,
  depthSegments : Int,
) -> BufferGeometry =
  #|function(width,height,depth,widthSegments,heightSegments,depthSegments) {
  #|const geometry = new THREE.BoxGeometry(width,height,depth,widthSegments,heightSegments,depthSegments);
  #|return geometry;
  #|}

///|
pub extern "js" fn newCapsule(
  radius : Float,
  height : Float,
  capSegments : Int,
  radialSegments : Int,
  heightSegments : Int,
) -> BufferGeometry =
  #|function(radius,height,capSegments,radialSegments,heightSegments) {
  #|const geometry = new THREE.CapsuleGeometry(radius,height,capSegments,radialSegments,heightSegments);
  #|return geometry;
  #|}

///|
pub extern "js" fn newCircle(
  radius : Float,
  segments : Int,
  thetaStart : Float,
  thetaLength : Float,
) -> BufferGeometry =
  #|function(radius,segments,thetaStart,thetaLength) {
  #|const geometry = new THREE.CircleGeometry(radius,segments,thetaStart,thetaLength);
  #|return geometry;
  #|}

///|
pub extern "js" fn newCone(
  radius : Float,
  height : Float,
  radialSegments : Int,
  heightSegments : Int,
  openEnded : Bool,
  thetaStart : Float,
  thetaLength : Float,
) -> BufferGeometry =
  #|function(radius,height,radialSegments,heightSegments,openEnded,thetaStart,thetaLength) {
  #|const geometry = new THREE.ConeGeometry(radius,height,capSegments,radialSegments,heightSegments,openEnded,thetaStart,thetaLength);
  #|return geometry;
  #|}

///|
pub extern "js" fn newCylinder(
  radiusTop : Float,
  radiusBottom : Float,
  height : Float,
  radialSegments : Int,
  heightSegments : Int,
  openEnded : Bool,
  thetaStart : Float,
  thetaLength : Float,
) -> BufferGeometry =
  #|function(radiusTop,radiusBottom,height,radialSegments,heightSegments,openEnded,thetaStart,thetaLength) {
  #|const geometry = new THREE.CylinderGeometry(radiusTop,radiusBottom,height,radialSegments,heightSegments,openEnded,thetaStart,thetaLength);
  #|return geometry;
  #|}

///|
pub extern "js" fn newDodecahedron(
  radius : Float,
  detail : Int,
) -> BufferGeometry =
  #|function(radius,detail) {
  #|const geometry = new THREE.DodecahedronGeometry(radius,detail);
  #|return geometry;
  #|}

///|
pub extern "js" fn newEdges(
  geometry : BufferGeometry,
  thresholdAngle : Int,
) -> BufferGeometry =
  #|function(geometry,thresholdAngle) {
  #|const geometry = new THREE.EdgesGeometry(geometry,thresholdAngle);
  #|return geometry;
  #|}

///|TODO:
pub extern "js" fn newExtrude(
// shapes : Array,
// options : Object,
) -> BufferGeometry =
  #|function(shapes,options) {
  #|const geometry = new THREE.ExtrudeGeometry(shapes,options);
  #|return geometry;
  #|}

///|
pub extern "js" fn newIcosahedron(
  radius : Float,
  detail : Int,
) -> BufferGeometry =
  #|function(radius,detail) {
  #|const geometry = new THREE.IcosahedronGeometry(radius,detail);
  #|return geometry;
  #|}

///|TODO:
pub extern "js" fn newLathe(
  // points : Array[Int],
  segments : Int,
  phiStart : Float,
  phiLength : Float,
) -> BufferGeometry =
  #|function(points,segments,phiStart,phiLength) {
  #|const geometry = new THREE.LatheGeometry(points,segments,phiStart,phiLength);
  #|return geometry;
  #|}

///|
pub extern "js" fn newOctahedron(
  radius : Float,
  detail : Int,
) -> BufferGeometry =
  #|function(radius,detail) {
  #|const geometry = new THREE.OctahedronGeometry(radius,detail);
  #|return geometry;
  #|}

///|
pub extern "js" fn newPlane(
  width : Float,
  height : Float,
  widthSegments : Int,
  heightSegments : Int,
) -> BufferGeometry =
  #|function(width,height,widthSegments,heightSegments) {
  #|const geometry = new THREE.PlaneGeometry(width,height,widthSegments,heightSegments);
  #|return geometry;
  #|}

///|TODO:
pub extern "js" fn newPolyhedron() -> BufferGeometry =
  #|function(radius,height,capSegments,radialSegments,heightSegments) {
  #|const geometry = new THREE.PolyhedronGeometry(radius,height,capSegments,radialSegments,heightSegments);
  #|return geometry;
  #|}

///|
pub extern "js" fn newRing(
  innerRadius : Float,
  outerRadius : Float,
  thetaSegments : Int,
  phiSegments : Int,
  thetaStart : Float,
  thetaLength : Float,
) -> BufferGeometry =
  #|function(innerRadius,outerRadius,thetaSegments,phiSegments,thetaStart,thetaLength) {
  #|const geometry = new THREE.RingGeometry(innerRadius,outerRadius,thetaSegments,phiSegments,thetaStart,thetaLength);
  #|return geometry;
  #|}

///|TODO:
pub extern "js" fn newShape() -> BufferGeometry =
  #|function(radius,height,capSegments,radialSegments,heightSegments) {
  #|const geometry = new THREE.ShapeGeometry(radius,height,capSegments,radialSegments,heightSegments);
  #|return geometry;
  #|}

///|
pub extern "js" fn newSphere(
  radius : Float,
  widthSegments : Int,
  heightSegments : Int,
  phiStart : Float,
  phiLength : Float,
  thetaStart : Float,
  thetaLength : Float,
) -> BufferGeometry =
  #|function(radius,widthSegments,heightSegments,phiStart,phiLength,thetaStart,thetaLength) {
  #|const geometry = new THREE.SphereGeometry(radius,widthSegments,heightSegments,phiStart,phiLength,thetaStart,thetaLength);
  #|return geometry;
  #|}

///|
pub extern "js" fn newTetrahedron(
  radius : Float,
  detail : Int,
) -> BufferGeometry =
  #|function(radius,detail) {
  #|const geometry = new THREE.TetrahedronGeometry(radius,detail);
  #|return geometry;
  #|}

///|
pub extern "js" fn newTorus(
  radius : Float,
  tube : Float,
  radialSegments : Int,
  tubularSegments : Int,
  arc : Float,
) -> BufferGeometry =
  #|function(radius,tube,radialSegments,tubularSegments,arc) {
  #|const geometry = new THREE.TorusGeometry(radius,tube,radialSegments,tubularSegments,arc);
  #|return geometry;
  #|}

///|
pub extern "js" fn newTorusKnot(
  radius : Float,
  tube : Float,
  tubularSegments : Int,
  radialSegments : Int,
  p : Int,
  q : Int,
) -> BufferGeometry =
  #|function(radius,tube,tubularSegments,radialSegments,p,q) {
  #|const geometry = new THREE.TorusKnotGeometry(radius,tube,tubularSegments,radialSegments,p,q);
  #|return geometry;
  #|}

///|TODO:
pub extern "js" fn newTube(
  // path : Curve,
  tubularSegments : Int,
  radius : Float,
  radialSegments : Int,
  closed : Bool,
) -> BufferGeometry =
  #|function(path,tubularSegments,radius,radialSegments,closed) {
  #|const geometry = new THREE.TubeGeometry(path,tubularSegments,radius,radialSegments,closed);
  #|return geometry;
  #|}

///|
pub extern "js" fn newWireframe(geometry : BufferGeometry) -> BufferGeometry =
  #|function(geometry) {
  #|const geometry = new THREE.WireframeGeometry(geometry);
  #|return geometry;
  #|}
