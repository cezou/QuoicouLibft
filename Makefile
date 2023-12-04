NAME = libft.a

all: making LIBFT echo oclean

LIBFT:
	@make --silent -C gnl
	@make --silent -C printf
	@make --silent -C minmax
	@cp printf/libftprintf.a $(NAME)
	@cp gnl/gnl.a .
	@cp minmax/minmax.a .
	@ar x gnl.a
	@ar x minmax.a
	@ar rc $(NAME) *.o
	@rm *.o
	@rm gnl.a
	@rm minmax.a

echo:
	@echo "\033[33mMade LIBFT!\033[0m"

making:
	@echo "\033[30mMaking LIBFT...\033[0m"

oclean:
	@make --silent fclean -C ./libft
	@make --silent fclean -C ./gnl
	@make --silent fclean -C ./printf
	@make --silent fclean -C ./minmax

clean: clean_o clean_a
	@make --silent fclean -C ./libft
	@echo "\033[33m   Cleaned LIBFT\033[0m"
	@make --silent fclean -C ./gnl
	@echo "\033[33m   Cleaned GNL\033[0m"
	@make --silent fclean -C ./printf
	@echo "\033[33m   Cleaned PRINTF\033[0m"
	@make --silent fclean -C ./minmax
	@echo "\033[33m   Cleaned MINMAX\033[0m"


fclean: clean
	@rm -f $(NAME)
	@echo "\033[31mDeleted LIBFT\033[0m"

clean_o:
	@rm -f *.o

clean_a:
	@rm -f gnl.a libftprintf.a minmax.a