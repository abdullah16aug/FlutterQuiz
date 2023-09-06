import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool passwordVisible = false;
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
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
                    onPressed: () {
                      // Handle button press and user input here
                      Navigator.pushNamed(context, 'home');
                    },
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
    _passwordController.dispose();
    super.dispose();
  }
}
