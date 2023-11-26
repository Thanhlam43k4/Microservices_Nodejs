# Microservices_Nodejs
Microservices nodejs application and intergrate ci cd and monitoring Project


---Microservices with Structure below---

<img align = "center" alt = "coding" width = "550" src = "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhaR-oiDHczwaEb3YbmvccT4dH6y5hXAI2BAOC9oxINdTWBosSZ9HiSmrQ3E4H_ZWNiIVnRvIokqCxvTzkcelz0JJGmO_IjUiX8TBQc8kSPR58YXqIgRiwHNS7LldQjfyomINi__qZLCxBgJoj_3WdLax5wVM6SuMlRW5igKt59Idza3p0haJ1mpiGMFyOa/s1257/microservice_structure.png"> 

***Tech Stack:
- Nodejs, Express for Backend API.
- Mysql for Database.
- Nginx for reverse proxy.
- Jenkins for CI-CD pipeline.
- Kubernetes cluster for prod development.

###Structure
-Customer_service: Run on port 8003 for function(login,signup,getAllUser,getUserbyId,UpdatedId) .

-Product_service: Run on port 8001 for function(add-product,getAllProduct,getProductbyId).

-Shopping_service: Run on port 8002 for call API (getProductbyID) from product service .

-2 tables in customer_db: customers, products.

-API_GATEWAY: Reverse Proxy to port 80 and details in proxy/nginx.confd file.
