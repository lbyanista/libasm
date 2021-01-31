#include <stdio.h>
#include <string.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);

int main()
{
	// int c = ft_strlen("Pepepopo");
	const char *s1,*s2;
	s1 = "holaco";
	int ret = strcmp(s1, s2);
	printf("%d\n", ret);
	return (0);
}
