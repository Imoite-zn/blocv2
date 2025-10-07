import 'package:fin_adv_v1/widgets/control_buttons.dart';
import 'package:fin_adv_v1/widgets/icon_display.dart';
import 'package:flutter/material.dart';

class IconBrowserScreen extends StatelessWidget {
  const IconBrowserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Browser'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconDisplayWidget(),
            SizedBox(height: 40),
            ControlButtonsWidget(),
          ],
        ),
      ),
    );
  }
}
