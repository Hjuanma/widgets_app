import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//provider para un listadod e colores inmutable
final colorListProvider = Provider((ref) => colorList);

final isDarkmodeProvider = StateProvider<bool>((ref) => false);

final selectedColorProvider = StateProvider<int>((ref) => 0);

// Un objeto de tipo  AppTheme (custom)
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

//  Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // State = Estado = new AppTheme();
  ThemeNotifier() : super(AppTheme());
}
