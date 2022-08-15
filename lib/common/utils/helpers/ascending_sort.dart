
import '../../../features/authantication/data/models/country_region_model.dart';

class Sort {
  static int ascendingSort(CountryModel c1, CountryModel c2) =>
      c1.name!.compareTo(c2.name!);
}
