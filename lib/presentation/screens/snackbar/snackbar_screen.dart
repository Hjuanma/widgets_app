import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = "snackbar_screen";

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text("data"),
      action: SnackBarAction(label: "Ok!", onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("Estas seguro?"),
        content: const Text(
            "Pariatur commodo ad consectetur labore ipsum minim minim. Ipsum qui cillum irure et duis irure Lorem cupidatat ex. Fugiat aliqua ullamco sunt amet voluptate sit non enim irure officia adipisicing laboris labore. Reprehenderit aliquip nisi fugiat deserunt nisi pariatur velit quis sunt et enim elit elit."),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text("Cancelar")),
          FilledButton(onPressed: () => context.pop(), child: const Text("Aceptar")),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Snackbars and alerts")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        "Amet magna non eiusmod amet enim minim pariatur mollit occaecat mollit sit dolor magna.")
                  ]);
                },
                child: Text("Licencias usadas")),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: Text("Mostrar alerta")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Mostrar snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
