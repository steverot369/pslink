fn main() {
    cc::Build::new()
        .file("bridge/chiaki_bridge.c")
        .include("bridge")
        .compile("pslink_bridge");

    println!("cargo:rerun-if-changed=bridge/chiaki_bridge.c");
    println!("cargo:rerun-if-changed=bridge/chiaki_bridge.h");
}