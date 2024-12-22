import 'package:flutter/cupertino.dart';

void scrollToSection(ScrollController scrollController,GlobalKey key) {
  final context = key.currentContext;
  if (context != null) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero).dy;

    scrollController.animateTo(
      offset + scrollController.offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  } else {
    debugPrint('Something wrong hapen');
  }
}

