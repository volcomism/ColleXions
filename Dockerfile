# Use an official Python runtime
FROM python:3.11-slim

# Avoid Python buffering (so logs show up in real time)
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Install runtime dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Ensure log directory exists
RUN mkdir -p logs

# By default, run the ColleXions script
CMD ["python3", "ColleXions.py"]

