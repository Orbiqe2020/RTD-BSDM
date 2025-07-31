FROM python:3.11-slim

WORKDIR /app

COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask will run on
EXPOSE 8080

# Command to run the Flask app
CMD ["python", "app.py"]