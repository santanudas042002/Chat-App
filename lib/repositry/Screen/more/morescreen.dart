// lib/repositry/Screen/more/morescreen.dart
import 'package:chatapp/domain/constant/appcolor.dart';
import 'package:chatapp/repositry/Screen/uihelper.dart';
import 'package:flutter/material.dart';

class Morescreen extends StatelessWidget {
  const Morescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    final Color bg = isDark ? AppColors.scaffolddark : AppColors.scaffoldlight;
    final Color textPrimary = isDark ? AppColors.textdarkmode : AppColors.textlightmode;
    final Color textSecondary = isDark ? AppColors.hintdarkmode : AppColors.hintlightmode;
    final Color tileDivider = isDark ? AppColors.tileDividerDark : AppColors.tileDividerLight;
    final Color profileCard = isDark ? AppColors.profileCardDark : AppColors.profileCardLight;
    final Color arrow = isDark ? AppColors.icondarkmode : AppColors.iconlightmode;

    Widget settingsTile({required IconData icon, required String title, VoidCallback? onTap}) {
      return Column(
        children: [
          ListTile(
            onTap: onTap,
            leading: Icon(icon, color: textPrimary),
            title: UiHelper.CustomText(
              text: title,
              fontsize: 14,
              context: context,
              fontweight: FontWeight.bold,
              fontfamily: "bold",
            ),
            trailing: Icon(Icons.chevron_right, color: arrow),
          ),
          Divider(color: tileDivider, height: 1),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        elevation: 0,
        title: UiHelper.CustomText(
          text: "More",
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
          fontfamily: "bold",
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Profile card
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            decoration: BoxDecoration(
              color: profileCard,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: isDark ? AppColors.containerdarkmode : AppColors.containerlightmode,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.person, color: textSecondary),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UiHelper.CustomText(
                        text: "Santanu Das",
                        fontsize: 14,
                        context: context,
                        fontweight: FontWeight.bold,
                        fontfamily: "bold",
                      ),
                      const SizedBox(height: 4),
                      UiHelper.CustomText(
                        text: "+62 1309 - 1710 - 1920",
                        fontsize: 12,
                        context: context,
                      ),
                    ],
                  ),
                ),
                Icon(Icons.chevron_right, color: arrow),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Settings list
          settingsTile(icon: Icons.person_outline, title: "Account"),
          settingsTile(icon: Icons.chat_bubble_outline, title: "Chats"),
          settingsTile(icon: Icons.wb_sunny_outlined, title: "Appearence"),
          settingsTile(icon: Icons.notifications_none, title: "Notification"),
          settingsTile(icon: Icons.shield_outlined, title: "Privacy"),
          settingsTile(icon: Icons.folder_open_outlined, title: "Data Usage"),
          settingsTile(icon: Icons.help_outline, title: "Help"),
          settingsTile(icon: Icons.mail_outline, title: "Invite Your Friends"),
        ],
      ),
    );
  }
}
