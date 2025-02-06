import 'centered.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.startAlignment, this.endAlignment,{ super.key});
  Alignment startAlignment;
  Alignment endAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: const [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 9, 1, 24),
          ],
        ),
      ),
      child: Centered("Welcome ITEC 315"),
    );
  }
}