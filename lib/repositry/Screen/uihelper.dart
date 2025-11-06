// uihelper.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../domain/constant/appcolor.dart';

class UiHelper {
  static Widget CustomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static Widget CustomText({
    required String text,
    required double fontsize,
    String? fontfamily,
    FontWeight? fontweight,
    Color? color,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColors.textdarkmode
                : AppColors.textlightmode),
        fontWeight: fontweight ?? FontWeight.normal,
      ),
    );
  }

  static Widget CustomButton({
    required String buttonnname,
    required VoidCallback callback,
    Color? buttonncolor,
    required String buttonname,
  }) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonncolor ?? AppColors.buttonlightmode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          buttonnname,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: "bold",
          ),
        ),
      ),
    );
  }

  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required TextInputType textinputtype,
    required BuildContext context,
    required IconData icondata,
  }) {
    return Container(
      height: 45,
      width: 360,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.containerdarkmode
            : AppColors.containerlightmode,
        borderRadius: BorderRadius.circular(7),
      ), // BoxDecoration
      child: TextField(
        controller: controller,
        keyboardType: textinputtype,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: Icon(icondata, color: AppColors.iconlightmode),
          hintStyle: TextStyle(
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.hintdarkmode
                : AppColors.hintlightmode,
            fontSize: 14,
          ),
          border: InputBorder.none,
        ), // InputDecoration
      ), // TextField
    ); // Container
  }
}
