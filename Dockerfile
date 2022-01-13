FROM python:3.9.6-slim-buster
WORKDIR /app
RUN apt -qq update --fix-missing && \
    apt -qq install -y git \
    aria2 \
    python3-pip 
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["bash","start.sh"]
