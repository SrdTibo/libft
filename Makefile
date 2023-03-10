NAME = libft.a
SRC	= ft_calloc.c ft_isdigit.c ft_memcpy.c ft_strtrim.c ft_strdup.c ft_strlen.c ft_isalnum.c ft_isprint.c \
ft_memmove.c ft_strjoin.c ft_strncmp.c ft_substr.c ft_atoi.c ft_isalpha.c ft_memchr.c ft_memset.c \
ft_strlcat.c ft_strnstr.c ft_tolower.c ft_bzero.c ft_isascii.c ft_memcmp.c ft_strchr.c ft_strlcpy.c \
ft_strrchr.c ft_toupper.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c\
ft_putendl_fd.c ft_putnbr_fd.c ft_strcat.c\

SRC_BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c\

OBJ	= $(SRC:.c=.o)
OBJ_BONUS = $(SRC_BONUS:.c=.o)

all : 		$(NAME)
	
$(NAME) : 	$(OBJ)
	ar -rcs $(NAME) $(OBJ)

clean :
	rm -rf $(OBJ) $(OBJ_BONUS)

fclean :	clean
	rm -f $(NAME)

bonus : $(NAME) $(OBJ_BONUS)
	ar -crs $(NAME) $(OBJ_BONUS)

re :		fclean all

.PHONY :	all clean fclean re
