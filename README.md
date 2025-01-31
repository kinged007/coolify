# Coolify Helpers
Coolify is An open-source & self-hostable Heroku / Netlify / Vercel alternative.
Visit it here: https://coolify.io

## Install
```
curl -fsSL https://cdn.coollabs.io/coolify/install.sh | bash
```

## Set up Startup script
This script will create a service that will run at startup, designed to start Docker daemon and Upgrade/run Coolify.

eg. Rocky Linux
```
curl -fsSL https://raw.githubusercontent.com/kinged007/coolify/refs/heads/main/scripts/rocky/startup.sh | bash
```
