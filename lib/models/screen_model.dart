
import 'package:flutter/material.dart';

class ScreenModel {
  final String title;
  final String subtitle;
  final GestureTapCallback onChanged;
  final page;

  const ScreenModel({
    required this.title,
    required this.subtitle,
    required this.onChanged,
    required this.page,
  });
}
