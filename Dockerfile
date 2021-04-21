# Pull official base image
FROM python:3.9-buster

# Set work directory
WORKDIR /usr/src/app

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Copy project
COPY . /usr/src/app/

# Install dependencies
RUN ./setup.sh

# Run farmer
CMD ["python3", "ms_rewards_farmer.py"]