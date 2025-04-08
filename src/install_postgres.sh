#!/bin/bash

# Check if IP addresses are provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 'ip1,ip2'"
    echo "Example: $0 '192.168.1.10,192.168.1.11'"
    exit 1
fi

# Convert comma-separated IPs to array
IFS=',' read -r -a servers <<< "$1"

# Create temporary inventory file
INVENTORY_FILE=$(mktemp)
echo "[servers]" > "$INVENTORY_FILE"
for server in "${servers[@]}"; do
    echo "$server ansible_user=root ansible_ssh_private_key_file=~/.ssh/id_ed25519" >> "$INVENTORY_FILE"
done

# Run Ansible playbook
ansible-playbook -i "$INVENTORY_FILE" playbook.yml

# Clean up
rm "$INVENTORY_FILE"
