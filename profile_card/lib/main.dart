import 'package:flutter/material.dart';

void main() => (ProfileCardApp());

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'profile card',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProfilesScreen(),
    );
  }
}

class ProfilesScreen extends StatelessWidget {
  const ProfilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Profile ')),
      body: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Container(
          width: 300.0,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/test.jpg'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Abraham',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.email, color: Colors.blue),
                    onPressed: () {},
                  ),
                  SizedBox(height: 4.0),
                  IconButton(
                    icon: Icon(Icons.phone, color: Colors.blue),
                    onPressed: () {},
                  ),
                  SizedBox(height: 4.0),
                  IconButton(
                    icon: Icon(Icons.phone, color: Colors.blue),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
