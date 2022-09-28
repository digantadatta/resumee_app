import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  myPro(lang, title, desc, star) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 10, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(height: 15),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3),
              Text(
                desc,
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.white70, size: 18),
                  Text(star, style: TextStyle(color: Colors.white)),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.github),
                    color: Colors.white70,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color(0xff252525),
          title: Text('Projects'),
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  myPro('Flutter', 'Cook2Dish', 'Fun Project', '14'),
                  myPro('Python', 'Life Care', 'Welcome to project', '19'),
                  myPro('Java', 'Pro Code', 'I am good boy', '22'),
                  myPro('Kotlin', 'pro 1', 'This is a beta project', '30'),
                  myPro('Android Java', 'Login Portal', 'This is login project',
                      '54')
                ]),
          ),
        ));
  }
}
