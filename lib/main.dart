import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import './data/tempdata.dart';
import './statistics/statistic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _goRouter = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(itemList: itemList),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => Login(),
      )
    ],
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _goRouter.routeInformationParser,
      routerDelegate: _goRouter.routerDelegate,
      routeInformationProvider: _goRouter.routeInformationProvider,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0x8861A0),
        ),
        fontFamily: 'Exo2',
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final itemList;

  const HomePage({super.key, this.itemList});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 25, 25),
      appBar: AppBar(
        elevation: 12,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Statistic(itemList: itemList),
      bottomNavigationBar: BottomAppBar(
          height: 40,
          color: Theme.of(context).colorScheme.primary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(Icons.search, color: Colors.white),
            ],
          )),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: Container(
        child: Text(
          "하이염",
        ),
      ),
    );
  }
}

class DefaultScaffold extends StatelessWidget {
  final body;

  const DefaultScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 25, 25),
      appBar: AppBar(
        elevation: 12,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: this.body,
      bottomNavigationBar: BottomAppBar(
        height: 40,
        color: Theme.of(context).colorScheme.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(Icons.search, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
