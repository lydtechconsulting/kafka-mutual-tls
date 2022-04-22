docker run -v "$(pwd)/certCreation/secrets/client:/etc/kafka/secrets" --network host \
   confluentinc/cp-kafka:latest /usr/bin/kafka-topics \
   --bootstrap-server localhost:29092 --list \
   --command-config /etc/kafka/secrets/certs.properties
