// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get app_name => 'Smart\'Flore';

  @override
  String get back => 'Retour';

  @override
  String get btn_all_trail => 'Tous les sentiers';

  @override
  String get btn_create_trail => 'Créer un sentier';

  @override
  String get btn_login => 'Se connecter';

  @override
  String get btn_my_trail => 'Mes sentiers';

  @override
  String get btn_next => 'Suivant';

  @override
  String get btn_register => 'S\'inscrire';

  @override
  String get btn_scan_trail => 'Scanner un sentier';

  @override
  String get btn_start => 'Démarrer';

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
      zero: 'Aucune observation',
    );
    return '$_temp0';
  }

  @override
  String get credits => 'Crédits';

  @override
  String get ct_trail_name => 'Nom du nouveau sentier';

  @override
  String get distance_km => 'km';

  @override
  String get distance_m => 'm';

  @override
  String get error_API => 'Un problème est survenu :(';

  @override
  String get login_connection => 'Connexion';

  @override
  String get login_no_account => 'Pas encore de compte Smart\'Flore';

  @override
  String get logout => 'Se déconnecter';

  @override
  String get near => 'À proximité';

  @override
  String get need_login =>
      'Afin de pouvoir créer vos propres sentiers vous devez vous connecter à votre compte Smart’Flore';

  @override
  String get offline => 'Mode Hors ligne';

  @override
  String get offline_desc => 'Sauvegarder la fiche sentier sur votre appareil';

  @override
  String get params => 'Paramètres';

  @override
  String get register_title => 'Créer son compte Smart\'Flore';

  @override
  String get resource_unavailable => 'Ressource non disponible hors ligne';

  @override
  String get review => 'En attente de validation';

  @override
  String get see_taxon => 'Voir la fiche';

  @override
  String get species => 'espèces';

  @override
  String get to => 'À';

  @override
  String get toaster_offline_desc => 'Certaines actions sont indisponibles';

  @override
  String get toaster_offline_title => 'Vous semblez être hors ligne';

  @override
  String get trail_options => 'Options du sentier';

  @override
  String get user_birthdate => 'Date de naissance';

  @override
  String get user_email => 'Email';

  @override
  String get user_first_name => 'Prénom';

  @override
  String get user_name => 'Nom';

  @override
  String get user_pwd => 'Mot de passe';

  @override
  String get wip => 'Fonctionnalité bientôt disponible !';
}
