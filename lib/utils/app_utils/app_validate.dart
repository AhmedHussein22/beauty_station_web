import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:flutter/material.dart';

class AppValidate {
  static emailValidate(String? text, BuildContext context) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (text == null || text.isEmpty) {
      return 'emptyMail'.tr(context: context);
    } else if (!regex.hasMatch(text)) {
      return 'notValidMail'.tr(context: context);
    }
    return null;
  }

  static phoneValidate(String? text, BuildContext context) {
    // Regular expression for Saudi Arabian phone number
    RegExp regExp = RegExp(r'^\966[1-5]\d{8}$');

    if (text == null || text.isEmpty) {
      return 'emptyPhone'.tr(context: context);
    } else if (!regExp.hasMatch(text)) {
      return 'notValidPhone'.tr(context: context);
    }
    return null;
  }
  
  // customs validation must be from 10 digits
  static customsNumberValidate(String? text, BuildContext context) {
    String pattern = r'^[0-9]{10}$';
    RegExp regExp = RegExp(pattern);
    if (text == null || text.isEmpty) {
      return 'emptySoshibalNumber'.tr(context: context);
    } else if (!regExp.hasMatch(text)) {
      return 'notValidSoshibalNumber'.tr(context: context);
    }
    return null;
  }

  static passwordValidate(String? text, BuildContext context) {
    String pattern =
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$';
    RegExp regExp = RegExp(pattern);
    if (text == null || text.isEmpty) {
      return 'emptyPassword'.tr(context: context);
    } else if (!regExp.hasMatch(text)) {
      return 'notValidPassword'.tr(context: context);
    }
    return null;
  }

  static userNameValidate(String? text, BuildContext context) {
    if (text == null || text.isEmpty) {
      return 'emptyUserName'.tr(context: context);
    } else if (text.length < 2) {
      return 'notValidUserName'.tr(context: context);
    }
    return null;
  }

  static confirmPasswordValidate(
    String? text,
    String? password,
    BuildContext context,
  ) {
    if (text == null || text.isEmpty) {
      return 'emptyConfirmPassword'.tr(context: context);
    } else if (text != password) {
      return 'notValidConfirmPassword'.tr(context: context);
    }
    return null;
  }

  static required(String? text, BuildContext context) {
    if (text?.isEmpty == true) {
      return 'requered'.tr(context: context);
    }
    return null;
  }

  // id number validation must be 10 digits and start with 2 or 1
  static idNumberValidate(String? text, BuildContext context) {
    String pattern = r'^[1-2][0-9]{9}$';
    RegExp regExp = RegExp(pattern);
    if (text == null || text.isEmpty) {
      return 'emptyIdNumber'.tr(context: context);
    } else if (!regExp.hasMatch(text)) {
      return 'notValidIdNumber'.tr(context: context);
    }
    return null;
  }

  // serial number validation must be from 5 to 10 digits
  static serialNumberValidate(String? text, BuildContext context) {
    String pattern = r'^[0-9]{8,10}$';
    RegExp regExp = RegExp(pattern);
    if (text == null || text.isEmpty) {
      return 'emptySerialNumber'.tr(context: context);
    } else if (!regExp.hasMatch(text)) {
      return 'notValidSerialNumber'.tr(context: context);
    }
    return null;
  }

  // soshibal_number validation must be from 10 digits
  static soshibalNumberValidate(String? text, BuildContext context) {
    String pattern = r'^[0-9]{10}$';
    RegExp regExp = RegExp(pattern);
    if (text == null || text.isEmpty) {
      return 'emptySoshibalNumber'.tr(context: context);
    } else if (!regExp.hasMatch(text)) {
      return 'notValidSoshibalNumber'.tr(context: context);
    }
    return null;
  }

  //Visa Card id validation should be 14 digits
  static visaCardIdValidate(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return 'emptyVisaCardId'.tr();
    }
    value = value.replaceAll(' ', '');
    if (value.length != 16) {
      return 'cardIdvalidation'.tr();
    }
    if (!RegExp(r'[0-9]{16}$').hasMatch(value)) {
      return 'notValidVisaCardId'.tr();
    }

    return null;
  }

  //Cvv validation should be 3 digits
  static cvvValidate(String? text, BuildContext context) {
    String pattern = r'^[0-9]{3}$';
    RegExp regExp = RegExp(pattern);
    if (text == null || text.isEmpty) {
      return 'emptyCvv'.tr();
    } else if (!regExp.hasMatch(text)) {
      return 'notValidCvv'.tr();
    }
    return null;
  }

  //Expire date validation for Visa
  static expireDateValidate(String? text, BuildContext context) {
    String pattern = r'^[0-9]{2}/[0-9]{2}$';
    RegExp regExp = RegExp(pattern);
    if (text == null || text.isEmpty) {
      return 'enter_birthDate_example_no'.tr();
    } else if (!regExp.hasMatch(text)) {
      return 'requered'.tr();
    }
    return null;
  }
}
