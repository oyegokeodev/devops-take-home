up: # docker-compose up
	docker-compose -f docker-compose.yml up -d --build

up_log: # docker-compose up
	docker-compose -f docker-compose.yml up --build

down: ## docker-compose down
	docker-compose -f docker-compose.yml down --volumes

tf_init: ## Initialize Terraform
	cd terraform && terraform init

tf_fmt: ## Format Terraform
	cd terraform && terraform fmt -recursive

tf_validate: ## Validate Terraform
	cd terraform && terraform validate

tf_plan: ## Terraform plan (cdk diff equivalent)
	cd terraform && terraform plan -detailed-exitcode

tf_apply: ## Terraform apply
	cd terraform && terraform apply

k8s_render: ## Render Kubernetes manifests with Kustomize
	kustomize build k8s/overlays/prod

.PHONY: up up_log down tf_init tf_fmt tf_validate tf_plan tf_apply k8s_render