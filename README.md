# AnkiServerDocker
对官方pypi-anki的一个docker封装，用于部署AnkiWeb服务端，见[官方文档](https://docs.ankiweb.net/sync-server.html)。  
A docker package of the official pypi-anki for deploying the AnkiWeb server, see [official documentation](https://docs.ankiweb.net/sync-server.html).

## Usage

`docker-compose.yaml`：
    
```yaml
version: "3.8"
services:
  ankiserver:
    image: zfhxi/ankiserverdocker:latest
    container_name: ankiserver
    restart: unless-stopped
    environment:
      - SYNC_USER1=user:pass
      # - SYNC_USER2=user:pass
      - SYNC_BASE=/app/data # the storage dir
    volumes:
      - ./data:/app/data
    ports:
     - 27701:27701
```
