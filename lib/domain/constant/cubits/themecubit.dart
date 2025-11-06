import 'package:chatapp/domain/constant/cubits/themestate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(LightThemeState());

  void toggletheme() {
    if (state is LightThemeState) {
      emit(DarkThemeState());
    } else {
      emit(LightThemeState());
    }
  }
}
