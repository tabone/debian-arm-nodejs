# Use Debian image for ARMv7.
FROM armv7/armhf-debian

# Re-sync the package index files
RUN apt-get update && apt-get install -y \
  curl

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash
RUN apt-get install nodejs
