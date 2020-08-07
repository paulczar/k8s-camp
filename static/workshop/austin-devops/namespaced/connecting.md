class: in-person

## Connecting to our lab environment

Log into @@EDUK8S@@ with your provided credentials.

This should bring up a workshop dashboard with a terminal, a link to these slides, and an editor.

If anything goes wrong, ask for help.

.exercise[

1. Test your connectivity to the Kubernetes Cluster

```bash
$ kubectl cluster-info
```

]

---

## Role Based Access Control

As mentioned earlier, you are restricted to a subset of Kubernetes resources in your own namespace. Just like in a real world enterprise cluster.

You can ask Kubernetes if you have permission to perform a certain action.


.exercise[

1\. Can you create pods?

```
$ kubectl auth can-i create pods
```

2\. Can you delete namespaces?

```
$ kubectl auth can-i delete namespaces
```
]
--

1. You can create pods in your own namespace.
2. You cannot delete namespaces.
---

## Doing or re-doing the workshop on your own?

- Use something like
  [Play-With-Docker](http://play-with-docker.com/) or
  [Play-With-Kubernetes](https://training.play-with-kubernetes.com/)

  Zero setup effort; but environment are short-lived and
  might have limited resources

- Create your own cluster (local or cloud VMs)

  Small setup effort; small cost; flexible environments

- Create a bunch of clusters for you and your friends
    ([instructions](https://@@GITREPO@@/tree/master/prepare-vms))

  Bigger setup effort; ideal for group training

---

class: self-paced

## Get your own Docker nodes

- If you already have some Docker nodes: great!

- If not: let's get some thanks to Play-With-Docker

.exercise[

- Go to http://www.play-with-docker.com/

- Log in

- Create your first node

<!-- ```open http://www.play-with-docker.com/``` -->

]

You will need a Docker ID to use Play-With-Docker.

(Creating a Docker ID is free.)
