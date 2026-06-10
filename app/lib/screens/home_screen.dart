import 'package:flutter/material.dart';
import 'discovery_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                          builder: (_) => const DiscoveryScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Search for PS5",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                const Text(
                  "Status : Not Connected",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Version : 0.1.1",
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