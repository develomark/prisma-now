# prisma-now

An example of prisma server deployment to Zeit Now with build-time environment variables.

## How to use

Create now secrets for your sql and prisma api passwords:

```console
now secret add SQL_PASSWORD <your_value>
now secret add PRISMA_MANAGEMENT_API_SECRET <your_value>
```

Amend `config.yml` to point to your SQL Server:
(This can be hosted anywhere, Google Cloud, AWS etc.)

```
...
host: <your_sql_host>
...
```

Edit `Dockerfile`with the version of prisma you wish to deploy from [dockerhub](https://hub.docker.com/r/prismagraphql/prisma/tags/):

```
FROM prismagraphql/prisma:1.13-beta
...
```

Then you are ready to deploy!

```console
now
```
