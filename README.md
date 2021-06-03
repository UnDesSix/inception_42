# Inception

### Description
This project aims to broaden your knowledge of system administration by using Docker. I virtualized several Docker images, creating them in your new personal virtual machine. 


***
### Dependencies
`docker.io` and `docker-compose`


***
### Mandatory part

I set up :

- A Docker container that contains NGINX with TLSv1.2.
- A Docker container that contains WordPress + php-fpm (installed and configured) only without nginx.
- A Docker container that contains MariaDB only without nginx.
- A volume that contains your WordPress database.
- A second volume that contains your WordPress website files.
- A docker-network that establishes the connection between your containers.
- In the WordPress database, there must be two users, one of them being the ad-ministrator. The administrator’s username can’t contain admin/Admin or admin-istrator/Administrator (e.g., admin, administrator, Administrator, admin-123, andso forth).

***
### Diagram of the expected result
![Diagram of the expected result](https://www.zupimages.net/up/21/22/fs6a.png)
