import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmailVerificationWidget(),
    );
  }
}

class EmailVerificationWidget extends StatefulWidget {
  @override
  _EmailVerificationWidgetState createState() =>
      _EmailVerificationWidgetState();
}

class _EmailVerificationWidgetState extends State<EmailVerificationWidget> {
  final TextEditingController _verificationController = TextEditingController();
  int _currentIndex = 0;

  void _onDigitPressed(String digit) {
    if (_currentIndex < 4) {
      setState(() {
        _verificationController.text +=
            digit; // Add the pressed digit to the input field
        _currentIndex++;
      });
    }
  }

  void _onDeletePressed() {
    if (_currentIndex > 0) {
      setState(() {
        _verificationController.text = _verificationController.text
            .substring(0, _currentIndex - 1); // Remove the last digit
        _currentIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                      padding: EdgeInsets.only(left: 35, top: 13),
                      child: Text(
                        'Hello There!,Lets begin with your journey',
                        style: TextStyle(color: Colors.white, fontSize: 33),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircularDigitField(0),
                _buildCircularDigitField(1),
                _buildCircularDigitField(2),
                _buildCircularDigitField(3),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildDigitButton('1'),
                _buildDigitButton('2'),
                _buildDigitButton('3'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildDigitButton('4'),
                _buildDigitButton('5'),
                _buildDigitButton('6'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildDigitButton('7'),
                _buildDigitButton('8'),
                _buildDigitButton('9'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildEmptyButton(), // An empty button as a placeholder
                _buildDigitButton('0'),
                _buildDeleteButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircularDigitField(int index) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black, width: 2.0),
      ),
      alignment: Alignment.center,
      child: Text(
        _currentIndex > index
            ? _verificationController.text[index]
            : '',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }

  Widget _buildDigitButton(String digit) {
    return ElevatedButton(
      onPressed: () => _onDigitPressed(digit),
      child: Text(digit),
    );
  }

  Widget _buildDeleteButton() {
    return ElevatedButton(
      onPressed: _onDeletePressed,
      child: Icon(Icons.backspace),
    );
  }

  Widget _buildEmptyButton() {
    return SizedBox(
      width: 50.0,
      height: 50.0,
    );
  }
}
