// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get app_name => 'Smart\'Flore';

  @override
  String get back => 'Vuelta';

  @override
  String get btn_all_trail => 'Todos los senderos';

  @override
  String get btn_create_trail => 'Crear sendero';

  @override
  String get btn_login => 'Login';

  @override
  String get btn_my_trail => 'Mis senderos';

  @override
  String get btn_next => 'Siguiente';

  @override
  String get btn_register => 'Registrarse';

  @override
  String get btn_scan_trail => 'Escanear sendero ';

  @override
  String get btn_start => 'Comenzar';

  @override
  String count_observation(num count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString observaciones',
      one: '1 observación',
      zero: 'no observación',
    );
    return '$_temp0';
  }

  @override
  String get credits => 'Creditos';

  @override
  String get ct_trail_name => 'Nombre del nuevo sendero';

  @override
  String get distance_km => 'km';

  @override
  String get distance_m => 'm';

  @override
  String get error_API => 'Algo salió mal :(';

  @override
  String get login_connection => 'conexión';

  @override
  String get login_no_account => '¿Todavía no tiene una cuenta Smart\'Flore?';

  @override
  String get logout => 'Cerrar sesión';

  @override
  String get near => 'Cerca';

  @override
  String get need_login =>
      'Para poder crear sus propios senderos, debe iniciar sesión en su cuenta Smart\'Flore';

  @override
  String get offline => 'Modo offline';

  @override
  String get offline_desc => 'Guarde los datos de la ruta en su dispositivo';

  @override
  String get params => 'parámetros';

  @override
  String get register_title => 'Create Smart\'Flore account';

  @override
  String get resource_unavailable => 'Recurso no disponible sin conexión';

  @override
  String get review => 'Esperando para revisión';

  @override
  String get see_taxon => 'Ver el aviso';

  @override
  String get species => 'especie';

  @override
  String get to => 'A';

  @override
  String get toaster_offline_desc => 'Algunas acciones no están disponibles';

  @override
  String get toaster_offline_title => 'Pareces estar desconectado';

  @override
  String get trail_options => 'Opciones de senderos';

  @override
  String get user_birthdate => 'Fecha de nacimiento';

  @override
  String get user_email => 'Email';

  @override
  String get user_first_name => 'Nombre';

  @override
  String get user_name => 'Apellido';

  @override
  String get user_pwd => 'Contraseña';

  @override
  String get wip => '¡Característica próximamente!';
}
