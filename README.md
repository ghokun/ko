# ko

A docker container containing golang and ko.

```
golang:1.17.6-bullseye
ko:0.9.3
```

## Using in a pipeline

```bash
ko login $REGISTRY_URL -u $REGISTRY_USER -p $REGISTRY_PASSWORD && KO_DOCKER_REPO=$REGISTRY_URL/image ko publish . --bare -t $TAG
```