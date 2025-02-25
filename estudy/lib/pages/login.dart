import 'package:estudy/pages/signup.dart';
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                // Align(
                //   child: Text(
                //     'Welcome Back ',
                //     style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                //   ),
                // ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 90,
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(
                  height: 45,
                ),
                Text(
                  'Username',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
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
                  height: 10,
                ),
                PasswordField(), //Calling Stateful Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        // print('forget button');
                      },
                      child: const Text(
                        'Forget Password ?',
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
                      onPressed: () {
                        Signup();
                      },
                      child: Text(
                        'SignUp',
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
