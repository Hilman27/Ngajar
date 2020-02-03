import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bloctest/provider/defaultModels.dart';
import 'package:bloctest/provider/roosterModels.dart';
import 'package:bloctest/provider/providerImport.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MultiProvider(
      providers: [

        Provider(builder: (context) => HeroDefault()),

        ChangeNotifierProxyProvider<HeroDefault, RoosterStatus>(
            builder: (context, heroRooster, previousRooster) =>
                RoosterStatus(heroRooster, previousRooster)),
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => HeroPage(),
          '/rooster': (context) => MyRooster(),
        },
      ),
    );
  }
}