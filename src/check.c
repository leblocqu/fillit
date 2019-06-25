/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: leblocqu <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/06/25 13:42:15 by leblocqu          #+#    #+#             */
/*   Updated: 2019/06/25 13:42:17 by leblocqu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/fillit.h"

int		check_grid(char *str)
{
	int points;
	int hash;
	int n;
	int i;

	n = 0;
	hash = 0;
	points = 0;
	i = 0;
	while (str[i] != '\0')
	{
		if (str[i] == '.')
			points++;
		else if (str[i] == '#')
			hash++;
		else if (str[i] == '\n')
			n++;
		else 
			return (-1);
		str++;
	}
	return ((points == 12 && hash == 4 && n == 4) ? 1 : -1);
}
