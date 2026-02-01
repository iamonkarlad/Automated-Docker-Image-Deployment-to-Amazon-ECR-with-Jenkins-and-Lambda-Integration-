from flask import Flask
app = Flask(__name__)

def lambda_handler(event, context):
    return {
        "statusCode": 200,
        "body": "Lambda function executed successfully!"
    }

@app.route('/')
def home():
    return "CI/CD Pipeline with Terraform Working!"

app.run(host='0.0.0.0', port=5000)
