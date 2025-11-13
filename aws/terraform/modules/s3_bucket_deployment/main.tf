resource "null_resource" "bucket_deployment" {
  //triggers
  triggers = {
    file_hashes = jsonencode({
        for fn in fileset("${var.source_directory}","*"):
        fn => filesha256("${var.source_directory}/${fn}")
    })
  }
  //provisioner 1 (aws CLI)
  provisioner "local-exec" {
    command = <<-EOT
    aws s3 sync ${var.source_directory} \
    s3://${var.destination_bucket} \
    --delete
    EOT
  }
  //provisioner 2 (debug info)
  provisioner "local-exec" {
    command = <<-EOT
    echo "Running sync from ${var.source_directory} \
    to s3://${var.destination_bucket}"
    EOT
  }
}

