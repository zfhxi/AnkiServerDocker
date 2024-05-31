# AnkiServerDocker

## 使用

docker-compose部署：
    
```yaml
version: "3.8"
services:
  ankiserver:
    image: zfhxi/ankiserver:24.4.1
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
