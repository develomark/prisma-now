# prisma-now

An example of prisma server deployment to Zeit Now with build-time environment variables.

## How to use

Create now secrets for your sql and prisma api passwords:

```console
> now secret add sql-password <your_value>
> now secret add prisma-management-api-secret <your_value>
```

Amend `now.json` to point to your SQL Server:
(This can be hosted anywhere, Google Cloud, AWS etc.)

```now.json
...
"SQL_HOST": "<your_sql_host>"
...
```

Edit `Dockerfile`with the version of prisma you wish to deploy from [dockerhub](https://hub.docker.com/r/prismagraphql/prisma/tags/):

```
FROM prismagraphql/prisma:1.13-beta
...
```

Then you are ready to deploy!

```console
> now
```


License
This project is licensed under the MIT License - see the LICENSE.md file for details

<hr>
<p align="center">
  <img src="https://img.shields.io/badge/built-with_♡_by-red.svg?style=for-the-badge"/><a href="https://github.com/develomark" target="-_blank"><img src="https://img.shields.io/badge/develomark-yellow.svg?longCache=true&style=for-the-badge"/></a>
</p>
