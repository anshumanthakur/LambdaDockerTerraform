resource "aws_lambda_function" "docker_lambda" {
  function_name = "docker-lambda"
  description = "${var.description}"
  package_type  = "Image"
  role = "lambda-role"
  image_uri = "${ECR_image_uri}"
  timeout     = 600
  memory_size = 512
  publish = true
}

resource "aws_lambda_permission" "allow_cloudwatch_to_call" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.docker_lambda.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = var.event_rule_Arn
}