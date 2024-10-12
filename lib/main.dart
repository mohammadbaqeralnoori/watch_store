import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_store/components/theme.dart';
import 'package:watch_store/route/routes.dart';
import 'package:watch_store/screen/auth/cubit/auth_cubit.dart';
import 'package:watch_store/screen/auth/send_sms_screen.dart';
import 'package:watch_store/screen/mainscreen/main_screen.dart';
import 'package:watch_store/utils/shared_preferences_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await SharedPreferencesManager().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Watch Store',
        theme: lightTheme(),
        // initialRoute: ScreenNames.root,
        routes: routes,
        home: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            if (state is LoggedInState) {
              return const MainScreen();
            } else if (state is LoggedOutState) {
              return SendSmsScreen();
            } else {
              return SendSmsScreen();
            }
          },
        ),
        // home: const CartScreen(),
        // home: const ProductListScreen(),
        // home: ProductSingleScreen(),
      ),
    );
  }
}
