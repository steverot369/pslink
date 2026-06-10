mod provider;
mod discovery;
mod authentication;
mod streaming;
mod controller;
mod network;
mod chiaki_provider;
mod ffi;
mod discovery_wrapper;
mod console;
pub mod network_scan;
pub mod udp_discovery;
pub mod ps5_parser;
pub fn get_pslink_message() -> String {
    "PSLink Rust Core Connected".to_string()
}

pub fn test_discovery() {
    discovery_wrapper::discover_console();
}