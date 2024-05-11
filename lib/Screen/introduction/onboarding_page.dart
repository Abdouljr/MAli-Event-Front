import 'package:flutter/material.dart';
import 'package:front_mali_event/Screen/introduction/app_styles.dart';
import 'package:front_mali_event/Screen/introduction/my_text_button.dart';
import 'package:front_mali_event/Screen/introduction/onboard_data.dart';
import 'package:front_mali_event/Screen/introduction/onboard_nav_btn.dart';
import 'package:front_mali_event/Screen/introduction/size_configs.dart';
import 'package:front_mali_event/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 20),
      duration: const Duration(milliseconds: 400),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        shape: BoxShape.circle,
      ),
    );
  }

  Future setSeenonboard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    seenOnboard = await prefs.setBool('seenOnboard', true);
    // this will set seenOnboard to true when running onboard page for first time.
  }

  @override
  void initState() {
    super.initState();
    setSeenonboard();
  }

  @override
  Widget build(BuildContext context) {
    // initialize size config
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF0F2D42),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.9, // 90% of screen height
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingContents.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.5, // 50% of screen height
                          width: screenWidth * 10, // 80% of screen width
                          child: Image.asset(
                            onboardingContents[index].image,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          top: screenHeight * 0.45, // 45% of screen height
                          left: screenWidth * 0.3, // 30% of screen width
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: screenWidth * 0.4, // 40% of screen width
                                height:
                                    screenHeight * 0.8, // 80% of screen height
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: const Color(0xFF0F2D42),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(800),
                                        topLeft: Radius.circular(800),
                                      ),
                                    ),
                                  ),
                                  child: null,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.blue,
                        child: IconButton(
                          icon: Icon(
                            onboardingContents[index].icons,
                            size: 40,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: sizeV * 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: List.generate(
                            onboardingContents.length,
                            (index) => dotIndicator(index),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: sizeV * 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        onboardingContents[index].title,
                        style: kTitle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: sizeV * 5,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  currentPage == onboardingContents.length - 1
                      ? MyTextButton(
                          buttonName: 'Commencer',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyHomePage(),
                              ),
                            );
                          },
                          bgColor: kPrimaryColor,
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            OnBoardNavBtn(
                              name: 'Passer',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MyHomePage(),
                                  ),
                                );
                              },
                            ),
                            OnBoardNavBtn(
                              name: 'Suivant',
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              },
                            )
                          ],
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
