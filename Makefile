_COLOR	=	\033[1;94m
_RESET			=	\033[0m


COMPOSE_FILE = ./srcs/docker-compose.yml

all		:	up

up		:
			@ docker-compose -f $(COMPOSE_FILE) up -d --build
			@ sleep 5
			@ echo "$(_COLOR)Containers are now built and running.$(_RESET)"

stop	:
			@ docker-compose -f $(COMPOSE_FILE) stop
			@ echo "$(_COLOR)Containers have been stopped.$(_RESET)"

down	:
			@ docker-compose -f $(COMPOSE_FILE) down
			@ echo "$(_COLOR)Containers are now down.$(_RESET)"

start	:
			@ docker-compose -f $(COMPOSE_FILE) start
			@ sleep 5
			@ echo "$(_COLOR)Containers are now running.$(_RESET)"

ps		:
			@ docker-compose -f $(COMPOSE_FILE) ps

re		:	stop up

.PHONY:		all up stop down start ps re
