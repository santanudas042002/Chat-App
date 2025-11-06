import 'package:chatapp/domain/constant/appcolor.dart';
import 'package:chatapp/repositry/Screen/uihelper.dart';
import 'package:flutter/material.dart';

class Contactsscreen extends StatelessWidget {
  Contactsscreen({super.key});

  final TextEditingController searchController = TextEditingController();

  final List<Map<String, String>> arrContacts = [
    {"img": "Avatar.png", "name": "Erlan Sadewa", "lastSeen": "Online"},
    {
      "img": "Avatar (1).png",
      "name": "Midala Huera",
      "lastSeen": "Last seen 3 hours ago",
    },
    {"img": "Avatar (2).png", "name": "Nafisa Gitari", "lastSeen": "Online"},
    {"img": "Avatar (3).png", "name": "Raki Devon", "lastSeen": "Online"},
    {"img": "Avatar (4).png", "name": "Raki Devon", "lastSeen": "Online"},
    {"img": "Avatar (4).png", "name": "sd", "lastSeen": "Online"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
          text: "Contacts",
          fontsize: 18,
          context: context,
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: searchController,
              text: "Search",
              textinputtype: TextInputType.name,
              context: context,
              icondata: Icons.search,
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: UiHelper.CustomImage(
                      imgurl: arrContacts[index]["img"].toString(),
                    ),
                    title: UiHelper.CustomText(
                      text: arrContacts[index]["name"].toString(),
                      fontsize: 14,
                      context: context, fontweight: FontWeight.w600,
                    ),
                    subtitle: UiHelper.CustomText(
                      // FIX: key should be "lastSeen" (case-sensitive)
                      text: arrContacts[index]["lastSeen"].toString(),
                      fontsize: 12,
                      context: context,
                    ),
                  );
                },
                itemCount: arrContacts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
