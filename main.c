#include <stdio.h>
#include <string.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *src);

int main()
{
	// int c = ft_strlen("Pepepopo");
	char *dst,*src;
	src = "holaco";
	char *str = ft_strcpy(dst, src);
	printf("%s\n", str);
	return (0);
}
