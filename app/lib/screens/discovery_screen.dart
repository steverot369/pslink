import 'package:flutter/material.dart';
import '../models/ps5_info.dart';

class DiscoveryScreen extends StatelessWidget {
  final PS5Info ps5;

  const DiscoveryScreen({
    super.key,
    required this.ps5,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PS5 Discovery"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.sports_esports,
                    size: 80,
                    color: Colors.blue,
                  ),

                  const SizedBox(height: 20),

                  Text(
                    ps5.hostName,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Divider(),

                  const SizedBox(height: 15),

                  const Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 14,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Status : Online",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Row(
                    children: [
                      const Icon(Icons.wifi),
                      const SizedBox(width: 10),
                      Text(
                        "IP : ${ps5.ip}",
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Row(
                    children: [
                      const Icon(Icons.memory),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "System : ${ps5.systemVersion}",
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Row(
                    children: [
                      const Icon(Icons.badge),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Host ID : ${ps5.hostId}",
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Pairing feature coming soon!",
                            ),
                          ),
                        );
                      },
                      icon: const Icon(Icons.link),
                      label: const Text(
                        "Pair with PS5",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: OutlinedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.refresh),
                      label: const Text(
                        "Search Again",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}