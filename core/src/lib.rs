pub mod api;

mod provider;
mod discovery;
mod authentication;
mod streaming;
mod controller;
mod network;
mod chiaki_provider;

pub mod ffi;
pub mod console;
pub mod network_scan;
pub mod udp_discovery;
pub mod ps5_parser;

pub fn get_pslink_message() -> String {
    "PSLink Rust Core Connected".to_string()
}