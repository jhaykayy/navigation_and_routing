import 'package:flutter/material.dart';

class LogoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Logout"),
      ),
      body: Container(
        color: Colors.purple,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Logout Screen",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/', arguments: {
                      'message': 'i just logged out'
                    });
                  },
                  child: const Text("This is the last page of the screen"),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
