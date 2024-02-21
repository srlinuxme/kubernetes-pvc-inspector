# Kubernetes PVC-Inspector
For maintenance and copy files on pvc partition on kubernetes.
Based on ubuntu 22.04 (jammy), this image mounts pvc on /pvc path.

# Pre-installed packages:
- vim
- rclone
- rsync
- curl
- dnsutils
- net-tools
- ssh-client
- iputils-ping
- zip

# Use this image:
```
docker push srlinuxme/pvc-inspector:latest
```

Or with a version tag set:
```
docker push srlinuxme/pvc-inspector:jammy
```

# Build
```
docker buildx build --platform linux/amd64 -f ./Dockerfile -t srlinuxme/pvc-inspector:jammy .

docker tag srlinuxme/pvc-inspector:jammy srlinuxme/pvc-inspector:latest

docker push srlinuxme/pvc-inspector:jammy && docker push srlinuxme/pvc-inspector:latest 
```


