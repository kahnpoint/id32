# ID32
*No more ugly IDs!*

ID32s look like: `m6ov3liumm6trqulojtj6yselragllbg`

- 32 lowercase characters of [RFC 4648](https://datatracker.ietf.org/doc/html/rfc4648) Base32 (a-z2-7)
	- Represents 20 bytes ([160 bits](https://neilmadden.blog/2018/08/30/moving-away-from-uuids/)) of randomness
	- Costs double the bytes of UUIDs, but storage is free and beauty is priceless.
- Easily double-clickable (no hyphens or underscores)
	- NanoID: `0klp0QFYiS_dOUzhF-y_g`
	- UUID:   `10dd71ca-6030-407b-89a4-55c4e11006cd`
	- ID32:   `trhfnnxkrotlcc3gluyl4mqr6aomt4e7`
	
*The code is basically [Nanoid](https://github.com/ai/nanoid), and is available for [Javascript](https://www.npmjs.com/package/id32), [Python](https://pypi.org/project/id32/) and [Rust](https://crates.io/crates/id32).*

## Javascript

### Installation
```bash
npm install id32
```
### Usage
```javascript
import id32 from 'id32'

id32() // h3uu3spo3skwzidi62gk6vzfr4ifxsf3
```

## Python

### Installation
```bash
pip install id32
```
### Usage
```python
from id32 import id32

id32() # h3uu3spo3skwzidi62gk6vzfr4ifxsf3
```

## Rust

### Installation
```bash
cargo add id32
```
### Usage
```rust
fn main() {
    println!("{}", id32::id32()); // h3uu3spo3skwzidi62gk6vzfr4ifxsf3
}
```
