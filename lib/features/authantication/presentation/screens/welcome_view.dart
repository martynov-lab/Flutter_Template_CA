import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:crypterium_flutter/common/config/routes/app_pages.dart';
import 'package:crypterium_flutter/common/constans/app_constants.dart';
import 'package:crypterium_flutter/features/presentation/bloc/authentication_bloc/authentication_bloc_bloc.dart';
import 'package:crypterium_flutter/features/presentation/components/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:notification_permissions/notification_permissions.dart';

class WelcomeView extends StatelessWidget {
  static const routeName = Routes.welcome;

  const WelcomeView({Key? key}) : super(key: key);

  void checkPermissions() async {
    final status = await AppTrackingTransparency.requestTrackingAuthorization();

    await NotificationPermissions.requestNotificationPermissions(
      iosSettings:
          const NotificationSettingsIos(sound: true, badge: true, alert: true),
    );
  }

  Widget topPageView(
    BuildContext context,
    AuthenticationBloc bloc,
    String imagePath,
  ) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 30,
          right: 20,
          child: GestureDetector(
            onTap: (() {
              bloc.add(LoggedOut());
            }),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).disabledColor,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 8, right: 12, bottom: 8, left: 12),
                child:
                    Text('Skip', style: Theme.of(context).textTheme.headline6),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).unfocus();
    checkPermissions();
    final bloc = BlocProvider.of<AuthenticationBloc>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            image: topPageView(context, bloc, ImageRasterPath.myRaster1),
            title: 'Multiply your crypto investment',
            body:
                'Opt for Crypterium high-yield short-term deposits and earn more on your savings than you would with average rates on the market.',
            footer: ButtonWidget(
              text: 'Start earning',
              style: Theme.of(context).textTheme.button,
              isActive: true,
              onPressed: () {
                bloc.add(LoggedOut());
              },
            ),
            decoration: getPageDecoration(context),
          ),
          PageViewModel(
            image: topPageView(context, bloc, ImageRasterPath.myRaster2),
            title: 'Multiply your crypto investment',
            body:
                'Opt for Crypterium high-yield short-term deposits and earn more on your savings than you would with average rates on the market.',
            footer: ButtonWidget(
              text: 'Start earning',
              style: Theme.of(context).textTheme.button,
              isActive: true,
              onPressed: () {
                bloc.add(LoggedOut());
              },
            ),
            decoration: getPageDecoration(context),
          ),
          PageViewModel(
            image: topPageView(context, bloc, ImageRasterPath.myRaster3),
            title: 'Multiply your crypto investment',
            body:
                'Opt for Crypterium high-yield short-term deposits and earn more on your savings than you would with average rates on the market.',
            footer: ButtonWidget(
              text: 'Start earning',
              style: Theme.of(context).textTheme.button,
              isActive: true,
              onPressed: () {
                bloc.add(LoggedOut());
              },
            ),
            decoration: getPageDecoration(context),
          ),
          PageViewModel(
            image: Container(
              width: double.infinity,
              height: double.infinity,
              child: topPageView(context, bloc, ImageRasterPath.myRaster4),
            ),
            title: 'Multiply your crypto investment',
            body:
                'Opt for Crypterium high-yield short-term deposits and earn more on your savings than you would with average rates on the market.',
            footer: ButtonWidget(
              text: 'Start earning',
              style: Theme.of(context).textTheme.button,
              isActive: true,
              onPressed: () {
                bloc.add(LoggedOut());
              },
            ),
            decoration: getPageDecoration(context),
          ),
        ],
        animationDuration: 1000,

        skip: Text('Skip'),
        done: Text('Read'),
        onDone: () {
          bloc.add(LoggedOut());
        },
        next: Icon(Icons.arrow_forward),
        //skipFlex: 0,
        nextFlex: 0,
        skipOrBackFlex: 0,
        //controlsPadding: EdgeInsets.zero,
        //dotsContainerDecorator: BoxDecoration(color: Colors.green[200]),
        dotsDecorator: getDotsDecorator(context),
        globalBackgroundColor: Theme.of(context).primaryColor,
        showDoneButton: false,
        showNextButton: false,
        showSkipButton: false,
        //baseBtnStyle: ButtonStyle(backgroundColor: Colors.amber),
      ),
    );
  }

  DotsDecorator getDotsDecorator(context) => DotsDecorator(
        color: Theme.of(context).buttonColor, // ColorApp.dotWelcomScreen,
        size: Size(8, 4),
        activeSize: Size(16, 4),
        activeColor: Theme.of(context).primaryColorDark,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      );

  PageDecoration getPageDecoration(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    return PageDecoration(
      //boxDecoration: BoxDecoration(color: Colors.green[200]),
      titleTextStyle: _height < 700
          ? Theme.of(context).textTheme.headline5!.copyWith(fontSize: 18)
          : Theme.of(context).textTheme.headline5!,
      bodyTextStyle: _height < 700
          ? Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 12)
          : Theme.of(context).textTheme.subtitle2!,
      bodyPadding: _height < 700
          ? const EdgeInsets.only(top: 10, right: 20, left: 20)
          : const EdgeInsets.only(top: 10, right: 50, left: 50),
      imagePadding: EdgeInsets.zero,
      titlePadding: const EdgeInsets.only(top: 10, right: 30, left: 30),
      contentMargin: EdgeInsets.zero,
      imageFlex: 2,
      footerPadding: _height < 700
          ? const EdgeInsets.symmetric(horizontal: 30, vertical: 20)
          : const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      //pageColor: Theme.of(context).primaryColor,
    );
  }
}
