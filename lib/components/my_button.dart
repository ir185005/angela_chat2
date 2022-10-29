import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final Function() onPressed;
  final String label;
  const MyButton({
    Key? key,
    required this.color,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            //Go to login screen.
            onPressed();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
