// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:vendr/screens/SignUp2.dart';
// import 'package:vendr/utils/appWidget.dart';
// import 'package:vendr/utils/colors.dart';
// class SignUp extends StatefulWidget {
//   @override
//   _SignUpState createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: c_white,
//       appBar: appbar(context,title: "Sign Up"),
//       body: Container(
//         padding: const EdgeInsets.fromLTRB(30,50, 30,20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//           logo(welcomeText: true),
//           SizedBox(height:50),
//           text("Who is this account for?"),
//           SizedBox(height:100),
//           buttonWid(label: "For Myself", border: true,function: (){
//             Get.to(SignUp2());
//           },butColor: mainColor)
//         ],),
//       ),
      
//     );
//   }
// }