module "resource_group" {

  for_each = var.resource_groups

  source = "../../modules/resource-group"

  resource_group_name = format(
    "rg-%s-%s-%s",
    local.project_name,
    local.environment,
    each.value.workload
  )

  location = var.location

}

module "storage_account" {

  source = "../../modules/storage-account"

  storage_account_name = local.storage_account_name

  resource_group_name = module.resource_group["app"].resource_group_name

  location = var.location

  tags = local.common_tags

}