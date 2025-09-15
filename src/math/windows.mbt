///|
pub extern "js" fn devicePixelRatio() -> Float =
  #| () => window.devicePixelRatio

///|
pub extern "js" fn innerWidth() -> Int =
  #| () => window.innerWidth

///|
pub extern "js" fn innerHeight() -> Int =
  #| () => window.innerHeight
