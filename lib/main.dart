import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/_env/app_env.dart';
import 'package:smartflore/bloc/auth/auth_bloc.dart';
import 'package:smartflore/bloc/bloc_observer.dart';
import 'package:smartflore/bloc/create/create_bloc.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/ping/ping_bloc.dart';
import 'package:smartflore/bloc/taxon/taxon_bloc.dart';
import 'package:smartflore/bloc/trail/save_trail_bloc.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/bloc/trails/mytrails_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/bloc/walk/walk_bloc.dart';
import 'package:smartflore/components/gallery/gallery_wrapper.dart';
import 'package:smartflore/hive/connectivity_result_adapter.dart';
import 'package:smartflore/hive/latlng_adaptater.dart';
import 'package:smartflore/models/create/create_model.dart';
import 'package:smartflore/models/taxon/taxon_model.dart' as t;
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/models/user/user_model.dart';
import 'package:smartflore/navigation/gallery_screen_args.dart';
import 'package:smartflore/navigation/taxon_screen_args.dart';
import 'package:smartflore/repo/auth/auth_api_client.dart';
import 'package:smartflore/repo/auth/auth_repo.dart';
import 'package:smartflore/repo/geolocation/geolocation_repo.dart';
import 'package:smartflore/repo/ping/ping_api_client.dart';
import 'package:smartflore/repo/ping/ping_repo.dart';
import 'package:smartflore/repo/taxon/taxon_api_client.dart';
import 'package:smartflore/repo/taxon/taxon_repo.dart';
import 'package:smartflore/repo/trail/trail_api_client.dart';
import 'package:smartflore/repo/trail/trail_repo.dart';
import 'package:smartflore/repo/trails/trails_api_client.dart';
import 'package:smartflore/repo/trails/trails_repo.dart';
import 'package:smartflore/repo/user/user_local_client.dart';
import 'package:smartflore/repo/user/user_repo.dart';
import 'package:smartflore/repo/walk/walk_repo.dart';
import 'package:smartflore/screens/create/camera_screen.dart';
import 'package:smartflore/screens/login_screen.dart';
import 'package:smartflore/screens/create/search_screen.dart';
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

getImageIdIfPossible(taxon) {}

void main() async {
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
  Hive.registerAdapter(UserAdapter());

  Box<Trails> trailsBox = await Hive.openBox('trails');
  Box<TrailDetails> trailBox = await Hive.openBox('trail');
  Box<t.Taxon> taxonBox = await Hive.openBox('taxon');
  Box<CreateTrail> createBox = await Hive.openBox('create');
  Box<Map<int, bool>> localImagesBox = await Hive.openBox('localImages');
  Box<bool> saveTrailBox = await Hive.openBox('savedTrails');
  Box appConfig = await Hive.openBox('appConfig');
  Box<UserInfoApp?> userBox = await Hive.openBox('userInfoApp');
  UserLocalClient userLocalClient = UserLocalClient(userBox);

  bool isAuth() {
    return (userLocalClient.getUserInfo().token != null) ? true : false;
  }

  UserInfoApp getUserInfo() {
    return userLocalClient.getUserInfo();
  }

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final TrailsRepo trailsRepo = TrailsRepo(
      trailsApiClient: TrailsApiClient(
          httpClient: http.Client(),
          baseUrl: AppEnv().apiBaseUrl,
          getUserInfo: getUserInfo));
  final TrailRepo trailRepo = TrailRepo(
    trailApiClient: TrailApiClient(
        httpClient: http.Client(),
        baseUrl: AppEnv().apiBaseUrl,
        getUserInfo: getUserInfo),
  );
  final AuthRepo authRepo = AuthRepo(
      authApiClient: AuthApiClient(
          httpClient: http.Client(), baseUrl: '${AppEnv().apiBaseUrl}/login'));
  final UserRepo userRepo = UserRepo(userLocalClient, trailsBox);
  final WalkRepo walkRepo = WalkRepo();

  final TaxonRepo taxonRepo = TaxonRepo(
      taxonApiClient: TaxonApiClient(
          httpClient: http.Client(), baseUrl: '${AppEnv().apiBaseUrl}/taxon'));

  final GeolocationRepo geolocationRepo = GeolocationRepo();

  final PingRepo pingRepo = PingRepo(
      pingApiClient: PingApiClient(
        httpClient: http.Client(),
        baseUrl: '${AppEnv().apiBaseUrl}/ping',
      ),
      appConfig: appConfig,
      geolocationRepo: geolocationRepo);

  Bloc.observer = SimpleBlocObserver();

  runApp(RootRestorationScope(
    restorationId: 'root',
    child: MultiBlocProvider(providers: [
      BlocProvider<MapBloc>(create: (context) => MapBloc()),
      BlocProvider<AuthBloc>(create: (context) => AuthBloc(authRepo, userRepo)),
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
      BlocProvider<PingBloc>(create: (context) => PingBloc(pingRepo: pingRepo)),
      BlocProvider<GeolocationBloc>(
          create: (context) => GeolocationBloc(
              geolocationRepo: geolocationRepo,
              mapBloc: BlocProvider.of<MapBloc>(context))
            ..add(const GeolocationEvent.requestPermission())),
      BlocProvider<CreateBloc>(
          create: (context) => CreateBloc(
              createTrailBox: createBox,
              geolocationBloc: BlocProvider.of<GeolocationBloc>(context),
              geolocationRepo: geolocationRepo,
              trailRepo: trailRepo)),
      BlocProvider<MyTrailsBloc>(
        create: (context) => MyTrailsBloc(
            trailsRepo,
            trailsBox,
            BlocProvider.of<AuthBloc>(context),
            BlocProvider.of<CreateBloc>(context)),
      ),
    ], child: App(isAuth: isAuth())),
  ));
}

class App extends StatefulWidget {
  final bool isAuth;
  const App({Key? key, required this.isAuth}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final ThemeManager _themeManager = ThemeManager();
  bool isAuth = false;
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);

    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    setState(() {
      isAuth = widget.isAuth;
    });
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

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
            authStatus: (isAuthRepo) {
              setState(() {
                isAuth = isAuthRepo;
              });
            },
            orElse: () {});
      },
      child: MaterialApp(
          title: "Smart'Flore",
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: _themeManager.themeMode,
          home: MapScreen(isAuth: isAuth),
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
                    newScreen: MapScreen(isAuth: isAuth));
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
                    transitionType: TransitionType.slideRight,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOutQuad,
                    reverseCurve: Curves.easeOut,
                    newScreen: SettingsScreen(isAuth: isAuth));
              case '/search':
                return Transitions(
                    transitionType: TransitionType.slideLeft,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOutQuad,
                    reverseCurve: Curves.easeOut,
                    newScreen: const SearchTaxonScreen(
                      simpleSearch: true,
                    ));
              case '/create':
                return Transitions(
                    transitionType: TransitionType.slideLeft,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOutQuad,
                    reverseCurve: Curves.easeOut,
                    newScreen: const SearchTaxonScreen());
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
          }),
    );
  }
}
