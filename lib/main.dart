import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:smartflore/bloc/bloc_observer.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/taxon/taxon_bloc.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/bloc/walk/walk_bloc.dart';
import 'package:smartflore/components/gallery/gallery_wrapper.dart';
import 'package:smartflore/navigation/gallery_screen_args.dart';
import 'package:smartflore/navigation/taxon_screen_args.dart';
import 'package:smartflore/repo/geolocation/geolocation_repo.dart';
import 'package:smartflore/repo/taxon/taxon_api_client.dart';
import 'package:smartflore/repo/taxon/taxon_repo.dart';
import 'package:smartflore/repo/trail/trail_api_client.dart';
import 'package:smartflore/repo/trail/trail_repo.dart';
import 'package:smartflore/repo/trails/trails_api_client.dart';
import 'package:smartflore/repo/trails/trails_repo.dart';
import 'package:smartflore/repo/walk/walk_repo.dart';
import 'package:smartflore/screens/map_screen.dart';
import 'package:smartflore/screens/setting_screen.dart';
import 'package:smartflore/screens/taxon/taxon_screen.dart';
import 'package:smartflore/themes/theme_constants.dart';
import 'package:smartflore/themes/theme_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:smartflore/utils/transitions.dart';
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
          baseUrl: 'https://tela-botanica.org/smartflore-services/trails'));
  final TrailRepo trailRepo = TrailRepo(
      trailApiClient: TrailApiClient(
          httpClient: http.Client(),
          baseUrl: 'https://tela-botanica.org/smartflore-services/trail'));

  final WalkRepo walkRepo = WalkRepo();

  final TaxonRepo taxonRepo = TaxonRepo(
      taxonApiClient: TaxonApiClient(
          httpClient: http.Client(),
          baseUrl: 'https://tela-botanica.org/smartflore-services/taxon'));

  final GeolocationRepo geolocationRepo = GeolocationRepo();

  Bloc.observer = SimpleBlocObserver();

  runApp(MultiBlocProvider(providers: [
    BlocProvider<MapBloc>(create: (context) => MapBloc()),
    BlocProvider<TrailBloc>(
        create: (context) =>
            TrailBloc(trailRepo, BlocProvider.of<MapBloc>(context))),
    BlocProvider<TrailsBloc>(create: (context) => TrailsBloc(trailsRepo)),
    BlocProvider<WalkBloc>(create: (context) => WalkBloc(walkRepo)),
    BlocProvider<TaxonBloc>(create: (context) => TaxonBloc(taxonRepo)),
    BlocProvider<GeolocationBloc>(
        create: (context) => GeolocationBloc(geolocationRepo: geolocationRepo)
          ..add(RequestLocationPermissionEvent())),
  ], child: const App()));
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
        home: const MapScreen(),
        supportedLocales: L10n.all,
        localizationsDelegates: const {
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        },
        initialRoute: '/',
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/':
              return Transitions(
                  transitionType: TransitionType.slideRight,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                  reverseCurve: Curves.easeOut,
                  newScreen: const MapScreen());
            case '/taxon':
              TaxonScreenArguments taxonScreenArgs =
                  settings.arguments as TaxonScreenArguments;
              return Transitions(
                  transitionType: TransitionType.slideLeft,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutQuad,
                  reverseCurve: Curves.easeOut,
                  newScreen: TaxonScreen(
                      taxonID: taxonScreenArgs.taxonID,
                      taxonRepo: taxonScreenArgs.taxonRepo,
                      taxonName: taxonScreenArgs.taxonName));
            case '/settings':
              return Transitions(
                  transitionType: TransitionType.slideLeft,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutQuad,
                  reverseCurve: Curves.easeOut,
                  newScreen: SettingsScreen());
            case '/gallery-fullScreen':
              GalleryScreenArguments data =
                  settings.arguments as GalleryScreenArguments;
              return Transitions(
                  transitionType: TransitionType.fade,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutQuad,
                  reverseCurve: Curves.easeOut,
                  newScreen: GalleryWrapper(
                    images: data.images,
                    backgroundDecoration: data.backgroundDecoration,
                    initialIndex: data.initialIndex,
                    scrollDirection: data.scrollDirection,
                    minScale: data.minScale,
                    maxScale: data.maxScale,
                    loadingBuilder: data.loadingBuilder,
                    onCurrentIndexChanged: data.onCurrentIndexChanged,
                  ));
          }
          return null;
        });
  }
}
