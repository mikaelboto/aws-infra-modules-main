resource "aws_cloudwatch_log_group" "eks_cluster" {
  # The log group name format is /aws/eks/<cluster-name>/cluster
  # Reference: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
  name              = "/aws/eks/${var.name}-${var.environment}/cluster"
  retention_in_days = var.log_retention
}