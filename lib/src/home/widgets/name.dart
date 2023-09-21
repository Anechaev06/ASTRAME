import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vlad Nechaev",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "entrepreneur & mobile developer",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        ClipOval(
          child: Image.asset(
            "assets/dog.webp",
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
