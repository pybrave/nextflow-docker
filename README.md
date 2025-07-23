
```
unzip nf-hello-0.7.0.zip -d nf-hello-0.7.0
```

## debug
```
docker run --rm -it -v $PWD:$PWD  -w $PWD  -v /var/run/docker.sock:/var/run/docker.sock  nextflow/nextflow:25.06.0  bash
```
```
export BRAVE_WORKFLOW_ID=111
nextflow  run main.nf  -plugins nf-hello@0.7.0
```
## usage
```
docker run --rm -it -v $PWD:$PWD -e NXF_USRMAP=$(id -u)    -w $PWD  -v /var/run/docker.sock:/var/run/docker.sock  nextflow/nextflow:25.06.0  nextflow  run main.nf  -plugins nf-hello@0.7.0
```

```
docker tag nextflow/nextflow:25.06.0  registry.cn-hangzhou.aliyuncs.com/wybioinfo/nextflow:25.06.0
docker push registry.cn-hangzhou.aliyuncs.com/wybioinfo/nextflow:25.06.0
```

+ <https://github.com/nextflow-io/nextflow/blob/master/docker/Dockerfile>