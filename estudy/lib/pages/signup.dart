import 'package:estudy/pages/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text(
              'Create Account',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Poppins',
                  color: Color(0xFF1F41BB)),
            ),
            const SizedBox(height: 25), // Spacing

            // Subtitle
            const Text(
              'Create an account so you can kickstart your goal',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 45),
            const TextField(
              decoration: InputDecoration(
                // labelText: 'Username', // Label text
                hintText: 'Enter your E-mail', // Placeholder text
                prefixIcon: Icon(Icons.email_outlined), // Icon
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
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                // labelText: '', // Label text
                hintText: 'Please enter password ', // Placeholder text
                prefixIcon: Icon(Icons.password), // Icon
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

            const SizedBox(height: 30),
            //confirm password field
            const TextField(
              decoration: InputDecoration(
                // labelText: '', // Label text
                hintText: 'Please confirm password ', // Placeholder text
                prefixIcon: Icon(Icons.paste_sharp), // Icon
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
            const SizedBox(
              height: 40,
            ),

            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1F41BB), // Button color
                    padding:
                        EdgeInsets.symmetric(vertical: 15), // Button padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Rounded corners
                    ),
                  ),
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 18),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  'Already have an account',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                )),
            SizedBox(
              height: 30,
            ),
            Text(
              'Or continue with',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 15,
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
    )));
  }
}
