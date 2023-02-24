import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ape_coder/main.dart';
import 'package:ape_coder/Javascript/JavascriptLesson.dart';
import 'package:ape_coder/Javascript/JavascriptTest.dart';
import 'package:shared_preferences/shared_preferences.dart';

late double JavascriptPercent = 0;
late bool Lesson1CheckedJavascript = false;
late bool Lesson2CheckedJavascript = false;
late bool Lesson3CheckedJavascript = false;
late bool Lesson4CheckedJavascript = false;
late bool Lesson5CheckedJavascript = false;
late bool Lesson6CheckedJavascript = false;

class JavascriptLessonsWidget extends StatefulWidget {
  const JavascriptLessonsWidget({Key? key}) : super(key: key);

  @override
  _JavascriptLessonsWidgetState createState() =>
      _JavascriptLessonsWidgetState();
}

class _JavascriptLessonsWidgetState extends State<JavascriptLessonsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 47, 47),
      appBar: AppBar(
        title: const Text("Javascript Lessons"),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => LanguagesScreenWidget(),
            ),
          ),
        ),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  //--------------------------------------------------------------------------------
                  // LESSON 1
                  SizedBox(height: 60.0),
                  GestureDetector(
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => JavascriptLessonWidget(
                            lessonName: 'Lesson 1',
                            lessonChecked: Lesson1CheckedJavascript,
                          ),
                        ),
                      ),
                    },
                    child: new Container(
                      height: 100.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      child: Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: new Text(
                                "Lesson 1",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 160),
                            child: IconButton(
                              icon: Lesson1CheckedJavascript
                                  ? Icon(Icons.check_box, size: 30)
                                  : Icon(Icons.check_box_outline_blank,
                                      size: 30),
                              onPressed: () {
                                setState(() {
                                  Lesson1CheckedJavascript =
                                      !Lesson1CheckedJavascript;
                                });
                                if (Lesson1CheckedJavascript == true) {
                                  JavascriptPercent += 0.15;
                                } else {
                                  JavascriptPercent -= 0.15;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //--------------------------------------------------------------------------------
                  // LESSON 2
                  SizedBox(height: 40.0),
                  GestureDetector(
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => JavascriptLessonWidget(
                            lessonName: 'Lesson 2',
                            lessonChecked: Lesson2CheckedJavascript,
                          ),
                        ),
                      ),
                    },
                    child: new Container(
                      height: 100.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      child: Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: new Text(
                                "Lesson 2",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 160),
                            child: IconButton(
                              icon: Lesson2CheckedJavascript
                                  ? Icon(Icons.check_box, size: 30)
                                  : Icon(Icons.check_box_outline_blank,
                                      size: 30),
                              onPressed: () {
                                setState(() {
                                  Lesson2CheckedJavascript =
                                      !Lesson2CheckedJavascript;
                                });
                                if (Lesson2CheckedJavascript == true) {
                                  JavascriptPercent += 0.15;
                                } else {
                                  JavascriptPercent -= 0.15;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //--------------------------------------------------------------------------------
                  // LESSON 3
                  SizedBox(height: 40.0),
                  GestureDetector(
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => JavascriptLessonWidget(
                            lessonName: 'Lesson 3',
                            lessonChecked: Lesson3CheckedJavascript,
                          ),
                        ),
                      ),
                    },
                    child: new Container(
                      height: 100.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      child: Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: new Text(
                                "Lesson 3",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 160),
                            child: IconButton(
                              icon: Lesson3CheckedJavascript
                                  ? Icon(Icons.check_box, size: 30)
                                  : Icon(Icons.check_box_outline_blank,
                                      size: 30),
                              onPressed: () {
                                setState(() {
                                  Lesson3CheckedJavascript =
                                      !Lesson3CheckedJavascript;
                                });
                                if (Lesson3CheckedJavascript == true) {
                                  JavascriptPercent += 0.15;
                                } else {
                                  JavascriptPercent -= 0.15;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //--------------------------------------------------------------------------------
                  // LESSON 4
                  SizedBox(height: 40.0),
                  GestureDetector(
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => JavascriptLessonWidget(
                            lessonName: 'Lesson 4',
                            lessonChecked: Lesson4CheckedJavascript,
                          ),
                        ),
                      ),
                    },
                    child: new Container(
                      height: 100.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      child: Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: new Text(
                                "Lesson 4",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 160),
                            child: IconButton(
                              icon: Lesson4CheckedJavascript
                                  ? Icon(Icons.check_box, size: 30)
                                  : Icon(Icons.check_box_outline_blank,
                                      size: 30),
                              onPressed: () {
                                setState(() {
                                  Lesson4CheckedJavascript =
                                      !Lesson4CheckedJavascript;
                                });
                                if (Lesson4CheckedJavascript == true) {
                                  JavascriptPercent += 0.15;
                                } else {
                                  JavascriptPercent -= 0.15;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //--------------------------------------------------------------------------------
                  // LESSON 5
                  SizedBox(height: 40.0),
                  GestureDetector(
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => JavascriptLessonWidget(
                            lessonName: 'Lesson 5',
                            lessonChecked: Lesson5CheckedJavascript,
                          ),
                        ),
                      ),
                    },
                    child: new Container(
                      height: 100.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      child: Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: new Text(
                                "Lesson 5",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 160),
                            child: IconButton(
                              icon: Lesson5CheckedJavascript
                                  ? Icon(Icons.check_box, size: 30)
                                  : Icon(Icons.check_box_outline_blank,
                                      size: 30),
                              onPressed: () {
                                setState(() {
                                  Lesson5CheckedJavascript =
                                      !Lesson5CheckedJavascript;
                                });
                                if (Lesson5CheckedJavascript == true) {
                                  JavascriptPercent += 0.15;
                                } else {
                                  JavascriptPercent -= 0.15;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),

                  //--------------------------------------------------------------------------------
                  // LESSON 6
                  GestureDetector(
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => JavascriptLessonWidget(
                            lessonName: 'Lesson 6',
                            lessonChecked: Lesson6CheckedJavascript,
                          ),
                        ),
                      ),
                    },
                    child: new Container(
                      height: 100.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      child: Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: new Text(
                                "Lesson 6",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 160),
                            child: IconButton(
                              /* icon: const Icon(Icons.check_box_outline_blank,
                                  size: 30), */
                              icon: Lesson6CheckedJavascript
                                  ? Icon(Icons.check_box, size: 30)
                                  : Icon(Icons.check_box_outline_blank,
                                      size: 30),
                              onPressed: () {
                                setState(() {
                                  Lesson6CheckedJavascript =
                                      !Lesson6CheckedJavascript;
                                });
                                if (Lesson6CheckedJavascript == true) {
                                  JavascriptPercent += 0.15;
                                } else {
                                  JavascriptPercent -= 0.15;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 120.0),
                ],
              ),
            ),
            Positioned(
              //position at bottom
              bottom: 0,
              left: 0,
              right: 0, //set left right to 0 for 100% width
              child: Container(
                //your bototm widget tree
                height: 100,
                color: Color.fromARGB(255, 47, 47, 47),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      new InkWell(
                        child: Text(
                          "For the Javascript website Click Here",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        onTap: () => launch('https://www.javascript.com/'),
                      ),
                      SizedBox(height: 15.0),
                      SizedBox(
                        width: 350.0,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () => {
                            if (Lesson1CheckedJavascript &&
                                Lesson2CheckedJavascript &&
                                Lesson3CheckedJavascript &&
                                Lesson4CheckedJavascript &&
                                Lesson5CheckedJavascript &&
                                Lesson6CheckedJavascript)
                              {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        JavascriptTestWidget(),
                                  ),
                                ),
                              }
                            else
                              {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.red,
                                    duration: Duration(seconds: 3),
                                    content: Container(
                                      padding: EdgeInsets.all(16),
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                      child: Text(
                                          "Complete all lessons before taking the final test!",
                                          style: TextStyle(fontSize: 20)),
                                    ),
                                  ),
                                )
                              }
                          },
                          child: Text(
                            "Take Test",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28.0),
                                side: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
