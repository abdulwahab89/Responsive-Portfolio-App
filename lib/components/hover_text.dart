import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_portfolio_app/utils/colors/light_theme_colors.dart';

import '../utils/appTheme.dart';

class HoverText extends StatefulWidget {
  final String text;
  final Color defaultColor;
  VoidCallback? onPressed;
  double? padding;
   HoverText({
    Key? key,
    this.padding,
    required this.text,
    this.defaultColor = Colors.black,
  })  :
        super(key: key);

  @override
  _HoverTextState createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.padding?? 0,vertical: widget.padding?? 0),
      child: MouseRegion(
        onEnter: (_) {
          if (!_isHovered) {
            setState(() {
              _isHovered = true;
            });
          }
        },
        onExit: (_) {
          if (_isHovered) {
            setState(() {
              _isHovered = false;
            });
          }
        },
        child: ListTile(
          onTap: widget.onPressed,
          title:Text(widget.text,
          style: _isHovered? Theme.of(context).textTheme.labelSmall!.copyWith(
            color: getHoverColor(context),
            fontWeight: Apptheme.isDarkMode(context)? FontWeight.normal:FontWeight.bold,
          ):Theme.of(context).textTheme.labelSmall,
          )),
      ),
    );
  }
}