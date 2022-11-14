import 'package:flutter/material.dart';
import 'package:flutter_mycart/component/custom_text_form_field.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(text: "Id"),
          SizedBox(height: 10),
          CustomTextFormField(text: "Password"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
