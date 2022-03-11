# 
keytool -genkey  -alias lydtech-server -dname "CN=server.kafka.lydtechconsulting.com, OU=TEST, O=LYDTECH, L=London, S=LN, C=UK" -keystore kafka.server.keystore.jks -keyalg RSA  -storepass changeit  -keypass changeit

keytool -list -v -keystore kafka.server.keystore.jks -storepass changeit
 
keytool -keystore kafka.server.keystore.jks -alias lydtech-server -certreq -file kafka-server.csr -storepass changeit -keypass changeit
  
openssl x509 -req -CA ca.pem -CAkey ca.key -in kafka-server.csr -out kafka-server-ca1-signed.crt -days 9999 -CAcreateserial -passin pass:changeit
 
keytool -keystore kafka.server.keystore.jks -alias CARoot -import -file ca.pem -storepass changeit -keypass changeit
 
keytool -keystore kafka.server.keystore.jks -alias lydtech-server -import -file kafka-server-ca1-signed.crt -storepass changeit -keypass changeit

keytool -keystore kafka.server.truststore.jks -alias CARoot -import -file ca.pem -storepass changeit -keypass changeit

cp kafka.server.keystore.jks secrets/
cp kafka.server.truststore.jks secrets/
