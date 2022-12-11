import 'package:flutter/material.dart';

class Mytab extends StatelessWidget {
  final String iconPath;


  const Mytab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration:BoxDecoration(color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(12)) ,
      
      height: 60,
      child: Container(
        child: Image.asset(iconPath,
        color: Colors.grey.shade600,),
      ),

    );
  }
}