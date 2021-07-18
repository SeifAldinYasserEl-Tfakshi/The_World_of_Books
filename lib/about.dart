import 'package:flutter/material.dart';
import 'package:the_world_of_books/Mainapppage/apppage.dart';

void main() => runApp(about());

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(centerTitle: true,backgroundColor: Colors.black, leading: IconButton(
            icon: Icon(Icons.arrow_back),splashColor:Colors.white,onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>(apppage())));}),
          title: SizedBox(
            child:  Image.asset("images/pics/logo.png"),
          ),



        ),
        body: Container(  decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/pics/about.jpg"),fit: BoxFit.fill
            )
        ),

        ),
      ),
    );
  }
}
// TODO Implement this library.