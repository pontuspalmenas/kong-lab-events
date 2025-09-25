### Kong Event Gateway (Protocol Mediation) Demo
This demo environment uses Kong 3.10 running in DB-less

* Kong Enterprise 3.10 in DB-less (declarative) on Docker.
* Confluent Kafka

### How to run
1. Ensure your license is configured in `$KONG_LICENSE_DATA`
2. Generate the certs for mTLS: `./gen-certs.sh`
3. Patch the config to use the newly generated certs: `./patch.sh`
4. Start the containers: `docker-compose up -d`
