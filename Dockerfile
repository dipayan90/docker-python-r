FROM python:3.8-slim
RUN apt-get update && apt-get install -y --no-install-recommends r-base r-base-dev