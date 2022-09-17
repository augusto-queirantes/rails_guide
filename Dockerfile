FROM ruby:3.1.2-alpine3.16

# Install dependencies:
# - build-base: To ensure certain gems can be compiled
# - tzdata: Handle timezones
# - libxslt-dev libxml2-dev: Nokogiri native dependencies
# - postgresql-dev postgresql-client: Postgres related
RUN apk --update add postgresql-dev postgresql-client build-base tzdata libxslt-dev libxml2-dev

# Create application folder
RUN mkdir /app

# Set the folder as default
WORKDIR /app
