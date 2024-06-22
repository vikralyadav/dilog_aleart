
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dilog aleart"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("this is list tile"),
              subtitle: Text("this is sub title "),
             onTap: (){
              Get.defaultDialog(
                title: "data",
                middleText: "this is fianl warning",
                confirm: TextButton(onPressed: (){}, child: Text("ok"))
              );
             },
            ),
            
          ),
           Card(
            child: ListTile(
              title: Text("this is list tile"),
              subtitle: Text("this is sub title "),
             onTap: (){
              Get.bottomSheet(
                Container(
                 child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.light_mode),
                      title: Text("light mode"),
                      onTap: (){
                       Get.changeTheme(ThemeData.light());

                      },
                    ),
                     ListTile(
                      leading: Icon(Icons.dark_mode),
                      title: Text("dark mode"),
                      onTap: (){
                         Get.changeTheme(ThemeData.dark());


                        
                      },
                    )
                  ],
                 ),
                )
              );
             },
            ),
            
          )
        ],
      ),
    );
  }
}