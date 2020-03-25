# Folding @ Home Docker Image
- FAH project webpage: https://foldingathome.org/
- github: https://github.com/sdanaipat/k8s-fah
- dockerhub: https://hub.docker.com/repository/docker/sdanaipat/folding-at-home/general

### Configure
```bash
vim config.xml
```

### Build
```bash
docker build -t k8s-fah .
```

### Run
```bash
docker run -it \
           --rm \
           k8s-fah
```

### Deploy (k8s)
```bash
kubectl apply -f deploy/
```
