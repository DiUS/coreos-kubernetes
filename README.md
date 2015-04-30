# coreos-kubernetes
Running a Kubernetes cluster on CoreOS on AWS.

## Using
1. First setup VPC and security groups using `cluster-vpc.template`.
2. Setup Kubernetes cluster using `kubernetes-cluster.template`.

### References

#### Architecting on AWS VPC
One cluster per AZ, load balance the Kubernetes master. As explained [here](https://github.com/GoogleCloudPlatform/kubernetes/issues/3604).
