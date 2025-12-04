// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'Smart\'Flore';

  @override
  String get back => 'Back';

  @override
  String get btn_all_trail => 'All Trails';

  @override
  String get btn_create_trail => 'Create trail';

  @override
  String get btn_login => 'Login';

  @override
  String get btn_my_trail => 'My Trails';

  @override
  String get btn_next => 'Next';

  @override
  String get btn_register => 'Register';

  @override
  String get btn_scan_trail => 'Scan trail';

  @override
  String get btn_start => 'Start';

  @override
  String count_observation(num count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString observations',
      one: '1 observation',
      zero: 'no observation',
    );
    return '$_temp0';
  }

  @override
  String get credits => 'Credits';

  @override
  String get ct_trail_name => 'New trail name';

  @override
  String get distance_km => 'km';

  @override
  String get distance_m => 'm';

  @override
  String get error_API => 'Something went wrong :(';

  @override
  String get login_connection => 'Connection';

  @override
  String get login_no_account => 'No Smart\'Flore account yet?';

  @override
  String get logout => 'Logout';

  @override
  String get near => 'Near';

  @override
  String get need_login =>
      'In order to be able to create your own trails, you must log in to your Smart\'Flore account';

  @override
  String get offline => 'Offline mode';

  @override
  String get offline_desc => 'Save the trail data on your device';

  @override
  String get params => 'Params';

  @override
  String get register_title => 'Create Smart\'Flore account';

  @override
  String get resource_unavailable => 'Resource not available offline';

  @override
  String get review => 'Waiting for review';

  @override
  String get see_taxon => 'See the card';

  @override
  String get species => 'species';

  @override
  String get to => 'To';

  @override
  String get toaster_offline_desc => 'Some actions are unavailable';

  @override
  String get toaster_offline_title => 'You seem to be offline';

  @override
  String get trail_options => 'Trail options';

  @override
  String get user_birthdate => 'Birth date';

  @override
  String get user_email => 'Email';

  @override
  String get user_first_name => 'First Name';

  @override
  String get user_name => 'Last Name';

  @override
  String get user_pwd => 'Password';

  @override
  String get wip => 'Feature coming soon!';
}
