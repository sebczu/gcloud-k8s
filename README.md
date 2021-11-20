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
-e "CREDENTIAL={BASE_64_CREDENTIAL}" \
sebczu/personal:gcloud-k8s-0.0.1
```

#### 3. Docker run container with command
```bash
docker run \
-e "CREDENTIAL={BASE_64_CREDENTIAL}" \
sebczu/personal:gcloud-k8s-0.0.1 \
???
```

#### 4. Docker run container (interactive mode)
```bash
docker run -it \
--entrypoint /bin/bash \
-e "CREDENTIAL={BASE_64_CREDENTIAL}" \
sebczu/personal:gcloud-k8s-0.0.1 
```
setup gcloud in container
```bash
./setup.sh
```