import 'package:flutter/material.dart';

import '../bridge/rust_api.dart';
import '../models/ps5_info.dart';
import 'discovery_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}

class _HomeScreenState
    extends State<HomeScreen> {

  String result = "Not Connected";

  void testRust() {

    try {

      String name =
          RustApi.getPS5Name();

      String ip =
          RustApi.getPS5Ip();

    

      setState(() {

      result =
    "PS5 : $name\n"
    "IP : $ip";

      });

    } catch (e) {

      setState(() {

        result =
            "Error\n$e";

      });

    }

  }

  @override
  Widget build(
      BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:
            const EdgeInsets.all(
                30),
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment
                  .center,
              children: [

                const Icon(
                  Icons
                      .sports_esports,
                  size: 100,
                  color:
                  Colors.blue,
                ),

                const SizedBox(
                    height: 20),

                const Text(
                  "PSLink",
                  style:
                  TextStyle(
                    fontSize: 36,
                    fontWeight:
                    FontWeight
                        .bold,
                  ),
                ),

                const SizedBox(
                    height: 10),

                const Text(
                  "Cross Platform PS5 Remote Play",
                  textAlign:
                  TextAlign
                      .center,
                  style:
                  TextStyle(
                    fontSize:
                    18,
                    color: Colors
                        .grey,
                  ),
                ),

                const SizedBox(
                    height: 50),

                SizedBox(
                  width:
                  double.infinity,
                  height: 55,
                  child:
                  ElevatedButton(
                    onPressed:
                        () {

                      PS5Info
                      ps5 =
                      RustApi
                          .discoverPS5();

                      Navigator
                          .push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (_) =>
                              DiscoveryScreen(
                                ps5:
                                ps5,
                              ),
                        ),
                      );

                    },
                    child:
                    const Text(
                      "Search for PS5",
                      style:
                      TextStyle(
                        fontSize:
                        18,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                    height: 20),

                SizedBox(
                  width:
                  double.infinity,
                  height: 55,
                  child:
                  ElevatedButton(
                    onPressed:
                    testRust,
                    child:
                    const Text(
                      "Test Rust Connection",
                      style:
                      TextStyle(
                        fontSize:
                        18,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                    height: 30),

                Text(
                  result,
                  textAlign:
                  TextAlign
                      .center,
                  style:
                  const TextStyle(
                    color: Colors
                        .green,
                    fontSize:
                    18,
                    fontWeight:
                    FontWeight
                        .bold,
                  ),
                ),

                const SizedBox(
                    height: 30),

                const Text(
                  "Version : 0.4.3",
                  style:
                  TextStyle(
                    color:
                    Colors.grey,
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