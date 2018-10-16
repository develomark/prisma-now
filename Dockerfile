# Pull prisma image from dockerhub
FROM prismagraphql/prisma:1.13-beta

# Tell docker there are arguments we need
ARG SQL_HOST
ARG SQL_PASSWORD
ARG PRISMA_MANAGEMENT_API_SECRET
ARG PRISMA_CONFIG_PATH

# Sets an server run-time environment variable to tell Prisma where to find the 
# server configuration. (Prisma.yml holds the Prisma config in the instance.
# This is a different prisma.yml to the one 'prisma deploy' uses)
ENV PRISMA_CONFIG_PATH prisma.yml

# Copy over config to server
COPY config.yml prisma.yml

# Copy build-time environment varibles into config
RUN sed -i s/SQL_HOST/$SQL_HOST/g prisma.yml
RUN sed -i s/SQL_PASSWORD/$SQL_PASSWORD/g prisma.yml
RUN sed -i s/PRISMA_MANAGEMENT_API_SECRET/$PRISMA_MANAGEMENT_API_SECRET/g prisma.yml

# Exposes Prisma port to 80/443 i.e. :4466 is not needed at the end of the server URL
EXPOSE 4466
