---
title: Running Kubernetes - Minikube
---

Minikube is the original "run Kubernetes on your desktop without screwing everything up" tool. Minikube runs Kubernetes in a VM on your machine for users looking to just test Kubernetes out, or Develop against it.

We [recommend using KIND (Kubernetes IN Docker)](/getting-started/), however if you can't run Docker on your local machine minikube is the next best option.

## macOS

### Install kubectl

Obviously you'll need kubectl installed to interact with Kubernetes. You can find instructions for macOS [here](https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-macos)

### Install a Hypervisor

Ensure you have one of [HyperKit](https://github.com/moby/hyperkit), [VirtualBox](https://www.virtualbox.org/wiki/Downloads), or [VMWare Fusion](https://www.vmware.com/products/fusion) installed.

### Install minikube

The easiest way to install Minikube on macOS is using Homebrew:

```console
brew cask install minikube
```

> Note: You can also yolo that install `curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64 \
  && chmod +x minikube`

## Linux

First of all you want to ensure that Virtualization is supported on your machine, it probably is, but its nice to be sure. Run the following command, as long as the output is not `0` you should be good to go:

```console
egrep 'vmx|svm' /proc/cpuinfo | wc -l
```

### Install kubectl

Obviously you'll need kubectl installed to interact with Kubernetes. You can find instructions for Linux [here](https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-linux)

### Install a Hypervisor

You probably have either [VirtualBox](https://www.virtualbox.org/wiki/Downloads) or [KVM](https://www.linux-kvm.org/) installed.

> Note: minikube also supports installing with Docker by using the `--vm-driver=none` flag, but if you're going to do that, you should just use KIND.

### Install minikube

Install the latest version of minikube from its [GitHub releases page](https://github.com/kubernetes/minikube/releases). You'll find `.deb` and `.rpm` packages as well as a raw `.tgz` file for each version.

> Note: alternatively you can just yolo that install with `curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube`

## Windows

### Install kubectl

Obviously you'll need kubectl installed to interact with Kubernetes. You can find instructions for Windows [here](https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-windows)

### Install a Hypervisor

You probably have either [VirtualBox](https://www.virtualbox.org/wiki/Downloads) or [Hyper-V](https://msdn.microsoft.com/en-us/virtualization/hyperv_on_windows/quick_start/walkthrough_install) installed.

> Note: minikube also supports installing with Docker by using the `--vm-driver=none` flag, but if you're going to do that, you should just use KIND.

### Install minikube

Download the minikube [Windows Installer](https://github.com/kubernetes/minikube/releases/latest/download/minikube-installer.exe) and run it.

## Run minikube

Running minikube is the same across the various operating systems once installed.

Start minikube:

```console
$ minikube start
Starting local Kubernetes cluster...
Running pre-create checks...
Creating machine...
Starting local Kubernetes cluster...
```

> Note: if minikube errors with `machine does not exist` it means you've probably run it before. Run `minikube delete` to cleanup and try again.

Ensure its running by checking its version:

```console
$ kubectl version
Client Version: version.Info{Major:"1", Minor:"14", GitVersion:"v1.14.0", GitCommit:"641856db18352033a0d96dbc99153fa3b27298e5", GitTreeState:"clean", BuildDate:"2019-03-25T15:53:57Z", GoVersion:"go1.12.1", Compiler:"gc", Platform:"linux/amd64"}
Server Version: version.Info{Major:"1", Minor:"13", GitVersion:"v1.13.5", GitCommit:"2166946f41b36dea2c4626f90a77706f426cdea2", GitTreeState:"clean", BuildDate:"2019-03-25T15:19:22Z", GoVersion:"go1.11.5", Compiler:"gc", Platform:"linux/amd64"}
```

[Next](/getting-started/1) follow the tutorial to get a running workload on minikube.
