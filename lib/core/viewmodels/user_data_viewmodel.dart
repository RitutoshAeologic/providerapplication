import 'dart:collection';
import '../models/users/user_model.dart';
import 'base_viewmodel.dart';

class UserViewModel extends BaseViewModel{

  final UserModel _userModel = const UserModel();
  late String _userName;
  late String _userEmail;
  late String _dateOfBirth;
  //late List<Gender> _gender;
  late String _bloodGroup;
  late String _adhaarNumber;
  //late List<States> _userState = [];

  UserModel get user => _userModel;
  String get userName => _userName;
  String get userEmail => _userEmail;
  String get dateOfBirth => _dateOfBirth;
  String get bloodGroup => _bloodGroup;
  String get adhaarNumber => _adhaarNumber;
  // List<States> get states => _userState;
  // List<Gender> get gender => _gender;

  String dropdownBloodGroup = 'A+';

  String gender = '';
  String dropdownStatesList = 'Andaman & Nicobar';
  // List of items in our blood group dropdown menu
  var items = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB-',
    'AB+',
  ];
  var stateNames =[
    "Andaman & Nicobar",
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chandigarh",
    "Chhattisgarh",
    "Dadra & Nagar Haveli",
    "Daman & Diu",
    "Delhi",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jammu & Kashmir",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Ladakh",
    "Lakshadweep",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Pondicherry",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Tripura",
    "Uttar Pradesh",
    "Uttarakhand",
    "West Bengal"];
  String _selectedItem = 'male';
  @override
  notifyListeners();

  // UnmodifiableListView<String> get gender {
  //   return UnmodifiableListView(_gender);
  // }

  String get selected {
    return _selectedItem;
  }

  set selected(final String item) {
    _selectedItem = item;
    notifyListeners();
  }
}