import 'package:bills/components/colors.dart';
import 'package:flutter/cupertino.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final Function()? onTap;
  final bool? isBorder;
  const AppLargeButton({Key? key,
    this.backgroundColor:AppColor.mainColor,
    this.textColor,
    this.onTap,
    this.isBorder, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 30,right: 30),
        height: 60,
        width: MediaQuery.of(context).size.width-60,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: AppColor.mainColor,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style:TextStyle(
              fontSize: 40,
              color: textColor,
              fontWeight: FontWeight.bold,
            )
          ),
        ),
      ),
    );
  }
}
