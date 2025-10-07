import 'package:fin_adv_v1/icon_state/icon_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IconDisplayWidget extends StatelessWidget {
  const IconDisplayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IconBloc, IconState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue.shade200, width: 2),
              ),
              child: Icon(
                state.currentIcon,
                size: 60,
                color: Colors.blue.shade700,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Icon ${state.currentIndex + 1} of ${state.icons.length}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ],
        );
      },
    );
  }
}
