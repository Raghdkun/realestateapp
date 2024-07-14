import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final String name ; 
  final void Function()? onTap ;
  final IconData icon ; 

  const DrawerWidget({super.key, required this.name, this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          trailing: Icon(
            icon,
            color: Colors.black,
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              name,
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        Divider(
          color: Colors.black,
        ),
      ],
    );
  }
}
