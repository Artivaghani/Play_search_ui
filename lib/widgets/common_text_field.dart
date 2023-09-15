
import 'package:arti_vaghani_practicle/config/config_packages.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class CommonTextField extends StatelessWidget {
  TextEditingController? controller;
  String? Function(String?)? validator;
  void Function(String)? onChanged;
  String? hintText;
  int? maxLines;
  int? maxLength;
  List<TextInputFormatter>? inputFormatters;
  TextStyle? style;
  Widget? prefixIcon;
  Widget? suffixIcon;
  CommonTextField(
      {super.key,
      this.controller,
      this.validator,
      this.onChanged,
      this.maxLines,
      this.maxLength,
      this.inputFormatters,
      this.style,
      this.prefixIcon,
      this.suffixIcon,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
    
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:   AppColors.darkBlack,),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppDimen.dimen8, horizontal: AppDimen.dimen16),
        child: TextFormField(
          controller: controller,
          validator: validator,
          onChanged: onChanged,
          maxLines: maxLines,
          inputFormatters: inputFormatters,
          style: style ?? Get.theme.textTheme.headlineSmall,
          maxLength: maxLength,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              hintStyle: Get.theme.textTheme.bodyMedium),
        ),
      ),
    );
  }
}
