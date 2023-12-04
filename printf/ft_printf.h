/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cviegas <cviegas@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 15:33:49 by cviegas           #+#    #+#             */
/*   Updated: 2023/12/03 21:16:38 by cviegas          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <unistd.h>

int	ft_printf(const char *s, ...);

int	ft_putunsigned_fd(unsigned int n, int fd);
int	ft_putaddr_fd(void *addr, int fd);
int	ft_puthexa_min_fd(unsigned long long hexa, int fd);
int	ft_puthexa_max_fd(unsigned long long hexa, int fd);

#endif