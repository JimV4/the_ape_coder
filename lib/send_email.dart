import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ape_coder/Profile.dart';

Future sendEmail({required String language}) async {
  const serviceId = 'service_1gr82kg';
  const templateId = 'template_2lfcu1c';
  const publicKey = 'I3cCCV2WgXSIetL5W';
  const privateKey = 'RP9ig4sXWnF2RQaFX0QPF';

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
      'user_id': publicKey,
      'accessToken': privateKey,
      'template_params': {
        'user_name': textController.text.toString(),
        'user_email': textController2.text.toString(),
        'user_subject': 'Your certificate from The-Ape-Coder!',
        'user_message':
            'Congratulations! You have successfully completed the $language test!. This is your certificate!'
        /* ' This email shows that you are worthy of holding the holly programming banana!'
              ' Farewell as you continue your journey in the jungle of programming languages!' */
        ,
        'from_email': 'dhmhtrhs.vassiliou@gmail.com'
      }
    }),
  );
}
