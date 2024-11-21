import type { BytesCoder } from '@scure/base'
import { utils } from '@scure/base'

export const base32: BytesCoder = utils.chain(
	utils.radix2(5),
	utils.alphabet('abcdefghijklmnopqrstuvwxyz234567'),
	utils.join('')
)

export const id32 = () => base32.encode(crypto.getRandomValues(new Uint8Array(20)))

export default id32