docker exec -t kafka-mutual-tls_kafka_1 /usr/bin/kafka-topics   --bootstrap-server localhost:9092   --list

`docker exec -t kafka-mutual-tls_kafka_1 /usr/bin/kafka-topics   --bootstrap-server localhost:29092   --list --command-config /etc/kafka/secrets/certs.properties`
