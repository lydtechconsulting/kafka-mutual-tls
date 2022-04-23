docker exec -t kafka-mutual-tls_kafka_1 /usr/bin/kafka-acls --bootstrap-server localhost:29092 --command-config /etc/kafka/secrets/certs.properties --add \
 --allow-principal "User:CN=client1.kafka.lydtechconsulting.com,OU=TEST,O=LYDTECH,L=London,ST=LN,C=UK" \
 --operation Read --operation Write --operation Create --topic my-topic

docker exec -t kafka-mutual-tls_kafka_1 /usr/bin/kafka-acls --bootstrap-server localhost:29092 --command-config /etc/kafka/secrets/certs.properties --add \
--allow-principal "User:CN=client1.kafka.lydtechconsulting.com,OU=TEST,O=LYDTECH,L=London,ST=LN,C=UK" --operation Read --group '*'
