#include "libasm.h"

int		main(void)
{
	int		i;
	long	r;
	char	buffer[1000];
	char	*tmp2;
	int fd;
	char buf[10];

	r = 0;
	i = 0;

	if (ft_write(1, "a", 1) == -1)
		printf("error %s\n", strerror(errno));
	
	while (i < 100)
		buffer[i++] = 0;

	printf("--strlen\n");
	printf("%zu\n", ft_strlen(""));
	printf("%zu\n", ft_strlen("toto"));
	printf("%zu\n", ft_strlen("totototo"));
	printf("%zu\n", ft_strlen("0123456789abcdef"));
	printf("%zu\n", ft_strlen("42"));
	printf("%zu\n", ft_strlen("1"));
	printf("-done\n");

	
	printf("\n--strcmp\n");
	ft_strcmp("", "");
	ft_strcmp("toto", "toto");
	ft_strcmp("", "toto");
	ft_strcmp("toto", "");
	ft_strcmp("toto", "totobar");
	//printf("`%s`:`%s` = %d\n", "TOTO", NULL, ft_strcmp("TOTO", NULL));
	//printf("`%s`:`%s` = %d\n", NULL, "TOTO", ft_strcmp(NULL, "TOTO"));
	//printf("`%s`:`%s` = %d\n", NULL, NULL, ft_strcmp(NULL, NULL));
	printf("-done\n");
	
	printf("\n--strcpy\n");
	printf("`%s` (`toto`)\n", ft_strcpy(buffer, "toto"));
	printf("`%s` (empty)\n", ft_strcpy(buffer, ""));
	printf("`%s` (`long message`)\n", ft_strcpy(buffer, "1long message1"));
	printf("`%s` (NULL > not modified)\n", ft_strcpy(buffer, NULL));
	memset(buffer, 0, 100);
	printf("-done\n");
	
	printf("\n--write\n");
	ft_write(0, "toto\n", strlen("toto\n"));
	ft_write(0, "totototo\n", strlen("totototo\n"));
	ft_write(0, "totatito\n", strlen("totatito\n"));
	ft_write(0, "toto14\n", strlen("toto14\n"));
	printf("-done\n");

	printf("\n--ft_strdup\n");
	tmp2 = ft_strdup("toto");
	printf("%s\n", tmp2);
	free(tmp2);
	tmp2 = ft_strdup("totobar");
	printf("%s\n", tmp2);
	free(tmp2);
	tmp2 = ft_strdup("1long message1");
	printf("%s\n", tmp2);
	free(tmp2);
	tmp2 = ft_strdup("");
	printf("%s\n", tmp2);
	free(tmp2);
	tmp2 = ft_strdup(NULL);
	printf("%s\n", tmp2);
	free(tmp2);
	printf("-done\n");
	printf("\n--read (Makefile)\n");
	fd = open("Makefile", O_RDONLY);
	i =  ft_read(fd, buffer, 200);
	buffer[i] = '\n';
	ft_write(1, buffer, ft_strlen(buffer));
	printf("-done\n");

	return (0);
}
