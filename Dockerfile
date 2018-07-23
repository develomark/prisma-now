FROM prismagraphql/prisma:1.13-beta
ARG PRISMA_CONFIG_PATH
ENV PRISMA_CONFIG_PATH prisma.yml
COPY config.yml prisma.yml
RUN sed -i s/SQL_HOST/$SQL_HOST/g prisma.yml
RUN sed -i s/SQL_PASSWORD/$SQL_PASSWORD/g prisma.yml
RUN sed -i s/PRISMA_MANAGEMENT_API_SECRET/$PRISMA_MANAGEMENT_API_SECRET/g prisma.yml
EXPOSE 4466