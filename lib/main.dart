import 'package:algolia/algolia.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/bloc/bloc_observer.dart';
import 'package:smartflore/bloc/create/create_bloc.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/taxon/taxon_bloc.dart';
import 'package:smartflore/bloc/trail/save_trail_bloc.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/bloc/walk/walk_bloc.dart';
import 'package:smartflore/components/gallery/gallery_wrapper.dart';
import 'package:smartflore/hive/connectivity_result_adapter.dart';
import 'package:smartflore/hive/latlng_adaptater.dart';
import 'package:smartflore/models/create/create_model.dart';
import 'package:smartflore/models/taxon/taxon_model.dart' as t;
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/navigation/gallery_screen_args.dart';
import 'package:smartflore/navigation/taxon_screen_args.dart';
import 'package:smartflore/repo/geolocation/geolocation_repo.dart';
import 'package:smartflore/repo/ping/taxon/ping_api_client.dart';
import 'package:smartflore/repo/ping/taxon/ping_repo.dart';
import 'package:smartflore/repo/taxon/taxon_api_client.dart';
import 'package:smartflore/repo/taxon/taxon_repo.dart';
import 'package:smartflore/repo/trail/trail_api_client.dart';
import 'package:smartflore/repo/trail/trail_repo.dart';
import 'package:smartflore/repo/trails/trails_api_client.dart';
import 'package:smartflore/repo/trails/trails_repo.dart';
import 'package:smartflore/repo/walk/walk_repo.dart';
import 'package:smartflore/screens/create/camera_screen.dart';
import 'package:smartflore/screens/login_screen.dart';
import 'package:smartflore/screens/create/create_screen.dart';
import 'package:smartflore/screens/map_screen.dart';
import 'package:smartflore/screens/setting_screen.dart';
import 'package:smartflore/screens/taxon/taxon_screen.dart';
import 'package:smartflore/themes/theme_constants.dart';
import 'package:smartflore/themes/theme_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:smartflore/utils/app.dart';
import 'package:smartflore/utils/transitions.dart';
import 'l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

void main() async {
  Algolia algolia = Application.algolia;

  await Hive.initFlutter();

  Hive.registerAdapter(TrailsAdapter());
  Hive.registerAdapter(TrailAdapter());
  Hive.registerAdapter(ImageAdapter());
  Hive.registerAdapter(TrailDetailAdapter());
  Hive.registerAdapter(StartEndPositionAdapter());
  Hive.registerAdapter(LatLngAdapter());
  Hive.registerAdapter(OccurenceAdapter());
  Hive.registerAdapter(TrailTaxonAdapter());
  Hive.registerAdapter(PathAdapter());
  Hive.registerAdapter(t.TaxonAdapter());
  Hive.registerAdapter(t.TabAPIAdapter());
  Hive.registerAdapter(t.ImageAPIAdapter());
  Hive.registerAdapter(t.SectionAPIAdapter());
  Hive.registerAdapter(ConnectivityResultAdapter());
  Hive.registerAdapter(CreateTrailAdapter());
  Hive.registerAdapter(SavePositionAdapter());

  Box<Trails> trailsBox = await Hive.openBox('trails');
  Box<TrailDetails> trailBox = await Hive.openBox('trail');
  Box<t.Taxon> taxonBox = await Hive.openBox('taxon');
  Box<CreateTrail> createBox = await Hive.openBox('create');

  Box<Map<int, bool>> localImagesBox = await Hive.openBox('localImages');

  Box<bool> saveTrailBox = await Hive.openBox('savedTrails');
  Box appConfig = await Hive.openBox('appConfig');

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final TrailsRepo trailsRepo = TrailsRepo(
      trailsApiClient: TrailsApiClient(
          httpClient: http.Client(),
          baseUrl: 'https://tela-botanica.org/smartflore-services/trails'));
  final TrailRepo trailRepo = TrailRepo(
      trailApiClient: TrailApiClient(
          httpClient: http.Client(),
          baseUrl: 'https://tela-botanica.org/smartflore-services'));

  final WalkRepo walkRepo = WalkRepo();

  final TaxonRepo taxonRepo = TaxonRepo(
      taxonApiClient: TaxonApiClient(
          httpClient: http.Client(),
          baseUrl: 'https://tela-botanica.org/smartflore-services/taxon'));

  final GeolocationRepo geolocationRepo = GeolocationRepo();

  final PingRepo pingRepo = PingRepo(
      pingApiClient: PingApiClient(
        httpClient: http.Client(),
        baseUrl: 'https://tela-botanica.org/smartflore-services/ping',
      ),
      appConfig: appConfig,
      geolocationRepo: geolocationRepo);
  Bloc.observer = SimpleBlocObserver();

  runApp(RootRestorationScope(
    // <--fix
    restorationId: 'root',

    child: MultiBlocProvider(providers: [
      BlocProvider<MapBloc>(create: (context) => MapBloc()),
      BlocProvider<TrailBloc>(
          create: (context) => TrailBloc(
              trailRepo, BlocProvider.of<MapBloc>(context), trailBox)),
      BlocProvider<SaveTrailBloc>(
          create: (context) => SaveTrailBloc(
              trailRepo, trailBox, taxonBox, saveTrailBox, localImagesBox)),
      BlocProvider<TrailsBloc>(
          create: (context) => TrailsBloc(trailsRepo, trailsBox)),
      BlocProvider<WalkBloc>(create: (context) => WalkBloc(walkRepo)),
      BlocProvider<TaxonBloc>(
          create: (context) => TaxonBloc(taxonRepo, taxonBox)),
      BlocProvider<GeolocationBloc>(
          create: (context) => GeolocationBloc(
              geolocationRepo: geolocationRepo,
              mapBloc: BlocProvider.of<MapBloc>(context))
            ..add(const GeolocationEvent.requestPermission())),
      BlocProvider<CreateBloc>(
          create: (context) => CreateBloc(
              createTrailBox: createBox,
              geolocationBloc: BlocProvider.of<GeolocationBloc>(context)))
    ], child: const App()),
  ));
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final ThemeManager _themeManager = ThemeManager();

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
                    vernacularName: taxonScreenArgs.taxonVernacularName,
                    scientificName: taxonScreenArgs.taxonScientificName,
                  ));
            case '/login':
              return Transitions(
                  transitionType: TransitionType.slideLeft,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutQuad,
                  reverseCurve: Curves.easeOut,
                  newScreen: const LoginScreen());
            case '/settings':
              return Transitions(
                  transitionType: TransitionType.slideLeft,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutQuad,
                  reverseCurve: Curves.easeOut,
                  newScreen: SettingsScreen());
            case '/create':
              return Transitions(
                  transitionType: TransitionType.slideLeft,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutQuad,
                  reverseCurve: Curves.easeOut,
                  newScreen: const CreateScreen());
            case '/camera':
              return Transitions(
                  transitionType: TransitionType.slideLeft,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutQuad,
                  reverseCurve: Curves.easeOut,
                  newScreen: const CameraScreen());
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
