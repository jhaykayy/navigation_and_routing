import 'package:flutter/material.dart';


class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration')),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome to the Registration Screen',
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 20,),

              _navigationButton(
                context,
                routeName: '/details',
                buttonText: 'Go to Details Screen',
                arguments: {'message': 'Hello from Registration Screen'},
              ),

              const SizedBox(height: 20,),

              _navigationButton(
                context,
                routeName: '/settings',
                buttonText: 'Go to Settings Screen',
              ),

              const SizedBox(height: 20,),

              _navigationButton(
                context,
                routeName: '/profile',
                buttonText: 'Go to Profile Screen',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navigationButton(BuildContext context, {
    required String routeName,
    required String buttonText,
    Map<String, String>? arguments,
  }) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName, arguments: arguments);
      },
      child: Text(buttonText),
    );
  }
}