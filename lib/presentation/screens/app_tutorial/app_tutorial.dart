import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo("Busca la comida", "Ea dolor occaecat proident ut veniam.",
      "assets/images/1.png"),
  SlideInfo("entrega rapidaa", "Nisi ad occaecat excepteur laboris duis ad.",
      "assets/images/2.png"),
  SlideInfo(
      "Disfruta la comida",
      "Incididunt ullamco labore proident veniam cillum consequat deserunt ea irure anim labore duis id quis.",
      "assets/images/3.png"),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = "tutorial_screen";

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((slideData) => _Slide(
                      title: slideData.title,
                      caption: slideData.caption,
                      imageUrl: slideData.imageUrl))
                  .toList()),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                child: const Text("Salir"),
                onPressed: () {
                  context.pop();
                },
              ))
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodyMedium;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage(imageUrl)),
              const SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: titleStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                caption,
                style: captionStyle,
              )
            ]),
      ),
    );
  }
}
