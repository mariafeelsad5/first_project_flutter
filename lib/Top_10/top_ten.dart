import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'user_details.dart';
import 'user_screen.dart';

        class UserModel {
  String? number;
  String? name;
  String? phone;
  UserModel({required this.number, required this.name, required this.phone});
}
class UserItem extends StatelessWidget{
  UserItem({ required this.userModel });
  UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UserDetailsScreen(user: userModel),
        ),
      );
    },
     child:  Padding(padding: const EdgeInsets.all(8.0),
      child: Row (
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.indigo,
            child: Text(userModel.number!,
              style:  GoogleFonts.pacifico(color: Colors.white ),
            ),
          ),
          Padding(padding:const EdgeInsets.only(left: 12),
            child:  Column( mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userModel.name!,
                  style: TextStyle(fontSize: 22,color: Colors.black),
                ),
                Text(
                  userModel.phone!,
                  style: TextStyle(fontSize: 18,color: Colors.green),
                )
              ],

            ),
          )
        ],

      ),

    ),
    );

  }
}
