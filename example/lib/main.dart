import 'package:flutter/material.dart';
import 'package:flutter_loading_indicators/flutter_loading_indicators.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: example());
  }
}

class example extends StatelessWidget {
  const example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Loading Indicators')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Loading"),
                LoadingIndicator(
                  type: LoaderType.dots,
                  size: 40,
                  color: Colors.blue,
                  strokeWidth: 4,
                ),
                SizedBox(height: 20),
                Text("Loading"),
                SpinLoader(size: 50, color: Colors.red, strokeWidth: 4),

                SizedBox(height: 20),
                Text("Loading"),
                LoadingIndicator(
                  type: LoaderType.progressBar,
                  color: Colors.black,
                  size: 100,
                  strokeWidth: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
