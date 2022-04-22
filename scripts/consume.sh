docker run -v "$(pwd)/certCreation/secrets/client:/etc/kafka/secrets" --network host  \
   confluentinc/cp-kafka:latest /usr/bin/kafka-console-consumer \
   --bootstrap-server localhost:29092 --topic my-topic --from-beginning \
   --consumer.config /etc/kafka/secrets/certs.properties
