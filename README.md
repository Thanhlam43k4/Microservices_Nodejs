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


### Structure of Microservices
-Customer_service: Run on port 8003 for function(login,signup,getAllUser,getUserbyId,UpdatedId) .

-Product_service: Run on port 8001 for function(add-product,getAllProduct,getProductbyId).

-Shopping_service: Run on port 8002 for call API (getProductbyID) from product service.

-2 tables in customer_db: customers, products.

-API_GATEWAY: Reverse Proxy to port 80 and details in proxy/nginx.conf file.


<img align = "center" alt = "coding" width = "600" src = "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgKIGniLJpUs0hLpEetCz_4dERZkbuhszCEiUvR0l9cY4oso908PHcQrbRKgctJP9HVxrtrmh5mOwy8T9m_5i_JhlaPEoTgoOAURDMcQTRZcAFxilK3IMqhtEkl1Kbb_I6j5oWxinbm7MA1O4rXt1UulRA254oYx0HtNXneC9qjYVEew59qWLoLv8_nwkg1/s748/nginx_conf.jpg.png">

### Jenkins pipeline
<img align = "center" alt = "coding" width = "600" src = "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEibKvgYf7pQlbyHtSVa0iH6SE1DjOsOqJyRWNl_yTIENVtMzmyR6_S23cvxdpoJFQKWd5tOBL-kmWe8Sxy7nZDofka8G_mHU3PBM5lwClx035d4ph6y28-CNSRO4HkLrZur51utqm799I0GbEBhX0KiNCqg5CtolvDc2zeW-S-FoR-g0eTsCgNa_PwKR-It/s1897/updated_jenkins.png">


<img align = "center" alt = "coding" width = "500" src = "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhsIfCfIoaFUxWDIVuY6PxZzDaBNScRRuubSbhOcM-oDudog50j8Szo9vA8PWaAMW0S2QJmKkYzwgPvozUoQ4AwaIkuL8_zVE1-idw70Hzq78TOttD0PVeLYhQA8O3To5VpceBJyrzBATPzacRO8m856Cq1B4Na3U9RiTkW6-ooDkoBrGSHo-oYPZ641FBv/s1852/code_sonar.png">

**=> You can check details in Jenkinsfile.**



### Production1 (Kubernetes Cluster)

Configuration.

<img align = "center" alt = "coding" width = "500" src = "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgnTcCWK-R1sabTY32XsS_d19MjnkIDI_ZUcJSL7rdn07iK5tUK5XILGo6Sc_bobKiTDDc4EYlgIUTxdZoxl8oJky3U2DnR-Sxom-jY5q_5g9ww0YNK3cB_vHt610BH5FFh2uQ5M_0MXz8KVLPsBzVzLIPBaU36LZyYZj1D6nTT2CWvWArtNYdr-GAAk-sO/s1471/K8S.png">

Set Up Ingress Controller for 3 Service.(NGINX INGRESS CONTROLLER)

<img align = "center" alt = "coding" width = "500" src = "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj05lh77R5WII4YTPQGJ7w-B0IrW5Prk1KSP_GiR9LNnS-SlmT-c-emfvaftg8YCNurJT5nLn-VZY8fnCKQaBc3hVO9uhiix8Y2Ttx-j4R1olDKVuGMyrkIswKyA0dQPRQ6JeRKW4eKwMsFsFvxJPgJsoEoZt8XtC4ZqI-XSqJhhsW0-oyVE4-yuDsxngRh/s972/Nginx-Ingress-controller.png">
