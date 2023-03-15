import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FloripaAppModule extends StatelessWidget {
  final Widget child;

  const FloripaAppModule({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => Object()),
      ],
      child: child,
    );
  }
}
