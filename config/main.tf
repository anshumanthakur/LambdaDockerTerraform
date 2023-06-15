
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}



module "lambda" {
  source       = "../tf-modules/lambda"
  description  = "dockerized lambda deployed via terraform"
  event_rule_Arn  = module.cloudwatch.event_rule_Arn
}

module "cloudwatch" {
  source                                  = "../tf-modules/cloudwatch"
  Lambda_ARN                              = module.lambda.Lambda_Arn
  SCHEDULE_EXPRESSION                     = "cron(30 4 ? * * *)"
  PROJECT_NAME                            = local.projectName
}



