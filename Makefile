kube-apply: ## Apply yaml on kubernetes
	@kubectl apply -f namespaces
	@kubectl apply -f workloads/demo-java
	@kubectl apply -f workloads/demo-angular

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
