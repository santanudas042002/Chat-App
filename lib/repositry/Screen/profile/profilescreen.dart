import 'package:chatapp/domain/constant/appcolor.dart';
import 'package:chatapp/repositry/Screen/bottomnav/bottomnavigationscreen.dart';
import 'package:chatapp/repositry/Screen/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  Profilescreen({super.key});

  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
          text: "Your Profile",
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
          fontfamily: "bold",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgurl: "darkprofile.png")
                : UiHelper.CustomImage(imgurl: "lightprofile.png"),
            const SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: firstnameController,
              text: "First Name (Required)",
              textinputtype: TextInputType.name,
              context: context,icondata: Icons.person
            ),
            const SizedBox(height: 10),
            UiHelper.CustomTextField(
              controller: lastnameController,
              text: "Last Name (Required)",
              textinputtype: TextInputType.name,
              context: context,icondata:CupertinoIcons.person_2
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: UiHelper.CustomButton(
        buttonnname: "save",
        callback: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BottomNavScreen()),
          );
        },
        buttonname: '',
      ),
    );
  }
}
