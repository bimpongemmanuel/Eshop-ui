import 'package:ecommerce_shop/Authentication/signup_page.dart';
import 'package:ecommerce_shop/buttomnavigation/navbar.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var outlinedInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.grey));

    return Scaffold(
      // backgroundColor: const Color(0xDFF0C0B2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  hintText: 'Enter your email',
                  border: outlinedInputBorder,
                  focusedBorder: outlinedInputBorder,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  hintText: '.............',
                  border: outlinedInputBorder,
                  focusedBorder: outlinedInputBorder,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child:  const Text(
                'Forgot Password ?',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xE1E43C08),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyNav(),
                        ));
                  },
                  child: const Center(
                      child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    surfaceTintColor: const Color(0xE1E43C08),
                    shape: const RoundedRectangleBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ));
                  },
                  child: const Center(
                      child: Text(
                    'Register',
                    style: TextStyle(color: Color(0xE1E43C08), fontSize: 20),
                  )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: const [
                    Expanded(
                        child: Divider(
                      color: Color(0xE1E43C08),
                      thickness: 2,
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Text('OR', style: TextStyle(fontSize: 20)),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Divider(
                      color: Color(0xE1E43C08),
                      thickness: 2,
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Sign in with',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/google.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/Facebook.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/apple.png'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
