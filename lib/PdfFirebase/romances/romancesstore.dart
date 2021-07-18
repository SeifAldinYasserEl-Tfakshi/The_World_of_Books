import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:the_world_of_books/Mainapppage/apppage.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesbooks/aklwaatfa.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesbooks/amira.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesbooks/ansak.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesbooks/elhobelkber.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesbooks/hob.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesbooks/hobmozlm.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesbooks/hobwkafa.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesbooks/lknyahobk.dart';

void main() => runApp(romancesstore());

class romancesstore extends StatelessWidget {
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
               title:Text ("عقل و عاطفة"),
               subtitle: Text("بواسطة الاستاذة جين اوستن"),
               leading: Image.asset("images/pics/aklwaatfa.png"),
               trailing: IconButton(
                 icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(aklwaatfa()))),
               ),
             ),
           ),
           Card(  child: ListTile(
             title:Text ("اميرة قلبي"),
             subtitle: Text("بواسطة الاستاذة فاطمة محمد"),
             leading: Image.asset("images/pics/amira.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(amira()))),
             ),
           ),),
           Card(  child: ListTile(
             title:Text ("سانساك"),
             subtitle: Text("بواسطة الاستاذ عماد عشا"),
             leading: Image.asset("images/pics/ansak.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(ansak()))),
             ),
           ),),
           Card(  child: ListTile(
             title:Text ("حب كبير"),
             subtitle: Text("بواسطة الاستاذ نافيد كيرماني"),
             leading: Image.asset("images/pics/elhobelkber.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(elhobelkber()))),
             ),
           ),),

         ],
         ),),



              Container(decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("images/pics/back.jpg"),fit: BoxFit.fill)),child: ListView(
                children: <Widget>[
                  Card(  child: ListTile(
                    title:Text ("الحب"),
                    subtitle: Text("بواسطة الاستاذ نزار القباني"),
                    leading: Image.asset("images/pics/hob.png"),
                    trailing: IconButton(
                        icon: Text("31\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(hob())));},
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
                    title:Text ("حب مظلم"),
                    subtitle: Text("بواسطة الاستاذة تقوي كحيط"),
                    leading: Image.asset("images/pics/hobmozlm.png"),
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(hobmozlm())));},
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
                    title:Text ("احبك و كفي"),
                    subtitle: Text("بواسطة الاستاذ محمد السالم"),
                    leading: Image.asset("images/pics/hobwkafa.png"),
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(hobwkafa())));},
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
                    title:Text ("ولكني مازلت احبك"),
                    subtitle: Text("بواسطة الاستاذ صابر حجازي"),
                    leading: Image.asset("images/pics/lknyahobk.png"),
                    trailing: IconButton(
                        icon: Text("18\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                  btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(lknyahobk())));},
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
