import 'package:flutter/material.dart';
import 'dart:async';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: ColorChangingText()),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Text(
                  'Username',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                          color: const Color.fromARGB(255, 13, 78, 217),
                          width: 5.0,
                        )),
                    hintText: 'Enter Username',
                    prefixIcon: Icon(Icons.person),
                    hintStyle: TextStyle(fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Password',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                PasswordField(), //Calling Stateful Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        // print('forget button');
                      },
                      child: const Text(
                        'Forgotten Password ?',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 17, 0)),
                      )),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 240,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF358BE7),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      // Handle login logic
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an Account?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: const Color.fromARGB(206, 53, 53, 54)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign-Up',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: const Color.fromARGB(255, 203, 31, 31)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Making Password Field Statefull

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: const Color.fromARGB(255, 13, 78, 217),
            width: 5.0,
          ),
        ),
        hintText: 'Enter Password',
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off)),
        hintStyle: TextStyle(fontSize: 17),
      ),
    );
  }
}

// Creating a separate StatefulWidget for the welcome text
class ColorChangingText extends StatefulWidget {
  const ColorChangingText({super.key});

  @override
  State<ColorChangingText> createState() => _ColorChangingTextState();
}

class _ColorChangingTextState extends State<ColorChangingText> {
  bool isBlack = true;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        isBlack = !isBlack;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome Back',
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: isBlack
            ? const Color.fromARGB(255, 255, 78, 14)
            : const Color.fromARGB(255, 8, 102, 243),
      ),
    );
  }
}
