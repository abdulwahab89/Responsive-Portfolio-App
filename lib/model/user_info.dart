import 'dart:io';

import 'package:responsive_portfolio_app/model/projects.dart';
import 'package:responsive_portfolio_app/utils/data.dart';

import 'education.dart';

class ProfileInfo{
  String? title;
  String? intro;
  String? about;
String? location;
List<Projects>? projects;
List<String>? skills;
List<Education>? education;
Map<Platforms,String> socialUrls;
  ProfileInfo({
    required this.skills,
    required this.socialUrls,
   required this.title,
    required  this.intro,
    required this.about,
    required this.location,
    required this.projects,
    required this.education,
  });
}