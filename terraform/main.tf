module "platform" {
  source = "git::https://github.com/jpbarto/cicd-environ.platform.git//terraform?ref=v1.0.2"

  region       = local.region
  project_name = local.project_name
  environment  = local.environment
}

# module "notes-service" {
#   source = "git::https://github.com/jpbarto/cicd-environ.notes-service.git/terraform?ref=v1.0.0"

#   project_name        = local.project_name
#   environment         = local.environment
#   region              = local.region
#   vpc_id              = module.platform.vpc_id
#   db_subnet_group_name = module.platform.db_subnet_group_name
#   db_subnets          = module.platform.db_subnets
#   app_cidrs           = module.platform.app_cidrs
# }

output "cluster_name" {
  value = module.platform.cluster_name
}