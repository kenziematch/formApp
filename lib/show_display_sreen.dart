import 'package:flutter/material.dart';

import 'input_page.dart';


class DisplayDetailsScreen extends StatelessWidget {
  final String? fullName;
  final String? location;
  final String? email;
  final String? occupation;

  DisplayDetailsScreen({
    required this.fullName,
    required this.location,
    required this.email,
    required this.occupation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(backgroundImage :  AssetImage('images/hng-logo.jpeg',),
                radius: 70,),
              const SizedBox(height: 40.0),
              Text(
                'Welcome $fullName, below are your details'.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'FullName: $fullName',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Location: $location',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Email: $email',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Occupation: $occupation',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 50.0),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF05B0FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Color(0xFF05B0FF),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Go back home page',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
