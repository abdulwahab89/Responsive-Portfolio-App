import '../model/education.dart';
import '../model/projects.dart';
import '../model/user_info.dart';

List<Projects> projects = [
  Projects(
    projectTitle: 'BMI Application',
    projectUrls: ['images/projects/screenshot(1).jpg','images/projects/screenshot(2).jpg','images/projects/screenshot(3).jpg'],
    description: 'A BM calculating application with a beautiful and optimised UI',
  ),
  Projects(
    projectTitle: 'Movie Application',
    projectUrls: ['images/projects/screenshot(4).jpg','images/projects/screenshot(5).jpg','images/projects/screenshot(6).jpg','images/projects/screenshot(7).jpg',],
    description: 'A real-time my personal project of Movie Application that uses Firebase for real-time data storage as well as categories data based on the movie type.',
  ),
  Projects(
    projectTitle: 'COVID Application',

    projectUrls: ['images/projects/screenshot(8).jpg','images/projects/screenshot(9).jpg','images/projects/screenshot(10).jpg'],
    description: 'A COVID application that use live-web data to fetch and query the results',
  ),
];

List<Education> educationList = [

  Education(
    courseName: 'Software Engineering',
    details: ['OOP', 'Data Structures', 'Programming'],
    dateCompleted: '2022',
  ),

  Education(
    courseName: 'Flutter Course - Udemy',
    details: ['UI', 'API injection', 'App Building'],
    dateCompleted: '2023',
  ),
  Education(
    courseName: 'Software Engineering',
    details: ['Software Project Management', 'DevOPS', 'Database Management'],
    dateCompleted: '2023',
  ),
  Education(
    courseName: 'Software Engineering',
    details: ['Mobile Application', 'Data Science', 'Agent Base Intelligence'],
    dateCompleted: '2024',
  ),

  Education(
    courseName: 'Google Developer Group',
    details: ['Technical Member'],
    dateCompleted: '2024',
  ),

];

ProfileInfo profileInfo = ProfileInfo(
  skills: skillUrls,
  title: "I'm AWahab",
  intro:"A final-year undergraduate student at Mehran University of Engineering and Technology. His expertise includes hybrid mobile application development using Flutter, backend technologies, and a strong foundation in programming with Java, Dart, DSA, and C++. Wahab continues to build innovative projects, refine his skills, and prepare for impactful opportunities in the tech industry."













,
  about: "I build and create! I'm into developing hybrid mobile apps with Flutter. I write clean code, solve problems, and keep learning new technologies. Whether it's working on backend systems or exploring new programming languages, I love turning ideas into reality through coding. I'm always curious and passionate about what’s next in the tech world."






  ,
  location: 'Hyderabad, Pakistan',
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
