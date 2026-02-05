def handler(event, context):
    print("New Docker Image Pushed:", event)
    return "Lambda executed successfully"