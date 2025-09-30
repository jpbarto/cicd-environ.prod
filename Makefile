.phony: init plan apply destroy
init:
	tofu -chdir=./terraform init
plan:
	tofu -chdir=./terraform plan
apply:
	tofu -chdir=./terraform apply -auto-approve
destroy:
	tofu -chdir=./terraform destroy -auto-approve

cicd_build:
	./cicd/build.sh

cicd_deploy:
	./cicd/deploy.sh