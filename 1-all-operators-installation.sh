#!/bin/bash


chmod 777 operators/service-mesh-op-installation.sh
chmod 777 operators/prerequisites-installation.sh

cd operators

./prerequisites-installation.sh
sleep 2
./service-mesh-op-installation.sh
sleep 1

cd ..