FROM python:3.9-alpine
WORKDIR /apps/tribbles/
COPY src/tribbles/. .
COPY requirements/development.txt .
RUN ["pip", "install",  "--no-cache-dir", "-r", "development.txt"]
CMD ["python", "tribbles.py"]
