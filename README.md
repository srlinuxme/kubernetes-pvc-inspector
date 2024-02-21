# Kubernetes PVC-Inspector 
## Introduction
Is a simple tool to inspect the files on the PVCs in a Kubernetes cluster. It is useful to copy the PVCs data in a cluster to a local machine for further analysis.

## Usage
- In `metadata` set the `namespace` for your namespaced pvc.
```yaml
metadata:
  name: pvc-inspector
  namespace: NOME_DO_NAMESPACE
```
- In `volumes` set the `claimName` name that you want to inspect.
```yaml
  volumes:
  - name: pvc-mount
    persistentVolumeClaim:
      claimName: YOUR_CLAIM_NAME_HERE

```
- In your terminal, run the following command to apply the deployment.
```bash
kubectl apply -n <namespace> -f pvc-inspector-deployment.yaml
```

- After the deployment is created, your mount point will be available in the pod `/pvc`. You can access it by running the following command.
```bash
kubectl exec -it -n <namespace> pvc-inspector -- /bin/bash
```
