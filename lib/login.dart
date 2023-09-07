import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool passwordVisible = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }
  void _handleLogin() async {
    // Retrieve the email and password entered by the user
    final String email = _emailController.text;
    final String password = _passwordController.text;
 // Create a map with the user's email and password
  final Map<String, String> userData = {
    'email': email,
    'password': password,
  };

   // Define your backend API URL
  final String apiUrl = 'http://localhost:8080/auth/login';
    // Perform your authentication logic here, e.g., make an API request to your backend
    // You can use the email and password for authentication

  try {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(userData),
    );

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON response
      final responseData = jsonDecode(response.body);
      // You can now handle the response data as needed
      print('Login Successful: $responseData');
      
      // Navigate to the next screen or perform other actions
                Navigator.pushNamed(context, 'fillname');

    } else {
      // If the server returns an error response, throw an exception
      throw Exception('Login failed');
    }
  } catch (e) {
    // Handle any errors that occurred during the HTTP request
    print('Error: $e');
    // Display an error message to the user or handle it accordingly
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Upper Half: Image Background
            Container(
              height: MediaQuery.of(context).size.height *
                  0.5, // Half of the screen height
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/bg.jpg'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(),
                    Container(
                      padding: EdgeInsets.only(left: 35, top: 130),
                      child: Text(
                        'Hello Again, We’ve been waiting for you.',
                        style: TextStyle(color: Colors.white, fontSize: 33),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height *
                  0.5, // Half of the screen height
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xFF9163D7),
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40.0),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: Color(0xFFE7D8F8),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _passwordController,
                          obscureText:
                              !passwordVisible, // Toggle password visibility
                          decoration: InputDecoration(
                            hintText: 'Password',
                            fillColor: Color(0xFFE7D8F8),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            suffixIcon:    IconButton(
                        color: Color(0xFF9163D7),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                          ),
                        ),
                      ),
                   
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 200),
                    child: Text(
                      'Forgot Password?',
                      style:
                          TextStyle(color: Color(0xFF9163D7), fontSize: 15),
                    ),
                  ),
                  SizedBox(height: 25.0),
                  FilledButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFF9163D7),
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                    ),
                    onPressed: _handleLogin,
                    child: Text('Login'),
                  ),
             Container(
  padding: EdgeInsets.symmetric(vertical: 8.0), // Adjust vertical padding as needed
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center, // Center the content horizontally
    children: [
      Text(
        'Don’t have an account?',
      ),
      TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
            Color(0xFF9163D7),
          ),
        ),
        onPressed: () {
          // Handle button press and user input here
          Navigator.pushNamed(context, 'signup');
        },
        child: Text('Signup'),
      ),
    ],
  ),
)

                          // Handle button press and user input here
                       
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
     _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
