### Kafka TLS example project

### Pre-requisites
1. Create CA keypair
2. Create Server private key, and issue a cert signed by the CA
3. Create client private key, and issue cert signed by the CA

### Starting Kafka
1. `docker-compose up -d` to start Zookeeper and Kafka.  Kafka will use the server keystore & truststore

### Kafka commands
1. List topics (`scripts/list-topics.sh`)
2. CLI consume (`scripts/consume.sh`)
3. CLI produce (`scripts/produce.sh`)
