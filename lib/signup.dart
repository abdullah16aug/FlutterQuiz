import 'package:flutter/material.dart';

class SignupWidget extends StatefulWidget {
  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
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
                  0.35, // Half of the screen height
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
                        'Hello There!,Lets begin with your journey',
                        style: TextStyle(color: Colors.white, fontSize: 33),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height *
                  0.7, // Half of the screen height
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create Your Account',
                    style: TextStyle(
                      color: Color(0xFF9163D7),
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      fillColor: Color(0xFFE7D8F8),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Mobile Number',
                      fillColor: Color(0xFFE7D8F8),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
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
                      Navigator.pushNamed(context, 'verify');
                    },
                    child: Text('Login'),
                  ),
             Container(
  padding: EdgeInsets.symmetric(vertical: 8.0), // Adjust vertical padding as needed
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center, // Center the content horizontally
    children: [
      Text(
        'Already have an account?',
      ),
      TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
            Color(0xFF9163D7),
          ),
        ),
        onPressed: () {
          // Handle button press and user input here
          Navigator.pushNamed(context, 'login');
        },
        child: Text('Login'),
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
