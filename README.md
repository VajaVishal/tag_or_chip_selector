# TagChipSelector 
A clean and flexible Flutter widget that lets users select, deselect, and manage tags or chips with support for single-select groups and removable selections — ideal for filters, skills, categories, and preferences.

---
## 🎯 Why use Tag Or Chip Selector?

*  No third-party dependencies
*  Easy to plug into any Flutter app
*  Supports grouped single selection
*  Smooth animations and modern UI
*  Built for reusability as a library
  ---

 ## ✨ Key Capabilities
* Select multiple tags
* Restrict selection to one tag per group
* Remove selected tags with a close icon
* Animated selection state
* Fully customizable colors per tag
---

## ✨ Preview
![screen-20251217-1353073](https://github.com/user-attachments/assets/f5190116-b41f-476d-8bd5-64d6855bf451)

## ✨ Installation
Add this to your package's pubspec.yaml file:
```
dependencies:
  tag_or_chip_selector:
    path: ../tag_or_chip_selector  # For local development
```
from git:
```
dependencies:
  tag_or_chip_selector:
    git:
      url: https://github.com/yourusername/tag_or_chip_selector.git  # Your github path
```
Then run:
```
flutter pub get
```
---

## 📁 Project Structure
```
tag_or_chip_selector/
│
├── lib/
│   ├── tag_or_chip_selector.dart   # Public entry point
│   │
│   └── src/                        # Internal implementation
│       ├── models/
│       │   └── tag_model.dart
│       │
│       └── widgets/
│           └── tag_selector_widget.dart
│
├── example/                        # Demo application
│   └── lib/
│       └── main.dart
│
├── test/                           # Widget tests
   └── tag_or_chip_selector_test.dart
```
---
## 🧭 Roadmap
* Initial selected tags
* Disabled tag support
* Horizontal scrolling groups
* Selection callback
* Theme support

---
## 🚀 Import the package:
```
import 'package:tag_or_chip_selector/tag_or_chip_selector.dart';
```
---
## ✅ Uses
```
TagModel(
  title: 'Backend',
  color: Colors.green,
  group: 'dev',
  singleSelect: true,
)
```
---
## 🚀 Example
```
import 'package:flutter/material.dart';
import 'package:tag_or_chip_selector/tag_or_chip_selector.dart';

class TagDemo extends StatelessWidget {
  const TagDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TagSelector(
          tags: const [
            TagModel(title: 'Flutter', color: Colors.blue),
            TagModel(title: 'Dart', color: Colors.cyan),

            TagModel(
              title: 'Backend',
              color: Colors.green,
              group: 'stack',
              singleSelect: true,
            ),
            TagModel(
              title: 'Frontend',
              color: Colors.green,
              group: 'stack',
              singleSelect: true,
            ),
          ],
        ),
      ),
    );
  }
}
```
---
## 📜 License
MIT License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
