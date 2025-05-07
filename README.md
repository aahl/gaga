# 🚀 GagaNode

## 🌟 Invitation Link | 邀请码: `wzdrhcvltuwchce`

👉 [https://dashboard.gaganode.com/register?referral_code=wzdrhcvltuwchce](https://dashboard.gaganode.com/register?referral_code=wzdrhcvltuwchce)

---

## 🐳 Docker Compose Usage | Docker Compose 用法

```bash
mkdir /opt/gaganode
cd /opt/gaganode
wget https://raw.githubusercontent.com/aahl/gaga/refs/heads/main/docker-compose.yml
echo "GAGA_TOKEN=your_gaga_token" > .env
docker compose up -d
```

---

## 🏃 Docker Run Usage | Docker Run 用法

Replace `YOUR_GAGA_TOKEN` with your actual token.  
将 `YOUR_GAGA_TOKEN` 替换为你的实际 Token。

```bash
docker run \
  --name gaganode \
  --restart unless-stopped \
  -e GAGA_TOKEN=YOUR_GAGA_TOKEN \
  -d ghcr.nju.edu.cn/aahl/gaga
```

---

## 📋 Links | 相关链接

- Get your GAGA_TOKEN from the [Gaganode Dashboard](https://dashboard.gaganode.com/).
  在 [Gaganode 控制台](https://dashboard.gaganode.com/) 获取你的 GAGA_TOKEN。
- For more details, check the [official documentation](https://docs.gaganode.com/).
  更多信息请查阅 [官方文档](https://docs.gaganode.com/)。
