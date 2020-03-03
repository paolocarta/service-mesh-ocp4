chmod 777 operators/service-mesh-op-installation.sh
chmod 777 operators/prerequisites-installation.sh

./operators/prerequisites-installation.sh
sleep 2
./operators/service-mesh-op-installation.sh
sleep 1