import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:flutter_floripa/app/shared/styles/floripa_colors.dart';
import 'package:flutter_floripa/app/shared/styles/floripa_styles.dart';
import 'package:flutter_floripa/app/shared/widgets/floripa_button.dart';
import 'package:flutter_floripa/app/shared/widgets/floripa_input.dart';
import 'package:provider/provider.dart';
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
                children: [
                  const Positioned(
                    left: -50,
                    top: -50,
                    child: ShadowTopLeft(),
                  ),
                  const Positioned(
                    left: -80,
                    bottom: 100,
                    child: ShadowMediumLeft(),
                  ),
                  const Positioned(
                    right: -50,
                    bottom: -50,
                    child: ShadowBottomRight(),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/logo-icon.png',
                              height: 95,
                              width: 95,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Bem-vindo',
                              style: context.floripaStyles.floripaBold
                                  .copyWith(fontSize: 25),
                            ),
                            Text(
                              'ao FlutterFloripa!',
                              style: context.floripaStyles.floripaBold
                                  .copyWith(fontSize: 25),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              'A comunidade oficial Flutter em',
                              style:
                                  context.floripaStyles.floripaRegular.copyWith(
                                fontSize: 15,
                                color: Colors.grey[700],
                              ),
                            ),
                            Text(
                              'Florianópolis-SC',
                              style:
                                  context.floripaStyles.floripaRegular.copyWith(
                                fontSize: 15,
                                color: Colors.grey[700],
                              ),
                            ),
                            const SizedBox(height: 30),
                            const FloripaInput(
                              label: 'E-mail',
                              prefixIcon: FeatherIcons.mail,
                            ),
                            const SizedBox(height: 10),
                            const FloripaInput(
                              label: 'Senha',
                              prefixIcon: FeatherIcons.lock,
                              suffixIcon: FeatherIcons.eyeOff,
                            ),
                            const SizedBox(height: 50),
                            FloripaButton(
                              height: 47,
                              width: MediaQuery.of(context).size.width,
                              text: 'ENTRAR',
                            ),
                            const SizedBox(height: 20),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Esqueceu sua senha?',
                                    style: context.floripaStyles.floripaRegular
                                        .copyWith(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Recupere aqui',
                                    style: context.floripaStyles.floripaBold
                                        .copyWith(
                                      fontSize: 15,
                                      color: context.floripaColors.secondary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
