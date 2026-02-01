FROM public.ecr.aws/lambda/python:3.9-slim
WORKDIR /app
COPY requirement.txt .
RUN pip install -r requirement.txt
COPY app.py .
EXPOSE 5000
CMD ["python", "app.lambda_handler"]
