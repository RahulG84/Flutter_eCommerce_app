import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone/provider/user_provider.dart';
import 'package:amazon_clone/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: GlobalVariables.blackColor,
          ),
        ),
      ),
      onGenerateRoute: (settings) => onGenerateRoute(settings),
      home: const AuthScreen(),
    );
  }
}

// Scaffold(
// appBar: AppBar(
// title: const Text('Hello'),
// ),
// body: Center(
// child: Column(
// children: [
// const Text('Hello Rahul...'),
// Builder(
// builder: (BuildContext context) {
// return ElevatedButton(
// onPressed: () {
// Navigator.pushNamed(context, AuthScreen.routeName);
// },
// child: const Text('Click'),
// );
// },
// ),
// ],
// ),
// ),
// ),
