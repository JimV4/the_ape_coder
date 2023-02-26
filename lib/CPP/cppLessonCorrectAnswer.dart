import 'package:flutter/material.dart';
import 'package:mailer/smtp_server.dart';
import 'CPPLesson.dart';
import 'cppLessons.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'package:ape_coder/Profile.dart';

class CppLessonCorrectAnswerWidget extends StatefulWidget {
  final lessonName;
  final lessonChecked;
  const CppLessonCorrectAnswerWidget(
      {Key? key, this.lessonName, this.lessonChecked})
      : super(key: key);

  @override
  _CppLessonCorrectAnswerWidgetState createState() =>
      _CppLessonCorrectAnswerWidgetState();
}

class _CppLessonCorrectAnswerWidgetState
    extends State<CppLessonCorrectAnswerWidget> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      if (widget.lessonName == 'Lesson 1' && !widget.lessonChecked) {
        Lesson1CheckedCpp = true;
        cplusplusPercent += 0.15;
      } else if (widget.lessonName == 'Lesson 2' && !widget.lessonChecked) {
        Lesson2CheckedCpp = true;
        cplusplusPercent += 0.15;
      } else if (widget.lessonName == 'Lesson 3' && !widget.lessonChecked) {
        Lesson3CheckedCpp = true;
        cplusplusPercent += 0.15;
      } else if (widget.lessonName == 'Lesson 4' && !widget.lessonChecked) {
        Lesson4CheckedCpp = true;
        cplusplusPercent += 0.15;
      } else if (widget.lessonName == 'Lesson 5' && !widget.lessonChecked) {
        Lesson5CheckedCpp = true;
        cplusplusPercent += 0.15;
      } else if (widget.lessonName == 'Lesson 6' && !widget.lessonChecked) {
        Lesson6CheckedCpp = true;
        cplusplusPercent += 0.15;
      }
    });
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 47, 47),
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx < 0) {
            Navigator.of(context).push(SwipeablePageRoute(
              builder: (BuildContext context) => ProfileWidget(),
            ));
          }
        },
        child: Center(
          child: ListView(
            children: <Widget>[
              Column(
                /* mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, */
                children: <Widget>[
                  SizedBox(height: 80),
                  Text(
                    'Correct\nAnswer!',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 52,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 40.0),
                  Image(
                    image: AssetImage("assets/images/gorilla.png"),
                    height: 300,
                    width: 300,
                  ),
                  SizedBox(height: 80.0),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 10)),
                      SizedBox(
                        width: 190.0,
                        height: 35.0,
                        child: ElevatedButton(
                          onPressed: () => {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CppLessonsWidget(),
                              ),
                            ),
                          },
                          child: Text(
                            "Back To Lessons",
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 14,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28.0),
                                side: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      SizedBox(
                        width: 190.0,
                        height: 35.0,
                        child: ElevatedButton(
                          onPressed: () => {
                            if (widget.lessonName == 'Lesson 1')
                              {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => CppLessonWidget(
                                        lessonName: 'Lesson 2',
                                        lessonChecked: widget.lessonChecked),
                                  ),
                                ),
                              }
                            else if (widget.lessonName == 'Lesson 2')
                              {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => CppLessonWidget(
                                        lessonName: 'Lesson 3',
                                        lessonChecked: widget.lessonChecked),
                                  ),
                                ),
                              }
                            else if (widget.lessonName == 'Lesson 3')
                              {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => CppLessonWidget(
                                        lessonName: 'Lesson 4',
                                        lessonChecked: widget.lessonChecked),
                                  ),
                                ),
                              }
                            else if (widget.lessonName == 'Lesson 4')
                              {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => CppLessonWidget(
                                        lessonName: 'Lesson 5',
                                        lessonChecked: widget.lessonChecked),
                                  ),
                                ),
                              }
                            else if (widget.lessonName == 'Lesson 5')
                              {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => CppLessonWidget(
                                        lessonName: 'Lesson 6',
                                        lessonChecked: widget.lessonChecked),
                                  ),
                                ),
                              }
                            else if (widget.lessonName == 'Lesson 6')
                              {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => CppLessonWidget(
                                        lessonName: 'Lesson 1',
                                        lessonChecked: widget.lessonChecked),
                                  ),
                                ),
                              }
                          },
                          child: Text(
                            "Continue to Next Lesson",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.purple),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28.0),
                                side: BorderSide(color: Colors.purple),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
