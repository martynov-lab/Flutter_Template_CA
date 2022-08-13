import 'package:crypterium_flutter/common/constans/colors.dart';
import 'package:crypterium_flutter/features/data/models/country_region_model.dart';
import 'package:flutter/material.dart';

class CountryListTileWidget extends StatelessWidget {
  final CountryModel country;
  final bool isSowCode;
  final bool isSelected;

  const CountryListTileWidget({
    Key? key,
    required this.country,
    required this.isSowCode,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final selectedColor = Theme.of(context).primaryColor;
    // final style = isSelected
    //     ? TextStyle(
    //         fontSize: 18,
    //         color: selectedColor,
    //         fontWeight: FontWeight.bold,
    //       )
    //     : const TextStyle(fontSize: 18);

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child:
                    Text(country.flag!, style: const TextStyle(fontSize: 14)),
              ),
              Text(
                country.name!,
                style: Theme.of(context).inputDecorationTheme.labelStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          isSowCode
              ? Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('+${country.phone}',
                        style:
                            Theme.of(context).inputDecorationTheme.hintStyle),
                    isSelected
                        ? const Icon(Icons.check,
                            color: ColorApp.progressBarInterPinGreen)
                        : const SizedBox(),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
