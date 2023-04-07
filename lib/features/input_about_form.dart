import '../app/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:reactive_forms/reactive_forms.dart';

class InputAboutForm extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final String? errorMessage;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController controller;
  final bool isPassword;

  const InputAboutForm({
    Key? key,
    required this.hintText,
    this.labelText = '',
    this.keyboardType = TextInputType.text,
    this.errorMessage,
    this.maxLength,
    this.inputFormatters,
    required this.controller,
    this.isPassword = false,
  }) : super(key: key);

  @override
  State<InputAboutForm> createState() => _InputAboutFormState();
}

class _InputAboutFormState extends State<InputAboutForm> {
  String _text = '';
  bool _isObscure = true;
  String? _errorMessage;
  bool isEnabled = true;
  bool validationError = false;

  @override
  void dispose() {
    super.dispose();
  }

  Widget? getIcon(text) {
    if (widget.isPassword) {
      return GestureDetector(
          onTap: () {
            setState(() => _isObscure = !_isObscure);
          },
          child: SvgPicture.asset(
            _isObscure
                ? 'assets/icons/eye-off.svg'
                : 'assets/icons/pass_show.svg', // Todo: eye-show.svg
            color: AppPallete.black4,
          ));
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.labelText != "")
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.labelText,
              style: const TextStyle(
                color: AppPallete.blue,
              ),
            ),
          ),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 51,
          child: TextField(
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            maxLength: widget.maxLength,
            obscureText: widget.isPassword ? _isObscure : false,
            style: const TextStyle(
              //color: appTheme.colorTheme.black5,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                left: 10.0,
                bottom: 39 / 2,
              ),
              suffixIconConstraints:
              const BoxConstraints(minHeight: 40, minWidth: 40),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: getIcon(_text),
              ),
              counterText: "",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: !validationError
                    ? BorderSide.none
                    : const BorderSide(color: Colors.red),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                gapPadding: 2.0,
                borderSide: BorderSide.none,
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                gapPadding: 2.0,
                borderSide: BorderSide.none,
              ),
              fillColor: const Color(0xFFf7f7f7),
              filled: true,
              hintText: widget.hintText,
            ),
            // onSubmitted: () {
            //   Map<String, Object?> errors = widget.form.errors;

            //   setState(() {
            //     validationError = value.hasErrors;
            //   });

            //   if (errors.isNotEmpty &&
            //       widget.nextFormControlName == null) {
            //     widget.form.focus(errors.entries.first.key);
            //   } else if (widget.nextFormControlName != null &&
            //       errors.isEmpty) {
            //     widget.form.unfocus();
            //   } else {
            //     if (widget.nextFormControlName != null) {
            //       widget.form.focus(widget.nextFormControlName!);
            //     }
            //   }
            // },
            inputFormatters: widget.inputFormatters,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        if (widget.errorMessage != null && validationError)
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.errorMessage!,
            ),
          ),
      ],
    );
  }
}
