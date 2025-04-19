FROM python:3.8.15
WORKDIR /app22
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
ENTRYPOINT ["python","run.py"]
