import 'package:flutter/material.dart';
import 'package:doc_express/home/calculus.dart';
import 'package:doc_express/home/choose.dart';
import 'package:doc_express/home/home_screen.dart';
import 'package:doc_express/profile/profile.dart';
import 'package:doc_express/home/search.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(


      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        //... other code
        builder: (context, widget) {
          //add this line
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },

        home: MainScreen1(),
      ),
    );

  }
}






class MainScreen1 extends StatefulWidget {
  const MainScreen1({Key? key}) : super(key: key);

  @override
  State<MainScreen1> createState() => _MainScreen1State();
}

class _MainScreen1State extends State<MainScreen1> {
  int index = 0;
  final screens = [
    Home(),
    Calculus(),
    Search(),
    Profile()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[index],

      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              backgroundColor: Colors.white,
              indicatorColor: Colors.white
          ),
          child: NavigationBar(
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),

            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home,color: index==0?Color(0xFFFFB951):Color(0xFF1C1C1C)),
                label:  'Главная',),
              NavigationDestination(
                icon:Icon(Icons.calculate,color: index==1?Color(0xFFFFB951):Color(0xFF1C1C1C)),
                label:  'Калькулятор',),
              NavigationDestination(
                icon:Icon(Icons.search,color: index==2?Color(0xFFFFB951):Color(0xFF1C1C1C)),
                label:  'Отследить',),
              NavigationDestination(
                icon:Icon(Icons.person,color: index==3?Color(0xFFFFB951):Color(0xFF1C1C1C)),
                label:  'Профиль',),
            ],
          )

      ),
    );
  }
}
