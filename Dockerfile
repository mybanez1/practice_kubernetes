# Use an official lightweight Linux distribution as base
FROM alpine:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the local files (call_name.sh and database_file.txt) to the container
COPY call_name.sh database_file.txt ./

# Make sure the script is executable
RUN chmod +x call_name.sh

# Install bash (Alpine uses ash by default, but we need bash for your script)
RUN apk add --no-cache bash

# Define the command to run when the container starts
CMD ["./call_name.sh"]
