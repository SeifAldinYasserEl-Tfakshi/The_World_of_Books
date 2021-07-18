import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:the_world_of_books/Mainapppage/apppage.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentbooks/alab.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentbooks/cinema.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentbooks/fnrsm.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentbooks/hiphop.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentbooks/mlabsna.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentbooks/music.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentbooks/tswerrkmy.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentbooks/videogames.dart';

void main() => runApp(entertainmentstore());

class entertainmentstore extends StatelessWidget {
  GlobalKey<FormState> Formstate = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 2,
    child: Scaffold(
      appBar: AppBar(centerTitle: true,
        title: SizedBox(
          child:  Image.asset("images/pics/logo.png"),
        ),


        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.black],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 5,
          tabs: [
            Tab(icon: Icon(Icons.book), text: 'Free'),
            Tab(icon: Icon(Icons.book), text: 'Paid'),
                     ],
        ),
        elevation: 20,
        titleSpacing: 30,


      ),
        body: TabBarView(
            children:<Widget> [
         Container(decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("images/pics/back.jpg"),fit: BoxFit.fill)),child: ListView(children: <Widget>[
           Card(
             child: ListTile(
               title:Text ("الالعاب العائلية"),
               subtitle: Text("بواسطة الاستاذة سماح عبد الغفار"),
               leading: Image.asset("images/pics/alab.png"),
               trailing: IconButton(
                 icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(alab()))),
               ),
             ),
           ),
           Card(  child: ListTile(
             title:Text ("السينما و الجذور"),
             subtitle: Text("بواسطة الاستاذ خالد اقلعي"),
             leading: Image.asset("images/pics/cinema.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(cinema()))),
             ),
           ),),
           Card(  child: ListTile(
             title:Text ("فن الرسم"),
             subtitle: Text("بواسطة الدكتور نايف محمود عتريسي"),
             leading: Image.asset("images/pics/fnrsm.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(fnrsm()))),
             ),
           ),),
           Card(  child: ListTile(
             title:Text ("The Foundations OF HIP-HOP"),
             subtitle: Text("By Anthony Kwame Harrison and Craig E. Arthur"),

             leading: Image.asset("images/pics/hiphop.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(hiphop()))),
             ),
           ),),

         ],
         ),),



              Container(decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("images/pics/back.jpg"),fit: BoxFit.fill)),child: ListView(
                children: <Widget>[
                  Card(  child: ListTile(
                    title:Text ("اين تصنع ملابسنا"),
                    subtitle: Text("بواسطة الاستاذ كيلسي تيمرمان"),
                    leading: Image.asset("images/pics/mlabsna.png"),
                    trailing: IconButton(
                        icon: Text("14\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
                      showDialog(context: context, builder: (BuildContext context){Alignment.center;
                      return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center ,),children: <Widget>[
                        Form(key:Formstate, child: Column(
                          children: [TextFormField(
                            validator:(text){
                              if ((text.length<4)) {
                                AwesomeDialog(animType: AnimType.SCALE,
                                    dialogType: DialogType.WARNING,
                                    context: context,
                                    title: "error",
                                    body: Text("Credit Code Is Short."))..show();
                              }  else if(text.length>10){
                                AwesomeDialog(animType: AnimType.SCALE,
                                    dialogType: DialogType.WARNING,
                                    context: context,
                                    title: "error",
                                    body: Text("Credit Code Is Wrong."))..show();

                              } else  {
                                AwesomeDialog(
                                  context: context,
                                  animType: AnimType.SCALE,
                                  dialogType: DialogType.SUCCES,
                                  title: "Success",
                                  body: Center(child: Text(

                                    'Successfully Paid.',
                                    style: TextStyle(fontStyle: FontStyle.italic),
                                  ),),
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(mlabsna())));},
                                )..show();
                              }

                            },



                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(12.0),
                                  ),
                                ),

                                suffixStyle: const TextStyle(color: Colors.black),
                                filled: true,
                                hintStyle: new TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontFamily: "Times New Roman",
                                    color: Colors.black),
                                hintText: "Enter Your Code Card",
                                fillColor: Colors.white70),
                            style: TextStyle(color: Colors.black,fontSize: 10),
                          ),SizedBox(height: 10),RaisedButton( padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 48),

                            color: Colors.black,
                            splashColor: Colors.grey,
                            textColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey),
                            ),child: Text("Pay", style: TextStyle(
                                fontFamily: "Times New Roman",
                                fontStyle: FontStyle.italic,
                                color: Colors.white, fontSize: 15)),onPressed: (){

                              var Formdata = Formstate.currentState;
                              if(Formdata.validate()){
                                print("Valid");
                              }else{
                                print("Not Valid");
                              }


                            },),],
                        ),
                        ),

                      ],);
                      });
                    }
                    ),
                  ),),
                  Card(  child: ListTile(
                    title:Text ("Music Theory"),
                    subtitle: Text("By  Diana Deutsch"),
                    leading: Image.asset("images/pics/music.png"),
                    trailing: IconButton(
                        icon: Text("17\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
                      showDialog(context: context, builder: (BuildContext context){Alignment.center;
                      return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center ,),children: <Widget>[
                        Form(key:Formstate, child: Column(
                          children: [TextFormField(
                            validator:(text){
                              if ((text.length<4)) {
                                AwesomeDialog(animType: AnimType.SCALE,
                                    dialogType: DialogType.WARNING,
                                    context: context,
                                    title: "error",
                                    body: Text("Credit Code Is Short."))..show();
                              }  else if(text.length>10){
                                AwesomeDialog(animType: AnimType.SCALE,
                                    dialogType: DialogType.WARNING,
                                    context: context,
                                    title: "error",
                                    body: Text("Credit Code Is Wrong."))..show();

                              } else  {
                                AwesomeDialog(
                                  context: context,
                                  animType: AnimType.SCALE,
                                  dialogType: DialogType.SUCCES,
                                  title: "Success",
                                  body: Center(child: Text(

                                    'Successfully Paid.',
                                    style: TextStyle(fontStyle: FontStyle.italic),
                                  ),),
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(music())));},
                                )..show();
                              }

                            },



                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(12.0),
                                  ),
                                ),

                                suffixStyle: const TextStyle(color: Colors.black),
                                filled: true,
                                hintStyle: new TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontFamily: "Times New Roman",
                                    color: Colors.black),
                                hintText: "Enter Your Code Card",
                                fillColor: Colors.white70),
                            style: TextStyle(color: Colors.black,fontSize: 10),
                          ),SizedBox(height: 10),RaisedButton( padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 48),

                            color: Colors.black,
                            splashColor: Colors.grey,
                            textColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey),
                            ),child: Text("Pay", style: TextStyle(
                                fontFamily: "Times New Roman",
                                fontStyle: FontStyle.italic,
                                color: Colors.white, fontSize: 15)),onPressed: (){

                              var Formdata = Formstate.currentState;
                              if(Formdata.validate()){
                                print("Valid");
                              }else{
                                print("Not Valid");
                              }


                            },),],
                        ),
                        ),

                      ],);
                      });
                    }
                    ),
                  ),),Card(  child: ListTile(
                    title:Text ("مقدمة في التصوير الرقمي"),
                    subtitle: Text("بواسطة المهندس صفاء الكرخي"),
                    leading: Image.asset("images/pics/tswerrkmy.png"),
                    trailing: IconButton(
                        icon: Text("16\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
                      showDialog(context: context, builder: (BuildContext context){Alignment.center;
                      return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center ,),children: <Widget>[
                        Form(key:Formstate, child: Column(
                          children: [TextFormField(
                            validator:(text){
                              if ((text.length<4)) {
                                AwesomeDialog(animType: AnimType.SCALE,
                                    dialogType: DialogType.WARNING,
                                    context: context,
                                    title: "error",
                                    body: Text("Credit Code Is Short."))..show();
                              }  else if(text.length>10){
                                AwesomeDialog(animType: AnimType.SCALE,
                                    dialogType: DialogType.WARNING,
                                    context: context,
                                    title: "error",
                                    body: Text("Credit Code Is Wrong."))..show();

                              } else  {
                                AwesomeDialog(
                                  context: context,
                                  animType: AnimType.SCALE,
                                  dialogType: DialogType.SUCCES,
                                  title: "Success",
                                  body: Center(child: Text(

                                    'Successfully Paid.',
                                    style: TextStyle(fontStyle: FontStyle.italic),
                                  ),),
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(tswerrkmy())));},
                                )..show();
                              }

                            },



                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(12.0),
                                  ),
                                ),

                                suffixStyle: const TextStyle(color: Colors.black),
                                filled: true,
                                hintStyle: new TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontFamily: "Times New Roman",
                                    color: Colors.black),
                                hintText: "Enter Your Code Card",
                                fillColor: Colors.white70),
                            style: TextStyle(color: Colors.black,fontSize: 10),
                          ),SizedBox(height: 10),RaisedButton( padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 48),

                            color: Colors.black,
                            splashColor: Colors.grey,
                            textColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey),
                            ),child: Text("Pay", style: TextStyle(
                                fontFamily: "Times New Roman",
                                fontStyle: FontStyle.italic,
                                color: Colors.white, fontSize: 15)),onPressed: (){

                              var Formdata = Formstate.currentState;
                              if(Formdata.validate()){
                                print("Valid");
                              }else{
                                print("Not Valid");
                              }


                            },),],
                        ),
                        ),

                      ],);
                      });
                    }
                    ),
                  ),),Card(  child: ListTile(
                    title:Text ("Video Games 1982"),
                    subtitle: Text("By Daniel Cohen"),
                    leading: Image.asset("images/pics/videogames.png"),
                    trailing: IconButton(
                        icon: Text("8\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
                      showDialog(context: context, builder: (BuildContext context){Alignment.center;
                      return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center ,),children: <Widget>[
                        Form(key:Formstate, child: Column(
                          children: [TextFormField(
                            validator:(text){
                              if ((text.length<4)) {
                                AwesomeDialog(animType: AnimType.SCALE,
                                    dialogType: DialogType.WARNING,
                                    context: context,
                                    title: "error",
                                    body: Text("Credit Code Is Short."))..show();
                              }  else if(text.length>10){
                                AwesomeDialog(animType: AnimType.SCALE,
                                    dialogType: DialogType.WARNING,
                                    context: context,
                                    title: "error",
                                    body: Text("Credit Code Is Wrong."))..show();

                              } else  {
                                AwesomeDialog(
                                  context: context,
                                  animType: AnimType.SCALE,
                                  dialogType: DialogType.SUCCES,
                                  title: "Success",
                                  body: Center(child: Text(

                                    'Successfully Paid.',
                                    style: TextStyle(fontStyle: FontStyle.italic),
                                  ),),
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(videogames())));},
                                )..show();
                              }

                            },



                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(12.0),
                                  ),
                                ),

                                suffixStyle: const TextStyle(color: Colors.black),
                                filled: true,
                                hintStyle: new TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontFamily: "Times New Roman",
                                    color: Colors.black),
                                hintText: "Enter Your Code Card",
                                fillColor: Colors.white70),
                            style: TextStyle(color: Colors.black,fontSize: 10),
                          ),SizedBox(height: 10),RaisedButton( padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 48),

                            color: Colors.black,
                            splashColor: Colors.grey,
                            textColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey),
                            ),child: Text("Pay", style: TextStyle(
                                fontFamily: "Times New Roman",
                                fontStyle: FontStyle.italic,
                                color: Colors.white, fontSize: 15)),onPressed: (){

                              var Formdata = Formstate.currentState;
                              if(Formdata.validate()){
                                print("Valid");
                              }else{
                                print("Not Valid");
                              }


                            },),],
                        ),
                        ),

                      ],);
                      });
                    }
                    ),
                  ),),
                ],
              ),),


                  ],
        ),
    ),
  );

}
