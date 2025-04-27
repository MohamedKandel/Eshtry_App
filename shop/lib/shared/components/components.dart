import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget verticalSpace(height) => SizedBox(height: height);

Widget horizontalSpace(width) => SizedBox(width: width);

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateToAndEndPrevious(context, widget) =>
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => widget));
