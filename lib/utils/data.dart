import '../model/education.dart';
import '../model/projects.dart';
import '../model/user_info.dart';

List<Projects> projects = [
  Projects(
    projectTitle: 'Weather App',
    techUsed: ['Flutter', 'Dart'],
    projectUrls: ['https://github.com/username/weather-app'],
    description: ['A weather forecasting app', 'Provides real-time weather updates'],
  ),
  Projects(
    projectTitle: 'Chat Application',
    techUsed: ['Flutter', 'Firebase', 'Node.js'],
    projectUrls: ['https://github.com/username/chat-app'],
    description: ['A real-time messaging app', 'Supports one-on-one and group chats'],
  ),
  Projects(
    projectTitle: 'Portfolio Website',
    techUsed: ['HTML', 'CSS', 'JavaScript'],
    projectUrls: ['https://github.com/username/portfolio'],
    description: ['A personal portfolio to showcase my projects', 'Contains project galleries and blogs'],
  ),
];

// Dummy data for Education
List<Education> educationList = [

  Education(
    courseName: 'Bachelor of Computer Science',
    details: ['OOP', 'Data Structures', 'Algorithms'],
    dateCompleted: '2024',
  ),

  Education(
    courseName: 'Bachelor of Computer Science',
    details: ['OOP', 'Data Structures', 'Algorithms'],
    dateCompleted: '2024',
  ),
  Education(
    courseName: 'Bachelor of Computer Science',
    details: ['OOP', 'Data Structures', 'Algorithms'],
    dateCompleted: '2024',
  ),

  Education(
    courseName: 'Bachelor of Computer Science',
    details: ['OOP', 'Data Structures', 'Algorithms'],
    dateCompleted: '2024',
  ),
  Education(
    courseName: 'Bachelor of Computer Science',
    details: ['OOP', 'Data Structures', 'Algorithms'],
    dateCompleted: '2024',
  ),
  Education(
    courseName: 'Bachelor of Computer Science',
    details: ['OOP', 'Data Structures', 'Algorithms'],
    dateCompleted: '2024',
  ),
  Education(
    courseName: 'Master of Software Engineering',
    details: ['Cloud Computing', 'AI', 'Machine Learning'],
    dateCompleted: '2026',
  ),
];

// Dummy data for ProfileInfo
ProfileInfo profileInfo = ProfileInfo(
  skills: skillUrls,
  title: 'Full-Stack Developer',
  intro: 'A passionate developer with a love for building scalable web and mobile apps.',
  about: 'Experienced in Flutter, Node.js, and backend technologies. Always eager to learn and grow.',
  location: 'San Francisco, USA',
  projects: projects,
  education: educationList,  socialUrls: urls,
);
enum Platforms {
  gitHubUrl,
  twitterUrl,
}
Map<Platforms,String> urls={
  Platforms.gitHubUrl:'https://github.com/abdulwahab89',
  Platforms.twitterUrl:'https://x.com/AWahabSWE'
};
List<String> skillUrls = List.generate(12, (index) => 'images/techs/images(${index + 1}).png');
