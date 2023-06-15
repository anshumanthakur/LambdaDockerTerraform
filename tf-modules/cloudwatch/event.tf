## AT&T Ctdi Event
resource "aws_cloudwatch_event_rule" "scheduling-event" {
  name                = "lambda-event-rule"
  description         = "Triggering lambda"
  schedule_expression = var.SCHEDULE_EXPRESSION
  role_arn            = null
  is_enabled          = true
  tags = {
      purpose = "To trigger lambda"
      owner   = "anshuman.thakur@pb.com"
  }
}


resource "aws_cloudwatch_log_group" "log-group" {
  name = "lambda-docker-log-group"
  retention_in_days = 0
}