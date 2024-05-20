import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Layoutscreen extends StatefulWidget {
  const Layoutscreen({super.key});

  @override
  State<Layoutscreen> createState() => _LayoutscreenState();
}

class _LayoutscreenState extends State<Layoutscreen> {
  final String Layout = 'assets/images/undraw_completed_m9ci 1.svg';
  @override
  Widget build(BuildContext context) {
      double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Color myColor = Color(0xFFDAA520);
      Color myColor2 = Color(0xFF9A6E00);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 150,),
          Center(
            child: SvgPicture.asset(
              'assets/images/undraw_completed_m9ci 1.svg',
              semanticsLabel: 'My SVG Image',
              height: 300,
              width: 300,
            ),
          ),
          
          Text('Successfully',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
          Text('''Your Account Has been 
            Created  ''',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                             SizedBox(height: 50,),
          Container(
            width: 350,
            height: 50,
            child: Center(child: Text('Continue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius .circular(10),color: myColor),
          ),
        ],
      ),
    );
  }
}
