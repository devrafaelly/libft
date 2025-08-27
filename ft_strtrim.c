/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rafaoliv <rafaoliv@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/29 20:25:25 by codespace         #+#    #+#             */
/*   Updated: 2025/08/04 13:16:47 by rafaoliv         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

#include <string.h>
#include <stdlib.h>

static	size_t	char_verification(char c, char const *set)
{
	size_t	i;

	i = 0;
	while (set[i])
	{
		if (c == set[i])
			return (1);
		i++;
	}
	return (0);
}

static	size_t	start_index(char const *s1, char const *set)
{
	size_t	i;

	i = 0;
	while (s1[i] && char_verification(s1[i], set) == 1)
		i++;
	return (i);
}

static	size_t	end_index(char const *s1, size_t i, char const *set)
{
	while (i > 0 && char_verification(s1[i], set) == 1)
		i--;
	return (i);
}

char	*ft_strtrim(char const *s1, char const *set)
{
	char	*s2;
	size_t	s1_len;
	size_t	s2_len;
	size_t	start;
	size_t	end;

	if (!s1 || !set)
		return (NULL);
	s1_len = ft_strlen(s1);
	start = start_index(s1, set);
	end = end_index(s1, (s1_len - 1), set);
	if (start > end)
		s2_len = 0;
	else
		s2_len = (end - start) + 1;
	s2 = malloc(s2_len + 1);
	if (!s2)
		return (NULL);
	ft_memcpy(s2, &s1[start], s2_len);
	s2[s2_len] = '\0';
	return (s2);
}
