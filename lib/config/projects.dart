import 'package:portfolio/config/assets.dart';
import 'package:portfolio/models/project_model.dart';

List<Project> projects = [
  Project(
      image: Assets.puzzle_store,
      name: 'Puzzle Store',
      description:
          'An ecommerce store project that allows you can buy different types of puzzles. Uses strapi as CMS and Api, mongodb atlas as database and a stripe payment system',
      link: 'https://github.com/amirmekk/ecommerce_store'),
  Project(
      image: Assets.tarikh19,
      name: 'Tarikh19',
      description: 'Local algerian educational app with over 1k loving users',
      link:
          'https://play.google.com/store/apps/details?id=com.tarikh19.tarikh19'),
  Project(
      image: Assets.bibliolater,
      name: 'Bibliolater',
      description: 'Social Network For Book Lovers.',
      link: 'https://github.com/amirmekk/Bibliolater-social-network'),
  Project(
      image: Assets.todo,
      name: 'TODO app',
      description: 'simple todo list app with minimalist modern design.',
      link: 'https://github.com/amirmekk/To-Do'),
];
