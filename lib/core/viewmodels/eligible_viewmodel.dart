import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'base_viewmodel.dart';

class EligibilityScreenProvider extends BaseViewModel{
  String _eligibilityMessage = "";
  bool _isEligible = false;
  String get eligibilityMessage => _eligibilityMessage;
  bool get isEligible => _isEligible;


  void checkEligibility(int age ){
    if(age >= 18)
      eligibleForLicense();
    else if (age > 0 && age < 18 )
      notEligibleForLicense();
    else
      _eligibilityMessage = 'Please enter your age';
    notifyListeners();
  }

  void eligibleForLicense(){
    _eligibilityMessage = "You are eligible to apply for Driving License";
    _isEligible = true;

    notifyListeners();
  }


  void notEligibleForLicense(){
    _eligibilityMessage = "You are not eligible to apply for Driving License";
    _isEligible = false;

    //Call this whenever there is some change in any field of change notifier.
    notifyListeners();
  }

  disposeProvider(){
    _eligibilityMessage.isEmpty;
    _isEligible.isBlank;
    _isEligible = false;
    notifyListeners();
  }

}