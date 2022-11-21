import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';


class GetTextField extends StatefulWidget {
  final String hint;
  final bool obsecure, isVisible;
  final TextEditingController? controller;
  final Function(String? value) onValidate;

  const GetTextField({
    Key? key,
    required this.hint,
    required this.obsecure,
    this.controller,
    required this.onValidate,
    this.isVisible = false,
  }) : super(key: key);

  @override
  State<GetTextField> createState() => _GetTextFieldState();
}

class _GetTextFieldState extends State<GetTextField> {
  late bool _obsecure;

  @override
  void initState() {
    _obsecure = widget.obsecure;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: (val) => widget.onValidate(val),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:
           const BorderSide(color: AppColors.titleBG, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:
          const BorderSide(color: AppColors.titleBG, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:
          const BorderSide(color: AppColors.titleBG, width: 1),
        ),
        suffixIcon: widget.isVisible
            ? _obsecure
            ? IconButton(
            onPressed: () {
              setState(() {
                _obsecure = !_obsecure;
              });
            },
            icon: const Icon(Icons.visibility_off_outlined))
            : IconButton(
            onPressed: () {
              setState(() {
                _obsecure = !_obsecure;
              });
            },
            icon: const Icon(Icons.remove_red_eye))
            : null,
        filled: true,
        fillColor: Colors.white,
        hintText: widget.hint,
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      ),
      obscureText: _obsecure,
      maxLength: 16,
    );
  }
}