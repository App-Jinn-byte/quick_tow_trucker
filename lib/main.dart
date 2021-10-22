import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_tow_trucker/providers/multi_provider.dart';
import 'package:quick_tow_trucker/routes/routes.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  // FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  dynamic restartApp({required BuildContext context}) =>
      context.findAncestorStateOfType<_MyAppState>()?.restartApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  void initState() {
    // configureFcm();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: multiProviders,
      child: MaterialApp(
        title: "Quick Tow",
        // Remove this line
        key: key,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        routes: Routes.routes,
      ),
    );
  }
}
