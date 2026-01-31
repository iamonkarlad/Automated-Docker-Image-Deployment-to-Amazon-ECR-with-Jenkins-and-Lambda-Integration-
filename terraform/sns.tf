resource "aws_sns_topic" "ecr_sns" {
  name = "ecr-image-push-topic"
}