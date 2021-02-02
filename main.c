#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/errno.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t ft_read(int filedes, const void *buf, size_t nbyte);
char *ft_strdup(const char *s1);



int main()
{
	// int c = ft_strlen("Pepepopo");
	// const char *s1,*s2;
	// s1 = "holaco";
	// int ret = strcmp(s1, s2);
	// printf("%ld\n", ft_write());
	// ft_write(-1, NULL, 10);
	// perror("wirte");
	// printf("The error message is: %d\n", errno);
	// const char *s1 = "bc";
	// const char *s2 = "az";
	// ft_write(1, "hello", 3);
	// const void *fd;
	// ft_read(1, fd, 2);
	// printf("%s", fd);
	char *s1 ;
	char *rs = ft_strdup(s1);
	printf("%s\n", rs);
	return (0);
}
