resource "null_resource" "ansible-playbook" {
  triggers = {
    trigger = var.trigger
  }

  provisioner "local-exec" {
    command = var.galaxy_role_file != "" ? "ANSIBLE_FORCE_COLOR=true ansible-galaxy install --role-file ${var.galaxy_role_file} --roles-path ${var.galaxy_roles_path} --force --verbose" : ""
  }

  provisioner "local-exec" {
    command = <<EOT
      export ANSIBLE_SSH_RETRIES=${var.ansible_ssh_retries}
      export ANSIBLE_HOST_KEY_CHECKING=${var.ansible_host_key_checking}
      export ANSIBLE_FORCE_COLOR=true
      ansible-playbook -i '${var.remote_host},' --private-key ${var.private_key} -u ${var.remote_user} -b ${var.playbook} -e ${var.extra_vars}
    EOT
  }
}