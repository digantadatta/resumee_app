import 'package:diganta_resumee/about.dart';
import 'package:diganta_resumee/home.dart';
import 'package:diganta_resumee/projects.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => MyHome(),
        'about': ((context) => MyAbout()),
        'projects': ((context) => MyProjects())
      }));
}
