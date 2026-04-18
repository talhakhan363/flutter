import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? btnIcon;
  final Color? btnBgColor;
  final TextStyle? btnTextStyle;
  final VoidCallback? callback;
  /* --> voidCallBack doesn't take any argument nor return any value, it just
  run the code provided to it, hence the run-able code will be in the function
  we are using actually... */

  const RoundedButton({
    super.key,
    // --> button name should be given that's why required.
    required this.btnName,
    this.btnIcon,
    this.btnBgColor = Colors.blue, // --> default color of button.
    this.btnTextStyle,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
        /* --? callback gives error due to probability of null value, so callback!
      means we will not enter it null */
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(21))),
        backgroundColor: btnBgColor,
        shadowColor: btnBgColor,
      ),
      child: btnIcon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                btnIcon!,
                Container(width: 11),
                Text(btnName, style: btnTextStyle),
              ],
            )
          : Text(btnName, style: btnTextStyle),
    );
  }
}
