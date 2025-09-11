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
  #|(width,height,depth,widthSegments,heightSegments,depthSegments) => new THREE.BoxGeometry(width,height,depth,widthSegments,heightSegments,depthSegments);

///|
pub extern "js" fn newCapsule(
  radius : Float,
  height : Float,
  capSegments : Int,
  radialSegments : Int,
  heightSegments : Int,
) -> BufferGeometry =
  #|(radius,height,capSegments,radialSegments,heightSegments) =>new THREE.CapsuleGeometry(radius,height,capSegments,radialSegments,heightSegments);

///|
pub extern "js" fn newCircle(
  radius : Float,
  segments : Int,
  thetaStart : Float,
  thetaLength : Float,
) -> BufferGeometry =
  #|(radius,segments,thetaStart,thetaLength) =>new THREE.CircleGeometry(radius,segments,thetaStart,thetaLength);

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
  #|(radius,height,radialSegments,heightSegments,openEnded,thetaStart,thetaLength) =>new THREE.ConeGeometry(radius,height,capSegments,radialSegments,heightSegments,openEnded,thetaStart,thetaLength);

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
  #|(radiusTop,radiusBottom,height,radialSegments,heightSegments,openEnded,thetaStart,thetaLength) =>new THREE.CylinderGeometry(radiusTop,radiusBottom,height,radialSegments,heightSegments,openEnded,thetaStart,thetaLength);

///|
pub extern "js" fn newDodecahedron(
  radius : Float,
  detail : Int,
) -> BufferGeometry =
  #|(radius,detail) =>new THREE.DodecahedronGeometry(radius,detail);

///|
pub extern "js" fn newEdges(
  geometry : BufferGeometry,
  thresholdAngle : Int,
) -> BufferGeometry =
  #|(geometry,thresholdAngle) =>new THREE.EdgesGeometry(geometry,thresholdAngle);

///|
///TODO:
pub extern "js" fn newExtrude(
// shapes : Array,
// options : Object,
) -> BufferGeometry =
  #|(shapes,options) =>new THREE.ExtrudeGeometry(shapes,options);

///|
pub extern "js" fn newIcosahedron(
  radius : Float,
  detail : Int,
) -> BufferGeometry =
  #|(radius,detail) =>new THREE.IcosahedronGeometry(radius,detail);

///|
///TODO:
pub extern "js" fn newLathe(
  // points : Array[Int],
  segments : Int,
  phiStart : Float,
  phiLength : Float,
) -> BufferGeometry =
  #|(points,segments,phiStart,phiLength) =>new THREE.LatheGeometry(points,segments,phiStart,phiLength);

///|
pub extern "js" fn newOctahedron(
  radius : Float,
  detail : Int,
) -> BufferGeometry =
  #|(radius,detail) =>new THREE.OctahedronGeometry(radius,detail);

///|
pub extern "js" fn newPlane(
  width : Float,
  height : Float,
  widthSegments : Int,
  heightSegments : Int,
) -> BufferGeometry =
  #|(width,height,widthSegments,heightSegments) =>new THREE.PlaneGeometry(width,height,widthSegments,heightSegments);

///|
///TODO:
pub extern "js" fn newPolyhedron() -> BufferGeometry =
  #|(radius,height,capSegments,radialSegments,heightSegments) =>new THREE.PolyhedronGeometry(radius,height,capSegments,radialSegments,heightSegments);

///|
pub extern "js" fn newRing(
  innerRadius : Float,
  outerRadius : Float,
  thetaSegments : Int,
  phiSegments : Int,
  thetaStart : Float,
  thetaLength : Float,
) -> BufferGeometry =
  #|(innerRadius,outerRadius,thetaSegments,phiSegments,thetaStart,thetaLength) =>new THREE.RingGeometry(innerRadius,outerRadius,thetaSegments,phiSegments,thetaStart,thetaLength);

///|
///TODO:
pub extern "js" fn newShape() -> BufferGeometry =
  #|(radius,height,capSegments,radialSegments,heightSegments) =>new THREE.ShapeGeometry(radius,height,capSegments,radialSegments,heightSegments);

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
  #|(radius,widthSegments,heightSegments,phiStart,phiLength,thetaStart,thetaLength) =>new THREE.SphereGeometry(radius,widthSegments,heightSegments,phiStart,phiLength,thetaStart,thetaLength);

///|
pub extern "js" fn newTetrahedron(
  radius : Float,
  detail : Int,
) -> BufferGeometry =
  #|(radius,detail) =>new THREE.TetrahedronGeometry(radius,detail);

///|
pub extern "js" fn newTorus(
  radius : Float,
  tube : Float,
  radialSegments : Int,
  tubularSegments : Int,
  arc : Float,
) -> BufferGeometry =
  #|(radius,tube,radialSegments,tubularSegments,arc) =>new THREE.TorusGeometry(radius,tube,radialSegments,tubularSegments,arc);

///|
pub extern "js" fn newTorusKnot(
  radius : Float,
  tube : Float,
  tubularSegments : Int,
  radialSegments : Int,
  p : Int,
  q : Int,
) -> BufferGeometry =
  #|(radius,tube,tubularSegments,radialSegments,p,q) =>new THREE.TorusKnotGeometry(radius,tube,tubularSegments,radialSegments,p,q);

///|
///TODO:
pub extern "js" fn newTube(
  // path : Curve,
  tubularSegments : Int,
  radius : Float,
  radialSegments : Int,
  closed : Bool,
) -> BufferGeometry =
  #|(path,tubularSegments,radius,radialSegments,closed) =>new THREE.TubeGeometry(path,tubularSegments,radius,radialSegments,closed);

///|
pub extern "js" fn newWireframe(geometry : BufferGeometry) -> BufferGeometry =
  #|(geometry) =>new THREE.WireframeGeometry(geometry);
