import 'dart:html';

import 'package:flutter/material.dart';
import 'package:medico_project/sqaure_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

bool _obscureText = true;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "lib/images/Logo.png",
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Welcome Back",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const Text("Lets get started , enter your details"),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: "Enter your Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: "Enter your Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _obscureText = !_obscureText;
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
                obscureText: _obscureText,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const LoginPage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade200,
                foregroundColor: Colors.blue,
                minimumSize: const Size(350.0, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 15.0),
              ),
            ),
            forgetPassword(context),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('Or continue with',
                        style: TextStyle(color: Colors.grey[700])),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SquareTile(imagePath: 'lib/images/google.png'),
              SizedBox(
                width: 25,
              ),
              SquareTile(imagePath: 'lib/images/facebook.png'),
            ]),
            const SizedBox(height: 50),
            Row(
              children: [
                const Text(
                  "Not a member ?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                register(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.right,
        ), // Text
        onPressed: () {},
      ), // TextButton
    ); // Container
  }

  Widget register(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Register Now?",
          style: TextStyle(color: Colors.blue),
          textAlign: TextAlign.right,
        ), // Text
        onPressed: () {},
      ), // TextButton
    ); // Container
  }
}
