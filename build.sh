echo "Updating repository packages and installing Java 6..."
apt update >/dev/null 2>&1
apt install -y openjdk-6-jdk >/dev/null 2>&1

echo "Installing and running PURLZ server..."
java -jar /vagrant/PURLZ-Server-1.6.4.jar /vagrant/demo.config
screen -S purlz -d -m /root/PURLZ-Server-1.6.4/bin/start.sh

echo "PURLZ server now available at http://localhost:8080/docs/index.html"
echo "Log in with credentials admin:password."
