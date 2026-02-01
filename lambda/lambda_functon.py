import json
import boto3

sns = boto3.client('sns')

def lambda_handler(event, context):
    message = f"New Docker image pushed to ECR\nDetails:\n{json.dumps(event)}"

    sns.publish(
        TopicArn="arn:aws:sns:us-east-1:343218213278:ecr-image-push-topic",
        Message=message,
        Subject="ECR Image Uploaded"
    )

    return {"status": "notification sent"}
