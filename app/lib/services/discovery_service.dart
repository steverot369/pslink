import '../models/ps5_console.dart';

class DiscoveryService {
  Future<List<PS5Console>> searchPS5() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );

    return [
      PS5Console(
        name: "Living Room PS5",
        ip: "192.168.1.50",
        online: true,
      ),
    ];
  }
}