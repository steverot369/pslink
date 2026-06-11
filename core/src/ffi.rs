use std::ffi::{CString};
use std::os::raw::c_char;

use crate::api;

#[unsafe(no_mangle)]
pub extern "C" fn get_ps5_name() -> *const c_char {

    let console =
        api::discover_ps5();

    match console {

        Some(ps5) => {

            CString::new(ps5.name)
                .unwrap()
                .into_raw()

        }

        None => {

            CString::new("PS5 Not Found")
                .unwrap()
                .into_raw()

        }

    }

}

#[unsafe(no_mangle)]
pub extern "C" fn get_ps5_ip() -> *const c_char {

    let console =
        api::discover_ps5();

    match console {

        Some(ps5) => {

            CString::new(ps5.ip)
                .unwrap()
                .into_raw()

        }

        None => {

            CString::new("0.0.0.0")
                .unwrap()
                .into_raw()

        }

    }

}