class Choice {
  final String name;
  final String description;
  bool isSelected;

  Choice({
    required this.name,
    required this.description,
    this.isSelected = false,
  });
}
