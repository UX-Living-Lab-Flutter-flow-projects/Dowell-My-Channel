// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Session ID Validation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    checkSessionId();
  }

  void checkSessionId() async {
    final Uri currentUri = Uri.base;
    final String? sessionId = currentUri.queryParameters['sessionId'];

    // Check if the session ID is valid
    if (sessionId != null && sessionId.isNotEmpty) {
      // Perform session ID validation
      bool isSessionValid = await validateSessionId(sessionId);

      if (isSessionValid) {
        // Navigate to the home page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }
    }
  }

  Future<bool> validateSessionId(String sessionId) async {
    var url = Uri.parse('https://100014.pythonanywhere.com/api/mobilelogin/');

    // Make a POST request to validate the session ID
    var response = await http.post(url, body: {'session_id': sessionId});

    // Check the response status code
    if (response.statusCode == 200) {
      // Session ID is valid
      return true;
    } else {
      // Session ID is invalid
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Simulating login success
            final String sessionId = 'your_session_id_here';
            checkSessionId();
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
