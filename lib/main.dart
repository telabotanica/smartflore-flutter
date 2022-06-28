import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:smartflore/bloc/bloc_observer.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/repo/geolocation/geolocation_repo.dart';
import 'package:smartflore/repo/trail/trail_api_client.dart';
import 'package:smartflore/repo/trail/trail_repo.dart';
import 'package:smartflore/repo/trails/trails_api_client.dart';
import 'package:smartflore/repo/trails/trails_repo.dart';
import 'package:smartflore/screens/species/species_screen.dart';
import 'package:smartflore/themes/theme_constants.dart';
import 'package:smartflore/themes/theme_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final TrailsRepo trailsRepo = TrailsRepo(
      trailsApiClient: TrailsApiClient(
          httpClient: http.Client(),
          baseUrl:
              'https://taxamart.floristic.org/referential?language=fr&type=trail'));
  final TrailRepo trailRepo = TrailRepo(
      trailApiClient: TrailApiClient(
          httpClient: http.Client(),
          baseUrl: 'https://taxamart.floristic.org/trail/'));

  final GeolocationRepo geolocationRepo = GeolocationRepo();
  BlocOverrides.runZoned(
    () {
      runApp(MultiBlocProvider(providers: [
        BlocProvider<MapBloc>(create: (context) => MapBloc()),
        BlocProvider<TrailBloc>(
            create: (context) =>
                TrailBloc(trailRepo, BlocProvider.of<MapBloc>(context))),
        BlocProvider<TrailsBloc>(create: (context) => TrailsBloc(trailsRepo)),
        BlocProvider<GeolocationBloc>(
            create: (context) =>
                GeolocationBloc(geolocationRepo: geolocationRepo)
                  ..add(RequestLocationPermissionEvent())),
      ], child: const App()));
    },
    blocObserver: SimpleBlocObserver(),
  );
}

ThemeManager _themeManager = ThemeManager();

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    return MaterialApp(
      title: "Smart'Flore",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: const SpeciesScreen(),
      supportedLocales: L10n.all,
      localizationsDelegates: const {
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      },
    );
  }
}
