import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';
import 'package:vendr/utils/constants.dart';

import 'Search.dart';

class ProductSearch extends StatefulWidget {
  @override
  _ProductSearchState createState() => _ProductSearchState();
}

class _ProductSearchState extends State<ProductSearch> {
  var _value = 1.0;
  bool tick = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: mainColor.withOpacity(0.15),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _search(),
              GestureDetector(
                onTap: () => Get.to(SearchPage()),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Center(
                      child: _textInputContainer(
                    label: "Search for categories",
                    suffixIcon: true,
                    i: Icons.search,
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              curveLine(),
              SizedBox(
                height: 10,
              ),
              text("Pricing", textColor: mainColor),
              _pricing(),
              SizedBox(
                height: 10,
              ),
              curveLine(),
              SizedBox(
                height: 10,
              ),
              text("Distance", textColor: mainColor),
              _slider(),
              text("0-" + _value.toString() + "mi"),
              SizedBox(
                height: 10,
              ),
              curveLine(),
              SizedBox(
                height: 10,
              ),
              text("Condition", textColor: mainColor, fontSize: textSizeLarge),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _checkRow("New"),
                  _checkRow("Not Specified"),
                  _checkRow("Used"),
                ],
              )
            ],
          ),
        ),
      ),
    );
// =======
//     return Scaffold(
//       body: Container(
//                       height: MediaQuery.of(context).size.height * 0.8,
//                       child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           ListTile(
//                               title: text("Search",
//                                   isCentered: true,
//                                   textColor: mainColor,
//                                   fontSize: 30.0,
//                                   fontWeight: FontWeight.bold),
//                               trailing: Icon(Icons.send)),
//                           Padding(
//                             padding: const EdgeInsets.all(14.0),
//                             child: Center(
//                                 child: textInputContainer(
//                               label: "Search for categories",
//                               suffixIcon: true,
//                               i: Icons.search,
//                             )),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Image.asset("images/Path 2.png"),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Container(
//                             child: Column(
//                               children: [
//                                 text("Pricing", textColor: mainColor),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceAround,
//                                   children: [
//                                     textInputContainer(
//                                         label: "\$",
//                                         height: 50.0,
//                                         width: 100.0),
//                                     text("to"),
//                                     textInputContainer(
//                                         label: "\$", height: 50.0, width: 100.0)
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Image.asset("images/Path 2.png"),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Container(
//                             child: Column(
//                               children: [
//                                 text("Distance", textColor: mainColor),
//                                 Slider(
//                                   activeColor: mainColor,
//                                   min: 0,
//                                   max: 100,
//                                   value: _value,
//                                   divisions: 4,
//                                   label: "$_value",
//                                   onChanged: (value) {
//                                     setState(() {
//                                       _value = value;
//                                     });
//                                   },
//                                 ),
//                                 text("0-" + _value.toString() + "mi")
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Image.asset("images/Path 2.png"),
//                           SizedBox(
//                             height: 10,
//                           ),
//                         ],
//                       ),
//                     )
// >>>>>>> f6702678c75443e99d2ce664db0ea357def0b8a3
  }

  Widget _textInputContainer({
    double rad = 0.0,
    TextInputType inputType = TextInputType.text,
    TextEditingController? textEditingController,
    String label = "",
    hint,
    bool obscure = false,
    IconData? i,
    bool icon = false,
    bool suffixIcon = false,
    Color? iconColor,
    bool shadow = false,
    double? height,
    double? width,
  }) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.fromLTRB(50, 0, 50, 20),
      child: TextFormField(
        enabled: false,
        keyboardType: inputType,
        autofocus: false,
        obscureText: obscure,
        obscuringCharacter: "*",
        controller: textEditingController,
        style: const TextStyle(
          color: c_textColor,
          fontFamily: "Rubik",
          fontWeight: FontWeight.w900,
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
            labelText: label,
            filled: false,
            hintText: hint,
            hintStyle: TextStyle(
                color: c_textColor,
                fontFamily: "Rubik",
                fontSize: textSizeMedium,
                fontWeight: FontWeight.w600),
            labelStyle: TextStyle(
                color: c_textColor,
                fontFamily: "Rubik",
                fontSize: textSizeSMedium,
                fontWeight: FontWeight.w600),
            prefixIcon: icon == false
                ? null
                : Icon(
                    i,
                    color: iconColor,
                    size: 20,
                  ),
            suffixIcon: suffixIcon == false
                ? null
                : Icon(
                    i,
                    color: iconColor,
                    size: 30,
                  ),
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(rad),
                borderSide: BorderSide(
                    color: Color(0xffF1F1F1),
                    style: BorderStyle.solid,
                    width: 1.0)),
            focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(rad),
                borderSide: BorderSide(
                    color: mainColor, width: 1.0, style: BorderStyle.solid)),
            enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(rad),
                borderSide: BorderSide(
                    color: mainColor, style: BorderStyle.solid, width: 1.0))),
      ),
    );
  }

  Widget _checkRow(String label) => Row(
        children: [
          Checkbox(
            //shape: CircleBorder(),
            activeColor: mainColor,
            value: tick,
            onChanged: (newa) {
              setState(() {
                newa = tick;
              });
            },
          ),
          text(label, textColor: mainColor),
        ],
      );
  Widget _slider() => Slider(
        activeColor: mainColor,
        min: 0,
        max: 100,
        value: _value,
        divisions: 4,
        label: "$_value",
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
      );
  Widget _pricing() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          textInputContainer(label: "\$", height: 35.0, width: 100.0),
          text("to"),
          textInputContainer(label: "\$", height: 35.0, width: 100.0)
        ],
      );
  Widget _search() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 1,
          ),
          text("Search",
              isCentered: true,
              textColor: mainColor,
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
          Spacer(
            flex: 1,
          ),
          GestureDetector(
              onTap: () => Get.back(),
              child: Icon(
                FontAwesomeIcons.times,
                color: mainColor,
              )),
          SizedBox(width: 10)
        ],
      );
// =======
// >>>>>>> f6702678c75443e99d2ce664db0ea357def0b8a3
}
