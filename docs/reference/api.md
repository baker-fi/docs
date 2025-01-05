---
sidebar_position: 1
---

# API

THe BakerFI API allows third party integrators to realtime information about our vaults and systems. Endpoints are rate limited to prevent abuse from attackers.

* API URL : https://api-v1.bakerfi.xyz

For unlimited access, please contact us at [bakery@bakerfi.xyz](mailto:bakery@bakerfi.xyz)

## Endpoints

### Vault Yield (Daily APY)

Returns the current anual yield for a Vault with slug and chainId for the current day

**Request**

```
GET /api/vaults/<chain_id>/<slug>/yield
```

**Response**

```json
{
  "time": "2023-07-22T00:00:00.000Z",
  "yield": 5.23
}
```

**Live Examples**

```bash
## Mille Feuille Arbitrum (Arbitrum)
curl -X GET https://api-v1.bakerfi.xyz/api/vaults/42161/mille-feuille/yield

## Mille Feuille a La Base (Base)
curl -X GET https://api-v1.bakerfi.xyz/api/vaults/8453/mille-feuille/yield

## Mille Feuille Classic (Ethereum Main Net)
curl -X GET https://api-v1.bakerfi.xyz/api/vaults/1/mille-feuille/yield

## Saphire Tartlette (Base)
curl -X GET https://api-v1.bakerfi.xyz/api/vaults/8453/sapphire-tartelette/yield
```
