// const timer = function (secs){
//   console.log(`${secs} seconds left`)
//   return setInterval(() => {
//     secs -= 1
//     if (secs < 0) {
//       clearInterval(timer)
//     } else {
//       console.log(`${secs} seconds left`)
//     }
//   } ,1000)
// }

// timer(10)


function countDownTimer(secs){
  let start = new Date().getTime()/ 1000
  let end = start + secs
  let sec = 0;
  while (end > new Date().getTime()/ 1000){
    if (sec != Math.round(end - (new Date().getTime()/ 1000)))
    {
      sec = Math.round(end - (new Date().getTime()/ 1000))
      console.log(sec)
    }
  }
}

countDownTimer(10)


// const dateTimer = function (secs){
//   console.log(`${secs} seconds left`)
// }