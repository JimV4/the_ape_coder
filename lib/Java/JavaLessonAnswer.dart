import 'package:flutter/material.dart';
import 'package:ape_coder/Java/JavaLesson.dart';
import 'JavaLessonCorrectAnswer.dart';

class JavaLessonAnswerWidget extends StatefulWidget {
  final lessonName;
  final lessonChecked;
  const JavaLessonAnswerWidget({Key? key, this.lessonName, this.lessonChecked})
      : super(key: key);

  @override
  _JavaLessonAnswerWidgetState createState() => _JavaLessonAnswerWidgetState();
}

class _JavaLessonAnswerWidgetState extends State<JavaLessonAnswerWidget> {
  final _textController = TextEditingController();
  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 47, 47),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30.0),
            // ignore: unnecessary_new
            new Container(
              height: 235.0,
              width: 350.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(color: Colors.black, width: 5),
              ),
              child: SingleChildScrollView(
                child: new Text(
                  "What is the output of the following program? Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus pretium quam vulputate dignissim suspendisse in est ante. Lorem mollis aliquam ut porttitor leo a. Cum sociis natoque penatibus et magnis dis parturient montes. Aliquam purus sit amet luctus venenatis lectus magna fringilla. Quisque non tellus orci ac auctor augue. Aliquam malesuada bibendum arcu vitae. Pharetra sit amet aliquam id diam. Adipiscing bibendum est ultricies integer quis auctor elit sed vulputate. Congue eu consequat ac felis donec. Ipsum dolor sit amet consectetur adipiscing elit ut aliquam. Arcu bibendum at varius vel pharetra vel. Enim lobortis scelerisque fermentum dui faucibus in ornare. Quam viverra orci sagittis eu volutpat. Bibendum neque egestas congue quisque egestas. Odio euismod lacinia at quis risus sed vulputate odio. Risus nullam eget felis eget nunc. Sit amet risus nullam eget felis eget nunc lobortis. Massa tempor nec feugiat nisl pretium fusce id velit ut. At imperdiet dui accumsan sit amet nulla facilisi morbi. Egestas integer eget aliquet nibh. Tellus molestie nunc non blandit massa enim. Risus sed vulputate odio ut enim. Enim nulla aliquet porttitor lacus luctus. Tellus id interdum velit laoreet id donec. Diam sollicitudin tempor id eu nisl nunc mi ipsum. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Sagittis orci a scelerisque purus. Nec feugiat in fermentum posuere urna. Aliquet bibendum enim facilisis gravida neque convallis a cras. Ut morbi tincidunt augue interdum. Etiam erat velit scelerisque in dictum non consectetur a. Fames ac turpis egestas maecenas pharetra convallis. Pulvinar elementum integer enim neque volutpat. Senectus et netus et malesuada fames ac turpis egestas. Enim praesent elementum facilisis leo. Facilisis magna etiam tempor orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. A lacus vestibulum sed arcu non odio euismod lacinia. Fringilla ut morbi tincidunt augue. Massa massa ultricies mi quis hendrerit dolor magna eget. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Bibendum at varius vel pharetra vel turpis nunc eget lorem. Eget egestas purus viverra accumsan in nisl nisi scelerisque. Id consectetur purus ut faucibus pulvinar elementum integer enim. Laoreet non curabitur gravida arcu ac tortor dignissim convallis.Massa tincidunt dui ut ornare lectus sit. Imperdiet proin fermentum leo vel orci porta non pulvinar neque. Pellentesque diam volutpat commodo sed egestas egestas fringilla. Sem nulla pharetra diam sit amet nisl. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam. In eu mi bibendum neque egestas congue quisque. Proin libero nunc consequat interdum. Adipiscing vitae proin sagittis nisl. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Est ullamcorper eget nulla facilisi etiam dignissim. Amet consectetur adipiscing elit ut aliquam purus sit amet. Dui ut ornare lectus sit amet est placerat in egestas. Elementum facilisis leo vel fringilla est ullamcorper eget nulla. Non consectetur a erat nam. Curabitur gravida arcu ac tortor dignissim convallis. Volutpat diam ut venenatis tellus in metus vulputate eu. Auctor eu augue ut lectus arcu bibendum at. Lectus proin nibh nisl condimentum id venenatis. Varius quam quisque id diam vel. Magna sit amet purus gravida quis blandit turpis cursus. Sapien eget mi proin sed libero enim sed faucibus turpis.",
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _textController,
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Type Your Answer',
                      //contentPadding: EdgeInsets.symmetric(vertical: 2),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _textController.clear();
                        },
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () => {
                          /* Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => JavaLessonWidget(),
                            ),
                          ), */
                          Navigator.of(context).pop()
                        },
                        icon: Icon(Icons.arrow_back_ios_sharp,
                            size: 30, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 230.0),
                        child: MaterialButton(
                          onPressed: () {
                            userPost = _textController.text;
                            if (userPost == '42') {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      JavaLessonCorrectAnswerWidget(
                                    lessonName: widget.lessonName,
                                    lessonChecked: widget.lessonChecked,
                                  ),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.red,
                                  duration: Duration(milliseconds: 1200),
                                  //content: Container(
                                  /* padding: EdgeInsets.all(16),
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ), */
                                  content: Positioned(
                                    top: 100,
                                    child: Text(
                                        "Whoops, wrong answer! Try again..."),
                                    //),
                                  ),
                                ),
                              );
                            }
                          },
                          color: Colors.purple,
                          child: const Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
