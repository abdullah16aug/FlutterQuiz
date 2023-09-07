import 'package:flutter/material.dart';

class Teacher extends StatefulWidget {
  const Teacher({super.key});

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
 @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Column(
          children: [
            // Upper Half: Image Background
            Container(
              height: MediaQuery.of(context).size.height *
                  0.3, // Half of the screen height
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/bg.jpg'), // Replace with your image path
                  fit: BoxFit.fill,
                ),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(),
                    
                  ],
                ),
              ),
            ),
            
            Container(
              height: MediaQuery.of(context).size.height *
                  0.67, // Half of the screen height
              color: Colors.white,
              padding: EdgeInsets.all(13.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Container(
                      padding: EdgeInsets.only(left: 0, top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      
                          Text(
                            'How you gonna use this app ?',
                            style: TextStyle(color: Colors.purple[400], fontSize: 25),
                          ),
                          
                        ],
                      )),

                  SizedBox(height: 20.0),
                  
                 
                
                 Spacer(),
                 
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
                      Navigator.pushNamed(context, 'home');
                    },
                    child: Text('Submit'),
                  ),
                

                  // Handle button press and user input here
                ],
              ),
            ),
        
          ],
        ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.10, // Adjust the position as needed
            left: MediaQuery.of(context).size.width * 0.28, // Adjust the position as needed
            child: Image.asset(
              'assets/thinking.png', // Replace with your thinking asset image path
              width: MediaQuery.of(context).size.width * 0.5, // Adjust the size as needed
              height: MediaQuery.of(context).size.height * 0.5, // Adjust the size as needed
              // You can further customize the overlayed image's position and size
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.50, // Adjust the position as needed
            left: MediaQuery.of(context).size.width * 0.1, // Adjust the position as needed
            child: Image.asset(
              'assets/teacher.png', // Replace with your thinking asset image path
              width: MediaQuery.of(context).size.width * 0.8, // Adjust the size as needed
              height: MediaQuery.of(context).size.height * 0.5, // Adjust the size as needed
              // You can further customize the overlayed image's position and size
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.69, // Adjust the position as needed
            left: MediaQuery.of(context).size.width * 0.5, // Adjust the position as needed
            child: Column(
              children: [
                Text('Teacher', style: TextStyle(color: Colors.white, fontSize: 20),),
                
              ],
            )
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.75, // Adjust the position as needed
            left: MediaQuery.of(context).size.width * 0.3, // Adjust the position as needed
            child: Column(
              children: [
                Text('Inspire and educate the future ', style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text('generation. Opt for the teacher profile.', style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(' to share knowledge and mentor students..', style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            )
          ),
        ]
      )
      
    );
  }
}
