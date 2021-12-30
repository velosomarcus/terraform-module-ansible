variable remote_host {
  description = "Remote host IP or FQDN, for example, instance private IP."
  type        = string
}

variable trigger {
  description = "Information to trigger execution, for example, EC2 instance ID or some timestamp."
  type        = string
}

variable private_key {
  description = "Path to SSH private key file."
  type        = string
}

variable remote_user {
  description = "The remote user name."
  type        = string
}

variable playbook {
  description = "Path to playbook file (required)."
  type        = string
}

variable galaxy_role_file {
  description = "Path to the Ansible Galaxy requirements.yml file (required)."
  type        = string
  default     = ""
}

variable galaxy_roles_path {
  description = "Path to the directory where Ansible Galaxy roles must be installed."
  type        = string
  default     = "roles"
}

variable ansible_ssh_retries {
  description = "Ansible variable to retry SSH connection. This is important to wait SSH connections in new instances."
  type        = number
  default     = 20
}

variable ansible_host_key_checking {
  description = "Ansible variable to host key checking"
  type        = bool
  default     = false
}