resource "null_resource" "test-script" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command     = "./test.sh"
    interpreter = ["/bin/sh", "-c"]
  }
}