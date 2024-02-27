# Use the official Python 3.10 image as base
FROM python:3.10.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY Streamlit_App/requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files into the container
COPY . .

# Expose port 8080 for Streamlit
EXPOSE 8080

# Command to run Streamlit app
CMD ["streamlit", "run", "Streamlit_App/app.py", "--server.address=0.0.0.0", "--server.port=8080"]
