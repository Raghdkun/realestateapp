import 'package:flutter/material.dart';

class TextSign extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function()? onTap;
  const TextSign(
      {super.key, required this.textone, required this.texttwo, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textone,
        ),
        SizedBox(width: 3,),
        InkWell(
          onTap: onTap,
          child: Text(
            texttwo,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        )
      ],
    );
  }
}
