
########### Execution commands helm build chaiyatam Chart.yaml lo name nginx, so we are using nginx

helm install <chart-name> . (or) helm install nginx .
helm list

###########   if changed any in helm charts just give this 

helm upgrade <chart-name> .
helm list

helm history nginx


----
if you upgraded in values.yaml imageVersion: "stable-bookworm-perl" 

helm upgrade nginx . --description "upgrade stable-bookworm"

######## version build faild roleback###

helm rollback nginx 4 or 5 or 6  -> any version we can role back like version 4, 5 ,6





