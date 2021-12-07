import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_tow_trucker/providers/multi_provider.dart';
import 'package:quick_tow_trucker/res/toasts.dart';
import 'package:quick_tow_trucker/routes/routes.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  Toasts.getSuccessToast(text: message.data["orderId"]);
  // NotificationHandler.handleNotification(message.data);
  print("Handling a background message: ${message.messageId}");
}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  // FirebaseCrashlytics.instance.crash(); For Test Crashing
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);


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
