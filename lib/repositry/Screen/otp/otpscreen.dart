import 'package:chatapp/domain/constant/appcolor.dart';
import 'package:chatapp/repositry/Screen/profile/profilescreen.dart';
import 'package:chatapp/repositry/Screen/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({super.key});

  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 20,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.otpdarkmode
            : AppColors.otplightmode,
      ),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.otpdarkmode
            : AppColors.otplightmode,
      ),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              text: "Enter Code",
              fontsize: 24,
              context: context,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
            ),
            const SizedBox(height: 5),
            UiHelper.CustomText(
              text: "We have sent you an SMS with the code",
              fontsize: 14,
              context: context,
            ),
            UiHelper.CustomText(
              text: "to +62 1309 - 1710 - 1920",
              fontsize: 14,
              context: context,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Pinput(
                onCompleted: (value) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profilescreen(),),);
                },
                autofocus: true,
                controller: otpController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {},
        child: Text(
          "Resend OTP",
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.otptextdark
                : AppColors.otptextlight,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
