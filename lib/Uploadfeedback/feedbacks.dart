import 'package:flutter/material.dart';
import 'package:the_world_of_books/Mainapppage/apppage.dart';
import 'package:the_world_of_books/Uploadfeedback/feedback.dart';

void main() => runApp(feedbacks());

class feedbacks extends StatelessWidget {
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
        body: Container(width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/pics/feedback.jpg"),fit: BoxFit.fill,
                )
            ),
            child: Column(
              children: <Widget>[SizedBox(height: 500),
                Container( child: RaisedButton(padding: EdgeInsets.symmetric(vertical:20.0,horizontal: 48),
                  color: Colors.black,
                  splashColor: Colors.grey,
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey),
                  ),
                  child: Text("Feedback",style: TextStyle(
                      fontFamily: "Times New Roman",
                      fontStyle: FontStyle.italic,
                      color: Colors.white,fontSize: 25)),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => feedback()),
                  ),
                ),)
              ],
            )

        ),
      ),
    );
  }
}