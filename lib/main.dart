import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home:
      Scaffold(
        appBar:AppBar(
          backgroundColor: Colors. grey.shade500 ,

          title:  Text("Information about me :",style:GoogleFonts.pacifico(),),
          actions: [

          ],
        ),
        body:
         Column( mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 100,
                child: Image.asset("assets/image/hijab white profile pic 🤍.jpeg"),
              ),
               Container( alignment: Alignment.center,
                      child: Text("  Mariam Khaled ", style: GoogleFonts.pacifico(fontSize: 30,
                       color: Color.fromARGB(255, 214, 173, 182)
                          ,),),
                    ),
              Container( alignment: Alignment.center,
                child: Text("   Flutter Developer  ", style: GoogleFonts.pacifico(fontSize: 30,
                  color: Color.fromARGB(255, 214, 173, 182)
                  ,),),
              ),
              Container(

                alignment: Alignment.centerLeft,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade600,
                  shape: BoxShape.rectangle,
                ),

                height: 70,
                child: Text(" 01100653317  ", style: GoogleFonts.pacifico(fontSize: 30,
                  color: Colors.white,),
                      ),
              ),
              Container(

                alignment: Alignment.centerLeft,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade600,
                  shape: BoxShape.rectangle,
                ),

                height: 80,
                child: Text(" khaledmariam131@gmail.com ", style: GoogleFonts.pacifico(fontSize: 30,
                  color: Colors.white,),
                ),
              ),
              Container(padding: EdgeInsets.only(left:10),
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade600,
                  shape: BoxShape.rectangle,
                ),

                height: 80,
                child: Text("  www.linkedin.com/in/mariam-khaled-abd-el-hamed-55b522377", style: GoogleFonts.pacifico(fontSize: 25,
                  color: Colors.white,)),
                ),

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade600,
                  shape: BoxShape.rectangle,
                ),

                height: 80,
                child: Text(" Sohag", style: GoogleFonts.pacifico(fontSize: 30,
                  color: Colors.white,),
                ),
              ),
            ],
          ),
        ),
    );

  }


}
