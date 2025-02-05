import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Container(
        color: Colors.orangeAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Profile Screen',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/details', arguments: {
                    'message': 'Hello from Profile Screen'
                  });
                },
                child: const Text('Go to Details Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
