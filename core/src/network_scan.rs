use std::net::{TcpStream, SocketAddr};
use std::time::Duration;

pub fn scan_ip(ip: &str) -> bool {
    let addr: SocketAddr = format!("{}:9302", ip)
        .parse()
        .unwrap();

    TcpStream::connect_timeout(
        &addr,
        Duration::from_millis(200),
    ).is_ok()
}