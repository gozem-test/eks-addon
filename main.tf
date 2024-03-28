# EKS Add-On
data "aws_eks_addon" "addon" {
  for_each = { for addon in var.addons : addon.name => addon }

  addon_name   = each.value.addon.name
  cluster_name = var.cluster_name
}
