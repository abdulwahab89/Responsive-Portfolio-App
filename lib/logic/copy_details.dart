import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

 Future<void> copyToClipboard(String text, context) async {
  await Clipboard.setData(ClipboardData(text: text));
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Copied to clipboard!'),
      duration: Duration(seconds: 2),
    ),
  );
}