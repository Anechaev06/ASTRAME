import 'package:astrame/src/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget {
  final String projectName;
  final String projectImageUrl;

  const ProjectTile(
      {super.key, required this.projectName, required this.projectImageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: AppColors.projectTileColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      minVerticalPadding: 25,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(projectImageUrl, width: 50),
      ),
      title: Text(
        projectName,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: AppColors.primaryColor,
      ),
    );
  }
}
