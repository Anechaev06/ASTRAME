import 'package:astrame/src/home/widgets/contact.dart';
import 'package:astrame/src/home/widgets/head_line.dart';
import 'package:astrame/src/home/widgets/name.dart';
import 'package:astrame/src/home/widgets/projects.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 300),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            HeadLine(),
            SizedBox(height: 25),
            Name(),
            SizedBox(height: 25),
            Projects(),
            SizedBox(height: 25),
            Contact(),
          ],
        ),
      ),
    );
  }
}
