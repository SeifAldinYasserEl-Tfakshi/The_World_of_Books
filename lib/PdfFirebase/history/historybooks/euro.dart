import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';



class euro extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<euro> {
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
    final url = "https://firebasestorage.googleapis.com/v0/b/the-world-of-books-60b2e.appspot.com/o/History%2FNoor-Book.com%20%20%D8%A7%D9%84%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE%20%D8%A7%D9%84%D8%AD%D8%AF%D9%8A%D8%AB%20%D9%88%D8%A7%D9%84%D9%85%D8%B9%D8%A7%D8%B5%D8%B1%20%D8%B9%D8%B5%D8%B1%20%D8%A7%D9%84%D9%86%D9%87%D8%B6%D8%A9%20%D8%A7%D9%84%D8%A3%D9%88%D8%B1%D9%88%D8%A8%D9%8A%D8%A9%20%D8%A5%D8%B3%D8%AD%D9%82%20%D8%B9%D8%A8%D9%8A%D8%AF%203%20.pdf?alt=media&token=993b56fb-e7f4-484b-9924-04caccb12dde";
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
            image: AssetImage("images/pics/euro.jpg"),fit: BoxFit.fill,
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