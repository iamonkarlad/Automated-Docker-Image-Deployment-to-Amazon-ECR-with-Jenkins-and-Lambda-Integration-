resource "aws_lambda_function" "post_deploy" {
  function_name = "ecr-post-deploy-lambda"
  role          = aws_iam_role.lambda_role.arn
  handler       = "index.handler"
  runtime       = "python3.10"

  filename         = "lambda.zip"
  source_code_hash = filebase64sha256("lambda.zip")
}
