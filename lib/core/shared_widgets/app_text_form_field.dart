

// import 'package:flutter/material.dart';
// import 'package:instagram_clone/core/utils/screen_size.dart';

// class AppTextFormField extends StatelessWidget {
//   final double _verticalPadding = 12;

//   final String hintText;
//   final Color? fillColor;
//   final Widget? prefixIcon;
//   final Widget? suffixIcon;
//   final bool isObscure;
//   final double? width;
//   final double? height;
//   final void Function()? onTap;
//   final TextEditingController? controller;
//   final void Function(String)? onChanged;
//   final String? Function(String?)? validator;
//   final InputBorder? focusedBorder;
//   final InputBorder? enabledBorder;
//   final int? maxLines;
//  final TextAlignVertical? textAlignVertical;

//   const AppTextFormField._(
//       {Key? key,
//       required this.hintText,
//       this.controller,
//       this.fillColor,
//       this.prefixIcon,
//       this.suffixIcon,
//       this.onTap,
//       this.width,
//       this.height,
//       this.onChanged,
//       this.validator,
//       this.isObscure = false,
//       this.focusedBorder,
//       this.enabledBorder,
//       this.maxLines,
//       this.textAlignVertical,
//       })
//       : super(key: key);

//   factory AppTextFormField.standart({
//     required String hintText,
//     TextEditingController? controller,
//     String? Function(String?)? validator,
//     prefixIcon,
//     suffixIcon,
//     void Function(String)? onChanged,
//     double? height,
//     TextAlignVertical? textAlignVertical,
//   }) {
//     return AppTextFormField._(
//       controller: controller,
//       hintText: hintText,
//       validator: validator,
//       prefixIcon: prefixIcon,
//       onChanged: onChanged,
//       suffixIcon: suffixIcon,
//       height: 46,
//       textAlignVertical: TextAlignVertical.bottom,
//     );
//   }

//   factory AppTextFormField.obscure({
//     required String hintText,
//     TextEditingController? controller,
//     String? Function(String?)? validator,
//     void Function()? onTap,
//     double? height,
//   }) {
//     return AppTextFormField._(
//       onTap: onTap,
//       isObscure: true,
//       hintText: hintText,
//       validator: validator,
//       controller: controller,
//       height: 46,
//       prefixIcon: const Icon(
//         Icons.lock,
//         color: Colors.blue,
//       ),
//       // suffixIcon: const Icon(
//       //   Icons.visibility,
//       //   color: ColorHelper.secondaryColor,
//       // ),
//     );
//   }

//   factory AppTextFormField.phone(
//       {required String hintText,
//       Widget? suffixIcon,
//       Color? fillColor,
//       TextEditingController? controller,
//       String? Function(String?)? validator,
//       Widget? prefixIcon,
//       void Function()? onTap,
//       double? width,
//       double? height,
//       int? maxLines,
//       InputBorder? focusedBorder,
//       InputBorder? enabledBorder,
//       TextAlignVertical? textAlignVertical,
      
//       }) {
//     return AppTextFormField._(
//       height: height,
//       controller: controller,
//       hintText: hintText,
//       fillColor: Colors.blue.withOpacity(.1),
//       validator: validator,
//       prefixIcon: prefixIcon,
//       suffixIcon: suffixIcon,
//       onTap: onTap,
//       width: width ?? ScreenSize().getWidthPercent(.9),
//       focusedBorder: OutlineInputBorder(
//         borderSide: const BorderSide(color: Colors.transparent),
//         borderRadius: BorderRadius.circular(24),
//       ),
//       enabledBorder: UnderlineInputBorder(
//         borderSide: const BorderSide(color: Colors.transparent),
//         borderRadius: BorderRadius.circular(24),
//       ),
//       maxLines: 6,
//       textAlignVertical: TextAlignVertical.center,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width ?? ScreenSize().getWidthPercent(.9),
//       height: height,
//       constraints: const BoxConstraints(minHeight: 46, maxHeight: 200),
//       child: TextFormField(
//         controller: controller,
//         onChanged: onChanged,
//         obscureText: isObscure,
//         validator: validator,
//         textAlignVertical: textAlignVertical,

        
//         decoration: InputDecoration(
//           hintText: hintText,
//           prefixIcon: prefixIcon,
//           suffixIcon: suffixIcon,
//           filled: true,
//           fillColor: fillColor ?? Colors.white,
          
//           border: OutlineInputBorder( ),
//           // focusedBorder: focusedBorder,
//           // enabledBorder: enabledBorder,
//         ),
//         keyboardType: TextInputType.multiline,
//         textInputAction: TextInputAction.send,
//         style: const TextStyle(fontSize: 16),
//         maxLines: maxLines ?? 1,
//         minLines: 1,
//       ),
//     );
//   }
// }
