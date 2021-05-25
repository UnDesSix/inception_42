COMPOSE_FILE = ./srcs/docker-compose.yml

all		:	up

up		:
			docker-compose -f $(COMPOSE_FILE) up -d --build

stop	:
			docker-compose -f $(COMPOSE_FILE) stop

down	:
			docker-compose -f $(COMPOSE_FILE) stop

start	:
			docker-compose -f $(COMPOSE_FILE) start

ps		:
			docker-compose -f $(COMPOSE_FILE) ps

re		:	down up

.PHONY:		all up stop down start ps re
