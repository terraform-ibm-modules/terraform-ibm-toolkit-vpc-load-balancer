locals {
  name        = "${var.vpc_name}-lb-${var.label}"
}

resource ibm_is_lb lb {
  count           = var.provision ? 1 : 0

  name            = local.name
  subnets         = var.subnet_ids
  type            = var.type != null ? var.type : "public"
  security_groups = (var.security_groups != null ? var.security_groups : [])
  profile         = (var.profile != null ? var.profile : null)
  resource_group  = var.resource_group_id
  tags            = (var.tags != null ? var.tags : [])
}

data ibm_is_lb lb {
  depends_on = [ibm_is_lb.lb]

  name = local.name
}
