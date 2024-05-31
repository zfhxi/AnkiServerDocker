# AnkiServerDocker
对官方pypi-anki的一个docker封装，用于部署AnkiWeb服务端，见[官方文档](https://docs.ankiweb.net/sync-server.html)。
## 使用

docker-compose部署：
    
```yaml
version: "3.8"
services:
  ankiserver:
    image: zfhxi/ankiserverdocker:main
    container_name: ankiserver
    restart: unless-stopped
    environment:
      - SYNC_USER1=user:pass
      # - SYNC_USER2=user:pass
      - SYNC_BASE=/app/data # 数据存放目录
    volumes:
      - ./data:/app/data
    ports:
     - 27701:27701
```
