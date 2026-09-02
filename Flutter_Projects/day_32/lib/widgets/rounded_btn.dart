import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  RoundedButton({
    required this.btnName,
    this.icon,
    this.bgColor = Colors.orange,
    this.textStyle,
    this.callBack});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:(){
          callBack!();
        }, child: icon!=null ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
 children: [
   icon!,
      SizedBox(width: 21,),
   Text(btnName, style: textStyle,)
 ],
   ): Text(
      btnName,
      style: textStyle,
    ),
      style: ElevatedButton.styleFrom(

          shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            bottomRight: Radius.circular(21),
            topLeft: Radius.circular(21),
          )
        )
      ),
    ); //
  }
}