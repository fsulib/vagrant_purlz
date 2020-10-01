echo "Updating repository packages and installing Java 6..."
apt update >/dev/null 2>&1
apt install -y openjdk-6-jdk >/dev/null 2>&1

echo "Installing and running PURLZ server..."
cd /root
wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/persistenturls/PURLZ-Server-1.6.4.jar >/dev/null 2>&1
java -jar /root/PURLZ-Server-1.6.4.jar /vagrant/demo.config > /root/purlz.build.log
screen -S purlz -d -m /root/PURLZ-Server-1.6.4/bin/start.sh >/dev/null 2>&1

echo "PURLZ server now available at http://localhost:8080/docs/index.html"
echo "Log in with credentials admin:password."
