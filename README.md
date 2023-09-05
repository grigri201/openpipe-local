# OpenPipe local

## Start up

```
mkdir ./db
```

### modify .env

```
cp .env.example .env
```

- OPENAI_API_KEY: [openai apikeys](https://platform.openai.com/account/api-keys)
- GITHUB_CLIENT_ID, GITHUB_CLIENT_SECRET: [github oauth app](https://github.com/settings/developers)



## 已知错误

```
FetchError: request to https://unofficial-builds.nodejs.org/download/release/v20.5.1/node-v20.5.1-headers.tar.gz failed, reason: getaddrinfo EAI_AGAIN unofficial-builds.nodejs.org
```

找到 docker configuration, 添加

```
// ...
	"dns": [
    "10.0.0.2",
    "8.8.8.8"
	],
// ...
```
