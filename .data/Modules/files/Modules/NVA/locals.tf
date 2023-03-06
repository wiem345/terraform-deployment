locals {
  nic_names = [for sub in var.subnetnames : split("-",sub)]
}