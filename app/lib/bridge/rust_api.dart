import 'dart:ffi';
import 'package:ffi/ffi.dart';

import '../models/ps5_info.dart';

final DynamicLibrary dylib =
    DynamicLibrary.open(
        "pslink_core.dll");

typedef RustGetPS5NameNative =
    Pointer<Utf8> Function();

typedef RustGetPS5NameDart =
    Pointer<Utf8> Function();

typedef RustGetPS5IpNative =
    Pointer<Utf8> Function();

typedef RustGetPS5IpDart =
    Pointer<Utf8> Function();

class RustApi {

  static String getPS5Name() {

    final func =
    dylib.lookupFunction<
        RustGetPS5NameNative,
        RustGetPS5NameDart>(
      "get_ps5_name",
    );

    return func()
        .toDartString();

  }

  static String getPS5Ip() {

    final func =
    dylib.lookupFunction<
        RustGetPS5IpNative,
        RustGetPS5IpDart>(
      "get_ps5_ip",
    );

    return func()
        .toDartString();

  }

  static PS5Info discoverPS5() {

    return PS5Info(

      hostName:
      getPS5Name(),

      hostType:
      "PS5",

      hostId:
      "Detected",

      systemVersion:
      "Detected",

      ip:
      getPS5Ip(),

    );

  }

}