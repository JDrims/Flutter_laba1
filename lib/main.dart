import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
          centerTitle: true,
        ),
        body: MainMenu(),
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return const TabBarExample();
  }
}

class TopSection extends StatelessWidget {
  const TopSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Text("Profile Logo");
  }
}

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TopSection(),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: "Профиль",
            ),
            Tab(
              text: "Настройки",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Carousel(),
                Lists(),
                Filters(),
              ],
            ),
          ),
          Center(),
        ],
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  const Carousel({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text("Carousel");
  }
}

class Lists extends StatelessWidget {
  const Lists({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text("Lists");
  }
}

class Filters extends StatelessWidget {
  const Filters({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text("Filters");
  }
}
