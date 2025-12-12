import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final Color color;
  final Widget leading;
  final Widget title;
  final Widget subTitle;
  final Widget trailing;

  const CustomTile({
    super.key,
    required this.color,
    required this.leading,
    required this.title,
    required this.subTitle,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        leading,
        Column(children: [title, subTitle]),
        trailing,
      ],
    );
  }
}
