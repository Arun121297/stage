// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:verticalandhorizontalscroll/model/modelclass.dart';

// class UserService {
//   Future Intergration() async {
//     var url = Uri.parse('https://ok.ru/videoembed/1616636152346');
//     var response = await http.get(url);
//     //  var dd = jsonDecode(response.body);
//     if (response.statusCode == 200) {
//       final jsonRes = json.decode(response.body);
//       print("::::::$jsonRes");
//       return Intializeer.fromJson(jsonRes);
//     } else {
//       throw Exception("Failed due to Network Error");
//     }
//     // print('Response status: ${response.statusCode}');
//     // print('Response body: ${response.body}');
//     // if (response.body.isNotEmpty) {
//     //   loading_time = true;
//     //   // setState(() {});
//     // } else {
//     //   loading_time = false;
//     // }
//     // if (response.statusCode == 200) {
//     //   intializeerFromJson(response.body);
//     //   print("print::::${response.body}");
//     //   // var dd = jsonDecode(response.body);

//     //   return intializeerFromJson(response.body);
//     // } else
//     //   print("print::::error");
//     // // return null;
//   }
// }
