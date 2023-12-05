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
	@echo "\033[33m               ⚫⚫🟢\033[0m"
	@echo "\033[33m  Ouaaais, c'est ca qui m'fallait\033[0m"

making:
	@echo "\033[30m🦑🦑🦑 Making QuoicouLibft... 🦑🦑🦑\033[0m"

oclean:
	@make --silent fclean -C ./libft
	@make --silent fclean -C ./gnl
	@make --silent fclean -C ./printf
	@make --silent fclean -C ./minmax

clean: clean_o clean_a
	@echo "\033[30m🦑🦑🦑 Crampting QuoicouLibft... 🦑🦑🦑\033[0m"
	@make --silent fclean -C ./libft
	@echo "\033[31m          Redlight FIRST LIBFT!\033[0m"
	@make --silent fclean -C ./gnl
	@echo "\033[31m              Redlight GNL!\033[0m"
	@make --silent fclean -C ./printf
	@echo "\033[31m            Redlight PRINTF!\033[0m"
	@make --silent fclean -C ./minmax
	@echo "\033[31m            Redlight MINMAX!\033[0m"
	@echo "                 🔴⚫⚫"

#echo en orange: 
fclean: clean
	@rm -f $(NAME) 
	@echo "\033[33m  La QuoicouLibft s'est faite cramptée\033[0m"

clean_o:
	@rm -f *.o

clean_a:
	@rm -f gnl.a libftprintf.a minmax.a