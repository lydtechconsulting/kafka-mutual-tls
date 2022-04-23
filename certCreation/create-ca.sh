openssl req -new -x509 -keyout ca.key -out ca.crt -days 365 \
   -subj '/CN=ca.kafka.lydtechconsulting.com/OU=TEST/O=LYDTECH/L=London/C=UK' \
   -passin pass:changeit -passout pass:changeit
