import 'package:fin_adv_v1/icon_state/icon_bloc.dart';
import 'package:fin_adv_v1/icon_state/icon_browser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IconBloc(),
      child: const IconBrowserScreen(),
    );
  }
}