// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get title_app => 'OldTom Dashbord';

  @override
  String get yes => 'Si';

  @override
  String get no => 'No';

  @override
  String get theme => 'Tema';

  @override
  String get light => 'Chiaro';

  @override
  String get dark => 'Scuro';

  @override
  String get system => 'Sistema';

  @override
  String get login => 'Accedi';

  @override
  String category(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Categorie',
      one: 'Categoria',
    );
    return '$_temp0';
  }

  @override
  String product(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Prodotti',
      one: 'Prodotto',
    );
    return '$_temp0';
  }

  @override
  String image(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Immagini',
      one: 'Immagine',
    );
    return '$_temp0';
  }

  @override
  String get home => 'Home';

  @override
  String get reset => 'Reset';

  @override
  String get settings => 'Impostazioni';

  @override
  String get error => 'Errore';
}
