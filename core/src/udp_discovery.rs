use std::net::UdpSocket;
use std::time::Duration;

pub fn discover() {

    let socket = UdpSocket::bind("0.0.0.0:0")
        .expect("Cannot create socket");

    socket
        .set_broadcast(true)
        .unwrap();

    socket
        .set_read_timeout(
            Some(Duration::from_secs(3))
        )
        .unwrap();

    let message =
        "SRCH * HTTP/1.1\n\
device-discovery-protocol-version:00030010\n";

    socket.send_to(
        message.as_bytes(),
        "255.255.255.255:9302",
    ).unwrap();

    println!("Discovery packet sent.");

    let mut buffer = [0u8; 2048];

    match socket.recv_from(&mut buffer) {
        Ok((size, addr)) => {

            println!("PS5 Found!");
            println!("IP : {}", addr);

            let response =
    String::from_utf8_lossy(
        &buffer[..size]
    );

let data =
    crate::ps5_parser::parse_response(
        &response
    );

println!();
println!("========== PS5 FOUND ==========");
println!(
    "Host Name      : {}",
    data.get("host-name")
        .unwrap_or(
            &"Unknown".to_string()
        )
);

println!(
    "Host Type      : {}",
    data.get("host-type")
        .unwrap_or(
            &"Unknown".to_string()
        )
);

println!(
    "Host ID        : {}",
    data.get("host-id")
        .unwrap_or(
            &"Unknown".to_string()
        )
);

println!(
    "System Version : {}",
    data.get("system-version")
        .unwrap_or(
            &"Unknown".to_string()
        )
);

println!("================================");
        }

        Err(_) => {
            println!("No PS5 response.");
        }
    }
}