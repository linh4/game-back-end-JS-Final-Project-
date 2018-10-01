const timer = function (secs){
  console.log(`${secs} seconds left`)
  return setInterval(() => {
    secs -= 1
    if (secs < 0) {
      clearInterval(timer)
    } else {
      console.log(`${secs} seconds left`)
    }
  } ,1000)
}

timer(10)