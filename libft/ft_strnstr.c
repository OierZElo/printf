/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ozugazag <ozugazag@student.42urduliz.co    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/10 17:37:03 by ozugazag          #+#    #+#             */
/*   Updated: 2025/10/10 17:37:03 by ozugazag         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(const char *str, const char *toFind, size_t len)
{
	size_t				i;
	size_t				j;
	const unsigned char	*ptr;

	ptr = (const unsigned char *)str;
	i = 0;
	if (*toFind == '\0')
		return ((char *)str);
	while (*ptr && i < len)
	{
		j = 0;
		while (str[i + j] == toFind[j] && (i + j) < len)
		{
			if (toFind[j + 1] == '\0')
				return ((char *)&str[i]);
			j++;
		}
		i++;
	}
	return (NULL);
}
