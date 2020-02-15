/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ytaousi <ytaousi@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/16 15:19:07 by ytaousi           #+#    #+#             */
/*   Updated: 2020/02/15 19:54:30 by ytaousi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int		main(void)
{
	int		i;
	long	r;
	char	buffer[1000];
	char	*tmp2;
	int fd;

	r = 0;
	i = 0;
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
	ii =  ft_read(fd, buffer, 200);
	buffer[ii] = '\n';
	ft_write(1, buffer, ft_strlen(buffer));
	printf("-done\n");

	return (0);
}
