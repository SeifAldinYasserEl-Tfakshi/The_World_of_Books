import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionbooks/dfan.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionbooks/fahd.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionbooks/johns.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionbooks/khyal.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionbooks/madi.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionbooks/mogh.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionbooks/sher.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionbooks/woman.dart';



void main() => runApp(actionstore());

class actionstore extends StatelessWidget {
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
               title:Text ("ظل الفهد الاسود"),
               subtitle: Text("بواسطة الاستاذ اسلام مجدي"),
               leading: Image.asset("images/pics/fahd.png"),
               trailing: IconButton(
                 icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(fahd()))),
               ),
             ),
           ),
           Card(  child: ListTile(
             title:Text ("The Woman Who Disappeared"),
             subtitle: Text("By Philip Prowse"),
             leading: Image.asset("images/pics/woman.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(woman()))),
             ),
           ),),
           Card(  child: ListTile(
             title:Text ("الدفان"),
             subtitle: Text("بواسطة الاستاذ محمد ابو السعود"),
             leading: Image.asset("images/pics/dfan.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(dfan()))),
             ),
           ),),
           Card(  child: ListTile(
             title:Text ("مغامرات هكلبيري فين"),
             subtitle: Text("بواسطة الاستاذ مارك توين"),
             leading: Image.asset("images/pics/mogh.png"),
             trailing: IconButton(
               icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(mogh()))),
             ),
           ),),


         ],
         ),),

              Container(decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("images/pics/back.jpg"),fit: BoxFit.fill)),child: ListView(
                children:<Widget> [Card(  child: ListTile(
                  title:Text ("مغامرات شارلوك هومليز"),
                  subtitle: Text("بواسطة الاستاذ ارثر كونان دويل"),
                  leading: Image.asset("images/pics/sher.png"),
                  trailing: IconButton(
                    icon: Text("23\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                           btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(sher())));},
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

                  },
                  ),
                ),), Card(  child: ListTile(
                  title:Text ("شيء من الماضي"),
                  subtitle: Text("بواسطة الاستاذ عبد الفتاح عبد العزيز"),
                  leading: Image.asset("images/pics/madi.png"),
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
                                btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(madi())));},
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
                  title:Text ("مغامرات مابيل جونز العجيبة"),
                  subtitle: Text("بواسطة الاستاذ ويل مابيت"),
                  leading: Image.asset("images/pics/johns.png"),
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
                                btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(johns())));},
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
                  title:Text ("الخيال القاتل"),
                  subtitle: Text("بواسطة الاستاذة براءة ناجي نصر"),
                  leading: Image.asset("images/pics/khyal.png"),
                  trailing: IconButton(
                      icon: Text("38\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onPressed: (){
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
                                btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(khyal())));},
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
