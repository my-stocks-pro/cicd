# CICD

# AWS
    sudo aws configure
    aws ecr --profile alex get-login --no-include-email --region us-east-1

# TERRAFORM
    - terraform init
    - export TF_VAR_AWS_ACCESS_KEY=set aws key
    - export TF_VAR_AWS_SECRET_KEY=set aws key
    - yes to al tasks: -auto-approve
    - terraform apply
    - terraform destroy




## 1. api-server:8001


## 2. approved-service:8002
  - POST -> approved-service:8002/approved
  - POST -> api-server:8001/data/redis/approved
  - POST -> api-server:8001/data/psql/approved
  - POST -> slack-service-approved:8006/approved
  

## 3. earnings-service:8003
  - POST -> earnings-service:8003/earnings
  - POST -> api-server:8001/data/redis/earnings
  - POST -> api-server:8001/data/psql/earnings
  - POST -> slack-service-approved:8007/earnings
  
## 4. approved-history-service:8004
 - GET -> approved-history-service:8004/history/approved
 
## 5. earnings-history-service:8005
 - GET -> earnings-history-service:8005/history/earnings

## 6. slack-service-approved:8006
  - POST -> slack-service-approved:8006/approved
  
## 7. slack-service-earnings:8007
  - POST -> slack-service-approved:8007/earnings
  
## 8. approved-scheduler:8008
 - GET -> api-server:8001/api/redis
 - POST -> approved-service:8002/approved

## 9. earnings-scheduler:8009
 - GET -> api-server:8001/api/redis
 - POST -> earnings-service:8003/earnings
 
