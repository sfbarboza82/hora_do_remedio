import 'package:flutter/material.dart';
import 'package:hora_do_remedio/view_widget/HomeView.dart';
import 'package:hora_do_remedio/view_widget/LoginView.dart';




void main() {
  runApp(MaterialApp(
    home: LoginView(),
    theme: ThemeData(
      primaryColor: Color(0xff075E54),
          accentColor: Color(0xff25D366)
    ),
    debugShowCheckedModeBanner: false,

  ));
}
