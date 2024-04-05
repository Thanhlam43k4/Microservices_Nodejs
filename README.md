# Microservices_Nodejs
Microservices nodejs application and intergrate ci cd and monitoring Project


---Microservices with Structure below---

<img align = "center" alt = "coding" width = "800" src = "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhaR-oiDHczwaEb3YbmvccT4dH6y5hXAI2BAOC9oxINdTWBosSZ9HiSmrQ3E4H_ZWNiIVnRvIokqCxvTzkcelz0JJGmO_IjUiX8TBQc8kSPR58YXqIgRiwHNS7LldQjfyomINi__qZLCxBgJoj_3WdLax5wVM6SuMlRW5igKt59Idza3p0haJ1mpiGMFyOa/s1257/microservice_structure.png"> 

**Tech Stack**:
- Nodejs, Express for Backend API.
- Mysql for Database.
- Nginx for reverse proxy.
- Jenkins for CI-CD pipeline.
- Kubernetes cluster for prod development.
- SonarQube for quality Codes and Code Smell.

### Infrastructure of Virtual Machine
- Jenkins machine with IP 192.168.56.105(docker, jenkins image,docker compose,sonarqube)

- Staging machine with IP 192.168.56.110(docker,docker compose)

### Structure of Microservices
-Customer_service: Run on port 8003 for function(login,signup,getAllUser,getUserbyId,UpdatedId) .

-Product_service: Run on port 8001 for function(add-product,getAllProduct,getProductbyId).

-Shopping_service: Run on port 8002 for call API (getProductbyID) from product service.

-2 tables in customer_db: customers, products.

-API_GATEWAY: Reverse Proxy to port 80 and details in proxy/nginx.conf file.


<img align = "center" alt = "coding" width = "600" src = "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgKIGniLJpUs0hLpEetCz_4dERZkbuhszCEiUvR0l9cY4oso908PHcQrbRKgctJP9HVxrtrmh5mOwy8T9m_5i_JhlaPEoTgoOAURDMcQTRZcAFxilK3IMqhtEkl1Kbb_I6j5oWxinbm7MA1O4rXt1UulRA254oYx0HtNXneC9qjYVEew59qWLoLv8_nwkg1/s748/nginx_conf.jpg.png">

### Jenkins pipeline
<img align = "center" alt = "coding" width = "600" src = "https://blogger.googleusercontent.com/img/a/AVvXsEg4SyDEr_pRv-0u7uXi6FYYCRO1W4KAGzVUSGVkfVFi0OB_jHHmXneyQAT4MDDPMvf-dl4hdhgok3zMSj2j-WWbBbAptWp_9yziB8qCHCliLlxD6OIa_c54sjooiq9SV82uG1hskTVaT3SohD7UYi8AQoFIN20upOaVeKCdsC-0THuyrV1CUP6iG_xsvjHm">


<img align = "center" alt = "coding" width = "500" src = "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhsIfCfIoaFUxWDIVuY6PxZzDaBNScRRuubSbhOcM-oDudog50j8Szo9vA8PWaAMW0S2QJmKkYzwgPvozUoQ4AwaIkuL8_zVE1-idw70Hzq78TOttD0PVeLYhQA8O3To5VpceBJyrzBATPzacRO8m856Cq1B4Na3U9RiTkW6-ooDkoBrGSHo-oYPZ641FBv/s1852/code_sonar.png">

**=> You can check details in Jenkinsfile.**


### Staging Environment

- Using SSH agent in Jenkins for ssh to staging machine and deploy application to this env





