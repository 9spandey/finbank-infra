variable "location" {
  description = "Azure Region"
  type        = string
}

variable "resource_groups" {

  type = map(object({

    workload = string

  }))
}