import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';
import 'package:vendr/utils/images.dart';

class BuyingMessages extends StatefulWidget {
  const BuyingMessages({Key? key}) : super(key: key);

  @override
  _BuyingMessagesState createState() => _BuyingMessagesState();
}

class _BuyingMessagesState extends State<BuyingMessages> {
  final messageInsert = TextEditingController();
  // ignore: deprecated_member_use
  List<Map> messsages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomBar(),
      appBar: appbarOfMessaging(context,title: "Grey Sumpreme Logo", messageType: "Buying"),
      body: ScrollConfiguration(
        behavior: MyBehaviora(),
        child: ListView(
          padding: const EdgeInsets.only(left:10,right: 10),
          children: [
          text("Karl",
              fontSize: 23.0,isCentered: true,
              textColor: mainColor,
              fontWeight: FontWeight.bold,
              lineThrough: true),
          text(
            "Grey Sumpreme BoxLogo 2012",isCentered:  true,
            fontSize: 23.0,maxLine: 2,
            textColor: mainColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 25,
          ),
          CircleAvatar(
              backgroundColor: mainColor,
              radius: 84,
              child: CircleAvatar(
                radius: 80,backgroundColor: c_white,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("images/vendorItem1Show.png"),
                  radius: 78,
                ),
              )),
          SizedBox(
            height: 25,
          ),
          text(
            "Asking Price 600\$",isCentered: true,
            fontSize: 23.0,
            textColor: mainColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          SvgPicture.asset(img_curveLine,),
          ListView.builder(
            itemCount: 15,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context,i){
            return Row(
              mainAxisAlignment: i%2==0?MainAxisAlignment.start:MainAxisAlignment.end,
              children: [
              chat("message",i%2==0?0:1)
            ],);
          })
          
              
            
          
        ]),
      ),
    );
  }
}
Widget _bottomBar(){
  return Container(
        padding: const EdgeInsets.only(right:15,left: 15),
        height: 60,width: double.infinity,
        child: Row(
          
          children: [
          CircleAvatar(radius: 20,),
          SizedBox(width: 2,),
          CircleAvatar(radius: 20,),
          SizedBox(width: 2,),
          CircleAvatar(radius: 20,),
          SizedBox(width: 2,),
          Expanded(child: textInputContainer(rad: 50)),
        ],),
      );
}

Widget chat(String message, int data) {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Bubble(
        radius: Radius.circular(15.0),
        color: data == 0 ? c_textColor : mainColor,
        elevation: 0.0,
        alignment: data == 0 ? Alignment.topLeft : Alignment.topRight,
        nip: data == 0 ? BubbleNip.leftBottom : BubbleNip.rightTop,
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircleAvatar(),
              SizedBox(
                width: 10.0,
              ),
              Flexible(
                  child: Text(
                message,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
            ],
          ),
        )),
  );
}
