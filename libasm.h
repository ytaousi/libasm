/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ytaousi <ytaousi@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/25 21:44:18 by ytaousi           #+#    #+#             */
/*   Updated: 2020/02/15 19:54:35 by ytaousi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H
# include <unistd.h>
# include <stdio.h>
# include <stdlib.h>
# include <string.h>
#include "fcntl.h"

ssize_t ft_read(int fildes, void *buf, size_t nbyte);
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);
size_t  ft_strlen(const char *s);
char    *ft_strdup(const char *s);
int     ft_strcmp(const char *s1, const char *s2);
char    *ft_strcpy(char *dst, const char *src);

#endif
