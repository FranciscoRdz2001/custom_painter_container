import 'package:custom_painter_container/widgets/painters/custom_container_painter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: CustomPaint(
              size: Size(size.width * 0.65, size.height * 0.2),
              painter: CustomContainerPainter(),
            ),
          ),
        ],
      ),
    );
  }
}
