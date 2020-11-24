import 'package:flutter/material.dart';
import 'package:portfolio/config/projects.dart';
import 'package:portfolio/widgets/project_widget.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ResponsiveWidget(
      largeScreen: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.3),
        children: List.generate(
          projects.length,
          (index) => ProjectWidget(projects[index], 0),
        ),
      ),
      smallScreen: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) => ProjectWidget(
          projects[index],
          (index == projects.length - 1 ? 16.0 : 0),
        ),
      ),
    ));
  }
}
