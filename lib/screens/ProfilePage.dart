//import 'dart:html';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  List<String> ideas = ['bfkjfl', 'vsdhgkjfdsj', "vsjdfkk","hvdfkjlzx","gdskjghsg"];
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
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.white,
                child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 10.0,top: 10.0),
                          child: Text('My Profile',style: TextStyle(color: Colors.deepOrange),),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10.0,top: 10.0),
                          child: Text('Order History'),
                        )
                      ],
                    ),
                ),
              SizedBox(height: 10.0),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(right: 10.0,top: 10.0),
                    child: Text('Basic Profile'),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.only(left: 10.0,top: 10.0),
                    color: Colors.deepOrange,
                    child: Text('Friends and Family History',style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(6.0)
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 10.0),
                    Icon(Icons.account_balance_wallet,color: Colors.indigo),
                    SizedBox(width: 10.0),
                    Container(
                      child: Text('Wallet Balance: Rs 0',style: TextStyle(color: Colors.indigo),),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(6.0)
                      ),
                      child: TextButton(onPressed: (){}, child: Text('Add Money',style: TextStyle(color: Colors.indigo),))
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Name'),
                  Text('DOB'),
                  Text('TOB'),
                  Text('Relation'),
                ],
              ),
              Flexible(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: ideas.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          onTap: () {},
                          title: Text(ideas[index]),
                          leading: Icon(Icons.announcement),
                        ),
                      );
                    }),
              ),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, '3');
              }, child: Text('Add a profile'))
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
