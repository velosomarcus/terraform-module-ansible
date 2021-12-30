resource "null_resource" "ansible-playbook" {
  triggers = {
    trigger = var.trigger
  }

  provisioner "local-exec" {
    command = <<EOT
      export ANSIBLE_SSH_RETRIES=${var.ansible_ssh_retries}
      export ANSIBLE_HOST_KEY_CHECKING=${var.ansible_host_key_checking}
      export ANSIBLE_FORCE_COLOR=true
      ${var.ansible_playbook_path} -i '${var.remote_host},' --private-key ${var.private_key} -u ${var.remote_user} -b ${var.playbook}
    EOT
  }
}