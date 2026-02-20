module "vpc_dev" {
  source   = "./vpc"
  env_name = var.vpc_name
  zone     = var.default_zone
  cidr     = var.default_cidr[0]
}

module "marketing_vm" {
  source = "./vms"

  vm_name    = "marketing-app"
  subnet_id  = module.vpc_dev.subnet_id
  public_key = var.vms_ssh_root_key
  
  labels = {
    project     = "marketing"
    environment = "prod"
    role        = "web"
    managed_by  = "terraform"
  }
}

module "analytics_vm" {
  source = "./vms"

  vm_name    = "analytics-app"
  subnet_id  = module.vpc_dev.subnet_id
  public_key = var.vms_ssh_root_key
  
  labels = {
    project     = "analytics"
    environment = "prod"
    role        = "db"
    managed_by  = "terraform"
  }
}