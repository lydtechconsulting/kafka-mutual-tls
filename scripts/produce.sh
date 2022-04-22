docker run -v "$(pwd)/certCreation/secrets/client:/etc/kafka/secrets" --network host -ti \
   confluentinc/cp-kafka:latest /usr/bin/kafka-console-producer \
   --bootstrap-server localhost:29092 --topic my-topic \
   --producer.config /etc/kafka/secrets/certs.properties
