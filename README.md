### **GCLOUD+KUBECTL**

#### 1. Build image
```bash
docker build -t sebczu/personal:gcloud-k8s-0.0.1 service
```

#### 2. Docker-compose run container
```bash
docker-compose -f docker/docker-compose.yml up
```

#### 3. Docker run container
```bash
docker run \
-e "CREDENTIAL_GCLOUD={BASE_64_CREDENTIAL}" \
-e "CREDENTIAL_GITHUB={CREDENTIAL_GITHUB}" \
-e "PROJECT=personal-331119" \
-e "CLUSTER_NAME=template-gke-cluster" \
-e "ZONE=europe-central2-a" \
sebczu/personal:gcloud-k8s-0.0.1
```

#### 3. Docker run container with command
```bash
docker run \
-e "CREDENTIAL_GCLOUD={BASE_64_CREDENTIAL}" \
-e "CREDENTIAL_GITHUB={CREDENTIAL_GITHUB}" \
-e "PROJECT=personal-331119" \
-e "CLUSTER_NAME=template-gke-cluster" \
-e "ZONE=europe-central2-a" \
sebczu/personal:gcloud-k8s-0.0.1 \
"config view"
```

#### 4. Docker run container (interactive mode)
```bash
docker run -it \
--entrypoint /bin/bash \
-e "CREDENTIAL_GCLOUD={BASE_64_CREDENTIAL}" \
-e "CREDENTIAL_GITHUB={CREDENTIAL_GITHUB}" \
-e "PROJECT=personal-331119" \
-e "CLUSTER_NAME=template-gke-cluster" \
-e "ZONE=europe-central2-a" \
sebczu/personal:gcloud-k8s-0.0.1
```
setup gcloud in container
```bash
./setup.sh
```
example install chart
```bash
helm install template helm-charts/template
```
example install chart with additional parameter
```bash
helm install template helm-charts/template --set gcloud.sql.connection=personal-331119:europe-central2:template-sql-database-nkyf
```
update charts from repository
```bash
helm repo update
```
show generated kubernetes scripts
```bash
helm template helm-charts/template
```
