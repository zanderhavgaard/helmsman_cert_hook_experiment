#!/bin/bash

# create the .yml file contianing the cert secret from the dummy certificate in dummy_cert/

namespace="cert-test"
cert_secret_name="$namespace.dummy.cert"
key_file="dummy_cert/dummy.key"
cert_file="dummy_cert/dummy.crt"
output_file="apply_cert_secret.yml"

kubectl create secret tls $cert_secret_name -n $namespace --key="$key_file" --cert="$cert_file" --dry-run -o yaml > $output_file
