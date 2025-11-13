output "gigs_stack_name" {
 description = "The stack name"
 value = var.gigs_stack_name
}
output "academy_sub_domain" {
 description = "The sub domain derived from gigs_stack_name"
 value = local.academy_sub_domain
}

output "flyers_bucket_name" {
    description = "Name of the Flyers Hosting s3 bucket"
    value = module.flyers_bucket.name
}

output "client_bucket_name" {
    description = "Name of the Client Hosting s3 bucket"
    value = module.client_bucket.name
}