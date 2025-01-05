# scripts/setup-vault.sh

# Start Vault Container
docker run -d --rm \
	--cap-add=IPC_LOCK \
	--name vault \
	-p 8200:8200 \
	-e VAULT_DEV_ROOT_TOKEN_ID=root \
	-e VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:8200 \
	hashicorp/vault
