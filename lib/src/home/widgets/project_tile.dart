import 'package:astrame/src/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectTile extends StatelessWidget {
  final String projectName;
  final String projectImageUrl;
  final String projectUrl;

  const ProjectTile({
    super.key,
    required this.projectName,
    required this.projectImageUrl,
    required this.projectUrl,
  });

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse(projectUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchUrl,
      child: ListTile(
        tileColor: AppColors.projectTileColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        minVerticalPadding: 25,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(projectImageUrl, width: 45),
        ),
        title: Text(
          projectName,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
