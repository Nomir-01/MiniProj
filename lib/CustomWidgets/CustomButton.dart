import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatefulWidget {
  final String ButtonText;
  final Color BoxColor;
  final Color TextColor;
  final Color BorderColor;
  final double Size1;
  final double Size2;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.ButtonText,
    required this.BoxColor,
    required this.TextColor,
    required this.BorderColor,
    required this.onPressed,
    required this.Size1,
    required this.Size2,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.onPressed();
      },
      child: Center(
        child: Text(
          widget.ButtonText,
          style: TextStyle(
            fontSize: 16,
            color: widget.TextColor,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.BoxColor,
        fixedSize: Size(widget.Size1, widget.Size2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: widget.BorderColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
