import 'package:flutter/material.dart';

class CommonUtils {
  static const String _emailValidatorRegExp =
      r'^[a-zA-Z0-9+_.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';

  static String? isValidateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Please type your email.';
    }

    if (RegExp(_emailValidatorRegExp).hasMatch(email)) {
      return null;
    } else {
      return 'Please enter a valid email';
    }
  }

  //test boolean
  static  isEmailValid(String? email) {
    if (email == null || email.isEmpty) {
      return 'Please type your email.';
    }

    if (RegExp(_emailValidatorRegExp).hasMatch(email)) {
      return null;
    } else {
      return 'Enter a valid email';
    }
  }

  static String? isValidInput(String? input) {
    if (input == null || input.isEmpty) {
      return 'Required Field';
    } else {
      return null;
    }
  }

  static String? isValidInputName(String? input) {
    if (input == null || input.isEmpty) {
      return 'Required Field';
    } else if (!RegExp(r'^[a-zA-Zء-ي\s]+$').hasMatch(input)) {
      return 'Name Does not Contain Any Number';
    } else {
      return null;
    }
  }

  static String? isValidAdhaarNumber(String? input, [int length = 16]) {
    if (input == null || input.isEmpty) {
      return 'Required Field';
    } else if (RegExp(r"^\+?0[0-9]$").hasMatch(input)) {
      return ' Contain only Number';
    }
    bool hasMinLength = input.length >= length;

    if (!hasMinLength) {
      return 'Enter all 16 digits of Adhaar Card';
    }

    if (hasMinLength) {
      return null;
    }
    return null;
  }

  static String? isValidPinCode(String? input, [int length = 6]) {
    if (input == null || input.isEmpty) {
      return 'Required Field';
    } else if (RegExp(r"^\+?0[0-9]$").hasMatch(input)) {
      return ' Contain only Number';
    }
    bool hasMinLength = input.length >= length;

    if (!hasMinLength) {
      return 'Enter all 6 digits of PinCode';
    }

    if (hasMinLength) {
      return null;
    }
    return null;
  }

  static bool isValidPassword(String? password, [int minLength = 8]) {
    if (password == null || password.isEmpty) {
      return false;
    }
    // bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    // bool hasDigits = password.contains(RegExp(r'[0-9]'));
    // bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    // bool hasSpecialCharacters =
    //     password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    bool hasMinLength = password.length >= minLength;

    if (!hasMinLength) {
      return false;
    }

    // if (!hasDigits) {
    //   return 'Your password must contain at least 1 digits';
    // }
    //
    // if (!hasUppercase) {
    //   return 'Your password must contain at least 1 Uppercase.';
    // }
    //
    // if (!hasLowercase) {
    //   return 'Your password must contain at least 1 Lowercase.';
    // }
    //
    // if (!hasLowercase) {
    //   return 'Your password must contain at least 1 Lowercase.';
    // }
    //
    // if (!hasSpecialCharacters) {
    //   return 'Your password must contain at least 1 special character.';
    // }

    /*if (hasDigits &
        hasUppercase &
        hasLowercase &
        hasSpecialCharacters &
        hasMinLength) {
      return null;
    }*/

    if (hasMinLength) {
      return true;
    }
    return true;
  }

  static String? isPasswordValid(String? password, [int minLength = 8]) {
    if (password == null || password.isEmpty) {
      return 'Please type your password.';
    }
    bool hasMinLength = password.length >= minLength;

    if (!hasMinLength) {
      return 'Your password must be at least 8 alphanumeric length.';
    }

    if (hasMinLength) {
      return null;
    }
    return null;
  }

  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
}
