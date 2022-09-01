module "lb" {
  source = "./module"

  resource_group_id   = module.resource_group.id
  
  vpc_name            = module.subnets.vpc_name
  subnet_ids          = module.subnets.ids
  label               = "test"
  type                = "public"
}
