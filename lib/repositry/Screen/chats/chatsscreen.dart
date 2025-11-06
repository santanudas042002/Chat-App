// lib/repositry/Screen/chats/chatsscreen.dart
import 'package:chatapp/domain/constant/appcolor.dart';
import 'package:chatapp/repositry/Screen/uihelper.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});

  final List<Map<String, String>> chats = const [
    {"img": "Avatar.png", "name": "Sujal Dave", "msg": "Good morning, did you sleep well?", "time": "Today"},
    {"img": "Avatar (4).png", "name": "Flutter", "msg": "How is it going?", "time": "17/6"},
    {"img": "Avatar (3).png", "name": "Micheal", "msg": "Alright, noted", "time": "17/6"},
  ];

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    // AppColors only
    final Color bg = isDark ? AppColors.scaffolddark : AppColors.scaffoldlight;
    final Color searchFill = isDark ? AppColors.textfielddarkmode : AppColors.textfieldlightmode;
    final Color listTileBg = isDark ? AppColors.containerdarkmode : AppColors.containerlightmode;
    final Color divider = isDark ? AppColors.textfielddarkmode : AppColors.hintlightmode;
    final Color icon = isDark ? AppColors.icondarkmode : AppColors.iconlightmode;
    final Color hint = AppColors.hintlightmode;

    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        elevation: 0,
        title: UiHelper.CustomText(
          text: "Chats",
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
          fontfamily: "bold",
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_comment_outlined, color: icon)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded, color: icon)),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),

          // Stories row (images only)
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                UiHelper.CustomImage(imgurl: "Story.png"),
                const SizedBox(width: 16),
                UiHelper.CustomImage(imgurl: "Story (1).png"),
                const SizedBox(width: 16),
                UiHelper.CustomImage(imgurl: "Story (2).png"),
              ],
            ),
          ),

          const SizedBox(height: 12),
          Divider(color: divider),
          const SizedBox(height: 8),

          // Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 44,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: searchFill,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: hint),
                  const SizedBox(width: 8),
                  UiHelper.CustomText(text: "Search", fontsize: 14, context: context),
                ],
              ),
            ),
          ),

          const SizedBox(height: 8),

          // Chats list
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              itemCount: chats.length,
              separatorBuilder: (_, __) => const SizedBox(height: 4),
              itemBuilder: (context, i) {
                final c = chats[i];
                return Container(
                  decoration: BoxDecoration(
                    color: listTileBg,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: UiHelper.CustomImage(imgurl: c["img"] ?? ""),
                    title: UiHelper.CustomText(
                      text: c["name"] ?? "",
                      fontsize: 14,
                      context: context,
                      fontweight: FontWeight.bold,
                      fontfamily: "bold",
                    ),
                    subtitle: UiHelper.CustomText(
                      text: c["msg"] ?? "",
                      fontsize: 12,
                      context: context,
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UiHelper.CustomText(
                          text: c["time"] ?? "",
                          fontsize: 11,
                          context: context,
                        ),
                        const SizedBox(height: 6),
                        Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: isDark ? AppColors.containerdarkmode : AppColors.textfieldlightmode,
                            shape: BoxShape.circle,
                          ),
                          child: UiHelper.CustomText(
                            text: "1",
                            fontsize: 10,
                            context: context,
                            fontweight: FontWeight.bold,
                            fontfamily: "bold",
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
