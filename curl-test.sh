curl localhost:8080
curl -X POST -H "Content-Type: application/json" \
    -d '{"message": "Thats how the cookie crumbles"}' \
    localhost:8080/api/add
curl localhost:8080/api/all
