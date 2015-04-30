# coreos-kubernetes

Spike running a Kubernetes cluster on CoreOS on AWS.

## Using

1. First setup VPC and security groups using `cluster-vpc.template`.
2. Setup Kubernetes cluster using `kubernetes-cluster.template`.

## Versions

* CoreOS version: 660
* Kubernetes version: 0.15.0

## Demo

Will show a complete pipeline from developer's laptop, git push, BuildKite, ending up in a rolling update in Kubernetes.

## References

### Paper on Borg

Kubernetes incorporated many lessons from running Borg in production at Google scale for over a decade - paper.

### Managing CoreOS fleet

CoreOS released a 

### Pretty UI for Kubernetes

There is [Kismatic](http://kismatic.io/) and [Tectonic](https://tectonic.com/).

### Visualise your logs.

There is ElasticSearch and Kibana.

### Architecting on AWS VPC

One cluster per AZ, load balance the Kubernetes master. As explained [here](https://github.com/GoogleCloudPlatform/kubernetes/issues/3604).
