variable "cluster_name"{
    description = "name of the aks cluster"
    type = string
}

variable "location"{
    description = "azure region for aks cluster"
    type = string
}

variable "rg_name"{
    description = "resource group name where the aks will be deployed"
    type = string
}

variable "dns_prefix"{
    description = "dns prefix for the aks api server"
    type = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for the cluster"
  type        = string
  default     = "1.30.0"
}

variable "node_count"{
    description = "number of worker nodes in the default node pool"
    type = number
    default = 1
}

variable "node_vm_size" {
  description = "VM size for worker nodes"
  type        = string
  default     = "Standard_B2s_v2"
}

variable "subnet_id" {
  description = "subnet ID where AKS nodes will be deployed"
  type        = string
}
