import 'package:flutter/material.dart';
import 'package:ape_coder/CPP/cppLessonAnswer.dart';
import 'package:ape_coder/CPP/cppLessons.dart';

const backgroundcolor = Color.fromARGB(255, 47, 47, 47);

late bool cppCompleted = false,
    javaCompleted = false,
    JavascriptCompleted = false;
late String levels = '';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final _textController = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();
  String userPost = '';

  @override
  Widget build(BuildContext context) {
    if (cppCompleted && !levels.contains('C++ Gorilla')) {
      levels = levels + ' C++ Gorilla';
    }
    if (javaCompleted && !levels.contains('Java Gorilla')) {
      levels = levels + ' Java Gorilla';
    }
    if (JavascriptCompleted && !levels.contains('Javascript Gorilla')) {
      levels = levels + ' Javascript Gorilla';
    }
    return (Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
          title: const Text("My Profile"),
          centerTitle: true,
          backgroundColor: Colors.black),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              height: 80.0,
              width: 350.0,
              decoration: BoxDecoration(
                color: backgroundcolor,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(color: Colors.white, width: 1.5),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 40),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _textController,
                      maxLines: 1,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        filled: true,
                        fillColor: backgroundcolor,
                        hintText: 'Type Your Name',
                        hintStyle: TextStyle(color: Colors.white),
                        contentPadding: EdgeInsets.symmetric(vertical: 2),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          children: <Widget>[
                            Text(
                              levels,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(height: 150),
            Container(
              height: 80.0,
              width: 350.0,
              decoration: BoxDecoration(
                color: backgroundcolor,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(color: Colors.white, width: 1.5),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 40),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 260, top: 10),
                      child: Text(
                        "Email",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: TextField(
                        controller: _textController2,
                        maxLines: 1,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          filled: true,
                          fillColor: backgroundcolor,
                          hintText: 'Type Your Email',
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 13),
                          contentPadding: EdgeInsets.symmetric(vertical: 2),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 150),
            Container(
              height: 80.0,
              width: 350.0,
              decoration: BoxDecoration(
                color: backgroundcolor,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(color: Colors.white, width: 1.5),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 40),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 200, top: 10),
                      child: Text(
                        "Phone Number",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: TextField(
                        controller: _textController3,
                        maxLines: 1,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          filled: true,
                          fillColor: backgroundcolor,
                          hintText: 'Type Your Phone Number',
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 13),
                          contentPadding: EdgeInsets.symmetric(vertical: 2),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
