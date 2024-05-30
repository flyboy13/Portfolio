// ignore_for_file: constant_identifier_names, unused_element

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:justin/data/model/activity.dart';
import 'package:justin/data/model/certificate.dart';
import 'package:justin/data/model/experience.dart';
import 'package:justin/data/model/project_info.dart';
import 'package:justin/data/model/quote.dart';
import 'package:justin/data/model/route_model.dart';
import 'package:justin/data/model/showcase_project.dart';
import 'package:justin/data/model/social_media.dart';
import 'package:justin/presentation/configs/configs.dart';
import 'package:justin/presentation/route/routes.dart';

/// constant strings are prefixed with [ks]
const String ksFontFamily = "ShantellSans";

const String ksFlutterDeveloperAnd = "Software Developer &";
const String ksAiMlEnthusiast = "AI/ML Enthusiast";
const String ksAiEnthusiast = "ai enthusiast";
const String ksTechNerd = "a  tech  nerd";
const String ksFlutterDev = "flutter  dev";
const String coffeeAddict = "coffee addict";
const String ksIntrovert = "an Ambivert";
const String ksIm = "I'm";
const String ksIntro = """
 Hi, I'm Nguyen Duc Tai! 
 - a passionate software developer 
 - an information & technology student from HCMUS (Ho Chi Minh University of Science) 
 - tech enthusiast
  """;
const String ksSeeMyWork = "See my work";
const String ksBrowseProjects = "Browse My Projects";
const String ksWhatElse =
    "I'm a strong believer in teamwork, and I'm excited to collaborate with your team to achieve great things.";
const String ksSayHello = "Just say Hello to collaborate!";
const String ksHome = "Home";
const String ksAbout = "About";
const String ksExperience = "My Experience";
const String ksCertificates = "Certificates";
const String ksProject = "My Projects";
const String ksViewProject = "View Project";
const String ksCraftedWithLove = "Crafted with Love";
const String ksRecentProjects = "Here are a selection of my recent projects";
const String ksCraftedProjects =
    'Here are some of my carefully crafted projects';
const String ksContact = "Contact Me";
const String ksAboutMe = "About Me";
const String ksBgStory = "Background Story";
const String ksTools = "Tools & Technology";
const String ksAllAboutMe = "All About Me";
const String ksGithub = "Github";
const String ksLinkedIn = "LinkedIn";
const String ksDiscord = "Discord";
const String ksSendMessage = 'Send Message';

const String ksSlash = "/";
const String ksLetsWork = "Let's work together!";
const String ksFreelanceAvailability = "I'm available for Freelancing";
const String ksContactInfo = "- Contact Info";
const String ksWorkEmail = "nductai.work@gmail.com";
const String ksWorkPhone = "+84 0584802232";
const String ksCreditTo = "- Big Thanks";
const String ksDavidCobbina = "David Cobbina";
const String ksDavidCobbinaWebsite = "https://davidcobbina.com/";
const String ksJuliusG = "Design by Julius G";
const String ksJuliusGWebsite =
    "https://www.behance.net/gallery/63574251/Personal-Portfolio-Website-Design";
const String ksBuildUsing = "Build using ";
const String ksWithMuch = " with much ";
const String ksCC = "©️ 2024 Nguyen Duc Tai";
const String ksYoung = "When I was young, I was a kid!";
const String name = "I'm Nguyen Duc Tai";
const String ksSpecialization =
    "I specialize in Mobile Technologies and highly passionate about developing quality applications, open-source works and AI.";
const String ksWhoAmI = 'Who Am I?';
const String ksWhatILove = "What I Love To Do";
const String ksBriefAboutMe =
    "Hi! I'm a Front-end Software Engineer who is passionate about emerging Technologies and AI. I have fairly extensive amount of experience in developing high quality applications.";
const String ksMyLife =
    "I was a final year student from the Ho Chi Minh Univercity of Sciencne. ";
const String ksProfession =
    "I started working as a Flutter Developer since 2022. Later, I fell in love with it. I'm eager to contribute in Flutter community.";

const String ksMyTools =
    "I use a bunch of tools and technologies to make design and implementation process easier such as \n + Adobe Photoshop \n + Adobe Illustator \n + Figma \n + Canva \n + Cap cut \n ";
const String ksWeapon = "My favorite choice of weapon is ";
const String ksFlutter = "Flutter & Dart";

const String ksMobile = 'Mobile Technologies';
const String ksWebAndOther = 'Web & Other Technologies';
final List<String> ksMobileTech = ['Flutter', 'Dart', 'Java'];
final List<String> ksWebTech = [
  'HTML',
  'CSS',
  'Node Js',
  'React',
  'C',
  'C++',
  'Python'
];
final List<String> ksOtherTech = [
  'Firebase',
  'GraphQL',
  'MongoDB',
  'SQL',
  'Postgre'
];

const String ksCoding = "Software Engineering";
const String ksCodingMobile = "Software\nEngineering";
const String ksCoffee = "Coffee";
const String ksReading = "Reading";
const String ksMusic = "EDM Music";
const String ksMusicMobile = "EDM\nMusic";
const String ksMovie = "Movies";
const String ksExplore = "Exploring more...";
const String ksExploreMobile = "Exploring\nmore...";

final List<RouteModel> ksMenu = [
  RouteModel(label: ksHome, route: Routes.home),
  RouteModel(label: ksProject, route: Routes.projects),
  RouteModel(label: ksExperience, route: Routes.experience),
  RouteModel(label: ksCertificates, route: Routes.certificates),
  RouteModel(label: ksAbout, route: Routes.about),
  RouteModel(label: ksContact, route: Routes.contact),
];

const String ksAwardsAndActivities = "Awards & Activities";
const String ksAward = "Award I've won";
const String ksAwardName = "Design Award by WIT (Web Innovative Talent Award)";
const String ksAwardLink = "https://witaward.com/result/2020";
const String ksAwardDetails = """
- The biggest web development contest in Myanmar ( collaboration with Japan )
- This project aims for foreigners and Myanmar citizens who are enthusiastic about Myanmar culture, cuisine, handicrafts and who want to pay a visit to famous places in Myanmar and who want to enhance their knowledge about various ethnic groups in Myanmar.
""";
const String ksActivities = "Activities I've joined";
final List<Activity> ksActivityList = [
  // Activity(
  //   title: ksAward,
  //   name: ksAwardName,
  //   icon: kiTrophy,
  //   details: ksAwardDetails,
  //   link: ksAwardLink,
  // ),
  // Activity(
  //   title: ksActivities,
  //   name:
  //       "TFI SCALE Program (Temasek Foundation International Specialists' Community Action andLeadership Exchange Program - Singapore)",
  //   icon: kiActivity,
  //   details:
  //       "This is a five-week Exchange Program with Singapore Polytechnic ( 3-weeks in Singapore and 2-weeks in Myanmar Learnt data analytics, design thinking and co-operation skills and applied them on the Coffee Farm Project",
  // ),
  // Activity(
  //   name:
  //       "JST Japan-Asia Youth Program (Sakura Science Exchange Program - Japan)",
  //   icon: kiActivity,
  //   details:
  //       "This is a 9-days Exchange Program at Miyakonojo College, Miyazaki, Japan\nLearnt basic IOT and made the POINT Traffic Control System ( Traffic lights control system with extended functionalities such as alerts when driver recklessly drive while red light is on )",
  // ),
];

final List<Experience> ksExperiences = [
  Experience(
    company: "AI Creative",
    position: "Frontend Developer",
    responsibilities: [
      "Played a pivotal role in contributing to team knowledge sharing initiatives and conducting workshops on new tools and techniques",
      "Spearheaded the development of a comprehensive documentation system for the codebase, significantly improving onboarding processes for new team members and reducing ramp-up time by 30%",
      "Implemented automated testing protocols, resulting in a 40% reduction in deployment time and ensuring the delivery of a more reliable product",
      "Worked closely with UI/UX designer & Backend developer",
    ],
    startDate: DateTime(2023, 7),
    endDate: DateTime(2023, 9),
  ),
  Experience(
    company: "I'm Coming",
    position: "Flutter Developer",
    responsibilities: [
      "Spearheaded the development of a cross-platform fast-delivery app using Flutter",
      "Leverage full-stack skillset to create a user-friendly and efficient application",
      "Worked on car service management system mobile app",
    ],
    type: JobType.remote,
    startDate: DateTime(2023, 3),
    endDate: DateTime(2023, 6),
  ),
];

final List<Certificate> ksCertificateList = [
  Certificate(
    name: "Flutter & Dart - The Complete Guide [2024 edition]",
    image: dartCer,
    link:
        "https://www.udemy.com/certificate/UC-f6e6b63c-fd4d-44ae-be34-f6eb26970f0b/",
  ),
  Certificate(
    name: "AWS Certificate",
    image: awsCer,
    link:
        "https://www.credly.com/badges/7bfeb2bd-1863-405a-ac6d-f7bee6c18d00/linked_in_profile",
  ),
  Certificate(
    name: "The Complete Front-End Web ",
    image: frontendCer,
    link:
        "https://www.udemy.com/certificate/UC-85eccfb8-5e27-42b4-b430-8f036ba84bb7/",
  ),
  Certificate(
    name: "Impossible Certificate",
    image: startupCer,
    link: "",
  ),
  // Certificate(
  //   name: "TF SCALE Leadership Exchange Program",
  //   image: kaTMESEKCerti,
  //   link: "",
  // ),
];

const String _nikolaTesla = "Nikola Tesla";
const String _kentBeck = "Kent Beck";
const String _linusTorvalds = "Linus Torvalds";
const String _donaldKnuth = "Donald Knuth";
const String _albertEinstein = "Albert Einstein";
const String _alanTuring = "Alan Turing";
const String _johnLennon = "John Lennon";
const String _steveJobs = "Steve Jobs";
const String _kurtCobain = "Kurt Cobain";
const String _jamesClear = "James Clear";
final List<Quote> ksQuotes = [
  Quote(
    name:
        "Our virtues and our failings are inseparable, like force and matter. When they separate, man is no more.",
    author: _nikolaTesla,
  ),
  Quote(
    name:
        "I’m not a great programmer. I’m just a good programmer with great habits.",
    author: _kentBeck,
  ),
  Quote(
    name: "I'm generally a very pragmatic person: that which works, works.",
    author: _linusTorvalds,
  ),
  Quote(
    name: "Premature optimization is the root of all evil.",
    author: _donaldKnuth,
  ),
  Quote(
    name:
        "Everyday life is like programming, I guess. If you love something you can put beauty into it.",
    author: _donaldKnuth,
  ),
  Quote(
    name: "A person who never made a mistake never tried anything new.",
    author: _albertEinstein,
  ),
  Quote(
    name: "I have no special talent. I am only passionately curious.",
    author: _albertEinstein,
  ),
  Quote(
    name:
        "Sometimes it is the people who no one imagines anything of who do the things that no one can imagine.",
    author: _alanTuring,
  ),
  Quote(
    name: "Life is what happens when you're busy making other plans.",
    author: _johnLennon,
  ),
  Quote(
    name: "The duty of youth is to challenge corruption.",
    author: _kurtCobain,
  ),
  Quote(
    name: "Stay hungry, stay foolish.",
    author: _steveJobs,
  ),
  Quote(
    name: "It's hard to build momentum if you're dividing your attention.",
    author: _jamesClear,
  ),
  Quote(
    name: "Deconstruction creates knowledge. Recombination creates value.",
    author: _jamesClear,
  ),
];

const String ksFacebookLink = 'https://www.facebook.com/Flyboy1310/';
const String ksGithubLink = 'https://github.com/flyboy13';
const String ksLinkedInLink = 'https://www.linkedin.com/in/nductai-work/';
const String ksMediumLink = 'https://medium.com/@nductai.work';
const String ksStackoverflowLink =
    'https://stackoverflow.com/users/22940841/nguyen-duc-tai';
const String ksDiscordLink = 'https://discordapp.com/users/809527318632071178';
final List<SocialMedia> ksSocialMedia = [
  SocialMedia(
    link: ksFacebookLink,
    icon: const FaIcon(
      FontAwesomeIcons.facebook,
      color: secondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksGithubLink,
    icon: const FaIcon(
      FontAwesomeIcons.github,
      color: secondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksLinkedInLink,
    icon: const FaIcon(
      FontAwesomeIcons.linkedin,
      color: secondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksMediumLink,
    icon: const FaIcon(
      FontAwesomeIcons.medium,
      color: secondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksStackoverflowLink,
    icon: const FaIcon(
      FontAwesomeIcons.stackOverflow,
      color: secondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksDiscordLink,
    icon: const FaIcon(
      FontAwesomeIcons.discord,
      color: secondary,
      size: s18,
    ),
  ),
];

const String _FLUTTER = 'Flutter';
const String _DART = 'Dart';
const String _FIREBASE = 'Firebase';
const String _HTML = 'Html';
const String _CSS = 'Css';
const String _JAVASCRIPT = 'Javascript';
const String _GRAPHQL = "GraphQL";
const String _ME = 'Nguyen Duc Tai';

const String _ANDROID = 'Android';
const String _IOS = 'Ios';
const String _WINDOWS = 'Windows';
const String _LINUX = 'Linux';
const String _MAC = 'MacOs';
const String _WEB = 'Web';
final List<ShowcaseProject> showcaseProjects = [
  ShowcaseProject(
    title: 'Travelove',
    image: travelove,
    shortDescription: "Plan, book, explore: Your all-in-one travel companion",
    description: """
       Travelove is a mobile app for traveler. It has four features:
          - Book tour
          - Favourite collection 
          - Collect voucher
          - AI chatbot to suggest tour and get information
        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://play.google.com/store/apps/details?id=com.travelovecompany.travelove",
      ],
    ),
    heroTag: 'App',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'package',
        _FLUTTER.toLowerCase(),
        _DART.toLowerCase(),
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Travel & Local',
      contents: [
        _FLUTTER.toUpperCase(),
        _DART.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [_ME, "Le Thua Phuong Cat"],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'AI Chat Bot',
    image: kaAIChatBot,
    shortDescription: "AI chat bot using Flutter and backend Python",
    description: """
        AI chat bot using Flutter and call api from backend.
        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://github.com/flyboy13/Flutter-AI",
      ],
    ),
    heroTag: 'ai_chat_bot',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'chat bot',
        _FLUTTER.toLowerCase(),
        _DART.toLowerCase(),
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _DART.toUpperCase(),
        _FLUTTER.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
        _WINDOWS,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'Animation Portfolio',
    image: kaDesignPatterns,
    shortDescription: "Smooth Animation to present your works and projects",
    description: """
        Smooth Animation to present your works and projects. Impress your Recruitment
        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://github.com/flyboy13/Portfolio",
      ],
    ),
    heroTag: 'design_patterns',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'Portfolio',
        _DART.toLowerCase(),
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _DART.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [_WEB],
    ),
  ),
];
