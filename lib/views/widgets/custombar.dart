import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String textbutton;
  final IconData icondata;
  final bool? active;
  const CustomButtonAppBar(
      {Key? key,
      required this.textbutton,
      required this.icondata,
      required this.onPressed,
      required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Icon(icondata,
              color: active == true ? Colors.red : AppColor.grey),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 0),
          child: Text(textbutton,
              style: TextStyle(
                  color:
                      active == true ? Colors.red : AppColor.grey)),
        )
      ]),
    );
  }
}
