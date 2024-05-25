
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:praxis_test_app/config/theme/app_theme.dart';

class CustomTextField extends StatelessWidget {

  final String nameTitle;
  final String textHint;
  final bool isOnclick;
  final bool hasCounter;
  final TextInputType typeKeyboard;
  final TextCapitalization capitalization;
  final TextEditingController? fieldController;
  final IconData? iconPrefix;
  final bool onlyNumbers;
  final int? maxCaracteres;
  // final String Function(String)? validation;
  final FloatingLabelBehavior floatingLabel;

  const CustomTextField({
    super.key, 
    required this.nameTitle,
    this.textHint = '',
    this.isOnclick = false,
    this.hasCounter = false,
    this.typeKeyboard = TextInputType.text,
    this.capitalization = TextCapitalization.none,
    this.onlyNumbers = false,
    // this.validation,
    this.floatingLabel = FloatingLabelBehavior.always,
    this.fieldController,
    this.iconPrefix,
    this.maxCaracteres,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(5.0),
          color: colorThemes[2],
          child: Text(
            nameTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0
            ),
          ),
        ),
        TextFormField(
          inputFormatters: (!onlyNumbers)
          ? [
            FilteringTextInputFormatter.deny(RegExp('[0-9]')),
          ]
          : [
            FilteringTextInputFormatter.deny(RegExp('[a-zA-Z]')),
            LengthLimitingTextInputFormatter(maxCaracteres),
          ],
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: typeKeyboard,
          textCapitalization: capitalization,
          controller: fieldController,
          // validator: validation,
          cursorColor: colorThemes[2],
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: colorThemes[2],
                width: 2.0
              )
            ),
            hintText: textHint,
            labelStyle: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: colorThemes[2]
            ),
            prefixIcon: (iconPrefix != null)
            ? Icon(iconPrefix, color: colorThemes[2])
            : null,
            counterStyle: TextStyle(
              fontSize: 11.0,
              color: colorThemes[2]
            ),
            floatingLabelBehavior: floatingLabel,
          ),
          maxLength: maxCaracteres,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            color: colorThemes[2]
          )
        ),
        const SizedBox(height: 20.0)
      ],
    );
  }
}