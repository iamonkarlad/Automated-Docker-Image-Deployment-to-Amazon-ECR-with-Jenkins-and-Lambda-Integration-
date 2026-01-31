import json
import boto3

sns = boto3.client('sns')

def lambda_handler(event, context):
    message = f"New Docker image pushed to ECR\nDetails:\n{json.dumps(event)}"

    sns.publish(
        TopicArn="SNS_TOPIC_ARN",
        Message=message,
        Subject="ECR Image Uploaded"
    )

    return {"status": "notification sent"}
