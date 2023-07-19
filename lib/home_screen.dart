import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    // appMaterial for all screens
    // scaffold for one screen
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu_rounded,
        ) ,
        title: Text(
          'Omar 1st App',
        ),
        actions: [
          IconButton(
              onPressed: (){
                print('hello im omar mohamed');
              },
              icon: Icon(
            Icons.notifications_active_sharp,
          ),
              iconSize: 30,
          ),
          IconButton(
              onPressed: ()
              {
                print('im omar steven and called stev');
              },
              icon: Icon(
                  Icons.kayaking_sharp
              ),
              iconSize: 30,

          ),
        ],
        centerTitle: true,
         // elevation: 5,
        backgroundColor: Colors.teal,
      ),
    );
  }
}