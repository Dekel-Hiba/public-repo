locals{
  name = "SandBox"
}
# output "greeting" {
#   value = "Hello, World!"
# }

#########################################################################################################
# ECS Cluster
#########################################################################################################
module "ecs_cluster" {
  source  = "terraform-aws-modules/ecs/aws"
  version = "5.12.1"

  ## Cluster
  cluster_name     = "${local.name}-ECSCluster" # local.name
  # cluster_settings = # var.cluster_settings
  cluster_configuration = {
    execute_command_configuration = {
      logging = "OVERRIDE"
      log_configuration = {
        cloud_watch_log_group_name = "/aws/ecs/${local.name}"
      }
    }
  }

  ## Cluster Cloudwatch log group
  cloudwatch_log_group_retention_in_days = 365

  ## Task execution IAM role
  create_task_exec_iam_role          = true
  task_exec_iam_role_name            = "${local.name}-ecs-cluster-role"
  task_exec_iam_role_use_name_prefix = false
  task_exec_iam_role_description     = "IAM Role for ${local.name} ECS Cluster"
  task_exec_iam_role_tags            = {}
  task_exec_iam_role_policies = {
    EC2ContainerService    = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceRole"
    AmazonECSTaskExecution = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
    AmazonS3               = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  }

  ## Task execution IAM role policy
  create_task_exec_policy = true

  # Cluster capacity providers
  default_capacity_provider_use_fargate = false

  fargate_capacity_providers = {
    FARGATE = {
      default_capacity_provider_strategy = {
        weight = 50
        base   = 20
      }
    }
  }
}
