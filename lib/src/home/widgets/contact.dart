import 'package:astrame/src/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  static final Uri _url = Uri.parse('https://github.com/Anechaev06');

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
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              tileColor: AppColors.projectTileColor,
              trailing: SelectableText(
                "astrame.tech@mail.ru",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: Text(
                "Email:",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 10),
            // Social
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              tileColor: AppColors.projectTileColor,
              leading: Text(
                "Socials:",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              trailing: InkWell(
                onTap: _launchUrl,
                child: Text(
                  "github",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(decoration: TextDecoration.underline),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
