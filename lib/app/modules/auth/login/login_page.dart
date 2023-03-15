import 'package:flutter/material.dart';
import 'package:flutter_floripa/app/modules/auth/widgets/shadow_bottom_right.dart';
import 'package:flutter_floripa/app/modules/auth/widgets/shadow_medium_left.dart';
import 'package:flutter_floripa/app/modules/auth/widgets/shadow_top_left.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constrains) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constrains.maxHeight,
              minWidth: constrains.maxWidth,
            ),
            child: IntrinsicHeight(
              child: Stack(
                children: const [
                  Positioned(
                    left: -50,
                    top: -50,
                    child: ShadowTopLeft(),
                  ),
                  Positioned(
                    left: -80,
                    bottom: 100,
                    child: ShadowMediumLeft(),
                  ),
                  Positioned(
                    right: -50,
                    bottom: -50,
                    child: ShadowBottomRight(),
                  ),
                  Center(
                    child: Text('inicio Flutter Floripa!!'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
