# DevOps - Containerization, CI/CD &amp; Monitoring - January 2023 - SoftUni

## Monitoring with Prometheus and Grafana

1. **Creating Vagrantfile which creates a virtual machine with the following configuration:**
     - Box: **`shekeriev/centos-stream-9`**
     - Host names: **`docker.martin.bg`**
     - Private network with dedicated IPs: **`192.168.34.101`**
     - Provisioning via provided bash scripts: [**`setup-update.sh`**](setup-update.sh), [**`setup-hosts.sh`**](setup-hosts.sh), [**`setup-firewall.sh`**](setup-firewall.sh), [**`setup-docker.sh`**](setup-docker.sh) and [**`setup-stack.sh`**](setup-stack.sh)
     - Shared folder configuration: **`"vagrant/"`** -> **`"/vagrant"`**
     - Set virtual machine memory size: **`3072`**
2. **Deployed services:**
     - [**`prometheus`**](http://192.168.34.101:9090/)
     - [**`alertmanager`**](http://192.168.34.101:9093/#/alerts)
     - [**`grafana`**](http://192.168.34.101:3000)
     - [**`node-exporter`**](http://192.168.34.101:9100/metrics)
     - **`goprom`**
        - [**`worker1`**](http://192.168.34.101:8081/)
        - [**`worker2`**](http://192.168.34.101:8082/)
3. **Additional [Grafana](http://192.168.34.101:3000) setup at <http://192.168.34.101:3000>:**
    - Username: **`admin`**
    - Password: **`admin`**
    - Configuration -> Data sources -> Add data source -> Prometheus -> HTTP -> URL : **`http://192.168.34.101:9090`** -> Save & test
    - Dashboards -> + Import -> Upload [**`docker-goprom.json`**](vagrant/grafana/docker-goprom.json) -> Select Prometheus data source : **`Prometheus (default)`**  -> Import
