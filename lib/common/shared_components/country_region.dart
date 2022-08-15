
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:provider/provider.dart';

import '../../features/authantication/data/models/country_region_model.dart';
import '../utils/services/country_provider.dart';
import 'country_list_tile.dart';

class CountryRegion extends StatelessWidget {
  const CountryRegion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    List<CountryModel> countries = [];
    searchController.clear();
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    'Country region',
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    searchController.clear();
                    Navigator.of(context).pop();
                  },
                  child: const Icon(Icons.close),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 20, left: 25, right: 25),
          child: Consumer<CountryProvider>(builder: (context, service, _) {
            return TextField(
              controller: searchController,
              cursorColor: Colors.grey,
              autocorrect: false,
              maxLines: 1,
              autofocus: false,
              onChanged: (value) {
                var  suggestions = service.countries.where((country) {
                  var input = value.toLowerCase();
                  var countryName = country.name!.toLowerCase();
                  return countryName.contains(input);
                }).toList();
                if (value.isEmpty) {
                  service.isSearch = false;
                  countries = [];
                } else {
                  service.isSearch = true;
                }
                // value.isEmpty
                //     ? service.isSearch = false
                //     : service.isSearch = true;
                countries = suggestions as List<CountryModel>;
                // print('Value: $value');
                // print('countries: ${countries.length}');
                // print('service.countries: ${service.countries.length}');
              },
              onEditingComplete: () => FocusScope.of(context).nextFocus(),
              decoration: InputDecoration(
                contentPadding:
                    Theme.of(context).inputDecorationTheme.contentPadding,
                focusedBorder:
                    Theme.of(context).inputDecorationTheme.focusedBorder,
                errorBorder: Theme.of(context).inputDecorationTheme.errorBorder,
                enabledBorder:
                    Theme.of(context).inputDecorationTheme.enabledBorder,
                hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
                hintText: 'Search region',
                labelStyle: Theme.of(context)
                    .chipTheme
                    .labelStyle!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                filled: true,
                suffixIconColor:
                    Theme.of(context).inputDecorationTheme.suffixIconColor,
                suffixStyle: Theme.of(context).inputDecorationTheme.suffixStyle,
                prefixIconColor: Theme.of(context).chipTheme.labelStyle!.color,
                prefixStyle: Theme.of(context).inputDecorationTheme.prefixStyle,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: service.isSearch
                    ? GestureDetector(
                        onTap: () {
                          searchController.clear();
                          service.isSearch = false;
                          countries = service.countries as List<CountryModel>;
                        },
                        child: const Icon(Icons.cancel),
                      )
                    : const SizedBox(),
              ),
            );
          }),
        ),
        //! Подставлять значение с SIM карты
        // Consumer<CountryProvider>(builder: (context, servise, _) {
        //   if (servise.selected != null) {
        //     return CountryListTileWidget(
        //       country: servise.selected,
        //       isSowCode: true,
        //       isSelected: true,
        //     );
        //   } else {
        //     return SizedBox();
        //   }
        // }),

        Consumer<CountryProvider>(
          builder: (context, _countries, _) {
            _countries.isSearch
                ? countries = countries
                : countries = _countries.countries as List<CountryModel>;
            return Expanded(
              child: countries.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : GroupedListView<CountryModel, String>(
                      elements: countries,
                      groupBy: (country) => country.name![0].toUpperCase(),
                      groupSeparatorBuilder: (String groupByValue) => Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 25),
                        color: Theme.of(context).inputDecorationTheme.fillColor,
                        child: Text(groupByValue,
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .inputDecorationTheme
                                .hintStyle),
                      ),
                      separator: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        height: 1,
                        color: Theme.of(context).inputDecorationTheme.fillColor,
                      ),
                      itemBuilder: (context, CountryModel element) =>
                          GestureDetector(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          _countries.selected = element;
                          _countries.isSelected = true;
                          // BlocProvider.of<FormBloc>(context)
                          //     .add(CountrySelected(phoneCode: element.phone!));
                          Navigator.of(context).pop();
                        },
                        child: _countries.selected == element
                            ? CountryListTileWidget(
                                country: element,
                                isSowCode: true,
                                isSelected: true,
                              )
                            : CountryListTileWidget(
                                country: element,
                                isSowCode: true,
                                isSelected: false,
                              ),
                      ),
                      itemComparator: (item1, item2) =>
                          item1.name!.compareTo(item2.name!),
                      useStickyGroupSeparators: true,
                      floatingHeader: false,
                      order: GroupedListOrder.ASC,
                    ),
            );
          },
        ),
      ],
    );
  }
}
