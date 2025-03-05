#!/bin/bash

BOOTSTRAP_SERVERS=${BOOTSTRAP_SERVERS:-"my-cluster-kafka-bootstrap.kafka.svc.cluster.local:9092"}

echo "Waiting for Kafka bootstrap server to be ready..."

while true; do
  /kafkaconsumerapp
  if [ $? -ne 0 ]; then
    echo "Kafka consumer app failed. Retrying in 5 seconds..."
    sleep 5
  fi
done
