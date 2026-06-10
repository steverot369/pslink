class RustApi {

  static Future<String> getMessage() async {

    // Temporary

    await Future.delayed(
      const Duration(seconds: 1),
    );

    return "PSLink Rust Core Connected";
  }

}