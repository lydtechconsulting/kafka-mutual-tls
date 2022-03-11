# Create a private key
keytool -genkey  -alias lydtech-client1 -dname "CN=client1.kafka.lydtechconsulting.com, OU=TEST, O=LYDTECH, L=London, S=LN, C=UK" -keystore kafka.client1.keystore.jks -keyalg RSA  -storepass changeit  -keypass changeit

# Inspect keystore contents
keytool -list -v -keystore kafka.client1.keystore.jks -storepass changeit
 
# Create CSR
keytool -keystore kafka.client1.keystore.jks -alias lydtech-client1 -certreq -file kafka-client1.csr -storepass changeit -keypass changeit
 
# Create cert signed by CA
openssl x509 -req -CA ca.pem -CAkey ca.key -in kafka-client1.csr -out kafka-client1-ca1-signed.crt -days 9999 -CAcreateserial -passin pass:changeit
 
# Import CA cert into keystore
keytool -keystore kafka.client1.keystore.jks -alias CARoot -import -file ca.pem -storepass changeit -keypass changeit
 
# Import signed cert into keystore
keytool -keystore kafka.client1.keystore.jks -alias lydtech-client1 -import -file kafka-client1-ca1-signed.crt -storepass changeit -keypass changeit

# import CA cert into truststore
keytool -keystore kafka.client1.truststore.jks -alias CARoot -import -file ca.pem -storepass changeit -keypass changeit

cp kafka.client1.keystore.jks secrets/
cp kafka.client1.truststore.jks secrets/
