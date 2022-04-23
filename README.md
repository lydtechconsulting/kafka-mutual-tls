### Kafka TLS example project

### Pre-requisites
1. Ensure OpenSSL and a recent version of the Java JRE are installed (Java `keytool` needed for some steps)
1. Create CA keypair (`./certCreation/create-ca.sh`)
1. Create Server private key, and issue a cert signed by the CA (`./certCreation/create-server-cert.sh`)
1. Create client private key, and issue cert signed by the CA (`./certCreation/create-client-cert.sh`)

### Starting Kafka
1. `docker-compose up -d` to start Zookeeper and Kafka.  Kafka will use the server keystore & truststore

### Kafka commands
1. List topics (`scripts/list-topics.sh`)
2. CLI consume (`scripts/consume.sh`)
3. CLI produce (`scripts/produce.sh`)
