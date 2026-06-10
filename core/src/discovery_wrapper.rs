use crate::ffi::*;
use crate::console::ConsoleInfo;

pub fn discover_console() {

    let mut console = PSLinkConsole {
        name: [0; 128],
        ip: [0; 64],
        online: 0,
    };

    unsafe {
        pslink_discover(&mut console);
    }

    let info = ConsoleInfo {
        name: String::from_utf8_lossy(&console.name)
            .trim_end_matches('\0')
            .to_string(),

        ip: String::from_utf8_lossy(&console.ip)
            .trim_end_matches('\0')
            .to_string(),

        online: console.online == 1,
    };

    println!("Console : {}", info.name);
    println!("IP      : {}", info.ip);
    println!("Online  : {}", info.online);
}