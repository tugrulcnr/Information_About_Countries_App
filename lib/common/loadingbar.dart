import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoadgingPageView extends StatefulWidget {
  const LoadgingPageView({super.key});

  @override
  State<LoadgingPageView> createState() => _LoadgingPageViewState();
}

class _LoadgingPageViewState extends State<LoadgingPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}