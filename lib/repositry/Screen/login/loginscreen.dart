import 'package:chatapp/domain/constant/appcolor.dart';
import 'package:chatapp/repositry/Screen/otp/otpscreen.dart';
import 'package:chatapp/repositry/Screen/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              text: "Enter Your Phone Number",
              fontsize: 24,
              context: context,
              fontweight: FontWeight.bold,
              fontfamily: "bold",
            ),
            const SizedBox(height: 10),
            UiHelper.CustomText(
              text: "Please confirm your country code and enter",
              fontsize: 14,
              context: context,
            ),
            UiHelper.CustomText(
              text: "your phone number",
              fontsize: 14,
              context: context,
            ),
            const SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: phoneController,
              text: "Phone Number",
              textinputtype: TextInputType.number,
              context: context,icondata: Icons.phone
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        buttonnname: "continue",
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OTPScreen()),
          );
        }, buttonname: '',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
