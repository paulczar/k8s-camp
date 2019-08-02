---
title: Learning Kubernetes - Be Back Quick
---

Learn Kubernetes during your Coffee Break.

## Why?

[Docker Swarm](https://dockerswarm.rocks/) isn't the only thing that Rocks.

[Kubernetes](https://kubernetes.io/) is [currently] the leading Container Orchestrator.

[Kubernetes](https://kubernetes.io/) started at Google, and if there's one thing we all know, its that if Google does it, everyone should do it ... right?

[Kubernetes](https://kubernetes.io/) is practices like devops and SRE distilled down to a Infrastructure Platform.

## Why Not ?

[Kubernetes](https://kubernetes.io/) is not for everyone. There are many reasons another tool or platform is more suitable for you. That's Ok. Here's some alternative platforms that do similar things:

* Mesos - DC/OS
* Docker Swarm
* A computer

## Getting Started

While [Kubernetes](https://kubernetes.io/) is a complex distributed system designed to run clusters up to thousands of nodes, its also not entirely crazy to run just a small one or two node Kubernetes cluster.

In fact You can run a simple single node Kubernetes cluster in a VM using [Minikube](https://github.com/kubernetes/minikube.git) or [Kubernetes in Docker (KIND)](https://github.com/kubernetes-sigs/kind). If you're feeling saucy you can even use [Docker for Windows with Kubernetes](https://blog.docker.com/2018/01/docker-windows-desktop-now-kubernetes/).

### Getting started on Mac OSX

I dunno ... brew install kubernetes or something amirite ?

### Getting started on Linux

> Note: you need [docker](https://get.docker.io) installed to use kind.

You can install and run KIND with a few simple commands:

```console
wget -O /tmp/kind https://github.com/kubernetes-sigs/kind/releases/download/v0.4.0/kind-linux-amd64
chmod +x /tmp/kind
sudo mv /tmp/kind /usr/local/bin/kind
```

Creating a cluster once KIND is installed is even easier:

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

Follow the instructions it provides to gain access to your cluster:

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
