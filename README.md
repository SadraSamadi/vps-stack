# My VPS Stack

- [MasterDnsVPN](https://github.com/masterking32/MasterDnsVPN)
- [MasterHttpRelayVPN-Rust](https://github.com/therealaleph/MasterHttpRelayVPN-RUST)
- [3X-UI](https://github.com/MHSanaei/3x-ui)

## Helpers

###### Generate Key:

```sh
echo "TUNNEL_AUTH_KEY: $(openssl rand -hex 24)" > .env
```

###### Create Docker network:

```sh
docker network create web
```

###### Encrypt Caddy password:

```sh
docker run --rm caddy:latest caddy hash-password --plaintext 'secret'
```
