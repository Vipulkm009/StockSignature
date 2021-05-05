import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_signature/screens/auth/login.dart';
import 'package:stock_signature/screens/auth/register.dart';
import 'package:stock_signature/screens/static/welcome_screen.dart';
import 'package:stock_signature/screens/user/add_product.dart';
import 'package:stock_signature/utilities/constants/global_constants.dart';
import 'package:stock_signature/utilities/style/app_theme.dart';
import 'components/screen_scaffold.dart';
import 'screens/user/dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'utilities/classes/app_state_notifiers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  generateColors();
  runApp(
    ChangeNotifierProvider<AppStateNotifier>(
      builder: (context) => AppStateNotifier(),
      child: StockSignature(),
    ),
  );
}

class StockSignature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child) {
        return MaterialApp(
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: appState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: ScreenScaffold(),
          initialRoute: ScreenScaffold.id,
          routes: {
            ScreenScaffold.id: (context) => ScreenScaffold(),
            Dashboard.id: (context) => Dashboard(),
            WelcomeScreen.id: (context) => WelcomeScreen(),
            Login.id: (context) => Login(),
            Register.id: (context) => Register(),
            AddProduct.id: (context) => AddProduct(),
          },
        );
      },
    );
  }
}
