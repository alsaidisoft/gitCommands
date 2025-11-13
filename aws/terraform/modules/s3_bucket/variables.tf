variable "bucket_name" {
    description = "My bucket name"
    type = string
  
}
variable "tags" {
    description = "Tges to apply to s3 bucket"
    type = map(string)
  
}
