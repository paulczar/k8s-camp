---
title: Getting Started
---

The best way to run Kubernetes is to get somebody else to do it for you. If you have a few dollars to spend we recommend using the hosted Kubernetes offering from your favorite cloud.

However for many of us that's not feasible, thankfully there are tools like [minikube](https://github.com/kubernetes/minikube) and [Kubernetes in Docker](https://kind.sigs.k8s.io/) (KIND) that will let you run a small Kubernetes cluster in VMs or containers on your laptop.

The basic tutorials (unless specified otherwise) are written with [minikube](https://github.com/kubernetes/minikube) as the default runtime to ensure maximum accessibility. Thus the following instructions are provided to help you get Kubernetes in Docker running.

You could also use [KID](https://kind.sigs.k8s.io/) if you prefer, but all the cool kids are using KIND these days.

> Follow [these](/running-kubernetes/minikube) instructions to install minikube. Alternatively [here](/running-kubernetes/kind) can be installed, but is not recommended for using with these tutorials.

Once you've got a working Kubernetes cluster, you can learn how to [run your first application](/getting-started/1).
