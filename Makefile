all		:	up

up		:
			docker-compose up -d

stop	:
			docker-compose stop

down	:
			docker-compose stop

start	:
			docker-compose start

ps		:
			docker-compose ps

re		:	down up

.PHONY:		all up stop down start ps re
