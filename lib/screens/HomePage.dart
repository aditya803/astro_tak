import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
         title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
              Image.asset('assets/hamburger.png'),
              Image.asset(
                  'assets/icon.png',
                fit: BoxFit.contain,
                height: 40
              ),
              IconButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '2');
                  },
                  icon: Image.asset('assets/profile.png')
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
