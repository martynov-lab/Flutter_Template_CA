import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../../../../common/config/routes/app_pages.dart';
import '../../../../common/constans/app_constants.dart';
import '../../../../common/constans/colors.dart';
import '../../../../common/utils/services/country_provider.dart';
import '../bloc/authentication_bloc/authentication_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeView extends StatelessWidget {
  static const routeName = Routes.home;

  const HomeView({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    Provider.of<CountryProvider>(context).cleanInput();
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Container(
          width: 100,
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(
            ImageLogoPath.logoBlack,
            fit: BoxFit.contain,
            // width: 80,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: (() {
                  BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
                }),
                child: Container(
                  decoration: const BoxDecoration(
                      color: ColorApp.yellowButton,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, right: 12, bottom: 8, left: 12),
                    child: Text(
                      AppLocalizations.of(context)!.loginout,
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  AppLocalizations.of(context)!.hello('    '),
                  style: TextStyle(fontSize: 36),
                ),
              )
            ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 18,
        selectedIconTheme: const IconThemeData(
          color: ColorApp.backgroundIcon2,
        ),
        selectedItemColor: ColorApp.backgroundIcon2,
        onTap: (int index) {},
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.panorama_fish_eye),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.panorama_fish_eye),
            label: 'Pro',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.panorama_fish_eye),
            label: 'Trade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.panorama_fish_eye),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
