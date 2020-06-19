import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer tutorial"),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: Drawer(
        child:ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.orangeAccent,
                    Colors.deepOrange
                  ])
              ),
              child: Container(
                  child:Column(
                    children: <Widget>[
                      Material(
                          elevation:10.0,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          child:Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Image.asset('images/flutter.png',
                              width:80,
                              height:80,
                            ),
                          )
                      ),
                      Text("George Charisma quote",
                          style:TextStyle(
                            color:Colors.white,
                            fontSize: 25.0,
                          ))
                    ],
                  )
              ),
            ),
            CustomListTile(Icons.person,"Profile",()=>{}),
            CustomListTile(Icons.notifications,"Notifications",()=>{}),
            CustomListTile(Icons.settings,"Settings",()=>{}),
            CustomListTile(Icons.lock,"logout",()=>{})
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile( this.icon,this.text ,this.onTap );




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),

        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap: onTap,
          child: Container(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text,
                        style: TextStyle(
                            fontSize: 16.0
                        ),
                      ),
                    )
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
