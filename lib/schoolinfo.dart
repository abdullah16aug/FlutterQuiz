import 'package:flutter/material.dart';

class SchoolWidget extends StatefulWidget {
  @override
  _SchoolWidgetState createState() => _SchoolWidgetState();
}

class _SchoolWidgetState extends State<SchoolWidget> {
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
                      padding: EdgeInsets.only(left: 30, top: 130),
                      child: Column(
                        children: [
                          Text(
                            'Almost Done!',
                            style: TextStyle(color: Colors.white, fontSize: 43),
                          ),
                          SizedBox(height: 20.0),
                         Padding(
  padding: EdgeInsets.symmetric(horizontal: 20.0), // Equal margin from left and right
  child: Text(
    'Only the last step of the process remains!',
    style: TextStyle(color: Colors.white, fontSize: 22),
  ),
)

                        ],
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
                    'Edit your School Information',
                    style: TextStyle(
                      color: Color(0xFF9163D7),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'School Name',
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
                      hintText: 'Address',
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
                      hintText: 'Dios Code',
                      fillColor: Color(0xFFE7D8F8),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      suffixIcon: Icon(Icons.check,color: Colors.purple[500],)
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
  decoration: InputDecoration(
    hintText: 'Upload Document',
    labelText: 'Upload Document',
     fillColor: Color(0xFFE7D8F8),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
  suffixIcon: Icon(Icons.upload), // Upload icon on the right
   
  ),
)
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
