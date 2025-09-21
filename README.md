# Simple PHP Website

This is a minimal PHP project that demonstrates basic website concepts:
- PHP variables, arrays, and functions
- Pretty links (/about) with fallback to query string (?page=about)
- Basic separation of concerns (functionality, content, template)

---

# CI/CD Implementation with Jenkins and Docker ✅

This project was extended as part of my assignment to implement a **CI/CD pipeline** for a PHP website.

## Workflow
1. Developer commits code to GitHub.
2. Jenkins pipeline is triggered.
3. Docker image is built for the PHP app using Nginx + PHP-FPM.
4. Existing container is stopped and removed.
5. A new container is deployed and verified.
6. Application is accessible at [http://localhost](http://localhost).

## Tools Used
- Jenkins (Pipeline automation)
- GitHub (Source control)
- Docker (Containerization)
- WSL Ubuntu (Execution environment)

## Jenkins Pipeline Stages
- Checkout code from GitHub  
- Build Docker image  
- Stop & remove existing container  
- Run new container  
- Verify deployment  
- Post actions (success/failure)

## Screenshots (to attach before submission)
- ✅ Jenkins pipeline successful run  
- ✅ Docker container running (`docker ps`)  
- ✅ Website accessible in browser (localhost)  

---

# Future Enhancements
- Add database integration
- Deploy to AWS EC2 or Azure VM
- Setup GitHub webhook for auto-trigger
