import 'package:flutter/material.dart';
import 'package:tag_or_chip_selector/src/models/tag_model.dart';
import 'package:tag_or_chip_selector/src/widgets/tag_selector_widget.dart';

class TagSelectorScreen extends StatelessWidget {
  const TagSelectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: TagSelector(
              tags: [
                // Multi select
                TagModel(title: 'HTML', color: Colors.blue),
                TagModel(title: 'CSS', color: Colors.blue),
                TagModel(title: 'JAVA', color: Colors.blue),

                // Purple group
                TagModel(title: 'PYTHON', color: Colors.purple),
                TagModel(title: 'MACHINE LEARNING', color: Colors.purple),
                // TagModel(title: 'AI/ML', color: Colors.purple),

                // Backend (single select)
                TagModel(title: 'BACKEND', color: Colors.green, group: 'dev'),
                TagModel(title: 'FRONTEND', color: Colors.green, group: 'dev'),
                TagModel(title: 'SQL LITE', color: Colors.green, group: 'dev'),

                // Hardware
                TagModel(
                  title: 'HARDWARE',
                  color: Colors.orange,
                  singleSelect: true,
                  group: 'single',
                ),
                TagModel(
                  title: 'SOFTWARE',
                  color: Colors.orange,
                  singleSelect: true,
                  group: 'single',
                ),
                TagModel(
                  title: 'MOBILE',
                  color: Colors.orange,
                  singleSelect: true,
                  group: 'single',
                ),
                TagModel(
                  title: 'DESKTOP',
                  color: Colors.orange,
                  singleSelect: true,
                  group: 'single',
                ),

                // Mobile (single select)
                TagModel(
                  title: 'Android',
                  color: Colors.deepPurple,
                  group: 'mobile',
                ),
                TagModel(
                  title: 'Kotlin',
                  color: Colors.deepPurple,
                  group: 'mobile',
                ),
                TagModel(
                  title: 'DART',
                  color: Colors.deepPurple,
                  group: 'mobile',
                ),
                TagModel(
                  title: 'SWIFT',
                  color: Colors.deepPurple,
                  group: 'mobile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
