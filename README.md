# terraform-module-ansible

This [Terraform](https://www.terraform.io) module runs your [Ansible](https://www.ansible.com) playbook on your remote machines.
If you provide the *galaxy_role_file* variable it also runs the Ansible Galaxy command to download and install your dependency roles.


This Terraform module needs Ansible installed on your local machine, the machine where you are running the *terraform apply* command.

Ansible does not need to be installed in the remote machines, 
it simply connects to them via SSH for Linux and Unix hosts and Windows Remote Management (WinRM) for Windows hosts.
