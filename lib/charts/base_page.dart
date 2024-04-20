import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  final Widget body;
  final String title;
  const BasePage({super.key, required this.body, required this.title});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: SafeArea(
          minimum: const EdgeInsets.all(0),
          maintainBottomViewPadding: false,
          bottom: false,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              centerTitle: true,
              title: Text(widget.title,style: const TextStyle(fontSize: 16),),
            ),
            body: widget.body,
          )),
    );
  }
}
