import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Contact",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        // const Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [],
        // ),

        const SizedBox(height: 20),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "EMAIL",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "astrame.tech@mail.ru",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 10),
            Text(
              "SOCIAL",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Row(
              children: [
                Text(
                  "GitHub",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  "Telegram",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
