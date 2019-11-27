locals {
  config_map_aws_auth = <<CONFIGMAPAWSAUTH
apiVersion: v1
kind: ConfigMap
metadata:
  name: aws-auth
  namespace: kube-system
data:
  mapRoles: |
    - rolearn: ${aws_iam_role.worker.arn}
      username: system:node:{{EC2PrivateDNSName}}
      groups:
        - system:bootstrappers
        - system:nodes
    - rolearn: ${aws_iam_role.eks_access_role.arn}
      username: ${aws_iam_role.eks_access_role.name}
      groups:
        - system:masters
CONFIGMAPAWSAUTH
}

output "service_instance_type" {
  value = var.service_node_instante_type
}

output "config_map_aws_auth" {
  value = local.config_map_aws_auth
}

output "cluster_name" {
  value = module.eks_cluster.eks_cluster_name
}

output "cluster_auth_role_arn" {
  value = aws_iam_role.eks_access_role.arn
}
