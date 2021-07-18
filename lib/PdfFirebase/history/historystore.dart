import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:the_world_of_books/Mainapppage/apppage.dart';
import 'package:the_world_of_books/PdfFirebase/history/historybooks/abasya.dart';
import 'package:the_world_of_books/PdfFirebase/history/historybooks/africa.dart';
import 'package:the_world_of_books/PdfFirebase/history/historybooks/andalos.dart';
import 'package:the_world_of_books/PdfFirebase/history/historybooks/arab.dart';
import 'package:the_world_of_books/PdfFirebase/history/historybooks/euro.dart';
import 'package:the_world_of_books/PdfFirebase/history/historybooks/hadaramasrya.dart';
import 'package:the_world_of_books/PdfFirebase/history/historybooks/hnodhomr.dart';
import 'package:the_world_of_books/PdfFirebase/history/historybooks/sen.dart';

void main() => runApp(historystore());

class historystore extends StatelessWidget {
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
               title:Text ("الدولة العباسية"),
               subtitle: Text("بواسطة الشيخ محمد الخضري بك"),
               leading: Image.asset("images/pics/abasya.png"),
               trailing: IconButton(
                 icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(abasya()))),
               ),
             ),
           ),
           Card(  child: ListTile(
             title:Text ("تاريخ افريقيا"),
             subtitle: Text("بواسطة الدكتور فرغلي علي تسن هريدي"),
             leading: Image.asset("images/pics/africa.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(africa()))),
             ),
           ),),
     Card(  child: ListTile(
             title:Text ("ابادة الهنود الحمر"),
             subtitle: Text("بواسطة الدكتور ناصر محي الدين ملوحي"),
             leading: Image.asset("images/pics/hnodhomr.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(hnodhomr()))),
             ),
           ),),Card(  child: ListTile(
             title:Text ("تاريخ العلم و الحضارة في الصين"),
             subtitle: Text("بواسطة الاستاذ جوزيف نيدهام"),
             leading: Image.asset("images/pics/sen.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(sen()))),
             ),
           ),),
         ],
         ),),



              Container(decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("images/pics/back.jpg"),fit: BoxFit.fill)),child: ListView(
                children: <Widget>[
                  Card(  child: ListTile(
                    title:Text ("الاندلس التاريخ و الحضارة و المحنة"),
                    subtitle: Text("بواسطة الدكتور محمد عبده حتامله"),
                    leading: Image.asset("images/pics/andalos.png"),
                    trailing: IconButton(
                        icon: Text("24\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(andalos())));},
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
                    title:Text ("المغرب العربي في التاريخ الحديث"),
                    subtitle: Text("بواسطة الدكتور صلاح العقاد"),
                    leading: Image.asset("images/pics/arab.png"),
                    trailing: IconButton(
                        icon: Text("26\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(arab())));},
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
                    title:Text ("عصر النهضة الاوروبية"),
                    subtitle: Text("بواسطة الدكتور اسحق عبيد"),
                    leading: Image.asset("images/pics/euro.png"),
                    trailing: IconButton(
                        icon: Text("21\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(euro())));},
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
                    title:Text ("موسوعة الحضارة المصرية"),
                    subtitle: Text("بواسطة الدكتور سمير اديب"),
                    leading: Image.asset("images/pics/hadaramasrya.png"),
                    trailing: IconButton(
                        icon: Text("22\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(hadaramasrya())));},
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
