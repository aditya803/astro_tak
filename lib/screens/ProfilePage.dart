import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                color: Colors.deepOrangeAccent,
                icon: Icon(Icons.arrow_back_ios_outlined),
                onPressed: (){Navigator.pop(context);
                }
                ),
            Image.asset('assets/icon.png',
                fit: BoxFit.contain,
                height: 40),
            Container(
              height: 40.0,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 1.0,
                    color: Colors.deepOrangeAccent)
              ),
              child: TextButton(
                  onPressed: (){},
                  child: Text(
                    'Logout',
                    style: TextStyle(color: Colors.deepOrangeAccent),
                  )),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/home.png"),color: Colors.deepOrange,),label: 'Home'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/talk.png"),color: Colors.deepOrange,),label: 'Talk'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/ask.png"),color: Colors.deepOrange,),label: 'Talk'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/reports.png"),color: Colors.deepOrange,),label: 'Talk'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/chat.png"),color: Colors.deepOrange,),label: 'Talk'),
        ],
      ),
    );
  }
}
