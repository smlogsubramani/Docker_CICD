FROM n8nio/n8n:latest
 
USER root
 
# Install system dependencies
RUN apk add --no-cache python3 py3-pip && \
    python3 -m venv /opt/venv && \
    /opt/venv/bin/pip install --upgrade pip
 
COPY ./PythonScripts /home/node/PythonScripts
RUN chown -R node:node /home/node/PythonScripts
 
USER node
 
 