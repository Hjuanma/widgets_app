import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "buttons_screen";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: SizedBox(
        width: double.infinity,
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("Elevated button")),
            const ElevatedButton(
                onPressed: null, child: Text("Elevated Disables")),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text("Elevated Icon"),
            ),
            FilledButton(onPressed: () {}, child: const Text("Filled")),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.ac_unit_rounded),
              label: const Text("Filled Icon"),
            ),
            OutlinedButton(onPressed: () {}, child: const Text("Outline")),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text("Outline Icon"),
              icon: const Icon(Icons.accessibility_new_outlined),
            ),
            TextButton(onPressed: () {}, child: const Text("Text")),
            TextButton.icon(
              onPressed: () {},
              label: const Text("Text"),
              icon: const Icon(Icons.accessible_forward),
            ),

            //Todo: Custom Button
            const CustomButton(),

            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.account_balance_wallet_rounded)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_wallet_rounded),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(110),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Hola mundo",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
