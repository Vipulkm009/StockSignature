import 'package:flutter/material.dart';

class AppBody extends StatefulWidget {
  AppBody(
      {this.body,
      this.appBar,
      this.drawer,
      this.bottomNavigationBar,
      this.backgroundColor,
      this.floatingActionButton,
      this.resizeToAvoidBottomPadding});

  final body;
  final appBar;
  final drawer;
  final bottomNavigationBar;
  final backgroundColor;
  final floatingActionButton;
  final resizeToAvoidBottomPadding;

  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      backgroundColor: widget.backgroundColor,
      body: widget.body,
      bottomNavigationBar: widget.bottomNavigationBar,
      drawer: widget.drawer,
      floatingActionButton: widget.floatingActionButton,
      resizeToAvoidBottomPadding: widget.resizeToAvoidBottomPadding,
    );
  }
}
