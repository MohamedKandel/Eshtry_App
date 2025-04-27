import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/shared/cubit/app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit getInstance(context) => BlocProvider.of(context);

  bool _isDark = false;

  void changeTheme() {
    _isDark = !_isDark;
    emit(UIChangeThemeState());
  }
}