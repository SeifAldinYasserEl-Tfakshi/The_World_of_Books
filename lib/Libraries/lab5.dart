import 'package:flutter/material.dart';
import 'package:the_world_of_books/Libraries/utils.dart';
import 'package:the_world_of_books/Mainapppage/apppage.dart';

void main() => runApp(lab5());

class lab5 extends StatelessWidget {
  final String title = 'مكتبة سمير و علي';

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: title,debugShowCheckedModeBanner: false,
    color: Colors.black,
    home: MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(centerTitle: true,
      title: Text(widget.title),backgroundColor: Colors.black,
      leading: IconButton(
          icon: Icon(Icons.arrow_back),splashColor:Colors.white,onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>(apppage())));}),),
    body: Container(width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/pics/back.jpg"),fit: BoxFit.fill)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          buildButton(
            text: 'Map',
            onClicked: () => Utils.openLink(url: 'https://www.google.com/maps/dir/29.9772683,31.2531469/%D9%85%D9%83%D8%AA%D8%A8%D8%A7%D8%AA+%D9%85%D8%AD%D8%A7%D9%81%D8%B8+%D8%A7%D9%84%D9%82%D8%A7%D9%87%D8%B1%D8%A9%E2%80%AD%E2%80%AD/@30.0250273,31.2268845,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x14583f0966a001a7:0xc5a0cbfe0d24ee5a!2m2!1d31.3373631!2d30.0448537'),
          ),

          buildButton(
            text: 'Call',
            onClicked: () =>
                Utils.openPhoneCall(phoneNumber: '+0224010014'),
          ),
          buildButton(
            text: ' Sms',
            onClicked: () => Utils.openSMS(phoneNumber: '+0224010014'),
          ),

        ],
      ),
    ),
  );

  Widget buildButton({
    @required String text,
    @required VoidCallback onClicked,
  }) =>

      Container(
        padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 28.0 ),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.grey),
          ),
          onPressed: onClicked,
          color: Colors.black,
          textColor: Colors.white,
          child: Text(
            text,
            style: TextStyle(fontSize: 25,  fontFamily: "Times New Roman",
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
        ),
      );
}