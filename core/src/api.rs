use crate::console::ConsoleInfo;
use crate::udp_discovery;

pub fn discover_ps5() -> Option<ConsoleInfo> {

    udp_discovery::discover()

}