#@IgnoreInspection BashAddShebang

# Becareful IntelliJ converts tabs to spaces, while Makefile requires tabs.
# Convert indent -> to tab.

TEMPLATE_LOCATION := /home/victor/Development/github/coreos-kubernetes/kubernetes-cluster.template
PARAMETER_LOCATION := /home/victor/Development/github/coreos-kubernetes/cloudformation-parameters.json
CLUSTER_NAME := kubernetes-cluster

deploy-cluster:
	aws cloudformation create-stack \
	    --stack-name $(CLUSTER_NAME) \
	    --template-body file://$(TEMPLATE_LOCATION) \
	    --parameters file://$(PARAMETER_LOCATION)
.PHONY: deploy-cluster

destroy-cluster:
	aws cloudformation delete-stack \
		--stack-name $(CLUSTER_NAME)
.PHONY: destroy-cluster

setup-kubectl:
	ssh-keygen -f "/home/victor/.ssh/known_hosts" -R km.txtr.us
	ssh -o "StrictHostKeyChecking no" -i ~/Downloads/km.pem -f -nNT -L 8080:127.0.0.1:8080 core@km.txtr.us
.PHONY: setup-kubectl