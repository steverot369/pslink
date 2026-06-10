import 'package:flutter/material.dart';
import 'discovery_screen.dart';
import '../bridge/rust_api.dart';
import '../models/ps5_info.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String result = "";

  Future<void> testRust() async {
    String msg = await RustApi.getMessage();

    setState(() {
      result = msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Icon(
                  Icons.sports_esports,
                  size: 100,
                  color: Colors.blue,
                ),

                const SizedBox(height: 20),

                const Text(
                  "PSLink",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Cross Platform PS5 Remote Play",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 50),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DiscoveryScreen(
  ps5: const PS5Info(
    hostName: "PS5-972335",
    hostType: "PS5",
    hostId: "2840Dw122D1AC551",
    systemVersion: "13232233200006",
    ip: "192.168.29.144",
  ),
),
                        ),
                      );
                    },
                    child: const Text(
                      "Search for PS5",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: testRust,
                    child: const Text(
                      "Test Rust Connection",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Text(
                  result,
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  "Status : Not Connected",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Version : 0.2.2",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
  