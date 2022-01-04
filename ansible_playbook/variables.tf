variable remote_host {
  description = "The ip or fqdn of the remote machine."
  type        = string
}

variable trigger {
  description = "Information to trigger execution, for example, EC2 instance ID or some timestamp."
  type        = string
}

variable private_key {
  description = "Your ssh private key to access the remote machines (full path)."
  type        = string
}

variable remote_user {
  description = "The user name to access the remote machine."
  type        = string
}

variable playbook {
  description = "Your playbook file (full path)."
  type        = string
}

variable galaxy_role_file {
  description = "Optional - Your ansible galaxy requirements file (full path)."
  type        = string
  default     = ""
}

variable galaxy_roles_path {
  description = "The path to the directory where Ansible Galaxy roles must be installed."
  type        = string
  default     = "roles"
}

variable ansible_ssh_retries {
  description = "Retry failed ssh executions. This can be helpful if there are transient network issues or when creating new aws instances."
  type        = number
  default     = 20
}

variable ansible_host_key_checking {
  description = "Optional - Ansible enables host key checking by default. Set this to false if you want to avoid host key checking by the underlying tools Ansible uses to connect to the host."
  type        = bool
  default     = false
}

variable extra_vars {
  description = "Pass additional variables to the playbook."
  type        = string
  default     = ""
}

variable vault_pass_file {
  description = "Optional - The path of a file containing the password used by Ansible Vault."
  type = string
  default = ""
}
