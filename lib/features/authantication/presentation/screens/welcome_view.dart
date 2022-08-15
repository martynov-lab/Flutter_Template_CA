import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../common/config/routes/app_pages.dart';




class WelcomeView extends StatefulWidget {
  static const routeName = Routes.welcome;

  const WelcomeView({Key? key}) : super(key: key);
  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  List<Widget> slides = items
      .map((item) => Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Lottie.asset(
              item['image'] as String,
              // fit: BoxFit.fitWidth,
              // width: 220.0,
              // alignment: Alignment.bottomCenter,
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: <Widget>[
                  Text(item['header'],
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Color(0XFF3F3D56),
                          height: 2.0)),
                  Text(
                    item['description'],
                    style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 1.2,
                        fontSize: 16.0,
                        height: 1.3),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          )
        ],
      )))
      .toList();

  List<Widget> indicator() => List<Widget>.generate(
      slides.length,
          (index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 3.0),
        height: 10.0,
        width: 10.0,
        decoration: BoxDecoration(
            color: currentPage.round() == index
                ? Color(0XFF256075)
                : Color(0XFF256075).withOpacity(0.2),
            borderRadius: BorderRadius.circular(10.0)),
      ));

  double currentPage = 0.0;
  final _pageViewController = PageController();

  @override
  void initState() {
    super.initState();
    _pageViewController.addListener(() {
      setState(() {
        currentPage = _pageViewController.page ?? 0.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            PageView.builder(
              controller: _pageViewController,
              itemCount: slides.length,
              itemBuilder: (BuildContext context, int index) {
                return slides[index];
              },
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 70.0),
                  padding: EdgeInsets.symmetric(vertical: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicator(),
                  ),
                )
              //  ),
            )
            // )
          ],
        ),
      ),
    );
  }
}


List items = [
  {
    "header": "Text 1",
    "description":
    "Online chat which provides its users maximum functionality to simplify the search",
    "image": "assets/json/anim/welcome_1.json"
  },
  {
    "header": "Text 2",
    "description":
    "Online chat which provides its users maximum functionality to simplify the search",
    "image": "assets/json/anim/welcome_2.json"
  },
  {
    "header": "Text 3",
    "description":
    "Online chat which provides its users maximum functionality to simplify the search",
    "image": "assets/json/anim/welcome_3.json"
  },
  {
    "header": "Text 4",
    "description":
    "Online chat which provides its users maximum functionality to simplify the search",
    "image": "assets/json/anim/welcome_4.json"
  },
  {
    "header": "Text 5",
    "description":
    "Online chat which provides its users maximum functionality to simplify the search",
    "image": "assets/json/anim/welcome_5.json"
  }
];
