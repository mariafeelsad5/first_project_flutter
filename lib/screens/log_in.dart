import 'package:first_project/Top_10/top_ten.dart';
import 'package:first_project/Top_10/user_screen.dart';
import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'profile.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey.shade500,
          title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: "Email")),
            TextField(decoration: InputDecoration(labelText: "Password"), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Login"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
            Container(
              child: TextButton(
                child: Text("Don't have an account? Sign up"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
              ), ),
            Container(
                child: TextButton(
                child: Text("Do you want to go top ten screen?"
                    "\n                press here",
                  style: TextStyle(color: Colors.teal),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UsersScreen()),
                  );
                },
                            ),
              ),

          ],
        ),
      ),
    );
  }
}
