import 'package:flutter/material.dart';

import '../models/ps5_console.dart';
import '../services/discovery_service.dart';

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({super.key});

  @override
  State<DiscoveryScreen> createState() =>
      _DiscoveryScreenState();
}

class _DiscoveryScreenState
    extends State<DiscoveryScreen> {

  final DiscoveryService service =
      DiscoveryService();

  bool loading = true;

  List<PS5Console> consoles = [];

  @override
  void initState() {
    super.initState();
    discover();
  }

  Future<void> discover() async {
    consoles = await service.searchPS5();

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PS5 Discovery",
        ),
      ),

      body: loading
          ? const Center(
              child:
                  CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: consoles.length,
              itemBuilder: (context, index) {

                final ps5 =
                    consoles[index];

                return Card(
                  margin:
                      const EdgeInsets.all(
                    15,
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.sports_esports,
                      color: Colors.blue,
                    ),

                    title:
                        Text(ps5.name),

                    subtitle: Text(
                        "IP : ${ps5.ip}"),

                    trailing: Text(
                      ps5.online
                          ? "Online"
                          : "Offline",
                    ),
                  ),
                );
              },
            ),
    );
  }
}