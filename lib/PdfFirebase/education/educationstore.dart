import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:the_world_of_books/Mainapppage/apppage.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationbooks/angularbook.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationbooks/dsabook.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationbooks/englishbook.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationbooks/jsckidsbook.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationbooks/lawbook.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationbooks/mathbook.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationbooks/mohsbabook.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationbooks/nhaobook.dart';

void main() => runApp(educationstore());

class educationstore extends StatelessWidget {
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
                Card(  child: ListTile(
                  title:Text ("نتائج الفكر في النحو"),
                  subtitle: Text("بواسطة الشيخ ابي القاسم عبد الرحمن بن عبد الله السهيلي"),
                  leading: Image.asset("images/pics/nhao.png"),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(nhaobook()))),
                  ),
                ),),

                Card(  child: ListTile(
                  title:Text ("Teaching English to Children"),
                  subtitle: Text("By Wendy A. Scott and Lisbeth H. Ytreberg"),
                  leading: Image.asset("images/pics/englishbook.png"),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(englishbook()))),
                  ),
                ),),
                Card(  child: ListTile(
                  title:Text ("Master Math: Trigonometry "),
                  subtitle: Text("By Debra Anne Ross"),
                  leading: Image.asset("images/pics/mathbook.png"),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(mathbook()))),
                  ),
                ),),
                Card(  child: ListTile(
                  title:Text ("Data Structure Book"),
                  subtitle: Text("By  Granville Barnett and Luca Del Tongo"),
                  leading: Image.asset("images/pics/dsa.png"),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(dsabook()))),
                  ),
                ),),

              ],
              ),),


        Container(decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("images/pics/back.jpg"),fit: BoxFit.fill)),child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title:Text ("Angluar Javascript "),
                subtitle: Text("By GoalKicker.com"),
                leading: Image.asset("images/pics/angular.png"),
                trailing: IconButton(
                    icon: Text("15\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                              btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(angularbook())));},
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
              ),
            ),

            Card(  child: ListTile(
              title:Text ("محاسبة"),
              subtitle: Text("بواسطة الاستاذ محمد مصطفي مصطفي فايد"),
              leading: Image.asset("images/pics/mohsba.png"),
              trailing: IconButton(
                  icon: Text("35\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                            btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(mohsbabook())));},
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
              title:Text ("Javascript For Kids"),
              subtitle: Text("By Nick Morgan"),
              leading: Image.asset("images/pics/jsckid.png"),
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
                              btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(jsckidsbook())));},
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
              title:Text ("مبادئ علم الجزاء الجنائي"),
              subtitle: Text("بواسطة الدكتور محمد رمضان بارة"),
              leading: Image.asset("images/pics/law.png"),
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
                            btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(lawbook())));},
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
