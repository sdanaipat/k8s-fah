# Folding @ Home Docker Image
webpage: https://foldingathome.org/

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
