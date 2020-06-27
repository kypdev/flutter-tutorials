import 'package:flutter/material.dart';

Widget customRaiseButton({
  BuildContext context,
  Function action,
  String btnName,
  Color btnColor,
  Color btnColorName,
}) {
  return RaisedButton(
    onPressed: action,
    color: btnColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Container(
      width: MediaQuery.of(context).size.width,
      child: Text(
        btnName,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: btnColorName, fontSize: 16.0, fontWeight: FontWeight.w700),
      ),
    ),
  );
}
