import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider<bool>((ref) => false);


//provider para un listadod e colores inmutable
final colorListProvider = StateProvider((ref) => colorList);
