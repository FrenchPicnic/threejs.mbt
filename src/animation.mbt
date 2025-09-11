///|
/// https://developer.mozilla.org/en-US/docs/Web/API/Window/requestAnimationFrame
pub extern "js" fn request_animation_frame(f : (Double) -> Unit) -> Double = "(f) => requestAnimationFrame(f)"
