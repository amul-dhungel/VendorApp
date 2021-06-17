import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';

class ProductInformation extends StatefulWidget {
  @override
  _ProductInformationState createState() => _ProductInformationState();
}

class _ProductInformationState extends State<ProductInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavbar(),
      backgroundColor: c_white,
      body: SingleChildScrollView(
        padding:  EdgeInsets.only(top:MediaQuery.of(context).padding.top),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _imgWid(),
            text("  Adidas Yeezy Boots 350 V2",
                fontWeight: FontWeight.bold,
                fontSize: 28.0,maxLine: 2,
                textColor: Colors.black,
                isCentered: true),
            text("  Asking Price : \$200", fontSize: 20.0),
            text("  Condition: New", fontSize: 20.0),
            curveLine(),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: text(
                  "Description: Brand New In Box, 100% Authentic Never Worn, Deadstock Payment: We accept PayPal only. Shipping address may not be changed once order is placed.",
                  fontSize: 20.0,
                  maxLine: 7),
            ),
            curveLine(),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text('Seller: Alex Form'),
                  text('Rating: 4 Stars'),
                  text('83% Positive feedback'),
                  text('Location: Westfield NJ, 07090'),
                ],
              ),
            )
           
          ],
        ),
      ),
    );
  }
  // bottom navigation bar
Widget bottomNavbar() {
  return Container(
    color: Colors.white,
    width: double.infinity,
    height:100,
    child: Stack(
      children: [
        
        Positioned(
          bottom: 20,left: MediaQuery.of(context).padding.left+125,top:3,
              child: GestureDetector(
                onTap: (){},
                child: redButton())),
        Positioned(
          bottom: 20,right: MediaQuery.of(context).padding.left+125,top:3,
              child: GestureDetector(
                onTap: ()=>Get.to(ProductInformation()),
                child: blueButton())),
        
        Positioned(
          bottom: 0,right: 10,left: 10,
          child: SvgPicture.asset('images/Path 1.svg',)),
      ],
    ));
}
  Widget _imgWid()=>Container(
    height: MediaQuery.of(context).size.height * 0.65,
  
    width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Image.asset(
                      "images/testphotos.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    right: 10,top: 0,
                    child: IconButton(
                      color: mainColor,
                      iconSize: 40, onPressed: ()=>smallDialog(context,"Report"),
                      icon: Icon(Icons.more_vert),
                      // onpressed:{print()},
                      // Icon(Icons.more_vert,),
                    ),
                  ),
                  Positioned(
                    bottom:0,
                    right: 20,
                    child: GestureDetector(
                      onTap: ()=>Get.back(),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/x.png"),
                        backgroundColor: mainColor,
                      ),
                    ),
                  )
                ],
              ),
            );
}