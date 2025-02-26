import 'package:estudy/pages/login.dart';
import 'package:estudy/pages/signup.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 422,
                  // width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/image.png'),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Discover Your Dream Here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      color: Color(0xFF1F41BB),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          'Explore a world of career possibilities with our comprehensive guide.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Start your journey towards a fulfilling career today!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 65,
                ),
                Button(), // Add the Button widget here
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(
  fixedSize: const Size(160, 60),
  backgroundColor: const Color(0xFF1F41BB),
  foregroundColor: Colors.white,
  textStyle: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
  elevation: 5,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
);
final TextStyle _textStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
);

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Center the buttons
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          style: _buttonStyle,
          child: Text(
            'Login',
            style: _textStyle,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Signup(),
              ),
            );
          },
          style: _buttonStyle,
          child: Text(
            'Register',
            style: _textStyle,
          ),
        ),
      ],
    );
  }
}
