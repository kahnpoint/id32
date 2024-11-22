const a = "abcdefghijklmnopqrstuvwxyz234567";
export default function id32() {
	let t = "";
	const r = crypto.getRandomValues(new Uint8Array(32));
	for (let n = 0; n < 32; n++) t += a[31 & r[n]];
	return t;
};
