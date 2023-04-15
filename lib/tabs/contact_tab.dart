import 'package:flutter/material.dart';
import 'package:gobi_portfolio/constants.dart';

class ContactTab extends StatelessWidget {
  const ContactTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: background,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('📮 Contact Me', style: titleTextStyle),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Email. ohhj1999@dgu.ac.kr',
            style: subtitleTextStyle,
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 20,
          ),
          Text('Github. github.com/HeeJeongOh', style: subtitleTextStyle),
        ]),
      ),
    );
  }
}
