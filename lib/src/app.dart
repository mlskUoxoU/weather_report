import 'package:flutter/material.dart';
import 'screens/report.dart';
import 'screens/forecast.dart';
import 'screens/setting.dart';

import '../slot_icons.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Report',
      // Flutter公式サイトThemeを設定
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'MPLUSRounded',
      ),
      // NavigaionBarのClassを呼び出す
      home: const BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  // 各画面のリスト
  static const _screens = [ReportScreen(), ForecastScreen(), SettingScreen()];
  // 選択されている画面のインデックス
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
        body: _screens[_selectedIndex],
        // 本題のNavigationBar
        bottomNavigationBar: NavigationBar(
          // タップされたタブのインデックスを設定（タブ毎に画面の切り替えをする）
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          // 選択されているタブの色（公式サイトのまま黄色）
          indicatorColor: Colors.amber,
          // 選択されたタブの設定（設定しないと画面は切り替わってもタブの色は変わらないです）
          selectedIndex: _selectedIndex,
          // タブ自体の設定（必須項目のため、書かないとエラーになります）
          destinations: const <Widget>[
            NavigationDestination(
              //selectedIcon: Icon(Slot.slot),
              //icon: Icon(Icons.home_outlined),
              icon: Icon(Slot.lucky7),
              label: 'Report',
            ),
            NavigationDestination(
              icon: Icon(Icons.trending_up),
              label: 'Forecast',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ));
  }
}
