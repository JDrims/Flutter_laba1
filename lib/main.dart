import 'package:flutter/material.dart';
import 'filter.dart';
import 'tariff.dart';
import 'carousel.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(useMaterial3: true), home: MainMenu());
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Scrollbar(
        child: TabBarExample(),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            iconSize: 24,
            onPressed: () {},
            icon: const Image(
              image: AssetImage("assets/images/close.png"),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 30),
                  width: 110,
                  height: 110,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/Photo.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x7A1D1D25),
                        blurRadius: 24,
                        offset: Offset(0, 16),
                        spreadRadius: -16,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  child: const Text(
                    'Екатерина',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      height: 0.06,
                    ),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            iconSize: 24,
            onPressed: () {},
            icon: const Image(
              image: AssetImage("assets/images/logout.png"),
            ),
          ),
        ],
      ),
    );
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
    return ListView(
      shrinkWrap: true,
      children: [
        const SizedBox(
          child: TopSection(),
        ),
        SizedBox(
          child: TabBar(
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
        SizedBox(
          width: double.maxFinite,
          height: 880,
          child: TabBarView(
            controller: _tabController,
            children: [
              const SizedBox(
                child: Column(
                  children: [
                    Carousel(),
                    TarifAndLimit(),
                    Filters(),
                  ],
                ),
              ),
              Container(),
            ],
          ),
        ),
      ],
    );
  }
}
