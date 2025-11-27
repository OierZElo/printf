/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ozugazag <ozugazag@student.42urduliz.co    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/10 17:34:45 by ozugazag          #+#    #+#             */
/*   Updated: 2025/10/10 17:34:45 by ozugazag         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memcpy(void *dest, const void *src, size_t n)
{
	unsigned char	*ptr;
	unsigned char	*dst;

	ptr = (unsigned char *)src;
	dst = (unsigned char *)dest;
	while (n > 0)
	{
		*dst = *ptr;
		dst++;
		ptr++;
		n--;
	}
	return (dest);
}
