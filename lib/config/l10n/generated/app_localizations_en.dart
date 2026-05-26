// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title_app => 'OldTom Dashbord';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get theme => 'Theme';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get system => 'System';

  @override
  String get login => 'Login';

  @override
  String category(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Categories',
      one: 'Category',
    );
    return '$_temp0';
  }

  @override
  String product(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Products',
      one: 'Product',
    );
    return '$_temp0';
  }

  @override
  String image(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Images',
      one: 'Image',
    );
    return '$_temp0';
  }

  @override
  String get home => 'Home';

  @override
  String get reset => 'Reset';

  @override
  String get settings => 'Settings';

  @override
  String get error => 'Error';
}
