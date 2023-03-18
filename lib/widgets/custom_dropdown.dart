import 'package:easy_surprise/constant.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({Key? key, required this.myCallBack, required this.menuItem,required this.selectedId, required this.text, required this.height, this.validator}) : super(key: key);

  final void Function(dynamic) myCallBack;
  final List<DropdownMenuItem> menuItem;
  final FormFieldValidator<dynamic>? validator;
  final dynamic selectedId;
  final String text;
  final double height;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonFormField(
        icon: const Icon(Icons.keyboard_arrow_down,color: kHintColor),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets. only(top: 10,left: 12,right: 12,bottom: 20),
          filled: true,
          fillColor: kBackColorProgress,
          alignLabelWithHint: true,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8)),
          // Set border for focused state
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 1, color: Colors.red),
              borderRadius: BorderRadius.circular(8)),
          disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 1, color: Colors.red),
              borderRadius: BorderRadius.circular(8)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 1, color: Colors.red),
              borderRadius: BorderRadius.circular(8)),
        ),
        validator: widget.validator,
        hint: Text(
          widget.text,
          style: txt.txtYekanBakh.txtMedium.textGrey1.txtLg,
        ),
        onChanged: (value) => widget.myCallBack(value),
        value: widget.selectedId=="" ? null : widget.selectedId,
        items: widget.menuItem,
      ),
    );

  }
}
