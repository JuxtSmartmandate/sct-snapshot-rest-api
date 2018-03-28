FROM node:9

# Create a directory where our app will be placed
RUN mkdir -p /app

# Change directory so that our commands run inside this new directory
WORKDIR /app

# RUN git clone https://github.com/IHTSDO/sct-snapshot-rest-api.git
COPY . /app/sct-snapshot-rest-api

WORKDIR /app/sct-snapshot-rest-api

RUN npm install

# Expose the port the app runs in
EXPOSE 9999

# Serve the app
CMD ["node", "app.js"]