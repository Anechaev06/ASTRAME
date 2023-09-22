import 'package:astrame/src/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget {
  final String projectName;
  final String projectImageUrl;

  const ProjectTile(
      {super.key, required this.projectName, required this.projectImageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.projectTileColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                projectImageUrl,
                width: 40,
              ),
            ),
          ),
          Center(
            child: Text(
              projectName,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
