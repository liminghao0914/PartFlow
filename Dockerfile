FROM python:3.10
COPY . .
RUN pip install --trusted-host pypi.python.org -r requirements.txt
CMD ["python3", "run.py"]
