resource "aws_lambda_function" "ecr_lambda" {

    function_name = "ecrImageHandler"
    role          = aws_iam_role.lambda_role.arn
    runtime       = "python3.9"

    package_type = "Image"
    image_uri    = "1667824d0387.dkr.ecr.us-east-1.amazonaws.com/my-ecr-repo:latest"
    
    timeout = 30
}
