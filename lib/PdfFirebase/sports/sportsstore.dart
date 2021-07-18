import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:the_world_of_books/Mainapppage/apppage.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsbooks/fn.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsbooks/handball.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsbooks/khel.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsbooks/martial.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsbooks/sahy.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsbooks/sbaha.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsbooks/sportphys.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsbooks/twla.dart';

void main() => runApp(sportsstore());

class sportsstore extends StatelessWidget {
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
               title:Text ("Teaching Handball"),
               subtitle: Text("By Dr Ilona Hapková"),
               leading: Image.asset("images/pics/handball.png"),
               trailing: IconButton(
                 icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(handball()))),
               ),
             ),
           ),
           Card(  child: ListTile(
             title:Text ("مبادئ الفسيولوجيا الرياضية"),
             subtitle: Text("بواسطة الدكتورة سميعه خليل محمد امين"),
             leading: Image.asset("images/pics/sportphys.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(sportphys()))),
             ),
           ),),
           Card(  child: ListTile(
             title:Text ("الثقافة الصحية"),
             subtitle: Text("بواسطة الدكتور محمد بشير شريم"),
             leading: Image.asset("images/pics/sahy.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(sahy()))),
             ),
           ),),
           Card(  child: ListTile(
             title:Text ("فن الدفاع عن النفس"),
             subtitle: Text("بواسطة الاستاذ محمد محمود المندلاوي"),
             leading: Image.asset("images/pics/fn.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(fn()))),
             ),
           ),),

         ],
         ),),



              Container(decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("images/pics/back.jpg"),fit: BoxFit.fill)),child: ListView(
                children: <Widget>[
                  Card(  child: ListTile(
                    title:Text ("Martial Arts and Well-Being"),
                    subtitle: Text("By Carol Fuller with Viki Lloyd"),
                    leading: Image.asset("images/pics/martial.png"),
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(martial())));},
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
                    title:Text ("تعلم تنس الطاولة"),
                    subtitle: Text("بواسطة الكابتن اسامة سعيد حامد الصباغ"),
                    leading: Image.asset("images/pics/twla.png"),
                    trailing: IconButton(
                        icon: Text("20\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(twla())));},
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
                    title:Text ("السباحة"),
                    subtitle: Text("بواسطة الدكتورة سميره عرابي"),
                    leading: Image.asset("images/pics/sbaha.png"),
                    trailing: IconButton(
                        icon: Text("28\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(sbaha())));},
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
                    title:Text ("الخيل رياضة الاباء و الاجداد"),
                    subtitle: Text("بواسطة الدكتور صلاح محمد الجيدة"),
                    leading: Image.asset("images/pics/khel.png"),
                    trailing: IconButton(
                        icon: Text("34\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(khel())));},
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
