docker exec -it kafka-mutual-tls_kafka_1 /usr/bin/kafka-console-producer   --broker-list localhost:9092   --topic my-topic 

docker exec -it kafka-mutual-tls_kafka_1 /usr/bin/kafka-console-producer   --broker-list localhost:29092   --topic my-topic --producer.config /etc/kafka/secrets/certs.propertie
