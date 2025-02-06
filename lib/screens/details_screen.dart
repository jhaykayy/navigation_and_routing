import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String>? arguments = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Welome to details screen",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
                child: const Text('Go to Settings Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}