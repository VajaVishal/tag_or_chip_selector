import 'dart:ui';

class TagModel {
  final String title;
  final Color color;
  final String group; // used for single-selection groups
  final bool singleSelect;

  TagModel({
    required this.title,
    required this.color,
    this.group = '',
    this.singleSelect = false,
  });
}
