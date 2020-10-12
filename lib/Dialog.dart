import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_in/sign_up/sign_up_screen.dart';

class CustomDialog extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;

  static String routeName = "/Dialog";

  CustomDialog({this.title, this.description, this.buttonText, this.image});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        padding: EdgeInsets.only(
          top: 100,
          bottom: 16,
          left: 16,
          right: 16,
        ),
        margin: EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(17),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              )
            ]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(description,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.red)),
            SizedBox(height: 24.0),
            Align(
              alignment: Alignment.bottomCenter,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SignUpScreen()));
                },
                child: Text("SignUp"),
              ),
            )
          ],
        ),
      ),
      Positioned(
        top: 0,
        left: 16,
        right: 16,
        child: CircleAvatar(
          backgroundColor: Colors.blueAccent,
          radius: 50,
          backgroundImage: AssetImage('assets/okay.gif'),
        ),
      )
    ]);
  }
}
