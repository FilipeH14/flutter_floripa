import 'package:flutter/material.dart';

class ShadowBottomRight extends StatelessWidget {
  const ShadowBottomRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(
          -3.1415926535897932 / 2,
        ),
        child: Image.asset('assets/images/bg-blur-1.png'),
      ),
    );
  }
}
