# Node.js Backend with Nginx Reverse Proxy 🚀

This project demonstrates a **Node.js Backend Application** deployed on an **AWS EC2 Ubuntu Server** using **Docker** and **Nginx Reverse Proxy**.  
It is a DevOps practice project where developers only write the application code, while DevOps Engineers handle Containerization and Deployment.

---

## 📂 Project Structure
```
backend/
├── Dockerfile # Backend Dockerfile
├── docker-compose.yml # Docker Compose Setup
├── deploy.sh # Deployment Script
├── nginx/ # Nginx Reverse Proxy
│ ├── Dockerfile
│ └── nginx.conf
└── node-backend/ # Application Source Code
├── package.json
├── package-lock.json
└── server.js
```

---

## 👨‍💻 Developer Workflow

1. Write backend application code inside **`node-backend/`** directory.
2. Example route (`server.js`):
   ```js
   const express = require("express");
   const app = express();
   const PORT = 5000;

   app.get("/", (req, res) => {
     res.send("Hello from Node.js Backend running on EC2 with Docker!");
   });

   app.get("/api", (req, res) => {
     res.json({ message: "Hello from API route!" });
   });

   app.listen(PORT, () => {
     console.log(`🚀 Server running on port ${PORT}`);
   });
```
3. Push changes to the private GitHub repository.

⚙️ DevOps Engineer Workflow
1. Clone Repository on EC2
git clone git@github.com:ORG_OR_USER/backend-repo.git
cd backend
2. Deploy Application
Run the Deployment Script:
chmod +x deploy.sh
./deploy.sh
The script will:
Pull latest code from GitHub
Build Docker images
Restart containers with Docker Compose

🐳 Docker Services
Backend Service
Built from Dockerfile
Runs Node.js on port 5000
Nginx Service
Acts as a Reverse Proxy
Routes traffic from port 80 → backend:5000
Config defined in nginx/nginx.conf

🔗 Access Application
Root URL:
http://<EC2-PUBLIC-IP>/
Response:
Hello from Node.js Backend running on EC2 with Docker!
API URL:
http://<EC2-PUBLIC-IP>/api
Response:

