import 'package:flutter/material.dart';
import 'cppLessons.dart';
import 'package:ape_coder/main.dart';
import 'package:ape_coder/CPP/cppLessons.dart';
import '../Profile.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ape_coder/Profile.dart';

class CppTestSuccessfulWidget extends StatefulWidget {
  const CppTestSuccessfulWidget({Key? key}) : super(key: key);

  @override
  _CppTestSuccessfulWidgetState createState() =>
      _CppTestSuccessfulWidgetState();
}

class _CppTestSuccessfulWidgetState extends State<CppTestSuccessfulWidget> {
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  @override
  void initState() {
    if (!levels.contains('C++ Gorilla')) {
      cppCompleted = true;
      super.initState();
      Future(() {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Color.fromARGB(255, 243, 223, 45),
          duration: Duration(milliseconds: 3000),
          content: Positioned(
            top: 100,
            child: Text("Congratulations! You have advanced to C++ Gorilla!",
                style: TextStyle(color: Colors.black, fontSize: 14)),
            //),
          ),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      if (cplusplusPercent <= 0.9) {
        cplusplusPercent += 0.1;
      } else {
        cplusplusPercent -= 0.1;
      }
    });
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 47, 47),
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              /* mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, */
              children: <Widget>[
                SizedBox(height: 30),
                Text(
                  'Test',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 52,
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  'Successful!',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 52,
                      fontStyle: FontStyle.italic),
                ),
                Text("Your certificate will be sent to you",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontStyle: FontStyle.italic)),
                Text("by your given email address",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontStyle: FontStyle.italic)),
                SizedBox(height: 50.0),
                Image(
                  image: AssetImage("assets/images/gorilla.png"),
                  height: 300,
                  width: 300,
                ),
                SizedBox(height: 60.0),
                SizedBox(
                  width: 290.0,
                  height: 45.0,
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LanguagesScreenWidget(),
                        ),
                      ),
                    },
                    child: Text(
                      "Back To Languages",
                      style: TextStyle(
                        color: Color.fromARGB(255, 108, 28, 122),
                        fontSize: 18,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                /* Padding(padding: EdgeInsets.only(left: 10)),
                SizedBox(
                  width: 190.0,
                  height: 35.0,
                ), */
              ],
            ),
          ],
        ),
      ),
    );
  }

  /* Future sendEmail() async {
    const serviceId = 'service_iyivi2k';
    const templateId = 'template_h6vun5l';
    const apiPublicKey = 'DZxzXAlIExeNafxR6';
    const language = 'C++';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'origin': 'http://localhost',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'api_public_key': apiPublicKey,
        'template-params': {
          'to_name': 'Fellow coder',
          'to_email': textController2.toString(),
          'subject': 'Your certificate from The-Ape-Coder!',
          'message': 'Congratulations! You have successfully completed the $language test!'
              ' This email shows that you are worthy of holding the holly programming banana!'
              ' Farewell as you continue your journey in the jungle of programming languages!',
          'from_email': 'ioannhsyan76@gmail.com'
        }
      }),
    );

    debugPrint(response.body);
    print(textController2.toString());
  } */

  /*  void showInSnackBar(String value) {
    scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  } */
}
