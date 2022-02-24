import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownvalue = 'Item 1';

  var items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  List<String> ideas = ['bfkjfl', 'vsdhgkjfdsj', "vsjdfkk","hvdfkjlzx","gdskjghsg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/hamburger.png'),
            Image.asset('assets/icon.png', fit: BoxFit.contain, height: 40),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '2');
                },
                icon: Image.asset('assets/profile.png'))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.indigo,
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wallet Balance: Rs.0',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Add Money',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
            randomText('Ask a Question'),
            bigText('Seek accurate answers to your life problems and get guidance towards the right path. Whether the problem is related to love, self, life, business, money, education or work, our astrologers will do an in depth study of your birth chart to provide personalized responses along with remedies.'),
            randomText('Choose a Category'),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 10.0, left: 20.0),
              child: DropdownButton(
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
            buildTextField(),
            randomText('Ideas what to Ask (Select Any)'),
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
            bigText('Seeking accurate answers to difficult questions troubling your mind? Ask credible astrologers to know what future has in store for you.'),
            Container(
              margin: EdgeInsets.all(10.0),
              color: Colors.amberAccent,
              padding: EdgeInsets.all(10.0),
              child: Text('Personalized responses provided by our team of Vedic astrologers within 24 hours. Qualified and experienced astrologers will look into your birth ribart and provide the right guidance',
                style: TextStyle(
                  color: Colors.deepOrange
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.view_headline),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/home.png"),
                color: Colors.deepOrange,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/talk.png"),
                color: Colors.deepOrange,
              ),
              label: 'Talk'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/ask.png"),
                color: Colors.deepOrange,
              ),
              label: 'Talk'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/reports.png"),
                color: Colors.deepOrange,
              ),
              label: 'Talk'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/chat.png"),
                color: Colors.deepOrange,
              ),
              label: 'Talk'),
        ],
      ),
    );
  }
}

Widget randomText(String a) {
  return Container(
    padding: EdgeInsets.only(top: 10.0, left: 10.0),
    alignment: AlignmentDirectional.centerStart,
    child: Text(
      a,
      style: TextStyle(
          fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}
Widget bigText(String b){
  return Container(
    padding: EdgeInsets.only(top: 10.0, left: 10.0),
    alignment: AlignmentDirectional.centerStart,
    child: Text(
      b,
      style: TextStyle(fontWeight: FontWeight.w200),
    ),
  );
}
Widget buildTextField() {
  final maxLines = 4;
  return Container(
    margin: EdgeInsets.all(12),
    height: maxLines * 24.0,
    child: TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5)),
        hintText: "Enter a message",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}
