import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/Providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const String name = "theme_chenger_screen";
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final bool isDarkmodeValue = ref.watch(isDarkmodeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme changer"),
        actions: [
          IconButton(
              icon: Icon(isDarkmodeValue
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined),
              onPressed: () {
                ref.read(isDarkmodeProvider.notifier).update((state) => !state);
              })
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
        return RadioListTile(
            title: Text(
              "This color",
              style: TextStyle(color: color),
            ),
            subtitle: Text("${color.value}"),
            activeColor: color,
            value: index,
            groupValue: selectedColor,
            onChanged: (value) {
              //Todo notificar el cambio
              ref.read(selectedColorProvider.notifier).state = value ?? 0;
            });
      },
    );
  }
}