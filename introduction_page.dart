import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:systemdataicecream/loginsystem.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const LoginSystem()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.purple,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.purple.shade200,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,
      globalHeader: const Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 16, right: 16),
          ),
        ),
      ),
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          child: const Text(
            'Let\'s go right away!',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Fractional shares",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: Image.network(
            'https://as2.ftcdn.net/v2/jpg/02/72/48/93/1000_F_272489306_9y6yeNJZ4qFlb7mlqXAaV6SZMYT87Y17.jpg',
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          image: Image.network(
              'https://as2.ftcdn.net/v2/jpg/02/72/48/93/1000_F_272489306_9y6yeNJZ4qFlb7mlqXAaV6SZMYT87Y17.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Kids and teens",
          body:
              "Kids and teens can track their stocks 24/7 and place trades that you approve.",
          image: Image.network(
              'https://as2.ftcdn.net/v2/jpg/02/72/48/93/1000_F_272489306_9y6yeNJZ4qFlb7mlqXAaV6SZMYT87Y17.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: "Title of last page - reversed",
            bodyWidget: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Click on ", style: bodyStyle),
                Icon(Icons.edit),
                Text(" to edit a post", style: bodyStyle),
              ],
            ),
            decoration: pageDecoration.copyWith(
              bodyFlex: 2,
              imageFlex: 4,
              bodyAlignment: Alignment.bottomCenter,
              imageAlignment: Alignment.topCenter,
            ),
            image: Image.network(
                'https://as2.ftcdn.net/v2/jpg/02/72/48/93/1000_F_272489306_9y6yeNJZ4qFlb7mlqXAaV6SZMYT87Y17.jpg')),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color.fromARGB(255, 110, 84, 131),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
