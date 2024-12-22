# Infra

My personal infrastructure managed with ansible. Currently contains playbooks for following setups:
 - Pi-hole behind an OpenVPN server, powered by https://github.com/simonwep/openvpn-pihole
 - Factorio server powered by https://github.com/factoriotools/factorio-docker
 
## Control node dependencies
 - ansible, ansible-vault, ansible-galaxy
 - op (1Password CLI)
 - jq

## Useful commands
```sh
# run a playbook for a single host under root:
ansible-playbook -i "<host>," <playbook>.yaml --vault-id ./op-vault.sh -u root

# create/edit a new encrypted file, e.g. registrable via `vars_files` in a playbook:
ansible-vault create|edit --vault-id ./op-vault.sh <secrets-path>

# encrypt a standalone string and print the result to stdout:
ansible-vault encrypt_string --vault-id ./op-vault.sh
```
