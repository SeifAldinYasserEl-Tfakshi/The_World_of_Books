import 'package:flutter/material.dart';

class ButtonWidgetfeedback extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onClicked;

  const ButtonWidgetfeedback({
    Key key,
     this.icon,
     this.text,
    this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton( padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 38),
    color: Colors.black,
    splashColor: Colors.grey,
    textColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(color: Colors.grey),
    ),
    child: buildContent(),
    onPressed: onClicked,
  );

  Widget buildContent() => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, size: 28),
      SizedBox(width: 16),
      Text(
        text,
        style: TextStyle(fontStyle:FontStyle.italic,fontFamily:"Times New Roman",fontSize: 20, color: Colors.white),
      ),
    ],
  );
}
// TODO Implement this library.