import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart'; // Import for login UI

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutripix',
      home: LoginPage(), // Set login page as the initial route
    );
  }
}

// Login Page Widget
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Nutripix',
      onLogin: (LoginData loginData) async {
        // Implement login logic here
        // Validate credentials and handle successful/failed login
        print('Login attempted with username: ${loginData.userName}, password: ${loginData.password}');
        // Navigate to main app or display error message
        return null; // Return null to indicate successful login (replace with actual logic)
      },
      onSignup: (SignupData signupData) async {
        // Implement signup logic here
        // Validate new user data and handle successful/failed signup
        print('Signup attempted with username: ${signupData.userName}, password: ${signupData.password}');
        // Navigate to login page or display error message
        return null; // Return null to indicate successful signup (replace with actual logic)
      },

    );
  }
}
