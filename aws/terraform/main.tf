locals {
  // e.g. 'ruaria gigs', incase anyone used uppercase
  gigs_stack_name_lower = lower(var.gigs_stack_name)
  // e.g. 'ruaria-gigs', incase anyone used spaces
  academy_sub_domain = replace(local.gigs_stack_name_lower, " ", "-")
  tags = {
    Name    = trimspace(var.gigs_stack_name)
    Academy = trimspace(var.academy_root_domain)
  }
  flyers_folder_name = "../gig-flyers"
  client_folder_name = "../client/build"

}

module "flyers_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "${local.academy_sub_domain}-flyers-hosting"
  tags        = local.tags
}

module "client_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "${local.academy_sub_domain}-client-hosting"
  tags        = local.tags
}
module "flayer_bucket_deployment" {
  source             = "./modules/s3_bucket_deployment"
  source_directory   = local.flyers_folder_name
  destination_bucket = module.flyers_bucket.name
}

module "client_bucket_deployment" {
  source             = "./modules/s3_bucket_deployment"
  source_directory   = local.client_folder_name
  destination_bucket = module.client_bucket.name
}
