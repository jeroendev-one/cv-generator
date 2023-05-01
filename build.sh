#!/bin/bash
rm -rf result
docker exec -it cv-generator rm /app/result/*
docker cp ./user.json cv-generator:/app/examples/
docker exec -it cv-generator /app/api generate --input /app/examples/user.json
docker cp cv-generator:/app/result/ .
