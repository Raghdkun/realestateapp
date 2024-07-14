import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  final IconData icon ; 
  final String name ; 
  final void Function()? onTap ; 

  const HomeList({super.key, required this.icon, required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Card(
                    child: Column(
                      children: [
                        Icon(icon, size: 70,), 
                        Text(name)
                      ],
                    ),
                  ),
                ),
    );
  }
}