import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: "Botones",
      subTitle: "Varios botones en Flutter",
      link: "/buttons",
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: "Tarjetas",
      subTitle: "Un contenedor estilizado",
      link: "/cards",
      icon: Icons.credit_card),
  MenuItem(
      title: "Progress Idicator",
      subTitle: "Generales y controlados",
      link: "/progress",
      icon: Icons.refresh_rounded),
  MenuItem(
      title: "Snackbars",
      subTitle: "pages indicators",
      link: "/snackbars",
      icon: Icons.info_outline_rounded),
  MenuItem(
      title: "Animated container",
      subTitle: "Animated stateful widget",
      link: "/animated",
      icon: Icons.check_box_outline_blank),
  MenuItem(
      title: "UI Contronls",
      subTitle: "Flutter controls",
      link: "/ui-controls",
      icon: Icons.car_crash_outlined),
];
