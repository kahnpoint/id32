# ID32
*No more ugly IDs!*

ID32s look like: `m6ov3liumm6trqulojtj6yselragllbg`
- 32 characters of [RFC 4648](https://datatracker.ietf.org/doc/html/rfc4648) lowercase Base32
	- represents 20 bytes ([160 bits](https://neilmadden.blog/2018/08/30/moving-away-from-uuids/)) of randomness 
- Easily double-clickable (no hyphens or underscores)
	- NanoID: `0klp0QFYiS_dOUzhF-y_g`
	- UUID:   `10dd71ca-6030-407b-89a4-55c4e11006cd`
	- ID32:   `trhfnnxkrotlcc3gluyl4mqr6aomt4e7`

## Installation
`npm install id32`

## Usage
```javascript
import id32 from 'id32'

id32() //-> h3uu3spo3skwzidi62gk6vzfr4ifxsf3
```

## Extras
```javascript
import { base32 } from 'id32'

base32.encode(data: Uint8Array) => string
base32.decode(data: string) => Uint8Array
```