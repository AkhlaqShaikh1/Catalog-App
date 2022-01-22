// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://scontent.fkhi17-1.fna.fbcdn.net/v/t1.6435-9/183654667_1773145479525341_5322772067777872408_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGTAm176g2HTKSyucG_TNjV_GWDaHyCybD8ZYNofILJsA66gqWKvQOw9ouP_k5srOwpQqgjmn9BEAQjLooAhaC4&_nc_ohc=2PfjP8s02o4AX8TeRyW&_nc_ht=scontent.fkhi17-1.fna&oh=00_AT9gJL5QoCezbl2LV1U-PLKNQgsqN7yRVQ5u963JQFoiFQ&oe=62124AEB";

        
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Akhlaq Shaikh"),
                  accountEmail: Text("akhlaqshaikh01@gmail.com"),
                  currentAccountPicture:CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl)
                    ),
                ),
                ),
                ListTile(
                  leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                    
                ),
                ListTile(
                  leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                  ),
                  title: Text(
                    "Profile",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                    
                ),
                ListTile(
                  leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                  ),
                  title: Text(
                    "Email",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                    
                )
          ],
        ),
      ),
    );
  }
}
