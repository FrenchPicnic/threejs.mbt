///|
pub fn[A, B] js_identity(a : A) -> B {
  @js.Value::cast_from(a).cast()
}
