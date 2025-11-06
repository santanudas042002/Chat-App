import 'package:chatapp/domain/constant/apptheme.dart';
import 'package:chatapp/domain/constant/cubits/themecubit.dart';
import 'package:chatapp/domain/constant/cubits/themestate.dart';
import 'package:chatapp/repositry/Screen/onbording/onbordingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (context) => ThemeCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Chat App',
          debugShowCheckedModeBanner: false,
          theme: state is LightThemeState
              ? AppThemes.lightTheme
              : AppThemes.darkTheme,
          home: Onbordingscreen(),
        );
      },
    );
  }
}
