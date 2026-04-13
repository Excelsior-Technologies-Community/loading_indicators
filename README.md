# Flutter Loading Indicators

A lightweight and customizable loading indicators library for Flutter.

This package provides simple and flexible loading widgets that developers can easily integrate into their applications. It includes animated loaders such as spinning indicators, animated dots, and progress bars.

## ✨ Features

* Simple and easy to use
* Lightweight implementation
* Customizable size, color, and stroke width
* Animated loading indicators
* Works on Android, iOS, Web, and Desktop

## 📦 Installation

Add this to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_loading_indicators: 
     path: ../
```

Then run:

```bash
flutter pub get
```

Import the package:

```dart
import 'package:flutter_loading_indicators/flutter_loading_indicators.dart';
```

## 🚀 Usage

### Dots Loader

```dart
LoadingIndicator(
  type: LoaderType.dots,
  size: 40,
  color: Colors.blue,
  strokeWidth: 4,
)
```

### Spin Loader

```dart
SpinLoader(
  size: 50,
  color: Colors.red,
  strokeWidth: 4,
)
```

### Progress Bar Loader

```dart
LoadingIndicator(
  type: LoaderType.progressBar,
  size: 100,
  color: Colors.black,
  strokeWidth: 6,
)
```

## ⚙️ Parameters

### LoadingIndicator

| Parameter   | Type       | Description         |
| ----------- | ---------- | ------------------- |
| type        | LoaderType | Select loader type  |
| size        | double     | Loader width/size   |
| color       | Color      | Loader color        |
| strokeWidth | double     | Thickness of loader |

### SpinLoader

| Parameter   | Type   | Description                 |
| ----------- | ------ | --------------------------- |
| size        | double | Loader size                 |
| color       | Color  | Loader color                |
| strokeWidth | double | Circular progress thickness |

## 📱 Example

```dart
Column(
  children: [
    LoadingIndicator(
      type: LoaderType.dots,
      size: 40,
      color: Colors.blue,
      strokeWidth: 4,
    ),

    SpinLoader(
      size: 50,
      color: Colors.red,
      strokeWidth: 4,
    ),

    LoadingIndicator(
      type: LoaderType.progressBar,
      size: 100,
      color: Colors.black,
      strokeWidth: 6,
    ),
  ],
)
```

## 📁 Recommended Folder Structure
```
flutter_loading_indicators
│
├── lib
│   ├── flutter_loading_indicators.dart
│   │
│   └── src
│       ├── dots_loader.dart
│       ├── loader_type.dart
│       ├── loading_indicator.dart
│       └── spin_loader.dart
│
├── example
│   ├── pubspec.yaml
│   │
│   └── lib
│       └── main.dart
│
├── test
│   └── flutter_loading_indicators_test.dart
│
├── README.md
├── CHANGELOG.md
├── LICENSE
└── pubspec.yaml
```

## PREVIEW


https://github.com/user-attachments/assets/bc452676-3fd2-4a1d-9ac7-b02fffbfc606


## 📄 License

This project is licensed under the MIT License.
