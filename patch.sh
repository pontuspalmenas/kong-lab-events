export CA_UUID=$(uuidgen)
export CERT_UUID=$(uuidgen)

yq '.ca_certificates[0].id = strenv(CA_UUID) |
    .ca_certificates[0].cert = load_str("./secrets/ca.crt") |
    .certificates[0].id = strenv(CERT_UUID) |
    .certificates[0].cert = load_str("./secrets/kafka.client.crt") |
    .certificates[0].key = load_str("./secrets/kafka.client.key") |
    .routes[0].plugins[0].config.security.certificate_id = strenv(CERT_UUID)' \
    kong/kong.base.yml > kong/kong.yml