import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';



class info extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<info> {
  String pathPDF = "";

  @override
  void initState() {
    super.initState();
    createFileOfPdfUrl().then((f) {
      setState(() {
        pathPDF = f.path;
        print(pathPDF);
      });
    });
  }

  Future<File> createFileOfPdfUrl() async {
    final url = "https://firebasestorage.googleapis.com/v0/b/the-world-of-books-60b2e.appspot.com/o/Sciences%2Finfo.pdf?alt=media&token=bd95ad74-1f25-4ea8-aa84-d8bc39431c2c";
    final filename = url.substring(url.lastIndexOf("/") + 1);
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,centerTitle: true,title: SizedBox(
        child:  Image.asset("images/pics/logo.png"),),),
      body: Container(width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/pics/info.jpg"),fit: BoxFit.fill,
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
              child: Text("Enjoy",style: TextStyle(
                  fontFamily: "Times New Roman",
                  fontStyle: FontStyle.italic,
                  color: Colors.white,fontSize: 25)),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PDFScreen(pathPDF)),
              ),
            ),)
          ],
        )

      ),
    );
  }
}

class PDFScreen extends StatelessWidget {
  String pathPDF = "";
  PDFScreen(this.pathPDF);

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(

        path: pathPDF);
  }
}