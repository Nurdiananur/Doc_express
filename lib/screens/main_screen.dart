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
      // appBar: AppBar(
      //
      //   title: Padding(
      //     padding: const EdgeInsets.only(left: 134,),
      //     child: Text('Cовктская 123',
      //       style: new TextStyle(color: Color(0xff444444)), ),
      //   ),
      //   backgroundColor: Colors.white,
      //   leading: Container(
      //     width: 55,
      //     height: 22,
      //     child: Padding(
      //       padding: const EdgeInsets.only(left: 15),
      //       child: Image.asset('assets/doc.jpg'),
      //     ),
      //   ),
      // ),
      body: screens[index],

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Color(0xffFFB951)
        ),
      child: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) =>
          setState(() => this.index = index),

        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home,),
            label:  'Главная',),
          NavigationDestination(
            icon:Icon(Icons.calculate,),
            label:  'Калькулятор',),
          NavigationDestination(
            icon:Icon(Icons.search,),
            label:  'Отследить',),
          NavigationDestination(
            icon:Icon(Icons.person,),
            label:  'Профиль',),
        ],
      )

      ),
    );
  }
}
