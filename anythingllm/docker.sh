#!/usr/bin/bash
export STORAGE_LOCATION=/var/anythingllm && \
mkdir -p $STORAGE_LOCATION && \
touch "$STORAGE_LOCATION/.env" && \
docker run -d -p 23001:3001 \
--cap-add SYS_ADMIN \
-v ${STORAGE_LOCATION}:/app/server/storage \
-v ${STORAGE_LOCATION}/.env:/app/server/.env \
-e STORAGE_DIR="/app/server/storage" \
--name anythingllm \
--restart always \
--add-host=host.docker.internal:host-gateway \
mintplexlabs/anythingllm

