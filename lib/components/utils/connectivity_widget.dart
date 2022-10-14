import 'dart:async';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class ConnectivityWidget extends StatefulWidget {
  final Widget child;
  const ConnectivityWidget({Key? key, required this.child}) : super(key: key);

  @override
  State<ConnectivityWidget> createState() => _ConnectivityWidgetState();
}

class _ConnectivityWidgetState extends State<ConnectivityWidget> {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  late Box appConfigBox;
  bool isSnackbarActive = false;
  bool isDelayFinished = true;
  @override
  void initState() {
    appConfigBox = Hive.box('appConfig');
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException {
      //NOT SUPPORTED
      return;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    appConfigBox.put('connectivityStatus', result);
    if (result == ConnectivityResult.none && !isSnackbarActive) {
      if (isDelayFinished) {
        Future.delayed(const Duration(seconds: 2)).then((value) async {
          ConnectivityResult doubleCheck =
              await _connectivity.checkConnectivity();
          isDelayFinished = true;

          if (doubleCheck == ConnectivityResult.none && !isSnackbarActive) {
            showSnackBar();
          }
        });
      }
    }
  }

  showSnackBar() {
    isSnackbarActive = true;

    Flushbar(
        titleColor: Colors.white,
        flushbarPosition: FlushbarPosition.TOP,
        flushbarStyle: FlushbarStyle.FLOATING,
        reverseAnimationCurve: Curves.easeInOutQuad,
        forwardAnimationCurve: Curves.easeInOutQuad,
        animationDuration: const Duration(milliseconds: 350),
        backgroundColor: const Color(0xFFEA5448),
        margin: const EdgeInsets.all(20),
        borderRadius: BorderRadius.circular(6),
        boxShadows: [
          BoxShadow(
              color: Colors.black.withOpacity(0.4),
              offset: const Offset(0.0, 4.0),
              blurRadius: 10.0)
        ],
        isDismissible: true,
        duration: const Duration(seconds: 10),
        icon: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Icon(
            SmartFloreIcons.wifioff,
            color: Colors.white,
          ),
        ),
        padding: const EdgeInsets.all(16),
        titleText: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            'Vous semblez être hors connexion',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.white,
                fontFamily: 'ShadowsIntoLightTwo'),
          ),
        ),
        messageText: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            'Certaines actions sont indisponibles',
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
                fontFamily: 'ShadowsIntoLightTwo'),
          ),
        )).show(context).then((value) => {isSnackbarActive = false});
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();

    super.dispose();
  }
}
