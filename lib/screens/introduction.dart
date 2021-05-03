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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    TextTheme textTheme = Theme.of(context).textTheme;

    final ThemeData theme = Theme.of(context);

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color(0xFFF7E6D1),
        body: SafeArea(
          child: Column(
            children: [
              Image.asset(
                'assets/images/joses.png',
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Hello, I am Joses, and welcome to GrowthPH.',
                            style: textTheme.headline4.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Padding(padding: EdgeInsets.all(14)),
                          Text(
                            'Just like you, we are young-adults trying to navigate this confusing runway we call life.',
                            style: textTheme.headline4.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        decoration: const ShapeDecoration(
                          color: Colors.lightBlue,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
