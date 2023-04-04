#!/bin/bash

echo "*** Deploy stack (prometheus, grafana, goprom - etc.) ..."
cd /vagrant && docker compose down || true
docker compose up -d

echo "*** Generate requests to worker1 ..."
/vagrant/goprom/runner.sh http://192.168.34.101:8081 &> /tmp/runner8081.log &

echo "*** Generate requests to worker2 ..."
/vagrant/goprom/runner.sh http://192.168.34.101:8082 &> /tmp/runner8082.log &
