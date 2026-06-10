mod provider;
mod discovery;
mod authentication;
mod streaming;
mod controller;
mod network;
mod chiaki_provider;

pub fn get_pslink_message() -> String {
    "PSLink Rust Core Connected".to_string()
}