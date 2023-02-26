import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ape_coder/main.dart';
import 'package:ape_coder/CPP/CPPLesson.dart';
import 'package:ape_coder/CPP/cppTest.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibration/vibration.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'package:ape_coder/Profile.dart';

late double cplusplusPercent = 0;
late bool Lesson1CheckedCpp = false;
late bool Lesson2CheckedCpp = false;
late bool Lesson3CheckedCpp = false;
late bool Lesson4CheckedCpp = false;
late bool Lesson5CheckedCpp = false;
late bool Lesson6CheckedCpp = false;

class CppLessonsWidget extends StatefulWidget {
  const CppLessonsWidget({Key? key}) : super(key: key);

  @override
  _CppLessonsWidgetState createState() => _CppLessonsWidgetState();
}

class _CppLessonsWidgetState extends State<CppLessonsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 47, 47),
      appBar: AppBar(
        title: const Text("C++ Lessons"),
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
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx < 0) {
            Navigator.of(context).push(SwipeablePageRoute(
              builder: (BuildContext context) => ProfileWidget(),
            ));
          }
        },
        child: Center(
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
                            builder: (context) => CppLessonWidget(
                              lessonName: 'Lesson 1',
                              lessonChecked: Lesson1CheckedCpp,
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
                                icon: Lesson1CheckedCpp
                                    ? Icon(Icons.check_box, size: 30)
                                    : Icon(Icons.check_box_outline_blank,
                                        size: 30),
                                onPressed: () {
                                  setState(() {
                                    Lesson1CheckedCpp = !Lesson1CheckedCpp;
                                  });
                                  if (Lesson1CheckedCpp == true) {
                                    cplusplusPercent += 0.15;
                                  } else {
                                    cplusplusPercent -= 0.15;
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
                            builder: (context) => CppLessonWidget(
                              lessonName: 'Lesson 2',
                              lessonChecked: Lesson2CheckedCpp,
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
                                icon: Lesson2CheckedCpp
                                    ? Icon(Icons.check_box, size: 30)
                                    : Icon(Icons.check_box_outline_blank,
                                        size: 30),
                                onPressed: () {
                                  setState(() {
                                    Lesson2CheckedCpp = !Lesson2CheckedCpp;
                                  });
                                  if (Lesson2CheckedCpp == true) {
                                    cplusplusPercent += 0.15;
                                  } else {
                                    cplusplusPercent -= 0.15;
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
                            builder: (context) => CppLessonWidget(
                              lessonName: 'Lesson 3',
                              lessonChecked: Lesson3CheckedCpp,
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
                                icon: Lesson3CheckedCpp
                                    ? Icon(Icons.check_box, size: 30)
                                    : Icon(Icons.check_box_outline_blank,
                                        size: 30),
                                onPressed: () {
                                  setState(() {
                                    Lesson3CheckedCpp = !Lesson3CheckedCpp;
                                  });
                                  if (Lesson3CheckedCpp == true) {
                                    cplusplusPercent += 0.15;
                                  } else {
                                    cplusplusPercent -= 0.15;
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
                            builder: (context) => CppLessonWidget(
                              lessonName: 'Lesson 4',
                              lessonChecked: Lesson4CheckedCpp,
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
                                icon: Lesson4CheckedCpp
                                    ? Icon(Icons.check_box, size: 30)
                                    : Icon(Icons.check_box_outline_blank,
                                        size: 30),
                                onPressed: () {
                                  setState(() {
                                    Lesson4CheckedCpp = !Lesson4CheckedCpp;
                                  });
                                  if (Lesson4CheckedCpp == true) {
                                    cplusplusPercent += 0.15;
                                  } else {
                                    cplusplusPercent -= 0.15;
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
                            builder: (context) => CppLessonWidget(
                              lessonName: 'Lesson 5',
                              lessonChecked: Lesson5CheckedCpp,
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
                                icon: Lesson5CheckedCpp
                                    ? Icon(Icons.check_box, size: 30)
                                    : Icon(Icons.check_box_outline_blank,
                                        size: 30),
                                onPressed: () {
                                  setState(() {
                                    Lesson5CheckedCpp = !Lesson5CheckedCpp;
                                  });
                                  if (Lesson5CheckedCpp == true) {
                                    cplusplusPercent += 0.15;
                                  } else {
                                    cplusplusPercent -= 0.15;
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
                            builder: (context) => CppLessonWidget(
                              lessonName: 'Lesson 6',
                              lessonChecked: Lesson6CheckedCpp,
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
                                icon: Lesson6CheckedCpp
                                    ? Icon(Icons.check_box, size: 30)
                                    : Icon(Icons.check_box_outline_blank,
                                        size: 30),
                                onPressed: () {
                                  setState(() {
                                    Lesson6CheckedCpp = !Lesson6CheckedCpp;
                                  });
                                  if (Lesson6CheckedCpp == true) {
                                    cplusplusPercent += 0.15;
                                  } else {
                                    cplusplusPercent -= 0.15;
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
                            "For the STL Library Click Here",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          onTap: () => launch('https://cplusplus.com'),
                        ),
                        SizedBox(height: 15.0),
                        SizedBox(
                          width: 350.0,
                          height: 50.0,
                          child: ElevatedButton(
                            onPressed: () => {
                              if (Lesson1CheckedCpp &&
                                  Lesson2CheckedCpp &&
                                  Lesson3CheckedCpp &&
                                  Lesson4CheckedCpp &&
                                  Lesson5CheckedCpp &&
                                  Lesson6CheckedCpp)
                                {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => CppTestWidget(),
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
                                            "Complete all lessons before taking the test!",
                                            style: TextStyle(fontSize: 14)),
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
      ),
    );
  }
}
