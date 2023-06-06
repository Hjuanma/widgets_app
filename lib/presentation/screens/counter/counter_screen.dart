import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/Providers/counter_provider.dart';
import 'package:widgets_app/presentation/Providers/theme_provider.dart';

//Se extiende del ConsumerWidget para tener la referencia de los providers
class CouterScreen extends ConsumerWidget {
  static const name = "counter_screen";
  const CouterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //referencia para observar el valor del provider declarado
    final int counterValue = ref.watch(counterProvider);
    final bool isDarkmodeValue = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
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
      body: Center(
        child: Text(
          "Valor: $counterValue",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
          //ref.read(counterProvider.notifier)
          //.update((state) => state+1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
