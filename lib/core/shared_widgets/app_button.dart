// import '../_core_exports.dart';

// class AppButton extends StatelessWidget {
//   final String? buttonText;
//   final Color backGroundColor;
//   late final Color _textColor;
//   final String? iconPath;
//   late final Color? _iconColor;
//   final double? width;
//   late final BoxBorder? _border;
//   final void Function()? onTap;

//   AppButton._({
//     Key? key,
//     this.onTap,
//     this.iconPath,
//     BoxBorder? border,
//     Color? iconColor,
//     this.width,
//     required this.buttonText,
//     required this.backGroundColor,
//     required Color textColor,
//   }) : super(key: key) {
//     _border = border;
//     _textColor = textColor;
//     _iconColor = iconColor;
//   }

//   factory AppButton.standart({
//     required Function() onTap,
//     required String buttonText,
//     bool isActive = true,
//   }) {
//     Color backgroundColor = ColorHelper.secondaryColor;
//     if (!isActive) {
//       backgroundColor = backgroundColor.withOpacity(.25);
//     }

//     return AppButton._(
//       onTap: onTap,
//       buttonText: buttonText,
//       backGroundColor: backgroundColor,
//       textColor: ColorHelper.white,
//     );
//   }

//   factory AppButton.icon({
//     required Function() onTap,
//     required String iconPath,
//     String? buttonText,
//     Color? textColor,
//     Color? borderColor,
//     Color? backGroundColor,
//     Color? iconColor,
//     bool isActive = true,
//   }) {
//     Color incomingBackgroundColor = backGroundColor ?? Colors.transparent;
//     Color incomingBorderColor = borderColor ?? ColorHelper.secondaryColor;
//     Color incomingTextColor = textColor ?? ColorHelper.secondaryColor;

//     if (!isActive) {
//       incomingBorderColor = incomingBorderColor.withOpacity(.25);
//       incomingTextColor = incomingTextColor.withOpacity(.25);
//       incomingBackgroundColor = incomingBackgroundColor.withOpacity(.25);
//       iconColor = iconColor?.withOpacity(.25) ?? Colors.transparent.withOpacity(.25);
//     }

//     return AppButton._(
//       onTap: onTap,
//       iconPath: iconPath,
//       iconColor: iconColor,
//       buttonText: buttonText,
//       textColor: incomingTextColor,
//       backGroundColor: incomingBackgroundColor,
//       border: Border.all(color: incomingBorderColor),
//     );
//   }

//   factory AppButton.outline({
//     required Function() onTap,
//     String? buttonText,
//     Color? textColor,
//     Color? borderColor,
//     Color? backGroundColor,
//     bool isActive = true,
//   }) {
//     Color incomingBackgroundColor = backGroundColor ?? Colors.white;
//     Color incomingBorderColor = borderColor ?? ColorHelper.primaryColor;
//     Color incomingTextColor = textColor ?? ColorHelper.primaryColor;

//     if (!isActive) {
//       incomingBorderColor = incomingBorderColor.withOpacity(.25);
//       incomingTextColor = incomingTextColor.withOpacity(.25);
//       incomingBackgroundColor = incomingBackgroundColor.withOpacity(.25);
//     }

//     return AppButton._(
//       onTap: onTap,
//       buttonText: buttonText,
//       textColor: incomingTextColor,
//       backGroundColor: incomingBackgroundColor,
//       border: Border.all(color: incomingBorderColor),
//     );
//   }

//   factory AppButton.small({
//     required Function() onTap,
//     String? buttonText,
//     Color? textColor,
//     Color? backGroundColor,
//     bool isActive = true,
//     double? width,
//   }) {
//     Color incomingBackgroundColor = backGroundColor ?? ColorHelper.primaryColor;
//     Color incomingTextColor = textColor ?? ColorHelper.white;

//     if (!isActive) {
//       incomingTextColor = incomingTextColor.withOpacity(.25);
//       incomingBackgroundColor = incomingBackgroundColor.withOpacity(.25);
//     }

//     return AppButton._(
//       onTap: onTap,
//       buttonText: buttonText,
//       textColor: incomingTextColor,
//       backGroundColor: incomingBackgroundColor,
//       width: ScreenSize().getHeightPercent(.13),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         height: 46,
//         width: width,
//         decoration: BoxDecoration(
//           border: _border,
//           color: backGroundColor,
//           borderRadius: AppBorderRadius.borderRadiusAll_14px,
//         ),
//         alignment: Alignment.center,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Visibility(
//               visible: iconPath != null,
//               child: AppVisualViewer(
//                 widthPercent: 0.055,
//                 heightPercent: 0.04,
//                 visualPath: iconPath,
//                 visualColor: _iconColor,
//               ),
//             ),
//             if (buttonText != null) ...[
//               SizedBox(
//                 height: 46,
//                 child: Center(
//                   child: AppText(
//                     buttonText ?? "",
//                     style: AppTextStyles.regular16px.copyWith(
//                       color: _textColor,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//             if (buttonText != null) ...[
//               const SizedBox.shrink(),
//             ],
//           ],
//         ),
//       ),
//     );
//   }
// }
