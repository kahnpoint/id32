use rand_core::{RngCore, OsRng};

pub fn id32() -> String {
    let mut base = [0u8; 32];
    OsRng.fill_bytes(&mut base);
    base.iter().map(|b| "abcdefghijklmnopqrstuvwxyz234567".as_bytes()[(b & 31) as usize] as char).collect()
}

