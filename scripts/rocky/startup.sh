#!/bin/bash

# Create the systemd service file
cat << 'EOF' > /etc/systemd/system/coolify-startup.service
[Unit]
Description=Run custom startup commands

[Service]
Type=oneshot
ExecStart=/bin/bash -c 'systemctl restart docker && curl -fsSL https://cdn.coollabs.io/coolify/install.sh | bash'
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd to recognize the new service
systemctl daemon-reload

# Enable the service to run at boot
systemctl enable coolify-startup.service

# Print message
echo "The service coolify-startup.service has been created and enabled to run at boot."
