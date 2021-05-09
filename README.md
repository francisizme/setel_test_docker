# Setup Docker swarm

```shell
git clone
cd 
docker-compose -f docker-compose.yml build --no-cache
docker-compose -f docker-compose.yml up -d
docker exec -it mcs-auth-service npm run typeorm migration:run
```
# API

* Create order:
    * [POST] localhost:40002/api/orders
    * Payload:
    
    |field|type|required|description|max
    |---|---|---|---|---
    |order_code|string|*|unique|255
    |user_token|string|*|
    |payment_type|number|*|
* Check order status:
    * [GET] localhost:40002/api/orders/:orderId
    * Params:
        * orderId: `number`
# Available resource
## user_token

* abc123
* def456

## payment_type

* 1: cash
* 2: credit
