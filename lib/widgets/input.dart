// import 'package:evisit_mobile/common/helpers/customColors.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class InputTextCenter extends StatelessWidget {
  const InputTextCenter(
      {this.label = '',
      this.suffixIcon = Icons.person,
      this.suffixColor = Colors.transparent,
      this.initialValue = '',
      this.readOnly = false,
      this.style = const TextStyle(color: Colors.white),
      this.obscure = false,
      this.isError = false,
      this.showErrorText = "field can't be empty",
      this.controller});

  final String label;

  final IconData suffixIcon;

  final Color suffixColor;

  final String initialValue;

  final bool readOnly;

  final bool obscure;

  final bool isError;

  final String showErrorText;

  final TextStyle style;

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      textAlign: TextAlign.center,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: initialValue,
        labelText: label,
        errorText: isError ? showErrorText : null,
        labelStyle: TextStyle(color: Colors.black),
        //  fillColor: CustomColors.AuthInput,
        hintStyle: TextStyle(color: Colors.black, fontSize: 13),
        contentPadding: EdgeInsets.fromLTRB(25, 20, 20, 20),
        border: new UnderlineInputBorder(
            //   borderSide: BorderSide(color: CustomColors.SecondaryColor4),
            ),
        focusedBorder: new UnderlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          //  borderSide: BorderSide(color: CustomColors.SecondaryColor4),
        ),
        enabledBorder: new UnderlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          //  borderSide: BorderSide(color: CustomColors.SecondaryColor4),
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  final String? hintText;

  final dynamic validator;

  final dynamic onSaved;

  final Function()? onChanged;

  final Function()? toggleEye;

  final KeyboardType? keyboard;

  final String? init;

  final bool? isPassword;

  final Color? isPasswordColor;

  final bool? showObscureText;

  final bool? obscureText;

  final Color? styleColor;

  final Color? hintStyleColor;

  final bool? enabled;

  final bool readOnly;

  final String? labelText;

  final dynamic maxLines;

  final Color? borderColor;

  final Widget? prefix;

  final Widget? suffixIcon;

  final Key? key;

  final TextEditingController? controller;

  final List<TextInputFormatter>? inputFormatters;

  final Color? fillColor;

  final bool? isError;

  final String? showErrorText;

  final VoidCallback? onTap;

  final String? errormsg;

  Input(
      {this.hintText = '',
      required this.validator,
      required this.onSaved,
      this.toggleEye,
      this.init,
      this.isPassword = false,
      this.isPasswordColor,
      this.showObscureText,
      this.obscureText = false,
      this.keyboard,
      this.styleColor,
      this.hintStyleColor,
      this.enabled = true,
      this.readOnly = false,
      this.labelText,
      this.maxLines = 1,
      this.borderColor = Colors.transparent,
      //Color(0xffADAFB2),
      this.onChanged,
      this.prefix,
      this.key,
      this.controller,
      this.inputFormatters,
      this.fillColor = Colors.black12,
      this.isError = false,
      this.showErrorText = "field can't be empty",
      this.suffixIcon,
      this.onTap,
      this.errormsg});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        width: mediaQuery.width * 0.85,
        height: mediaQuery.height * 0.074,
        child: TextFormField(
            onTap: onTap != null ? onTap : () {},
            inputFormatters: inputFormatters,
            controller: controller,
            key: key,
            enabled: enabled,
            readOnly: readOnly,
            style: TextStyle(fontSize: 14, color: Colors.black),
            cursorColor: styleColor,
            obscureText: obscureText as bool,
            maxLines: maxLines,
            onChanged: onChanged != null ? onChanged!() : (String) {},
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(25, 20, 20, 20),

              prefixIcon: prefix,

              filled: true,

              fillColor: fillColor,

              labelText: labelText,

              labelStyle: TextStyle(color: Colors.black),

              hintText: hintText ?? labelText,

              hintStyle: TextStyle(fontSize: 13, color: Color(0xffA1A1A1)),

              isDense: true,

              // errorBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(6),
              //   borderSide: BorderSide(color: Colors.red),
              // ),

              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xffAC8BD3)),
              ),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderColor as Color),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black12),
              ),

              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: borderColor as Color),
              ),

// contentPadding: EdgeInsets.only(top: 10, bottom: 10),

              suffixIcon: isPassword ?? true
                  ? GestureDetector(
                      onTap: toggleEye != null ? toggleEye!() : () {},
                      child: Icon(
                        showObscureText ?? true
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Color(0xFFC0C1C3),
                      ),
                    )
                  : suffixIcon,

              errorText: isError ?? true ? showErrorText : null,
            ),
            validator: validator,
            initialValue: init,
            onSaved: onSaved,
            keyboardType: keyboard == KeyboardType.EMAIL
                ? TextInputType.emailAddress
                : keyboard == KeyboardType.NUMBER
                    ? TextInputType.number
                    : keyboard == KeyboardType.PHONE
                        ? TextInputType.phone
                        : TextInputType.text),
      ),
    );
  }
}

enum KeyboardType { EMAIL, PHONE, NUMBER, TEXT }

class ButtonNoGradient extends StatelessWidget {
  const ButtonNoGradient(
      {Key? key,
      required this.onpressed,
      required this.title,
      this.height,
      this.width,
      this.gradient,
      this.color,
      this.textColor,
      this.fontSize,
      this.borderColor})
      : super(key: key);
  final double? height;
  final double? width;
  final Function() onpressed;
  final String title;
  final gradient;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    MediaQueryData size = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: gradient,
          color: color,
          border:
              Border.all(width: 1.0, color: borderColor ?? Colors.transparent),
        ),
        child: MaterialButton(
            onPressed: onpressed,
            child: Text(
              title,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
              ),
            )),
      ),
    );
  }
}

class backButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back_ios_outlined,
                size: 10,
              ))),
    );
  }
}
