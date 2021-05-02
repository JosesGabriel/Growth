import 'package:flutter/material.dart';

/// Welcome screen, contains slideshow images.
class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key key}) : super(key: key);

  /// Required to set routeName for our chosen routing option: pushNamed();
  static const String routeName = '/welcome';

  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final List<Map<String, String>> dummyPopupData = <Map<String, String>>[
    <String, String>{
      'title': 'Inventory',
      'subtitle':
          'Lorem ipsum dolor sit amet, consectet ut labore et dolore magna aliqua.'
    },
    <String, String>{
      'title': 'Sales',
      'subtitle':
          'Lorem ipsum dolor sit amet, consectet ut labore et dolore magna aliqua.'
    },
    <String, String>{
      'title': 'Offline / Online',
      'subtitle':
          'Lorem ipsum dolor sit amet, consectet ut labore et dolore magna aliqua.'
    },
  ];

  final PageController _controller = PageController();

  List<Padding> dotIndicators(int index) {
    final List<Padding> dots = <Padding>[];
    for (int i = 0; i < dummyPopupData.length; i++) {
      dots.add(Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: CircleAvatar(
          backgroundColor: index == i ? Colors.green : Colors.black26,
          radius: 4,
        ),
      ));
    }
    return dots;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(
              'Test',
              style: theme.textTheme.headline4,
            ),
          ),
        ),
      ),
    );
  }
}
