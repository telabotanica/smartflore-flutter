import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('fr')
  ];

  /// No description provided for @app_name.
  ///
  /// In en, this message translates to:
  /// **'Smart\'Flore'**
  String get app_name;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @btn_all_trail.
  ///
  /// In en, this message translates to:
  /// **'All Trails'**
  String get btn_all_trail;

  /// No description provided for @btn_create_trail.
  ///
  /// In en, this message translates to:
  /// **'Create trail'**
  String get btn_create_trail;

  /// No description provided for @btn_login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get btn_login;

  /// No description provided for @btn_my_trail.
  ///
  /// In en, this message translates to:
  /// **'My Trails'**
  String get btn_my_trail;

  /// No description provided for @btn_next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get btn_next;

  /// No description provided for @btn_register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get btn_register;

  /// No description provided for @btn_scan_trail.
  ///
  /// In en, this message translates to:
  /// **'Scan trail'**
  String get btn_scan_trail;

  /// No description provided for @btn_start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get btn_start;

  /// No description provided for @count_observation.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no observation} =1{1 observation} other{{count} observations}}'**
  String count_observation(num count);

  /// No description provided for @credits.
  ///
  /// In en, this message translates to:
  /// **'Credits'**
  String get credits;

  /// No description provided for @ct_trail_name.
  ///
  /// In en, this message translates to:
  /// **'New trail name'**
  String get ct_trail_name;

  /// No description provided for @distance_km.
  ///
  /// In en, this message translates to:
  /// **'km'**
  String get distance_km;

  /// No description provided for @distance_m.
  ///
  /// In en, this message translates to:
  /// **'m'**
  String get distance_m;

  /// No description provided for @error_API.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong :('**
  String get error_API;

  /// No description provided for @login_connection.
  ///
  /// In en, this message translates to:
  /// **'Connection'**
  String get login_connection;

  /// No description provided for @login_no_account.
  ///
  /// In en, this message translates to:
  /// **'No Smart\'Flore account yet?'**
  String get login_no_account;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @near.
  ///
  /// In en, this message translates to:
  /// **'Near'**
  String get near;

  /// No description provided for @need_login.
  ///
  /// In en, this message translates to:
  /// **'In order to be able to create your own trails, you must log in to your Smart\'Flore account'**
  String get need_login;

  /// No description provided for @offline.
  ///
  /// In en, this message translates to:
  /// **'Offline mode'**
  String get offline;

  /// No description provided for @offline_desc.
  ///
  /// In en, this message translates to:
  /// **'Save the trail data on your device'**
  String get offline_desc;

  /// No description provided for @params.
  ///
  /// In en, this message translates to:
  /// **'Params'**
  String get params;

  /// No description provided for @register_title.
  ///
  /// In en, this message translates to:
  /// **'Create Smart\'Flore account'**
  String get register_title;

  /// No description provided for @resource_unavailable.
  ///
  /// In en, this message translates to:
  /// **'Resource not available offline'**
  String get resource_unavailable;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Waiting for review'**
  String get review;

  /// No description provided for @see_taxon.
  ///
  /// In en, this message translates to:
  /// **'See the card'**
  String get see_taxon;

  /// No description provided for @species.
  ///
  /// In en, this message translates to:
  /// **'species'**
  String get species;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @toaster_offline_desc.
  ///
  /// In en, this message translates to:
  /// **'Some actions are unavailable'**
  String get toaster_offline_desc;

  /// No description provided for @toaster_offline_title.
  ///
  /// In en, this message translates to:
  /// **'You seem to be offline'**
  String get toaster_offline_title;

  /// No description provided for @trail_options.
  ///
  /// In en, this message translates to:
  /// **'Trail options'**
  String get trail_options;

  /// No description provided for @user_birthdate.
  ///
  /// In en, this message translates to:
  /// **'Birth date'**
  String get user_birthdate;

  /// No description provided for @user_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get user_email;

  /// No description provided for @user_first_name.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get user_first_name;

  /// No description provided for @user_name.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get user_name;

  /// No description provided for @user_pwd.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get user_pwd;

  /// No description provided for @wip.
  ///
  /// In en, this message translates to:
  /// **'Feature coming soon!'**
  String get wip;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
