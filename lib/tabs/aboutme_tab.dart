
import 'package:flutter/material.dart';
import 'package:gobi_portfolio/constants.dart';

class AboutmeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: background,
        child: Center(
          child: Text('About Me', style: titleTextStyle),
        ),
      ),
    );
  }
}
