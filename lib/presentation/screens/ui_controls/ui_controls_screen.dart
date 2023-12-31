import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = "ui_controls_screen";

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Controls"),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransport = Transportation.car;
  bool wantsBreackfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text("Developer Mode"),
            subtitle: const Text("Aditional controls"),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = value;
                })),
        ExpansionTile(
          title: const Text("Vehicle"),
          subtitle: Text(selectedTransport.name),
          children: [
            RadioListTile(
                title: const Text("By Car"),
                subtitle: const Text("Travel in a car"),
                value: Transportation.car,
                groupValue: selectedTransport,
                onChanged: (value) => setState(() {
                      selectedTransport = Transportation.car;
                    })),
            RadioListTile(
                title: const Text("By Plane"),
                subtitle: const Text("Travel on a plane"),
                value: Transportation.plane,
                groupValue: selectedTransport,
                onChanged: (value) => setState(() {
                      selectedTransport = Transportation.plane;
                    })),
            RadioListTile(
                title: const Text("By Boat"),
                subtitle: const Text("Ride a boat"),
                value: Transportation.boat,
                groupValue: selectedTransport,
                onChanged: (value) => setState(() {
                      selectedTransport = Transportation.boat;
                    })),
            RadioListTile(
                title: const Text("By Submarine"),
                subtitle: const Text("Ride a submarine"),
                value: Transportation.submarine,
                groupValue: selectedTransport,
                onChanged: (value) => setState(() {
                      selectedTransport = Transportation.submarine;
                    })),
          ],
        ),
        CheckboxListTile(
            title: const Text("Breackfast?"),
            value: wantsBreackfast,
            onChanged: (value) => setState(() {
                  wantsBreackfast = !wantsBreackfast;
                })),
        CheckboxListTile(
            title: const Text("Lunch?"),
            value: wantsLunch,
            onChanged: (value) => setState(() {
                  wantsLunch = !wantsLunch;
                })),
        CheckboxListTile(
            title: const Text("Dinner?"),
            value: wantsDinner,
            onChanged: (value) => setState(() {
                  wantsDinner = !wantsDinner;
                })),
      ],
    );
  }
}
