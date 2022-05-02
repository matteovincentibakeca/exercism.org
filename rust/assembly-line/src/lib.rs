#![allow(unused)]

pub fn production_rate_per_hour(speed: u8) -> f64 {
    221.0 * speed as f64 * match speed {
        9..=u8::MAX => 0.77,
        5..=8 => 0.9,
        _ => 1.0
    }
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    (production_rate_per_hour(speed) / 60.0) as u32
}
