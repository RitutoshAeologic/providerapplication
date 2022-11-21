

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:provider_application/core/viewmodels/user_data_viewmodel.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/font_constant.dart';
import '../../../../core/utils/common_utils.dart';
import '../../widgets/text_field_widget.dart';
import '../submit_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _dateInput = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _adhaarNumber = TextEditingController();
  final TextEditingController _cAdhaarNumber = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _pincode = TextEditingController();


  String? gender ='';

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserViewModel>(context);
    return  Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.dlTitle),
        backgroundColor: AppColors.titleBG,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
             Padding(
              padding: EdgeInsets.all(18.0),
              child: Center(child: Text(AppStrings.dlFillUp)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: Text(AppStrings.name),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 32.0,vertical: 10),
              child: TextFormField(
                controller: _name,
                autofocus: false,
                maxLength: 15,
                textCapitalization: TextCapitalization.words,
                validator: CommonUtils.isValidInputName,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:  BorderSide(
                        color: AppColors.titleBG, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color: AppColors.titleBG, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color:AppColors.titleBG, width: 1),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: AppStrings.fName,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 14),
                ),
                obscureText: false,
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Text(AppStrings.gender),
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 130,
                      child: RadioListTile(
                        title: Text(AppStrings.male),
                        value: "male",
                        activeColor: AppColors.titleBG,
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: RadioListTile(
                        title: Text(AppStrings.female),
                        value: "female",
                        activeColor: AppColors.titleBG,
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                    ),

                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 130,
                      child: RadioListTile(
                        title: Text(AppStrings.other),
                        value: "other",
                        activeColor: AppColors.titleBG,
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: EdgeInsets.only(left: 32.0,bottom: 10),
                      child: Text(AppStrings.dob),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: InkWell(
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime(
                                  DateTime.now().year - 18,
                                  DateTime.now().month,
                                  DateTime.now().day),
                              firstDate: DateTime(1950),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(
                                  DateTime.now().year - 18,
                                  DateTime.now().month,
                                  DateTime.now().day),);

                          if (pickedDate != null) {
                            print(
                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                            DateFormat('dd-MM-yyyy').format(pickedDate);
                            print(
                                formattedDate); //formatted date output using intl package =>  2021-03-16
                            setState(() {
                              _dateInput.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {}
                        },
                        child:
                        Container(
                          width: MediaQuery.of(context).size.width*0.42,

                          child: Center(
                            child: TextFormField(
                              enabled: false,
                              controller: _dateInput,
                              validator: CommonUtils.isValidInput,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppColors.titleBG, width: 2),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      color: AppColors.titleBG, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      color: AppColors.titleBG, width: 1),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: AppStrings.dob,
                                suffixIcon: IconButton(
                                    alignment: Alignment.center,
                                    onPressed: () async {
                                      DateTime? pickedDate = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime(DateTime.now().year - 18,
                                              DateTime.now().month, DateTime.now().day),
                                          firstDate: DateTime(1947),
                                          //DateTime.now() - not to allow to choose before today.
                                          lastDate: DateTime(DateTime.now().year - 18,
                                              DateTime.now().month, DateTime.now().day));

                                      if (pickedDate != null) {
                                        debugPrint(pickedDate.toString());

                                        ///pickedDate output format => 10-03-2022 00:00:00.000
                                        String formattedDate =
                                        DateFormat('dd-MM-yyyy').format(pickedDate);
                                        debugPrint(formattedDate);

                                        setState(() {
                                          _dateInput.text =
                                              formattedDate; //set output date to TextField value.
                                        });
                                      } else {
                                        debugPrint("Date is not selected");
                                      }
                                    },
                                    icon: Icon(Icons.calendar_month
                                    )
                                  // Icon(
                                  //   Icons.calendar_today_outlined,
                                  // //  size: 16,
                                  // ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 14),
                              ),
                              obscureText: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 10,right: 32),
                    child: Text(AppStrings.bloodGroup),),
                    Padding(padding: EdgeInsets.only(right: 32),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.234,
                      child: DropdownButton(
                        elevation: 12,
                        dropdownColor: AppColors.titleBG,
                        value: userProvider.dropdownBloodGroup,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: userProvider.items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Container(
                              width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: AppColors.titleBG
                                ),
                                child: Center(child: Text(items))),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            userProvider.dropdownBloodGroup = newValue!;
                          });
                        },
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10,),
             Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: Text(AppStrings.aadhaarCard),
            ),
             Padding(
              padding:  EdgeInsets.symmetric(horizontal: 32.0,vertical: 10),
              child:
             GetTextField(
               hint: AppStrings.aadhaarCard,
               obsecure: true,
               isVisible: true,
               controller: _adhaarNumber,
               onValidate: CommonUtils.isValidAdhaarNumber,
             )
            ),
             Padding(
              padding: EdgeInsets.only(left: 32.0,bottom: 10),
              child: Text(AppStrings.mAadhaarCard),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: GetTextField(
                onValidate: CommonUtils.isValidAdhaarNumber,
                controller: _cAdhaarNumber,
                hint: 'Match Adhaar Number',
                obsecure: true,
                isVisible: true,
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 32.0,top: 10),
              child: Text(AppStrings.address),
            ),
            Container(
              height: 153,
              width: 343,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 32,vertical: 10),
              child: TextFormField(
                controller: _address,
                textCapitalization: TextCapitalization.sentences,
                validator: CommonUtils.isValidInput,
                keyboardType: TextInputType.streetAddress,
                maxLength: 140,
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color: AppColors.titleBG, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color: AppColors.titleBG, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                    BorderSide(color:AppColors.titleBG, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Write down your permanent address which mentioned on your Adhaar Card",
                  contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: EdgeInsets.only(left: 32.0),
                      child: Text(AppStrings.pincode),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 32.0,vertical: 10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.35,
                        child: TextFormField(
                          controller: _pincode,
                          autofocus: false,
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          validator: CommonUtils.isValidPinCode,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:  BorderSide(
                                  color: AppColors.titleBG, width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:  BorderSide(
                                  color: AppColors.titleBG, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                  color:AppColors.titleBG, width: 1),
                            ),
                            filled: true,
                            fillColor: AppColors.white,
                            hintText: AppStrings.pincode,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 14),
                          ),
                          obscureText: false,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 32.0,bottom: 10),
                      child: Text(AppStrings.chState),
                    ),
                    Padding(padding: EdgeInsets.only(right: 32),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.38,
                        child: DropdownButton(
                          elevation: 12,
                          dropdownColor: AppColors.titleBG,
                          value: userProvider.dropdownStatesList,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: userProvider.stateNames.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Container(
                                  width: 110,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: AppColors.titleBG
                                  ),
                                  child: Text(items,textAlign: TextAlign.start,),),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              userProvider.dropdownStatesList = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: MaterialButton(
                color: AppColors.titleBG,
                textColor: Colors.white,
                onPressed:  () async {
                  if (_formKey.currentState?.validate() ?? false) {
                    if (_cAdhaarNumber.text != _adhaarNumber.text) {
                      CommonUtils.showSnackBar(context, 'Adhaar Number not match');
                      return;
    }
                    } else {
                      // Navigator.push(context, MaterialPageRoute(builder:(context) =>ApplicationSubmit()));
                    }
                  },
                child: Text(AppStrings.submit, style: TextStyle(fontSize: 20.0),)
              ),
            ),
          ],
        ),


        ),
      ),
    );
  }
}
