# Infra

My personal infrastructure managed with ansible. Currently contains playbooks for following setups:
 - Pi-hole behind an OpenVPN server, powered by https://github.com/simonwep/openvpn-pihole
 
## Control node dependencies
 - ansible, ansible-vault, ansible-galaxy
 - op (1Password CLI)
 - jq

## Useful commands
```sh
# run a playbook for a single host under root:
ansible-playbook -i "<host>," <playbook>.yaml --vault-id ./op-vault.sh -u root
```