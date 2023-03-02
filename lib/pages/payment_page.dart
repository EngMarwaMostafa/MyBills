import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/colors.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
     body:  Container(
       padding: EdgeInsets.only(top: 80,left: 20,right: 20),
       height: h,
       width: w,
       decoration: const BoxDecoration(
         image: DecorationImage(
           fit: BoxFit.fill,
           image: AssetImage('assets/images/paymentbackground.png'),
         ),
       ),
       child: Column(
         children: [
           Container(
             width: double.maxFinite,
             height: h*0.14,
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.fill,
                 image: AssetImage('assets/images/success.png'),
               ),
             ),
           ),
           const Text(
                 'Success!',
                 style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                   color: AppColor.mainColor,
                 ),
               ),
           const Text(
                 'Success!',
                 style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                   color: AppColor.mainColor,
                 ),
               ),
         ],
       ),
     ),
    );
  }
}
