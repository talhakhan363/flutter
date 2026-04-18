import 'package:flutter/material.dart';

// --> creating a class for custom button.
class RoundedButton extends StatelessWidget {
  final String btnName; // --> button name
  final Icon? btnIcon; // --> button icon (can be null).
  final Color? btnBgColor; // --> button background color (can be null).
  final TextStyle? btnTextStyle; // --> button text style (can be null).
  final VoidCallback? callback; // --> button callback function (can be null).

  /* callback function is a function that is passed as an argument to another function.
  it doesn't have any parameters and it doesn't return any value.
  mainly used to handle events or to perform some action after a certain task is completed. 
*/

  // --> constructor
  const RoundedButton({
    super.key,
    // --> button name should be given mandatory that's why required.
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
        /* --? callback gives error due to probability of null value, so [callback!]
      means we will not enter it null */
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(21))),
        backgroundColor: btnBgColor,
        shadowColor: btnBgColor,
      ),
      child: btnIcon != null
          // using row to show both icon and text in button.
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
