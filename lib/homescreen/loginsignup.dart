import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Upper Half: Image Background
            Container(
              height: MediaQuery.of(context).size.height *
                  0.40, // Half of the screen height
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
                        padding: EdgeInsets.only(top: 130),
                        child: Image(
                          image: AssetImage('assets/brand.png'),
                        )),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height *
                  0.6, // Half of the screen height
              color: Colors.white,
              padding: EdgeInsets.all(13.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 0, top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                       Image(
                          image: AssetImage('assets/school.png'),
                        ),
                          Text(
                            'Learn Everything with AI',
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                          Text(
                            'learn and grow with ai to stay up to date, with ever evolving demand of ai in the future  ',
                            style: TextStyle(color: Colors.grey[350], fontSize: 15),
                          ),
                        ],
                      )),

                  SizedBox(height: 50.0),
                  FilledButton(

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFF9163D7),
                        
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                      minimumSize: MaterialStateProperty.all(Size(500, 50)),
                    ),
                    onPressed: () {
                      // Handle button press and user input here
                      Navigator.pushNamed(context, 'fillname');
                    },
                    child: Text('Get Started'),
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
                      minimumSize: MaterialStateProperty.all(Size(500, 50)),
                    ),
                    onPressed: () {
                      // Handle button press and user input here
                      Navigator.pushNamed(context, 'login');
                    },
                    child: Text('Join As Admin'),
                  ),
                

                  // Handle button press and user input here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
