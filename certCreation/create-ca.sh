# Create a private key
openssl genrsa -aes256 -passout pass:changeit -out ca.pass.key 4096
openssl rsa -passin pass:changeit -in ca.pass.key -out ca.key
rm ca.pass.key

# Create a CA cert
openssl req -new -x509 -days 3650 -key ca.key -out ca.pem  -subj "/C=UK/ST=LN/L=London/O=LydtechConsulting/CN=ca.kafka.lydtechconsulting.com" 

keytool -genkeypair -keyalg RSA -keysize 2048 -keystore certification-authority.p12 \
   -storetype PKCS12 -storepass changeit -keypass changeit \
   -alias ca -dname "CN=BrokerCA" -ext bc=ca:true -validity 365

keytool -export -file certification-authority.crt -keystore certification-authority.p12 \
   -storetype PKCS12 -storepass changeit -alias ca -rf
