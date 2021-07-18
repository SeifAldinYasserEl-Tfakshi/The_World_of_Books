import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:the_world_of_books/Mainapppage/apppage.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsbooks/cook.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsbooks/ghsan.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsbooks/gluten.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsbooks/nutri.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsbooks/sandwich.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsbooks/satvic.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsbooks/tabkh.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsbooks/wild.dart';

void main() => runApp(foodsstore());

class foodsstore extends StatelessWidget {
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
  title:Text ("300 سؤال حول الغذاء و التغذية "),
  subtitle: Text("بواسطة الاستاذ غسان فيصا محسن"),
  leading: Image.asset("images/pics/ghsan.png"),
  trailing: IconButton(
  icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(ghsan()))),
  ),
  ),
  ),
  Card(  child: ListTile(
  title:Text ("الطبخ الاسباني"),
  subtitle: Text("بواسطة الشيف مايا شوقي"),
  leading: Image.asset("images/pics/tabkh.png"),
  trailing: IconButton(
  icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(tabkh()))),
  ),
  ),),
  Card(  child: ListTile(
  title:Text ("Gluten Free Cooking For Dummies"),
  subtitle: Text("By Conne Sarros"),
  leading: Image.asset("images/pics/gluten.png"),
  trailing: IconButton(
  icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(gluten()))),
  ),
  ),),
  Card(  child: ListTile(
  title:Text ("Sandwich Wrap & Bun Recipes"),
  subtitle: Text("From obooko Website"),
  leading: Image.asset("images/pics/sandwich.png"),
  trailing: IconButton(
  icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(sandwich()))),
  ),
  ),),

  ],
  ),),



        Container(decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("images/pics/back.jpg"),fit: BoxFit.fill)),child: ListView(
          children: <Widget>[  Card(  child: ListTile(
            title:Text ("Satvic Movement The Food Book "),
            subtitle: Text("By Subah Jain"),
            leading: Image.asset("images/pics/satvic.png"), trailing: IconButton(
              icon: Text("13\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                        btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(satvic())));},
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
              title:Text ("الغذاء و التغذية"),
              subtitle: Text("بواسطة نخبة من اساتذة جامعات العالم العربي"),
              leading: Image.asset("images/pics/nutri.png"),
              trailing: IconButton(
                  icon: Text("11\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                            btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(nutri())));},
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
              title:Text ("Wild Delights"),
              subtitle: Text("By CHURCHILLWILD.COM "),
              leading: Image.asset("images/pics/wild.png"),
              trailing: IconButton(
                  icon: Text("10\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                            btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(wild())));},
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
              title:Text ("Cook Italian"),
              subtitle: Text("By Mrs. W. G. Waters"),
              leading: Image.asset("images/pics/cook.png"),
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
                            btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(cook())));},
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
