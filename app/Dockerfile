FROM python:3.10-slim
WORKDIR /app
COPY requirement.txt .
RUN pip install -r requirement.txt
COPY app.py .
EXPOSE 5000
CMD ["python", "app.py"]
