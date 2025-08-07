### Kong Event Gateway (Protocol Mediation) Demo
This demo environment uses Kong 3.10 running in Hybrid Mode.

### Features
* Kong Enterprise 3.10 in Hybrid Mode on Docker.
* Kafka

### How to run
1. Ensure your license is configured in `$KONG_LICENSE_DATA`
2. Start the containers: `docker-compose up -d`
3. Sync the config: `deck gateway sync kong/config/kong.yaml`

### Optional
The certificates for CP/DP communication are already prepared, but you can create your own by running `./kong/config/gen-certs.sh`


