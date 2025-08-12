import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade500,
        title: Text("Information about me:", style: GoogleFonts.pacifico()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage("assets/image/hijab white profile pic 🤍.jpeg"),
          ),
          SizedBox(height: 10),
          Center(
            child: Text("Mariam Khaled", style: GoogleFonts.pacifico(fontSize: 30, color: Color.fromARGB(255, 214, 173, 182))),
          ),
          Center(
            child: Text("Flutter Developer", style: GoogleFonts.pacifico(fontSize: 30, color: Color.fromARGB(255, 214, 173, 182))),
          ),
          infoContainer("01100653317"),
          infoContainer("khaledmariam131@gmail.com"),
          infoContainer("www.linkedin.com/in/mariam-khaled-abd-el-hamed-55b522377", fontSize: 20),
          infoContainer("Sohag"),
        ],
      ),
    );

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
}
