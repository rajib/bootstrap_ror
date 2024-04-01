# For Stopping all
# docker-compose -f docker-compose-dev.yml down --rmi all


docker-compose -f docker-compose-staging.yml up -d
docker-compose -f docker-compose-dev.yml up -d



connection info	
---------------
http://elastic:SecureMeDockerVmElastic@[REPLACE_WITH_EXTERNAL_IP]:9200	
http://elastic:SecureMeDockerVmElastic@[REPLACE_WITH_EXTERNAL_IP]:9201	
mongodb://mongo_unizap_dev:SecureMeDockerVmMongo@[REPLACE_WITH_EXTERNAL_IP]:27017/?authMechanism=DEFAULT&authSource=admin        	
mongodb://mongo_unizap_dev:SecureMeDockerVmMongo@[REPLACE_WITH_EXTERNAL_IP]:27018/?authMechanism=DEFAULT&authSource=admin	
redis://default:SecureMeDockerVmRedis@[REPLACE_WITH_EXTERNAL_IP]:6379	
redis://default:SecureMeDockerVmRedis@[REPLACE_WITH_EXTERNAL_IP]:6380	
[REPLACE_WITH_EXTERNAL_IP]:9092	
[REPLACE_WITH_EXTERNAL_IP]:9093	