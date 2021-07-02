module "lb" {
  source = "./module"

  resource_group_id   = module.resource_group.id
  region              = var.region
  ibmcloud_api_key    = var.ibmcloud_api_key
  vpc_name            = module.subnets.vpc_name
  subnet_ids          = module.subnets.ids
  label               = "test"
  type                = "public"
}
