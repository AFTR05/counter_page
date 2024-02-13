import 'package:flutter/material.dart';

class CustomFlatButtom extends StatelessWidget {
  final String text;
  final Color? color;
  final VoidCallback? onPressed;

  const CustomFlatButtom({
    super.key, required this.text, this.color, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: color
      ),
      onPressed: (){
        onPressed!();
      }, 
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(text)
        )
    );
  }
}