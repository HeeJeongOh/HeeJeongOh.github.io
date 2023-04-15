import 'package:flutter/material.dart';
import 'package:gobi_portfolio/constants.dart';
import 'package:gobi_portfolio/widgets/keyword_widget.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: background,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('🤚 Hi, I\'m Gobi',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              keywordWidget('keyword1', transparentGrey),
              keywordWidget('keyword1', transparentGrey),
              keywordWidget('keyword1', transparentGrey),
              keywordWidget('keyword1', transparentGrey),
              keywordWidget('keyword1', transparentGrey),
            ],
          )
        ]),
      ),
    );
  }
}
