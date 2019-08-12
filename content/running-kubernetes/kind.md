---
title: Running Kubernetes - KIND
---

[Kubernetes IN Docker](https://kind.sigs.k8s.io/) (KIND) is part of the new wave of easy to use Kubernetes installers focused at people looking to learn, or use as a local development environment.

It's great for just running a few applications, but is lacking support for some of the networking etc to handle some of our use cases.

For now we recommend using [minikube](/getting-started) to install Kubernetes locally.

However if you do want to use KIND you can follow these instructions.

## Prerequisites

1. [docker](https://docs.docker.com/install/)
2. [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

## Getting started on Mac OSX

```console
curl -Lo ./kind-darwin-amd64 https://github.com/kubernetes-sigs/kind/releases/download/v0.4.0/kind-darwin-amd64
chmod +x ./kind-darwin-amd64
mv ./kind-darwin-amd64 /some-dir-in-your-PATH/kind
```

## Getting started on Linux

```console
wget -O /tmp/kind https://github.com/kubernetes-sigs/kind/releases/download/v0.4.0/kind-linux-amd64
chmod +x /tmp/kind
sudo mv /tmp/kind /usr/local/bin/kind
```

## Creating a cluster once KIND is installed is even easier

> Note: this may take a few minutes the first time you run it as it needs to download a bunch of docker images.

```console
$ kind create cluster
Creating cluster "kind" ...
 ✓ Ensuring node image (kindest/node:v1.15.0) 🖼
 ✓ Preparing nodes 📦
 ✓ Creating kubeadm config 📜
 ✓ Starting control-plane 🕹️
 ✓ Installing CNI 🔌
 ✓ Installing StorageClass 💾
Cluster creation complete. You can now use the cluster with:

export KUBECONFIG="$(kind get kubeconfig-path --name="kind")"
kubectl cluster-info
```

### Follow the instructions it provides to gain access to your cluster

> Note: you need [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) installed to continue.

```console
$ export KUBECONFIG="$(kind get kubeconfig-path --name="kind")"
$ kubectl cluster-info
Kubernetes master is running at https://127.0.0.1:44075
KubeDNS is running at https://127.0.0.1:44075/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.

$ docker ps
CONTAINER ID        IMAGE                  COMMAND                  CREATED             STATUS              PORTS                                  NAMES
a25107ff8863        kindest/node:v1.15.0   "/usr/local/bin/entr…"   33 seconds ago      Up 28 seconds       44075/tcp, 127.0.0.1:44075->6443/tcp   kind-control-plane
```

Congratulations, you're now running a simple single node Kubernetes cluster on your laptop. Check out the other guides to see what to do next.

Next learn how to [run your first application](/getting-started/1).