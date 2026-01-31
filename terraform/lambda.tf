resource "aws_lambda_function" "ecr_lambda" {
    filename      = "lambda.zip"
    function_name = "ecrImageHandler"
    role          = aws_iam_role.lambda_exec.arn
    handler       = "index.handler"
    runtime       = "python3.8"
}
