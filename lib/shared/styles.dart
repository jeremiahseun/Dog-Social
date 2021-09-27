import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle bigText() {
    return GoogleFonts.poppins(
        fontSize: 34, fontWeight: FontWeight.w700, color: Colors.black);
  }

  static TextStyle normalText() {
    return GoogleFonts.poppins(
        fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white);
  }
  static TextStyle chatName() {
    return GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black);
  }

  static TextStyle buttonText({Color? color}) {
    return GoogleFonts.poppins(
        fontSize: 17,
        fontWeight: FontWeight.w700,
        color: color ?? Colors.black);
  }

  static TextStyle mediumText() {
    return GoogleFonts.poppins(
      fontSize: 17,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle mSmallText({bool underline = false}) {
    return GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      decoration: underline ? TextDecoration.underline : null,
    );
  }

  static TextStyle smallText({FontWeight? fontWeight}) {
    return GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: fontWeight ?? FontWeight.w500,
    );
  }

  static TextStyle? vSmallText({Color? color}) {
    return GoogleFonts.poppins(
        fontSize: 10, fontWeight: FontWeight.w500, color: color);
  }

  static Widget textBar(
      {@required String? label,
      Widget? suffixIcon,
      Widget? prefixIcon,
      TextEditingController? controller,
      bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        fillColor: const Color(0xffF0F0F0),
        filled: true,
        suffixIcon: suffixIcon ?? const SizedBox(),
        prefixIcon: prefixIcon ?? const SizedBox(),
        labelText: label,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: BorderSide.none),
      ),
    );
  }

  static Widget bigButton(
      {Function()? onTap,
      @required BuildContext? context,
      Color? color,
      Key? key,
      String? text,
      bool padding = true}) {
    return InkWell(
      key: key,
      onTap: onTap,
      child: Container(
        width: padding
            ? MediaQuery.of(context!).size.width * .8
            : MediaQuery.of(context!).size.width,
        height: 58,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: const LinearGradient(
            colors: [
              Color(0xffFE904B),
              Color(0xffFB724C),
            ],
            stops: [0.1, 0.6],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text!,
          style: buttonText(color: color),
        ),
      ),
    );
  }

  static Widget priceTag({@required String? price}) {
    return Container(
      height: 28,
      alignment: Alignment.center,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.black,
        ),
        child: Text("\$$price/h", style: vSmallText(color: Colors.white),),
    );
  }

  static Widget smallButton({
    Function()? onTap,
    @required BuildContext? context,
    @required String? text,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 104,
        height: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              Color(0xffFE904B),
              Color(0xffFB724C),
            ],
            stops: [0.1, 0.6],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.add,
              color: Colors.white,
            ),
            Text(
              text!,
              style: vSmallText(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class AppIcons {
  static final Widget home = Image.asset('assets/icons/home.png');
  static final Widget moment = Image.asset('assets/icons/people.png');
  static final Widget chat = Image.asset('assets/icons/send.png');
  static final Widget profile = Image.asset('assets/icons/profile.png');
}

class AppDivider extends StatelessWidget {
  bool height;
   AppDivider({
    Key? key,
    this.height = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      height: height ? 15 : 2,
      width: height ? 2 : 15,
    );
  }
}
