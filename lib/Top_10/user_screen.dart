import 'package:flutter/material.dart';
import 'top_ten.dart';

class UsersScreen extends StatelessWidget {
  UsersScreen({super.key});

  final List<UserModel> users = [
    UserModel(number: "1", name: "Mariam Wael", phone: "0123456789"),
    UserModel(number: "2", name: "Mario Ashraf", phone: "012037853998"),
    UserModel(number: "3", name: "Karol Hany", phone: "01175559923"),
    UserModel(number: "4", name: "Mera Refaat", phone: "01089537294"),
    UserModel(number: "5", name: "OmAr Khaled", phone: "01873409543"),
    UserModel(number: "6", name: "Marina Emad", phone: "01287430543"),
    UserModel(number: "7", name: "Alaa mohamed", phone: "01076302278"),
    UserModel(number: "8", name: "Kyrillos Ayman", phone: "01139804873"),
    UserModel(number: "9", name: "Islam Hassan", phone: "01087399022"),
    UserModel(number: "10", name: "Mariam Bassem", phone: "01243892400"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        automaticallyImplyLeading: true,


        title: Row(
          children: [
            CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/image/meme.png"),
          ),SizedBox(width: 10),
            Text(
              "Top Ten",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),),

      body: ListView.separated(
        itemBuilder: (context, index) =>
            UserItem(userModel: users[index]),
        itemCount: users.length,
        separatorBuilder: (context, index) => Divider(
          indent: 20,
          endIndent: 20,

        ),
      ),
    );
  }
}
