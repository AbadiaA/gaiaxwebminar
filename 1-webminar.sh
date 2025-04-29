# https://technical-compliance-workshop-fe23a7.gitlab.io/gaia-x-ready-did/
# Create keypair 
# Genera el archivo private_key.pem
openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt rsa_keygen_bits:2048
# extract the public key (public_key.pem)
openssl rsa -in private_key.pem -pubout -out public_key.pem

# Step 4: Create a self-signed certificate using the private key
openssl req -new -x509 -key private_key.pem -out cert.pem -days 365 -subj "/CN=example.com"



https://storage-1.402000.xyz/public/gaiaxwebminar/did-doc.json