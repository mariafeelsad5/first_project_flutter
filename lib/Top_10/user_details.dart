import 'package:flutter/material.dart';
import 'top_ten.dart';
import 'user_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_project/screens/profile.dart';



class UserDetailsScreen extends StatelessWidget {
   UserModel user;

   UserDetailsScreen({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade500,

        title: Text(" Informations about Students",style: GoogleFonts.pacifico()),),
      body :
       Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blueGrey.shade600,
                child: Text(
                 " ${user.number}",style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

              Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ Text("",),
            Center(

              child: Text("Name: ${user.name}", style: GoogleFonts.pacifico(fontSize: 30, color: Color.fromARGB(255, 214, 173, 182))),
            ),

              infoContainer("Phone: ${user.phone}"),

            ],
          ),
        ),
            ],),
      );
  }
}

Widget infoContainer(String text, {double fontSize = 25}) {
  return Container(
    alignment: Alignment.centerLeft,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.only(left: 10),
    decoration: BoxDecoration(
      color: Colors.blueGrey.shade600,
      borderRadius: BorderRadius.circular(8),
    ),
    height: 60,
    child: Text(text, style: GoogleFonts.pacifico(fontSize: fontSize, color: Colors.white)),
  );
}
