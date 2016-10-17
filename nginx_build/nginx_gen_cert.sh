#!/bin/bash

DOMAIN="varsitytutors.dev"

cat > ${DOMAIN}.cnf <<-EOF
  [req]
  distinguished_name = req_distinguished_name
  x509_extensions = v3_req
  prompt = no
  [req_distinguished_name]
  C = US
  ST = MO
  L = VTLand
  O = VT
  OU = DEV
  CN = *.${DOMAIN}
  [v3_req]
  keyUsage = nonRepudiation, digitalSignature, keyEncipherment
  extendedKeyUsage = serverAuth
  subjectAltName = @alt_names

  [alt_names]
  DNS.1 = *.${DOMAIN}
  DNS.2 = ${DOMAIN}
EOF

openssl req \
  -new \
  -newkey rsa:2048 \
  -sha1 \
  -days 3650 \
  -nodes \
  -x509 \
  -keyout ${DOMAIN}.key \
  -out ${DOMAIN}.crt \
  -config ${DOMAIN}.cnf

rm ${DOMAIN}.cnf
mkdir -p /etc/nginx/ssl
mv ${DOMAIN}.* /etc/nginx/ssl
