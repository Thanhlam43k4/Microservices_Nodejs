# Microservices_Nodejs
Microservices nodejs application and intergrate ci cd and monitoring Project


---Microservices with Structure below---

<img align = "center" alt = "coding" width = "800" src = "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhaR-oiDHczwaEb3YbmvccT4dH6y5hXAI2BAOC9oxINdTWBosSZ9HiSmrQ3E4H_ZWNiIVnRvIokqCxvTzkcelz0JJGmO_IjUiX8TBQc8kSPR58YXqIgRiwHNS7LldQjfyomINi__qZLCxBgJoj_3WdLax5wVM6SuMlRW5igKt59Idza3p0haJ1mpiGMFyOa/s1257/microservice_structure.png"> 

*** Tech Stack:
- Nodejs, Express for Backend API.
- Mysql for Database.
- Nginx for reverse proxy.
- Jenkins for CI-CD pipeline.
- Kubernetes cluster for prod development.

### Structure of Microservices
-Customer_service: Run on port 8003 for function(login,signup,getAllUser,getUserbyId,UpdatedId) .

-Product_service: Run on port 8001 for function(add-product,getAllProduct,getProductbyId).

-Shopping_service: Run on port 8002 for call API (getProductbyID) from product service.

-2 tables in customer_db: customers, products.

-API_GATEWAY: Reverse Proxy to port 80 and details in proxy/nginx.conf file.


<img align = "center" alt = "coding" width = "600" src = "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgKIGniLJpUs0hLpEetCz_4dERZkbuhszCEiUvR0l9cY4oso908PHcQrbRKgctJP9HVxrtrmh5mOwy8T9m_5i_JhlaPEoTgoOAURDMcQTRZcAFxilK3IMqhtEkl1Kbb_I6j5oWxinbm7MA1O4rXt1UulRA254oYx0HtNXneC9qjYVEew59qWLoLv8_nwkg1/s748/nginx_conf.jpg.png">

### Jenkins pipeline
<img align = "center" alt = "coding" width = "600" src = "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh5MvqlIvimB-_uW-Igb3D1T1JqAt4rCxc2WsC4dgL65AhweY4kUw6p1yavfgbsrM7WQi2thcs0RtwGtc1t5sb5ZSvKTDt7Wj5ymDvzqrmVPeym1va-WmWSqjITgNmYs98oMs7nQ-i0a2EGJ-TuMwgA6KTdkNNCYoFvu0Gn0fvJYXW1E_hjrbg0JVcH_2o1/s1900/stage_jenkins.png">

**=> You can check details in Jenkinsfile.**

