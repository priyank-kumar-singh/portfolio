import 'package:portfolio/widgets/widgets.dart';

import '../config/config.dart';
import '../models/models.dart';
import 'assets/assets.gen.dart';

abstract class Work {
  static const _medium = 'https://priyank-kumar-singh.medium.com/';
  static const _github = 'https://github.com/priyank-kumar-singh/';

  static const _learnMore = WorkDescription('Wanna learn more about the application, just follow the links given below');

  static final articles = [
    WorkItem(
      title: 'Switch Themes in Flutter',
      description: '',
      url: _medium + 'switch-themes-in-flutter-f03f416b1ab5',
      asset: Assets.images.article.theme.path,
    ),
    WorkItem(
      title: 'Build beautiful feedback form with radio emojis in flutter',
      description: '',
      url: _medium + 'build-beautiful-feedback-form-with-radio-emojis-in-flutter-2a515e913fbc',
      asset: Assets.images.article.feedbackForm.path,
    ),
  ];

  static final projects = [
    ProjectItem(
      title: 'Slide Puzzle',
      route: Routes.projects + 'slide_puzzle',
      asset: Assets.images.projects.slidePuzzle.path,
      details: const [
        WorkDescription('Slide Puzzle is puzzle game, where the player has to rearrange pieces of puzzle by tap the tiles.'),
        WorkDescription('This application is not made from scratch but I have modified the existing sample slide puzzle codebase.'),
        WorkDescription('What I have added in the existing codebase?'),
        WorkOrderedList([
          'Cool Animations',
          'Anchor, who guides a player throughout the game',
          'Stories',
          'And functionality to change grid size on the fly (Tile assets not required anymore).',
        ]),
        WorkRichText([
          RichTextItem(
            'If you\'re reading this you probably wanna see a live version of the application. Just ',
          ),
          RichTextItem(
            'click-here...',
            'https://slide-puzzle-6ac4a.web.app/',
          ),
        ]),
        _learnMore,
      ],
      links: const [
        WorkLink(SocialMediaIcons.github, _github + 'flutter_puzzle_hack'),
        WorkLink(SocialMediaIcons.youtube, 'https://youtu.be/Vr5k9MhQDwc'),
      ],
    ),

    ProjectItem(
      title: 'Smart Parking',
      route: Routes.projects + 'smart_parking',
      asset: Assets.images.projects.smartParking.path,
      details: const [
        WorkDescription('Finding the perfect parking slot is a tiresome job. Plus the unskilled labor monitoring parking places are an add-on to the stress and delay. What if all this could be done by a machine efficiently and promote skill development?'),
        WorkDescription('We try and build an automated parking assistance system that allows users to scan a barcode right at the entrance, select the slot of their choice (the one in front of the elevator in most cases 😀), and the duration of the parking slot requirement to ease out and automate the whole system.'),
        WorkTitle('Objective'),
        WorkOrderedList([
          'To reduce the time and fuel spent in finding a vacant parking slot and issuing tickets.',
          'To reduce the cost of managing the parking by automating it with artificial intelligence.',
          'To bring transparency in the parking tickets and challan system.',
        ]),
        _learnMore,
      ],
      links: const [
        WorkLink(SocialMediaIcons.github, _github + 'Hack-O-Futurista'),
        WorkLink(SocialMediaIcons.link, 'https://drive.google.com/drive/folders/10J_IIcoy6cHo2PORTqjXH7N7P6hTueNP?usp=sharing'),
      ],
    ),
    ProjectItem(
      title: 'Apna Paryavaran',
      route: Routes.projects + 'paryavaran',
      asset: Assets.images.projects.paryavaran.path,
      description: 'Join hands to save the land.',
      details: const [
        WorkDescription('Human activities that modify the environment to fit the needs of the society have impacted the physical environment in many ways such as pollution, burning fossil fuels and deforestation. Due to all these changes, we have triggered abnormal climate change, soil erosion, poor air quality, and undrinkable water. These negative impacts  affect human behavior and can prompt mass migrations or battles over clean water.'),
        WorkDescription('Our app would let users post their local/regional environmental concerns and would propose them to the NGOs and other local organizations which will be monitored by the government authorities. Hence providing a common social media platform for people who want to join hands for the cause.'),
        _learnMore,
      ],
      links: const [
        WorkLink(SocialMediaIcons.github, _github + 'Hack2K21-IIITPune'),
        WorkLink(SocialMediaIcons.link, 'https://drive.google.com/drive/folders/1nrsbmaWQqJvDTaEWr3F9QOaIkRocRF7W?usp=sharing'),
      ],
    ),
    ProjectItem(
      title: 'Healthsy',
      route: Routes.projects + 'healthsy',
      asset: Assets.images.projects.healthsy.path,
      description: 'Predict diseases related to Heart, Liver, Diabetes, Eyes, and Ears, by entering some checkup report data, and the application will do the rest all with the power of machine learning',
      details: const [
        WorkDescription('With the increasing pressure and rush it becomes really important to automate health services and at certain instances it has been observed that AI has taken over humans.'),
        WorkDescription('With an attempt to add to it, we prepared an application that provides the facility to test and predict the health risk of the patient based on his/her reports for which we have trained the models on unbiased and distributed datasets.'),
        WorkDescription('This mobile phone application helps to predict diseases related to Heart, Liver, Diabetes, Eyes, and Ears, by entering some checkup report data, and the application will do the rest.'),
        _learnMore,
      ],
      links: const [
        WorkLink(SocialMediaIcons.github, _github + 'Healthsy_App'),
        WorkLink(SocialMediaIcons.youtube, 'https://youtu.be/QNDkfGR1ekE'),
      ],
    ),
    ProjectItem(
      title: 'Flash Chat Messenger',
      route: Routes.projects + 'flashchatmessenger',
      asset: Assets.images.projects.flashChat.path,
      description: 'A real-time chat application that includes end-to-end encryption, one-to-one messaging, group messaging, broadcast messages, and more features.',
      details: const [
        WorkDescription('Flash Chat is a messaging app made with flutter and firebase with almost every feature that a user wants. e.g. end-to-end encrypted messages, personal messaging, group messaging, broadcast messages and more cool features.'),
        _learnMore,
      ],
      links: const [
        WorkLink(SocialMediaIcons.github, _github + 'flash-chat-messenger'),
        WorkLink(SocialMediaIcons.youtube, 'https://youtu.be/AT6xLOcwtMQ'),
      ],
    ),
    ProjectItem(
      title: 'Authenticator Clone',
      route: Routes.projects + 'authenticator',
      asset: Assets.images.projects.authenticator.path,
      details: const [
        WorkDescription('Authenticator is a software-based authenticator that implements two-step verification services using the Time-based One-time Password Algorithm and HMAC-based One-time Password algorithm, for authenticating users of software applications.'),
        WorkDescription('This authenticator application is based on Google Authenticator and uses same encoding, and techniques used in Google Authenticator.'),
        _learnMore,
      ],
      links: const [
        WorkLink(SocialMediaIcons.github, _github + 'authenticator-clone'),
      ],
    ),
  ];
}
