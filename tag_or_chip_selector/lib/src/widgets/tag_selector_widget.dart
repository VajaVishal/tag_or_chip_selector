import 'package:flutter/material.dart';
import 'package:tag_or_chip_selector/src/models/tag_model.dart';

class TagSelector extends StatefulWidget {
  final List<TagModel> tags;

  const TagSelector({super.key, required this.tags});

  @override
  State<TagSelector> createState() => _TagSelectorState();
}

class _TagSelectorState extends State<TagSelector> {
  final List<TagModel> selected = [];

  void onTap(TagModel tag) {
    setState(() {
      if (selected.contains(tag)) {
        selected.remove(tag);
      } else {
        if (tag.singleSelect) {
          selected.removeWhere((t) => t.group == tag.group);
        }
        selected.add(tag);
      }
    });
  }

  void _removeTag(TagModel tag) {
    setState(() {
      selected.remove(tag);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 12,
      children: widget.tags.map((tag) {
        final bool isSelected = selected.contains(tag);
        return GestureDetector(
          onTap: () => onTap(tag),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: isSelected ? tag.color : Colors.white,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: tag.color,
                width: 1.5,
              ),
              boxShadow: [
                if (!isSelected)
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                  ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  tag.title,
                  style: TextStyle(
                    color: isSelected ? Colors.white : tag.color,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                if (isSelected) ...[
                  const SizedBox(width: 8),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () => _removeTag(tag),
                    child: const Icon(
                      Icons.close,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ]
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
