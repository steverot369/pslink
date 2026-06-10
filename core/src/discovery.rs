use crate::provider::DiscoveryProvider;

#[derive(Debug)]
pub struct PS5Console {
    pub name: String,
    pub ip: String,
    pub online: bool,
}

pub struct MockProvider;

impl DiscoveryProvider for MockProvider {
    fn discover(&self) {
        println!("Searching for PS5...");
    }
}