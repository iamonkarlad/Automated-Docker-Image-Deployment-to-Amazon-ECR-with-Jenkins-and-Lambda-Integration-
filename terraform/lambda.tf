resource "aws_lambda_function" "ecr_lambda" {

    function_name = "ecrImageHandler"
    role          = aws_iam_role.lambda_role.arn

    package_type = "Image"
    image_uri    = "343218213278.dkr.ecr.us-east-1.amazonaws.com/my-ecr-repo:latest"
    
    timeout = 30
}
