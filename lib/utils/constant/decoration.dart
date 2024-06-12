import 'package:flutter/material.dart';
import 'colours.dart';

class FlexibleSpaceGradient extends StatelessWidget {
  const FlexibleSpaceGradient({super.key, this.gradient, this.radius});

  final Gradient? gradient;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: gradient ?? defaultGradient,
          borderRadius: BorderRadius.circular(radius ?? 0),
          boxShadow: [
            BoxShadow(
                color:
                    Theme.of(context).colorScheme.surfaceTint.withOpacity(.65),
                blurRadius: 1.5,
                offset: const Offset(0, 1.25))
          ]),
    );
  }
}
