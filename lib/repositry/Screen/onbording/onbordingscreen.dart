// onbordingscreen.dart
import 'package:chatapp/domain/constant/appcolor.dart';
import 'package:chatapp/domain/constant/cubits/themecubit.dart';
import 'package:chatapp/repositry/Screen/login/loginscreen.dart';
import 'package:chatapp/repositry/Screen/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Onbordingscreen extends StatelessWidget {
  const Onbordingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,

        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<ThemeCubit>(context).toggletheme();
            },
            icon: const Icon(Icons.dark_mode),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "onbording.png"),
            const SizedBox(height: 20),
            UiHelper.CustomText(
              text: "Connect easily with",
              fontsize: 24,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
              context: context,
            ),
            UiHelper.CustomText(
              text: "your family and friends",
              fontsize: 24,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
              context: context,
            ),
            UiHelper.CustomText(
              text: "over countries",
              fontsize: 24,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        buttonnname: "Start Messaging",
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Loginscreen()),
          );
        }, buttonname: '',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
