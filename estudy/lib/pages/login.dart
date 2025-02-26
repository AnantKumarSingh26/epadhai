import 'package:estudy/pages/signup.dart';
import 'package:flutter/material.dart';
import 'welcome.dart'; // Ensure this import points to your WelcomePage

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers for text fields
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F41BB),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Padhaii',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.keyboard_double_arrow_left_rounded),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => WelcomePage()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Text(
                  'Login here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Poppins',
                      color: Color(0xFF1F41BB)),
                ),
                SizedBox(height: 30), // Spacing

                // Subtitle
                Text(
                  'Welcome back champ, you\'ve been missed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 50), // Spacing

                // Username TextField
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username', // Label text
                    hintText: 'Enter your username', // Placeholder text
                    prefixIcon: Icon(Icons.person), // Icon
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey), // Grey border when not focused
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFF1F41BB)), // Blue border when focused
                    ),
                  ),
                ),
                SizedBox(height: 30), // Spacing

                // Password TextField
                TextField(
                  controller: _passwordController,
                  obscureText: true, // Hide password text
                  decoration: InputDecoration(
                    labelText: 'Password', // Label text
                    hintText: 'Enter your password', // Placeholder text
                    prefixIcon: Icon(Icons.lock), // Icon
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey), // Grey border when not focused
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFF1F41BB)), // Blue border when focused
                    ),
                  ),
                ),
                SizedBox(height: 15), // Spacing
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // Login Button
                SizedBox(
                  width: double.infinity, // Full width
                  child: ElevatedButton(
                    onPressed: () {
                      // Retrieve entered username and password
                      String username = _usernameController.text;
                      String password = _passwordController.text;

                      // Print to console (for debugging)
                      print('Username: $username, Password: $password');

                      // Navigate to WelcomePage
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1F41BB), // Button color
                      padding:
                          EdgeInsets.symmetric(vertical: 15), // Button padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Text(
                      'Create new account',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Or continue with',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
                    IconButton(
                        onPressed: () {},
                        icon: Image.network(
                          'https://img.icons8.com/?size=100&id=V5cGWnc9R4xj&format=png&color=000000',
                          width: 23,
                          height: 23,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
