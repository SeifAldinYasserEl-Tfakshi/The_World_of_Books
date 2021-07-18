import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:the_world_of_books/Mainapppage/apppage.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturesbooks/adb.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturesbooks/adbhistory.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturesbooks/arod.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturesbooks/asor.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturesbooks/bank.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturesbooks/hekaya.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturesbooks/khyam.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturesbooks/tarekh.dart';



void main() => runApp(literaturestore());

class literaturestore extends StatelessWidget {
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
               title:Text ("الادب العربي الحديث"),
               subtitle: Text("بواسطة الدكتور مسعد بين عيد العطوي"),
               leading: Image.asset("images/pics/adb.png"),
               trailing: IconButton(
                 icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(adb()))),
               ),
             ),
           ),
           Card(  child: ListTile(
             title:Text ("الادب في عهد العثمانيين و العباسيين"),
             subtitle: Text("بةاسطة الاستاذ السباعي بيومي"),
             leading: Image.asset("images/pics/tarekh.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(tarekh()))),
             ),
           ),),
           Card(  child: ListTile(
             title:Text ("بنك القلق"),
             subtitle: Text("بواسطة الاستاذ توفيق الحكيم"),
             leading: Image.asset("images/pics/bank.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(bank()))),
             ),
           ),),
           Card(  child: ListTile(
             title:Text ("دراسات في العروض و القافية"),
             subtitle: Text("بواسطة دكتور عبد الله درويش"),
             leading: Image.asset("images/pics/arod.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(arod()))),
             ),
           ),),

         ],
         ),),



              Container(decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("images/pics/back.jpg"),fit: BoxFit.fill)),child: ListView(
                children:<Widget> [
                  Card(  child: ListTile(
                    title:Text ("الادب العربي و تاريخه"),
                    subtitle: Text("بواسطة الدكتور احمد محمد الحوفي"),
                    leading: Image.asset("images/pics/adbhistory.png"),
                    trailing: IconButton(
                        icon: Text("29\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(adbhistory())));},
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
                    title:Text ("الادب العربي عبر العصور"),
                    subtitle: Text("بواسطة الدكتور محمد محمود كالو"),
                    leading: Image.asset("images/pics/asor.png"),
                    trailing: IconButton(
                        icon: Text("29\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(asor())));},
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
                    title:Text ("الف حكاية و حكاية"),
                    subtitle: Text("بواسطة الاستاذ حسين احمد امين"),
                    leading: Image.asset("images/pics/hekaya.png"),
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(hekaya())));},
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
                    title:Text ("رباعيات الخيام"),
                    subtitle: Text("بواسطة الاستاذ عمر الخيام"),
                    leading: Image.asset("images/pics/khyam.png"),
                    trailing: IconButton(
                        icon: Text("27\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(khyam())));},
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
