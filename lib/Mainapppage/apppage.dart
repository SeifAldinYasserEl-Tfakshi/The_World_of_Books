
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:the_world_of_books/Libraries/lab1.dart';
import 'package:the_world_of_books/Libraries/lab10.dart';
import 'package:the_world_of_books/Libraries/lab2.dart';
import 'package:the_world_of_books/Libraries/lab3.dart';
import 'package:the_world_of_books/Libraries/lab4.dart';
import 'package:the_world_of_books/Libraries/lab5.dart';
import 'package:the_world_of_books/Libraries/lab6.dart';
import 'package:the_world_of_books/Libraries/lab7.dart';
import 'package:the_world_of_books/Libraries/lab8.dart';
import 'package:the_world_of_books/Libraries/lab9.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionbooks/dfan.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionbooks/fahd.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionbooks/mogh.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionbooks/sher.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionbooks/woman.dart';
import 'package:the_world_of_books/PdfFirebase/action/actionstore.dart';
import 'package:the_world_of_books/PdfFirebase/economics/economicsbooks/adr.dart';
import 'package:the_world_of_books/PdfFirebase/economics/economicsbooks/borsa.dart';
import 'package:the_world_of_books/PdfFirebase/economics/economicsbooks/khto.dart';
import 'package:the_world_of_books/PdfFirebase/economics/economicsbooks/moamlat.dart';
import 'package:the_world_of_books/PdfFirebase/economics/economicsbooks/tswek.dart';
import 'package:the_world_of_books/PdfFirebase/economics/economicsstore.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationbooks/angularbook.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationbooks/dsabook.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationbooks/englishbook.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationbooks/mathbook.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationbooks/nhaobook.dart';
import 'package:the_world_of_books/PdfFirebase/education/educationstore.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentbooks/alab.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentbooks/cinema.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentbooks/fnrsm.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentbooks/hiphop.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentbooks/videogames.dart';
import 'package:the_world_of_books/PdfFirebase/entertainment/entertainmentstore.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsbooks/ghsan.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsbooks/gluten.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsbooks/nutri.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsbooks/sandwich.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsbooks/tabkh.dart';
import 'package:the_world_of_books/PdfFirebase/foods/foodsstore.dart';
import 'package:the_world_of_books/PdfFirebase/history/historybooks/abasya.dart';
import 'package:the_world_of_books/PdfFirebase/history/historybooks/africa.dart';
import 'package:the_world_of_books/PdfFirebase/history/historybooks/arab.dart';
import 'package:the_world_of_books/PdfFirebase/history/historybooks/hnodhomr.dart';
import 'package:the_world_of_books/PdfFirebase/history/historybooks/sen.dart';
import 'package:the_world_of_books/PdfFirebase/history/historystore.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturesbooks/adb.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturesbooks/arod.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturesbooks/bank.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturesbooks/hekaya.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturesbooks/tarekh.dart';
import 'package:the_world_of_books/PdfFirebase/literature/literaturestore.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesbooks/aklwaatfa.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesbooks/amira.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesbooks/ansak.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesbooks/elhobelkber.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesbooks/hob.dart';
import 'package:the_world_of_books/PdfFirebase/romances/romancesstore.dart';
import 'package:the_world_of_books/PdfFirebase/sciences/sciencesbooks/astronomy.dart';
import 'package:the_world_of_books/PdfFirebase/sciences/sciencesbooks/chemistry.dart';
import 'package:the_world_of_books/PdfFirebase/sciences/sciencesbooks/dynamics.dart';
import 'package:the_world_of_books/PdfFirebase/sciences/sciencesbooks/info.dart';
import 'package:the_world_of_books/PdfFirebase/sciences/sciencesbooks/magntic.dart';
import 'package:the_world_of_books/PdfFirebase/sciences/sciencesstore.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsbooks/fn.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsbooks/handball.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsbooks/sahy.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsbooks/sportphys.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsbooks/twla.dart';
import 'package:the_world_of_books/PdfFirebase/sports/sportsstore.dart';
import 'package:the_world_of_books/Uploadfeedback/feedback.dart';
import 'package:the_world_of_books/Uploadfeedback/feedbacks.dart';
import 'package:the_world_of_books/about.dart';


import 'package:the_world_of_books/Uploadbook/upload.dart';

class apppage extends StatefulWidget {
  @override
  _apppage createState() => _apppage();
}

class _apppage extends State<apppage> {

  GlobalKey<FormState> Formstate = new GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 4,
    child: Scaffold(
      appBar: AppBar(centerTitle: true,
        title: SizedBox(
          child:  Image.asset("images/pics/logo.png"),
        ),

        leading: IconButton(
            icon: Icon(Icons.search),splashColor:Colors.grey,onPressed: (){showSearch(context: context, delegate: search() );}),
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
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.category), text: 'Bookstore'),
            Tab(icon: Icon(Icons.book), text: 'Create Book'),
            Tab(icon: Icon(Icons.place), text: 'Libraries',),
          ],
        ),
        elevation: 20,
        titleSpacing: 20,
      ),endDrawer: Drawer( child: ListView(
      children: <Widget>[
       UserAccountsDrawerHeader(
         decoration: BoxDecoration(
             image: DecorationImage(
                 image: AssetImage("images/pics/logo.png"),fit: BoxFit.fill
             )
         ),
        ),
        ListTile(

          title: Text("Home",style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Times New Roman",color: Colors.black),),
          leading: Icon(Icons.home,color: Colors.black,),
          onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(apppage()))),

        ),
        Divider(color: Colors.black,),


        ListTile(
          title: Text("Feedback",style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Times New Roman",color: Colors.black),),
          leading: Icon(Icons.feedback,color: Colors.black,),
          onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(feedbacks()))),
        ),
        Divider(color: Colors.black,),


        ListTile(
          title: Text("About App",style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Times New Roman",color: Colors.black),),
          leading: Icon(Icons.album_rounded,color: Colors.black,),
          onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(about()))),
        ),

        Divider(color: Colors.black,),
        ListTile(
            title: Text("Sign Out",style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Times New Roman",color: Colors.black),),
            leading: Icon(Icons.person,color: Colors.black,),
            onTap: ()async{

              Navigator.of(context).pushReplacementNamed("SignIn");
            }
        )],
    ),),
      body: TabBarView(
        children:<Widget> [
          Container(decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/pics/back.jpg"),fit: BoxFit.fill
              )
          ),
            child: ListView(
              children:<Widget> [Container(
                height: 238,
                child: Carousel(
                  images: [
                    Image.asset("images/pics/imgnew.jpg",fit: BoxFit.fill,filterQuality: FilterQuality.high,),
                    Image.asset("images/pics/authour.jpg",fit: BoxFit.fill,filterQuality: FilterQuality.high,),
                  ],
                  dotColor: Colors.white,
                  dotBgColor: Colors.black.withOpacity(0.3),
                  dotIncreasedColor: Colors.black,
                  overlayShadow: false,
                  dotSize: 10.0,
                  overlayShadowSize: 8.0,
                  overlayShadowColors: Colors.black,
                  indicatorBgPadding: 5,
                  dotSpacing: 25.0,
                  showIndicator: false, ),
              ),Container(
                child: Text("New Free Books",style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Times New Roman",fontSize: (24),color: Colors.white),),
                margin: EdgeInsetsDirectional.only(top: 18),),
                Container(height: 128,width: 128,
                  child: ListView(scrollDirection: Axis.horizontal,children: <Widget>[
                    Container(height: 100,width: 100,
                      child: ListTile(
                        title: Image.asset("images/pics/nhao.png",height: 100,width: 100,),subtitle: Text("نتائج الفكر في النحو",style:TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                        onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(nhaobook()))),),
                    ),
                    Container(height: 100,width: 100,
                      child: ListTile(
                        title: Image.asset("images/pics/tabkh.jpg",height: 100,width: 100,),subtitle: Text("الطبخ الاسباني ",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                        onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(tabkh()))),),
                    ),Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/magntic.jpg",height: 100,width: 100,),subtitle: Text("المغناطيسية",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(magntic())))),
                    ),Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/adb.jpg",height: 100,width: 100,),subtitle: Text("الادب الحديث",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(adb()))) ),
                    ),Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/handball.jpg",height: 100,width: 100,),subtitle: Text("Handball",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(handball())))  ),
                    ),Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/fahd.jpg",height: 100,width: 100,),subtitle: Text("الفهد الاسود",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(fahd()))) ),),
                    Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/khto.jpg",height: 100,width: 100,),subtitle: Text("الاقتصاد",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(khto()))) ),),Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/abasya.jpg",height: 100,width: 100,),subtitle: Text("العباسية",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(abasya()))) ),),Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/aklwaatfa.jpg",height: 100,width: 100,),subtitle: Text("عاطفة",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(aklwaatfa()))) ),),Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/hiphop.jpg",height: 100,width: 100,),subtitle: Text("HIP-HOP",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(hiphop()))) ),),],),),
                Container(margin: EdgeInsetsDirectional.only(top: 5),
                  child: Text("New Paid Books",style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Times New Roman",fontSize: (24),color: Colors.white),),
                ),Container(height: 128,width: 128,
                  child: ListView(scrollDirection: Axis.horizontal,children: <Widget>[
                    Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/sher.jpg",height: 100,width: 100,),subtitle: Text(" شارلوك",style:TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                          onTap: (){ showDialog(context: context, builder: (BuildContext context){Alignment.center;
                          return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),
                            textAlign: TextAlign.center ,),children: <Widget>[
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
                          });} ),
                    ),
                    Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/hob.jpg",height: 100,width: 100,),subtitle: Text("الحب ",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: (){showDialog(context: context, builder: (BuildContext context){Alignment.center;
                          return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),
                            textAlign: TextAlign.center ,),children: <Widget>[
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
                          });} ),
                    ),Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/videogames.jpg",height: 100,width: 100,),subtitle: Text("VideoGames",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: (){showDialog(context: context, builder: (BuildContext context){Alignment.center;
                          return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),
                            textAlign: TextAlign.center ,),children: <Widget>[
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
                          });}  ),
                    ),Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/hekaya.jpg",height: 100,width: 100,),subtitle: Text("الف حكاية",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: (){showDialog(context: context, builder: (BuildContext context){Alignment.center;
                          return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),
                            textAlign: TextAlign.center ,),children: <Widget>[
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
                          });}  ),
                    ),Container(height: 100,width: 100,
                      child: ListTile(
                        title: Image.asset("images/pics/arab.jpg",height: 100,width: 100,),subtitle: Text("المغرب العربي",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                        onTap: (){showDialog(context: context, builder: (BuildContext context){Alignment.center;
                        return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),
                          textAlign: TextAlign.center ,),children: <Widget>[
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
                        });}, ),
                    ),Container(height: 100,width: 100,
                      child: ListTile(
                        title: Image.asset("images/pics/angularjpeg.jpg",height: 100,width: 100,),subtitle: Text("Angular",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                        onTap: (){showDialog(context: context, builder: (BuildContext context){Alignment.center;
                        return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),
                          textAlign: TextAlign.center ,),children: <Widget>[
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
                        });},),
                    ),Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/borsa.jpg",height: 100,width: 100,),subtitle: Text("البورصة",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: (){showDialog(context: context, builder: (BuildContext context){Alignment.center;
                          return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),
                            textAlign: TextAlign.center ,),children: <Widget>[
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
                                      btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(borsa())));},
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
                          });} ),),Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/nutri.jpg",height: 100,width: 100,),subtitle: Text("الغذاء",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: (){showDialog(context: context, builder: (BuildContext context){Alignment.center;
                          return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),
                            textAlign: TextAlign.center ,),children: <Widget>[
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
                          });} ),),Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/astronomy.jpg",height: 100,width: 100,),subtitle: Text("Astronomy",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: (){showDialog(context: context, builder: (BuildContext context){Alignment.center;
                          return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),
                            textAlign: TextAlign.center ,),children: <Widget>[
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
                                      btnOkOnPress: () {   Navigator.push(context, new MaterialPageRoute(builder: (context)=>(astronomy())));},
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
                          });} ),),Container(height: 100,width: 100,
                      child: ListTile(
                          title: Image.asset("images/pics/twla.jpg",height: 100,width: 100,),subtitle: Text("تنس الطاولة",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,),
                          onTap: (){showDialog(context: context, builder: (BuildContext context){Alignment.center;
                          return SimpleDialog(title: Text(" Payment Process",style: TextStyle(fontSize: 18,),
                            textAlign: TextAlign.center ,),children: <Widget>[
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
                          });} ),),],),),],),),
          Container(decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/pics/back.jpg"),fit: BoxFit.fill
              )
          ),
            child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 12,mainAxisSpacing: 12),
              children: <Widget>[    InkWell(
                child:Container(
                  height: 400,
                  padding: EdgeInsets.symmetric(horizontal:100,vertical:50 ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/pics/1new.jpg"),fit: BoxFit.cover
                    )
                ),
                ),
                onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(entertainmentstore()))),),InkWell(
                child:Container(
                  height: 400,
                  padding: EdgeInsets.symmetric(horizontal:100,vertical:50 ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/pics/6new.jpg"),fit: BoxFit.cover
                    )
                ),
                ),
                onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(actionstore()))),),
                InkWell(
                  child:Container(
                    height: 400,
                    padding: EdgeInsets.symmetric(horizontal:100,vertical:50 ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage("images/pics/2new.jpg"),fit: BoxFit.cover
                      )
                  ),
                  ),
                  onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(foodsstore()))),),
                InkWell(child:Container(
                  height: 400, padding: EdgeInsets.symmetric(horizontal:100,vertical:50 ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/pics/3new.jpg"),fit: BoxFit.cover
                    )
                ),
                ),onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(economicsstore()))),),InkWell(
                  child:Container(
                    height: 400,
                    padding: EdgeInsets.symmetric(horizontal:100,vertical:50 ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage("images/pics/4new.jpg"),fit: BoxFit.cover
                      )
                  ),
                  ),
                  onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(historystore()))),),InkWell(child:Container(
                  height: 400,
                  padding: EdgeInsets.symmetric(horizontal:100,vertical:50 ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/pics/5new.jpg"),fit: BoxFit.cover
                    )
                ),),

                  onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(literaturestore()))), ),InkWell(child:Container(
                  height: 400,
                  padding: EdgeInsets.symmetric(horizontal:100,vertical:50 ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/pics/7new.jpg"),fit: BoxFit.cover
                    )
                ),
                ),onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(educationstore()))),),InkWell(
                  child:Container(
                    height: 400,
                    padding: EdgeInsets.symmetric(horizontal:100,vertical:50 ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage("images/pics/8new.jpg"),fit: BoxFit.cover
                      )
                  ),
                  ),
                  onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(romancesstore()))),),InkWell(
                  child:Container(
                    height: 400,
                    padding: EdgeInsets.symmetric(horizontal:100,vertical:50 ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage("images/pics/9new.jpg"),fit: BoxFit.cover
                      )
                  ),
                  ),
                  onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(sciencesstore()))),),InkWell(
                  child:Container(
                    height: 400,
                    padding: EdgeInsets.symmetric(horizontal:100,vertical:50 ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage("images/pics/10new.jpg"),fit: BoxFit.cover
                      )
                  ),
                  ),
                  onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(sportsstore()))),),
              ],),),

          Container(decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/pics/createbook.jpg"),fit: BoxFit.fill
              )
          ),child: Column(
            children: <Widget>[SizedBox(height: 460),
              Container( child: RaisedButton(padding: EdgeInsets.symmetric(vertical:15.0,horizontal: 28),
                  color: Colors.black,
                  splashColor: Colors.grey,
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey),
                  ),
                  child: Text("Create Book",style: TextStyle(
                      fontFamily: "Times New Roman",
                      fontStyle: FontStyle.italic,
                      color: Colors.white,fontSize: 25)),
                  onPressed:  ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(upload())))

              ),)
            ],
          )
          ),
          Container(decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/pics/back.jpg"),fit: BoxFit.fill
              )
          ),
            child: ListView(
              children:<Widget> [
                Card(
                  child: ListTile(
                    title:Text ("مكتبة القاهرة",style: TextStyle(fontSize: 20),),
                    subtitle: Text("(شارع الصنادقية) محافظة القاهرة",style: TextStyle(fontSize: 20,color: Colors.black),),

                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(lab1()))),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title:Text ("مكتبة مصر العامة الزاوية الحمراء",style: TextStyle(fontSize: 20),),
                    subtitle: Text("(الزاوية الحمراء) محافظة القاهرة",style: TextStyle(fontSize: 20,color: Colors.black),),

                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(lab2()))),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title:Text ("المكتبة الفنية",style: TextStyle(fontSize: 20),),
                    subtitle: Text("(الزمالك) محافظة القاهرة",style: TextStyle(fontSize: 20,color: Colors.black),),

                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(lab3()))),
                    ),
                  ),
                ),

                Card(
                  child: ListTile(
                    title:Text ("مكتبة الثقافة والعلوم",style: TextStyle(fontSize: 20),),
                    subtitle: Text("( الدرب الأحمر) محافظة القاهرة",style: TextStyle(fontSize: 20,color: Colors.black),),

                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(lab4()))),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title:Text ("مكتبة سمير و علي",style: TextStyle(fontSize: 20),),
                    subtitle: Text("(مدينة نصر) محافظة القاهرة",style: TextStyle(fontSize: 20,color: Colors.black),),

                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(lab5()))),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title:Text ("دار النهضة العربية",style: TextStyle(fontSize: 20),),
                    subtitle: Text("(عابدين) محافظة القاهرة",style: TextStyle(fontSize: 20,color: Colors.black),),

                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(lab6()))),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title:Text ("مكتبة بنها العامة",style: TextStyle(fontSize: 20),),
                    subtitle: Text("(بنها الجديدة) محافظة القليوبية",style: TextStyle(fontSize: 20,color: Colors.black),),

                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(lab7()))),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title:Text ("مكتبة المعادي",style: TextStyle(fontSize: 20),),
                    subtitle: Text("(المعادي) محافظة القاهرة",style: TextStyle(fontSize: 20,color: Colors.black),),

                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(lab8()))),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title:Text ("مكتبة الاسكندرية",style: TextStyle(fontSize: 20),),
                    subtitle: Text("(الازريطة) محافظة الاسكندرية",style: TextStyle(fontSize: 20,color: Colors.black),),

                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(lab9()))),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title:Text ("مكتبة القرعلي",style: TextStyle(fontSize: 20),),
                    subtitle: Text("(عرشية مصر) محافظة الاسماعيلية",style: TextStyle(fontSize: 20,color: Colors.black),),

                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(lab10()))),
                    ),
                  ),
                ),

              ],
            ), ),
        ],
      ),
    ),
  );

}
class search extends SearchDelegate{


  @override
  List<Widget> buildActions(BuildContext context) {

    // TODO: implement buildActions
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: (){query="";})
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(icon: Icon(Icons.arrow_back), onPressed: (){close(context, null);});
  }

  @override
  Widget buildResults(BuildContext context) {
    List name1 = ["ظل الفهد الاسود","the woman who disappeared","الدفان","مغامرات هكلبيري فين","خطوات الاولي نحو فهم الاقتصاد","الادارة المالية",
      "احتراف التسويق الالكتروني و الشبكي",
      "المعاملات المالية المعاصرة","نتائج الفكر في النحو","teaching english to children",
      "master math: trigonometry","data structure book","الالعاب العائلية","السينما و الجذور","فن الرسم",
      "the foundations of hip-hop","300 سؤال حول الغذاء و التغذية ","الطبخ الاسباني",
      "gluten free cooking for dummies","sandwich wrap & bun recipes","الدولة العباسية","تاريخ افريقيا",
      "ابادة الهنود الحمر","تاريخ العلم و الحضارة في الصين","الادب العربي الحديث","الادب في عهد العثمانيين و العباسيين",
      "بنك القلق","دراسات في العروض و القافية","عقل و عاطفة",
      "اميرة قلبي","سانساك","حب كبير","الفزياء و الديناميكا الحرارية","الكهربية و المغناطيسية","علم المعلومات و الاتصال",
      "chemistry","teaching handball","مبادئ الفسيولوجيا الرياضية","الثقافة الصحية","فن الدفاع عن النفس"];
    List filtername1= name1.where((element) => element.contains(query)).toList();
    return ListView.builder(itemCount: query=="" ? name1.length : filtername1.length,itemBuilder: (context,i){
      return InkWell(
          child:Container(
              padding: EdgeInsets.all(10),child: query ==""? Text("${name1[i]}",style: TextStyle(fontSize: 25),):Text ("${filtername1[i]}",style: TextStyle(fontSize: 25),)
          ),
          onTap: () {
            query=query==""?name1[i]:filtername1[i];
            if(query=="ظل الفهد الاسود"){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>(fahd())));

            }
            else if(query=="the woman who disappeared"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (woman())));
            }else if(query=="الدفان"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (dfan())));
            }else if(query=="مغامرات هكلبيري فين"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (mogh())));

            }else if(query=="خطوات الاولي نحو فهم الاقتصاد"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (khto())));
            }else if(query=="الادارة المالية"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (adr())));
            }else if(query=="احتراف التسويق الالكتروني و الشبكي"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (tswek())));
            }else if(query=="المعاملات المالية المعاصرة"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (moamlat())));
            }
            else if(query=="نتائج الفكر في النحو"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (nhaobook())));
            }
            else if(query=="teaching english to children"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (englishbook())));
            } else if(query=="master math: trigonometry"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (mathbook())));
            } else if(query=="data structure book"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (dsabook())));
            } else if(query=="الالعاب العائلية"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (alab())));
            } else if(query=="السينما و الجذور"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (cinema())));
            } else if(query=="فن الرسم"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (fnrsm())));
            } else if(query=="the foundations of hip-hop"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (hiphop())));
            } else if(query=="300 سؤال حول الغذاء و التغذية "){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (ghsan())));
            } else if(query=="الطبخ الاسباني"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (tabkh())));
            } else if(query=="gluten free cooking for dummies"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (gluten())));
            } else if(query=="sandwich wrap & bun recipes"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (sandwich())));
            } else if(query=="الدولة العباسية"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (abasya())));
            } else if(query=="تاريخ افريقيا"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (africa())));
            } else if(query=="ابادة الهنود الحمر"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (hnodhomr())));
            } else if(query=="تاريخ العلم و الحضارة في الصين"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (sen())));
            } else if(query=="الادب العربي الحديث"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (adb())));
            }else if(query=="الادب في عهد العثمانيين و العباسيين"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (tarekh())));
            }else if(query=="بنك القلق"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (bank())));
            }else if(query=="دراسات في العروض و القافية"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (arod())));
            }else if(query=="عقل و عاطفة"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (aklwaatfa())));
            }else if(query=="اميرة قلبي"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (amira())));
            }else if(query=="سانساك"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (ansak())));
            }else if(query=="حب كبير"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (elhobelkber())));
            }else if(query=="الفزياء و الديناميكا الحرارية"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (dynamics())));
            }else if(query=="الكهربية و المغناطيسية"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (magntic())));
            }else if(query=="علم المعلومات و الاتصال"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (info())));
            }else if(query=="chemistry"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (chemistry())));
            }else if(query=="teaching handball"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (handball())));
            }else if(query=="مبادئ الفسيولوجيا الرياضية"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (sportphys())));
            }else if(query=="الثقافة الصحية"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (sahy())));
            }else if(query=="فن الدفاع عن النفس"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (fn())));
            }
          }


      );
    });
  }


  @override
  Widget buildSuggestions(BuildContext context) {

    List name1 = ["ظل الفهد الاسود","the woman who disappeared","الدفان","مغامرات هكلبيري فين","خطوات الاولي نحو فهم الاقتصاد","الادارة المالية",
      "احتراف التسويق الالكتروني و الشبكي",
      "المعاملات المالية المعاصرة","نتائج الفكر في النحو","teaching english to children",
      "master math: trigonometry","data structure book","الالعاب العائلية","السينما و الجذور",
      "فن الرسم","the foundations of hip-hop","300 سؤال حول الغذاء و التغذية ","الطبخ الاسباني",
      "gluten free cooking for dummies","sandwich wrap & bun recipes","الدولة العباسية","تاريخ افريقيا",
      "ابادة الهنود الحمر","تاريخ العلم و الحضارة في الصين","الادب العربي الحديث","الادب في عهد العثمانيين و العباسيين"
      ,"بنك القلق","دراسات في العروض و القافية","عقل و عاطفة",
      "اميرة قلبي","سانساك","حب كبير","الفزياء و الديناميكا الحرارية","الكهربية و المغناطيسية","علم المعلومات و الاتصال",
      "chemistry","teaching handball","مبادئ الفسيولوجيا الرياضية","الثقافة الصحية","فن الدفاع عن النفس"];
    List filtername1= name1.where((element) => element.contains(query)).toList();
    return ListView.builder(itemCount: query=="" ? name1.length : filtername1.length,
      itemBuilder: ((context,i){
        return InkWell(
            child:Container(
                padding: EdgeInsets.all(10),child: query ==""? Text("${name1[i]}",style: TextStyle(fontSize: 25),):Text ("${filtername1[i]}",style: TextStyle(fontSize: 25),)
            ),
            onTap: () {
              query=query==""?name1[i]:filtername1[i];
              if(query=="ظل الفهد الاسود"){
                Navigator.push(context, new MaterialPageRoute(builder: (context)=>(fahd())));

              }
              else if(query=="the woman who disappeared"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (woman())));
              }else if(query=="الدفان"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (dfan())));
              }else if(query=="مغامرات هكلبيري فين"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (mogh())));

              }else if(query=="خطوات الاولي نحو فهم الاقتصاد"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (khto())));
              }else if(query=="الادارة المالية"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (adr())));
              }else if(query=="احتراف التسويق الالكتروني و الشبكي"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (tswek())));
              }else if(query=="المعاملات المالية المعاصرة"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (moamlat())));
              }
              else if(query=="نتائج الفكر في النحو"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (nhaobook())));
              }
              else if(query=="teaching english to children"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (englishbook())));
              } else if(query=="master math: trigonometry"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (mathbook())));
              } else if(query=="data structure book"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (dsabook())));
              } else if(query=="الالعاب العائلية"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (alab())));
              } else if(query=="السينما و الجذور"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (cinema())));
              } else if(query=="فن الرسم"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (fnrsm())));
              } else if(query=="the foundations of hip-hop"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (hiphop())));
              } else if(query=="300 سؤال حول الغذاء و التغذية "){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (ghsan())));
              } else if(query=="الطبخ الاسباني"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (tabkh())));
              } else if(query=="gluten free cooking for dummies"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (gluten())));
              } else if(query=="sandwich wrap & bun recipes"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (sandwich())));
              } else if(query=="الدولة العباسية"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (abasya())));
              } else if(query=="تاريخ افريقيا"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (africa())));
              } else if(query=="ابادة الهنود الحمر"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (hnodhomr())));
              } else if(query=="تاريخ العلم و الحضارة في الصين"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (sen())));
              } else if(query=="الادب العربي الحديث"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (adb())));
              }else if(query=="الادب في عهد العثمانيين و العباسيين"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (tarekh())));
              }else if(query=="بنك القلق"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (bank())));
              }else if(query=="دراسات في العروض و القافية"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (arod())));
              }else if(query=="عقل و عاطفة"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (aklwaatfa())));
              }else if(query=="اميرة قلبي"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (amira())));
              }else if(query=="سانساك"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (ansak())));
              }else if(query=="حب كبير"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (elhobelkber())));
              }else if(query=="الفزياء و الديناميكا الحرارية"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (dynamics())));
              }else if(query=="الكهربية و المغناطيسية"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (magntic())));
              }else if(query=="علم المعلومات و الاتصال"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (info())));
              }else if(query=="chemistry"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (chemistry())));
              }else if(query=="teaching handball"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (handball())));
              }else if(query=="مبادئ الفسيولوجيا الرياضية"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (sportphys())));
              }else if(query=="الثقافة الصحية"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (sahy())));
              }else if(query=="فن الدفاع عن النفس"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (fn())));
              }
            }


        );
      }),


    );

  }

}// TODO Implement this library.