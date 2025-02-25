import 'package:estudy/pages/login.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/images/image.png'),
              ),
              Align(
                alignment: Alignment.center,
                child: Text('Discover Your Dream Here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 35,
                        color: Color(0xFF1F41BB),
                        fontWeight: FontWeight.w600)),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                    'Explore a world of career possibilities with our comprehensive guide.\nStart your journey towards a fulfilling career today!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                    )),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      LoginPage();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
