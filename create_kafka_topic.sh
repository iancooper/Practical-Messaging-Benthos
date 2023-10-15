#!/bin/bash

# Kafka container name or ID
kafka_container="ae10b4397399"

# Topic name
topic_name="biography"

# Execute the Kafka topics command inside the container
docker exec -it ${kafka_container} /bin/kafka-topics \
  --create \
  --bootstrap-server localhost:9092 \
  --topic ${topic_name} \
  --partitions 1 \
  --replication-factor 1
