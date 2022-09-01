module "lb" {
  source = "./module"

  resource_group_name = module.resource_group.name
  vpc_name            = module.subnets.vpc_name
  subnet_ids          = module.subnets.ids
  label               = "test"
  type                = "public"
}
