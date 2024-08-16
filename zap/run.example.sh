#!/bin/bash
docker run -dit --name zap-container -u zap -p 8080:8080 zaproxy/zap-stable zap.sh -daemon -port 8080 -host 0.0.0.0 -config api.disablekey=true

docker run -t ghcr.io/zaproxy/zaproxy:weekly zap-api-scan.py -t https://www.example.com/openapi.json -f openapi  
