sudo apt update
sudo apt upgrade -y
sudo apt install docker.io -y
docker --version
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
sudo docker ps
sudo apt update
sudo apt install docker-compose-v2 -y
docker compose version
mkdir -p ~/jenkins
cd ~/jenkins
nano compose.yaml
docker compose up -d
cd
whoami
sudo usermod -aG docker $USER
newgrp docker
docker ps
ls -l /var/run/docker.sock
newgrp docker
docker ps
cd ~/jenkins
ls
docker compose up -d
docker compose ps
cd
mkdir -p ~/sonarqube
cd ~/sonarqube
nano compose.yaml
docker compose up -d
docker compose ps
cd
docker compose logs -f sonarqube
docker ps
mkdir -p ~/nexus
cd ~/nexus
nano compose.yaml
docker compose up -d
docker compose ps
docker compose logs -f nexus
docker ps
docker exec nexus cat /nexus-data/admin.password
cd
docker exec nexus cat /nexus-data/admin.password
/var/jenkins_home/secrets/initialAdminPassword
cd /var/jenkins_home/secrets/initialAdminPassword
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
mkdir -p ~/grafana
cd ~/grafana
nano compose.yaml
cd
docker compose up -d
pwd
mkdir -p ~/grafana
cd ~/grafana
pwd
nano compose.yaml
ls -l
docker compose up -d
docker compose ps
cd
mkdir -p ~/prometheus
cd ~/prometheus
docker network ls
nano prometheus.yml
ls -l
nano compose.yaml
docker compose config
docker compose up -d
docker compose ps
cd
docker compose ps
docker compose logs --tail 30 prometheus
docker ps
docker compose up -d
mkdir -p ~/prometheus
cd ~/prometheus
docker network ls
nano prometheus.yml
docker compose config
docker compose up -d
docker network ls
cd
docker network create devops
docker network ls
docker compose up -d
cd ~/prometheus
ls -la
cat prometheus.yml
docker compose up -d
docker compose ps
cd
mkdir -p ~/devops-project
cd ~/devops-project
pwd
nano app.js
nano package.json
nano Dockerfile
docker build -t devops-project:1.0 .
docker images
docker run -d   --name devops-app   -p 8082:8080   devops-project:1.0
cd
docker ps
curl http://localhost:8082/.
curl http://localhost:8082/health
docker build -t myapp:1.0 .
pwd
ls -la
pwd
ls -la
cd /home/ubuntu
nano Dockerfile
docker build -t myapp:1.0 .
docker images
docker build -t myapp:1.0 -f Dockerfile.dev .
pwd
ls -la
docker images
docker tag myapp:1.0 192.168.1.100:8082/myapp:1.0
docker login 192.168.1.100:8082
docker push 192.168.1.100:8082/myapp
curl -v http://192.168.1.100:8082/v2/
nc -vz 192.168.1.100 8082
curl -v http://192.168.1.100:8082/v2/
nc -vz 192.168.1.100 8082
telnet 192.168.1.100 8082
sudo ss -lntp | grep 8082
sudo ufw status verbose
sudo ufw allow 8082/tcp
sudo ufw reload
sudo ufw status
curl -v http://localhost:8082/v2/
curl -v http://192.168.1.100:8082/v2/
docker push 192.168.1.100:8082/myapp:1.0
sudo ufw reload
docker images
ls
docker ps
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.29.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
kind version
odcker ps
docker ps
kind version
kind create cluster --name mycluster
docker ps
kubectl cluster-info
kubectl get nodes
kubectl create deployment nginx --image=nginx
kubectl get deployments
kubectl get pods
kubectl expose deployment nginx   --type=NodePort   --port=80
kubectl get service nginx
kubectl run test   --image=curlimages/curl   -it --rm   -- curl http://nginx
nano kind-config.yaml
kind create cluster   --name mycluster   --config kind-config.yaml
kubectl get nodes
kubectl get pods
kubectl get pods -A
kubectl get services
kubectl get deployments
kubectl describe pod <pod-name>
kubectl logs <pod-name>
docker ps
apiVersion: v1
kind: Namespace
metadata:
k8s/namespace.yaml
vi namespace.yaml
kubectl apply -f namespace.yaml
kubectl get namespaces
vi deployment.yaml
vi service.yaml
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f service.yaml
kubectl apply -f deployment.yaml
kubectl get pods -n devops
kubectl describe pod devops-demo-5df9d79465-6tz2f -n devops
kubectl get nodes
kubectl get pods -A
kubectl get nodes
sudo apt update
sudo apt upgrade -y
sudo apt install -y software-properties-common wget
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee /etc/apt/sources.list.d/grafana.list
sudo apt update
sudo apt install grafana -y
kubectl get service
vi service.yaml
apply -f service.yaml
kubectl apply -f service.yaml
kubectl get service
docker ps
free -h
ls
docker ps
docker ps - l
docker ps
mkdir -p src/main/java/com/example
nano src/main/java/com/example/App.java
nano pom.xml
mvn clean package
ls target/
sudo apt update
sudo apt install -y maven
mvn -version
java -version
sudo apt install -y openjdk-17-jdk
java -version
mvn -version
cd ~/devops-project
ls
sudo apt update
sudo apt install -y nodejs npm
node -v
npm -v
cd
cd ~/devops-project
npm install
node app.js
curl http://localhost:3000
cd
curl http://localhost:3000
cat Dockerfile
cd ~/devops-project
npm install
npm start
node app.js
curl http://localhost:3000
cd
cat Dockerfile
RUN apt-get update && apt-get install -y nginx
apt-get update && apt-get install -y nginx
sudo apt-get update
sudo apt-get install -y nginx
cat Dockerfile
nano Dockerfile
docker build -t devops-node-app:1.0 .
docker images
docker run -d   --name devops-node-app   -p 3000:3000   devops-node-app:1.0
cd ~/devops-project
ls
docker build -t devops-node-app:1.0 .
docker image
docker run -d   --name devops-node-app   -p 3000:3000   devops-node-app:1.0
ls
docker ps
docker ps -a
docker run -d   --name devops-node-app   -p 3000:3000   devops-node-app:1.0
docker logs devops-node-app
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
cd ~/devops-project
nano Dockerfile
cat Dockerfile
docker build -t devops-node-app:1.0 .
docker ps
cat Dockerfile
docker build -t devops-node-app:1.0 .
docker logs devops-node-app
cd
docker logs devops-node-app
cd ~/devops-project
nano Jenkinsfile
cd
docker build
docker run
cd ~/devops-project
docker build
docker run
docker build -t devops-node-app:1.0 .
docker images
docker ps
docker rm -f devops-node-app
docker run -d   --name devops-node-app   -p 3000:3000   devops-node-app:1.0
docker ps
docker logs devops-node-app
curl http://localhost:3000
docker exec jenkins docker --version
docker inspect jenkins --format '{{.Config.Image}}'
docker build -t jenkins-docker .
docker exec jenkins docker ps
docker exec jenkins docker --version
docker inspect jenkins --format '{{.Config.Image}}'
cd ~/jenkins-docker
cd
cd ~/jenkins-docker
mkdir -p ~/jenkins-docker
cd ~/jenkins-docker
pwd
nano Dockerfile
cat Dockerfile
docker build -t jenkins-docker .
ls
docker ps
mvn -version
sudo -u jenkins mvn -version
sudo apt update
sudo apt install -y maven
sudo -u jenkins mvn -version
/var/jenkins_home/workspace/second job
docker exec -it jenkins bash
mvn -version
mkdir -p ~/jenkins
cd ~/jenkins
nano Dockerfile
docker build -t my-jenkins:lts .
docker images
docker inspect jenkins
docker inspect jenkins --format '{{json .Mounts}}'
stage('Build') {
}
cd
docker ps
free -h
ls
docker ps
trivy --version
sudo apt install wget apt-transport-https gnupg lsb-release -y
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee /etc/apt/sources.list.d/trivy.list
sudo apt update
sudo apt install trivy -y
trivy --version
java ==version
java --version
which java
mvn --version
./sonarsh start
./sonarsh. start
sonar --version
ls
sonarqube
sudo sonarqube
sonarqube --version
sudo sonarqube start
docker ps
docker exec -it 5a878b2a3412 
docker exec -it 5a878b2a3412 sonar.sh version
docker inspect 15614c8bf161 | grep -i version
uname
id
gid
Gid
docker images |grep sonarqube
docker images | grep sonarqube
cd /opt
cd sonarqube
mvn --version
docker --version
sudo usermod -aG docker jenkins
sudo useradd jenkins
cd 
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
ls
kubectl apply
kubectl get pods
kubectl get svc
docker ps 
docker ps |grep jenkins
docker restart 6c2844e3428d  
kubectl describe pod test
kubectl logs test
kubectl logs test --previous
kubectl get pods
kubectl get pod test -o yaml
kubectl get pods
kubectl delete pod test
kubectl run test   --image=curlimages/curl   --command -- sh -c 'while true; do curl http://nginx; sleep 10; done'
kubectl get pods
kubectl logs -f test
ls
docker pa
docker ps
ls
