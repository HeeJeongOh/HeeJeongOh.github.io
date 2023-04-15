import 'package:flutter/material.dart';
import 'package:gobi_portfolio/constants.dart';

Widget keywordWidget(String str, Color color, {Function()? function}) {
  return GestureDetector(
      onTap: function,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: color,
          ),
          child: Text(
            str,
            style: normalTextStyle,
          )));
}
