enum WidgetHeight { card }

extension WidgetHeightExtension on WidgetHeight {
  double rawValue() {
    switch (this) {
      case WidgetHeight.card:
        return 100;
    }
  }
}
