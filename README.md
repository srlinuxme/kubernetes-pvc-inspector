# Kubernetes PVC-Inspector
For maintenance and copy files on pvc partition on kubernetes.
Based on ubuntu 22.04 (jammy), this image mounts pvc on /pvc path.

# Pre-installed packages:
- vim
- rclone
- rsync
- curl
- net-tools
- ssh-client

# Use this image:
```
docker push srlinuxme/pvc-inspector:latest
```

Or with a version tag set:
```
docker push srlinuxme/pvc-inspector:jammy
```