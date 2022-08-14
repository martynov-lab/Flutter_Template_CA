import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../common/config/routes/app_pages.dart';
import '../../../../common/constans/colors.dart';
import '../../../../common/utils/services/country_provider.dart';

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
                  // BlocProvider.of<AuthenticationBloc>(context).add(Register());
                }),
                child: Container(
                  decoration: const BoxDecoration(
                      color: ColorApp.yellowButton,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, right: 12, bottom: 8, left: 12),
                    child: Text(
                      'Sign up',
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
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: ColorApp.chipsBackgroundLight,
                  width: 2.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Earn \$31 for free',
                            style: Theme.of(context).textTheme.headline6),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Try \$1 288 free trial – 0 cost',
                            style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                    Image.asset(
                      ImageRasterPath.pill,
                      fit: BoxFit.contain,
                      width: 50,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 30,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration(
                        color: ColorApp.yellowButton,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, right: 12, bottom: 8, left: 12),
                      child: Text(
                        'USDT',
                        style: Theme.of(context).textTheme.button!.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration(
                        color: ColorApp.chipsBackgroundLight,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, right: 12, bottom: 8, left: 12),
                      child: Text(
                        'BTC',
                        style: Theme.of(context).textTheme.button!.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: ColorApp.chipsBackgroundLight,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, right: 12, bottom: 8, left: 12),
                      child: Text(
                        'ETH',
                        style: Theme.of(context).textTheme.button!.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: ColorApp.chipsBackgroundLight,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, right: 12, bottom: 8, left: 12),
                      child: Text(
                        'CRPT',
                        style: Theme.of(context).textTheme.button!.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: ColorApp.chipsBackgroundLight,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, right: 12, bottom: 8, left: 12),
                      child: Text(
                        'CHO',
                        style: Theme.of(context).textTheme.button!.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Center(
                child: Text('Home Screen',
                    style: Theme.of(context).textTheme.headline4),
              ),
            ),
          ],
        ),
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
            label: 'Earn',
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
            label: 'Balance',
          ),
        ],
      ),
    );
  }
}
