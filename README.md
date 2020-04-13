# sample-usdt-ticker
A sample project that ticks a USDT probe

## local usage 

In one console run 
```
$ gcc main.c -o ticker
# cp ticker /root
# /root/ticker
```

Then in another console

```
sudo /usr/share/bcc/tools/trace 'u:/root/ticker:test-probe "%u", arg1' -T -p $(pidof ticker)
```

## kubectl usage

[Install kubectl trace](https://github.com/iovisor/kubectl-trace#pre-built-binaries)

## docker build
```
$ docker build -t YOURIMAGE:TAG .
$ docker push YOURIMAGE:TAG
$ kubectl run ticker --image YOURIMAGE:TAG
```

## run trace 

```
$ kubectl trace run -f hello.bt pod/ticker --imagename quay.io/iovisor/kubectl-trace-bpftrace:HEAD --init-imagename quay.io/iovisor/kubectl-trace-init:HEAD --fetch-headers
```