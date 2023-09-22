import 'package:astrame/src/core/constants/app_colors.dart';
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
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Email
            Container(
              // padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: AppColors.projectTileColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.primaryColor,
                ),
                leading: Text(
                  "Email:",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                title: Text(
                  "astrame.tech@mail.ru",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Social
            Container(
              // padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.projectTileColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.primaryColor,
                ),
                leading: Text(
                  "Socials:",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                title: Row(
                  children: [
                    Text(
                      "github",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "telegram",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
