import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback buttonAction;
  const Button({super.key, required this.text, required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonAction,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blue,
            boxShadow: const [
              BoxShadow(color: Colors.grey, spreadRadius: 1),
            ],
          ),
          height: 50,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Text(text, style: const TextStyle(fontSize: 14,color: Colors.white)),
        ),
      ),
    );
  }
}
