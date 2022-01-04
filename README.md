'# Terraform Module for running Ansible Playbooks

This [Terraform](https://www.terraform.io) module runs your [Ansible](https://www.ansible.com) playbook on your remote machine.
If you provide the *galaxy_role_file* variable it also runs the Ansible Galaxy command to download and install your dependency roles.


This Terraform module needs Ansible installed on your local machine, the machine where you are running the *terraform apply* command.

Ansible does not need to be installed in the remote machines, 
it simply connects to them via SSH for Linux and Unix hosts and Windows Remote Management (WinRM) for Windows hosts.


# Usage:
```bash
module "ansible-playbook" {
  source  = "github.com/velosomarcus/terraform-module-ansible//ansible_playbook?ref=master"
  # insert the required variables here
  playbook = "./ansible/playbook.yml"  # Your playbook file (full path)
  galaxy_role_file  = "./ansible/requirements.txt"  # Optional - Your ansible galaxy requirements file (full path)
  galaxy_roles_path = "./ansible/roles"  # Optional - The path to the directory where Ansible Galaxy roles must be installed (full path)
  private_key = "./ssh_keys/id_rsa"  # Your ssh private key to access the remote machines (full path)
  remote_host = "aws_instance.<your-server-name>.public_ip"  # The ip address of the remote machine
  remote_user	= "ubuntu"  # The user name to access the remote machine
  extra_vars = "'var_1=some_value' var_2=8080'"  # Optional - Pass additional variables to the playbook
  vault_pass_file = "./ansible/pass.txt"  # "Optional - The path of a file containing the password used by Ansible Vault (full path)
  trigger = aws_instance.<your-server-name>.id
}
```
