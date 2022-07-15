extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String toLowerCaseStripped() {
    return this.toLowerCase().trim().replaceAll(' ', '');
  }
}
