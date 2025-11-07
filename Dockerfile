FROM node:18-alpine

RUN apk add --update --no-cache python3 py3-pip make g++ && \
    npm install -g n8n

ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

EXPOSE 5678

CMD ["n8n"]
