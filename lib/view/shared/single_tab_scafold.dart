import 'package:flutter/material.dart';
import '../../utils/constant/decoration.dart';

class SingleTabScafold extends StatelessWidget {
  const SingleTabScafold({
    super.key,
    this.titleWidget,
    this.actionsWidget,
    this.leadingWidget,
    this.appBarGradient,
    required this.bodyWidget,
    this.titleHeight,
    this.titleWidth,
  });
  final double? titleHeight;
  final double? titleWidth;
  final Widget? titleWidget;
  final Gradient? appBarGradient;
  final List<Widget>? actionsWidget;
  final Widget? leadingWidget;
  final Widget bodyWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: leadingWidget,
        toolbarHeight: 40,
        leadingWidth: 50,
        title: titleWidget,
        flexibleSpace: FlexibleSpaceGradient(
          gradient: appBarGradient,
        ),
        actions: actionsWidget,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.surface,
        child: bodyWidget,
      ),
    );
  }
}
