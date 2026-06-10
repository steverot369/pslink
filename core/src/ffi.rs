#[repr(C)]
pub struct PSLinkConsole {
    pub name: [u8; 128],
    pub ip: [u8; 64],
    pub online: i32,
}

unsafe extern "C" {
    pub fn pslink_discover(
        console: *mut PSLinkConsole,
    ) -> i32;
}