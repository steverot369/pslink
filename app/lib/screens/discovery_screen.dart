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
        title: const Text("PS5 Found"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                const Icon(
                  Icons.sports_esports,
                  size: 80,
                  color: Colors.green,
                ),

                const SizedBox(height: 20),

                Text(
                  ps5.hostName,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  "IP : ${ps5.ip}",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "Type : ${ps5.hostType}",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "Host ID : ${ps5.hostId}",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "System : ${ps5.systemVersion}",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Back",
                    ),
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