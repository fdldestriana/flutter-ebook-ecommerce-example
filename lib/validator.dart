class Validator {
  static String? nameValidator(String? value) {
    if (value == null || value.isEmpty) return 'Name can not be empty';
    return null;
  }

  static emailValidator(String? value) {
    if (value == null || value.isEmpty) return 'Email can not be empty';
    if (!value.contains("@")) {
      return 'Not a valid email address. Should be your@email.com';
    }
    return null;
  }

  static passwordValidator(String? value) {
    if (value == null || value.isEmpty) return 'Password can not be empty';
    if (value.length < 6) return 'Password must be at least 6 characters';
    return null;
  }
}
