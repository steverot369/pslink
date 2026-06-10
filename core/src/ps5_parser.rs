use std::collections::HashMap;

pub fn parse_response(response: &str) -> HashMap<String, String> {
    let mut map = HashMap::new();

    for line in response.lines() {
        if let Some(pos) = line.find(':') {
            let key = line[..pos].trim();
            let value = line[pos + 1..].trim();

            map.insert(
                key.to_string(),
                value.to_string(),
            );
        }
    }

    map
}