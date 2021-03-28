openssl genrsa -writerand -genkey -out devops.key 2048
openssl req -new -key devops.key -out devops.csr -subj "/CN=devops/O=development"

sudo openssl x509 -req -in devops.csr \
 -CA /etc/kubernetes/pki/ca.crt \
 -CAkey /etc/kubernetes/pki/ca.key \
 -CAcreateserial \
 -out devops.crt -days 45

openssl x509 -in devops.crt -text -noout
