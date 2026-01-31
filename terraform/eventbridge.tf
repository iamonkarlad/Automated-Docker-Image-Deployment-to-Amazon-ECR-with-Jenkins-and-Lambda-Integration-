resource "aws_cloudwatch_event_rule" "ecr_push_rule" {
    name        = "ecr-push-rule"
    description = "Triggers on ECR image push events"
    event_pattern = jasonencode({
        "source": ["aws.ecr"],
        "detail-type": ["ECR Image Action"],
        "detail": {
            "action-type": ["PUSH"]
        }
    })
}
resource "aws_cloudwatch_event_target" "ecr_push_target" {
    rule      = aws_cloudwatch_event_rule.ecr_push_rule.name
    arn       = aws_lambda_function.my_lambda.arn
}