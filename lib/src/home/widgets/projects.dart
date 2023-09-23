import 'package:astrame/src/home/widgets/project_tile.dart';
import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  static final List<Map<String, String>> projectList = [
    {
      'projectName': 'Maskify',
      'projectImageUrl': 'assets/maskify.png',
      'projectUrl': 'https://github.com/Anechaev06/maskify',
    },
    {
      'projectName': 'Sneaker Store',
      'projectImageUrl': 'assets/sneaker_store.png',
      'projectUrl': 'https://github.com/Anechaev06/sneaker_store',
    },
    {
      'projectName': 'Financify [coming soon]',
      'projectImageUrl': 'assets/financify.png',
      'projectUrl': 'https://github.com/Anechaev06/',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Projects",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 20),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: projectList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ProjectTile(
                projectName: projectList[index]['projectName']!,
                projectImageUrl: projectList[index]['projectImageUrl']!,
                projectUrl: projectList[index]['projectUrl']!,
              ),
            );
          },
        ),
      ],
    );
  }
}
