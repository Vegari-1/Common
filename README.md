# Common
A repository for storing shared data and documentation

---

### Table of Contents

-   [How to run a docker-compose](#how_to_run_a_docker-compose)
-   [Monitoring - installation and running](#monitoring)

---

## How to run a docker-compose

* First, it is necessary to create a folder locally in which all microservices will be located
* After cloning all microservices, it is necessary to add `docker-compose.yml` file to the newly created folder
* Open the terminal and position yourself in the newly created folder
* Run the command: 

```
docker-compose up
```

Ports on which services run:
* Auth service: [5001](http://localhost:5001)
* Message service: [5002](http://localhost:5002)
* Profile service: [5003](http://localhost:5003)
* Post service: [5004](http://localhost:5004)
* Notification service: [5005](http://localhost:5005)
* Job offer service: [5006](http://localhost:5006)


## Monitoring

* To install Loki driver run the command: `docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions`
* To check if plugin is installed run the command: `docker plugin ls` 

* Position yourself in the monitoring folder and run the command `docker compose up`
* After that, you need to run the following command in a separate terminal: `docker network inspect monitoring`, and from the received list of IP addresses, you need     to find the IP address under the name *monitoring_fluent-bit_1*. That IP address needs to be copied into the docker-compose of all services under the fluentd-address   item. 





## Authors Info

-   [Ksenija Prćić](https://github.com/ksenija10)
-   [Eva Janković](https://github.com/evaj10)
-   [Dimitrije Žarković Đolai](https://github.com/djolewalker)
-   [Nikola Kabašaj](https://github.com/nikolakabasaj)

[Back To The Top](#common)
