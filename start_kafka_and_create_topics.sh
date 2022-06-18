#!/bin/bash
bash bin/zookeeper-server-start.sh config/zookeeper.properties &
sleep 5 
bash bin/kafka-server-start.sh config/server.properties &
sleep 5
bash bin/kafka-topics.sh --create --topic order-received-events --bootstrap-server localhost:9092 &
bash bin/kafka-topics.sh --create --topic order-confirmed-events --bootstrap-server localhost:9092 &
bash bin/kafka-topics.sh --create --topic order-packed-events --bootstrap-server localhost:9092 &
bash bin/kafka-topics.sh --create --topic order-emailed-events --bootstrap-server localhost:9092 &
bash bin/kafka-topics.sh --create --topic error-events --bootstrap-server localhost:9092
