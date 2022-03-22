import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/profile/my_profile.dart';



class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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

        home: History1(),
      ),
    );
  }
}







class History1 extends StatefulWidget {
  const History1({Key? key}) : super(key: key);

  @override
  State<History1> createState() => _History1State();
}

class _History1State extends State<History1> {
  bool open = false;
  int getTruck = 5;
  @override
  Widget build(BuildContext context) {

    final getContainer = Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(color: Color(0xFFFFB951), shape: BoxShape.circle),
      child: Center(
        child: Icon(
          Icons.check,
          size: 10,
          color: Colors.black,
        ),
      ),
    );
    final notGetContainer = Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFFFB951),
      ),
    );
    final container = Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.black38, width: 1)),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 22, bottom: 22, left: 10, right: 10),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('#HX561871351'),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffFFB951),
                    ),
                    child: Text('+500'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('01.01.2022'),
                    Text('03.01.2022'),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Кыргызстан, Бишкек'),
                    Text('Россия, Москва'),
                  ],
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        getTruck == 1 ? getContainer : notGetContainer,
                        getTruck == 2 ? getContainer : notGetContainer,
                        getTruck == 3 ? getContainer : notGetContainer,
                        getTruck == 4 ? getContainer : notGetContainer,
                        getTruck == 5 ? getContainer : notGetContainer,
                      ],
                    ),
                    Divider(
                      color: Color(0xffFFB951),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'Посылка доставлена',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF444444),
                      fontWeight: FontWeight.w600),
                ),
                Divider(
                  color: Color(0xFFDADADA),
                  indent: 5,
                  endIndent: 5,
                  height: 30,
                  thickness: 1,
                ),
                if (!open)
                  IconButton(
                    onPressed: () {
                      setState(() {
                        open = !open;
                      });
                    },
                    icon: Icon(FontAwesomeIcons.angleDown),
                  ),
                if (open)
                  Column(
                    children: [
                      openTrue('parameterTruck', 'Праметры груза','Коробка XS 17х12х9, до 0.5 кг'),

                      openTrue('truckPng', 'Тип доставки','Авиа доставка'),
                      openTrue('refresh', 'Упаковка','Коробка'),
                      openTrue('date', 'Дата сдачи посылки','01.01.2022, 14:22'),
                      openTrue('date', 'Дата доставки посылки','03.01.2022, 12:00'),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            open = !open;
                          });
                        },
                        icon: Icon(FontAwesomeIcons.angleUp),
                      ),
                    ],
                  )
              ],
            ),
          )
        ],
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('История',
          style: TextStyle(
              fontSize: 16, color: Color(0xff444444), fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF444444)),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: Column(
          children: [
            container,
            SizedBox(height: 20),
            container,
            SizedBox(height: 20),
            container,
            SizedBox(height: 20),
            container,
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
  Widget openTrue(String icon,text1,text2){
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 21.0),
              child: Image.asset(
                'assets/${icon}Icon.png',
                width: 18,
                height: 18,
              ),
            ),
            SizedBox(width: 26),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style:
                  TextStyle(color: Color(0xFF444444), fontSize: 12),
                ),
                SizedBox(height: 5),
                Text(
                  text2,
                  style:
                  TextStyle(color: Color(0xFF444444), fontSize: 14),
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Divider(color: Color(0xFFEEEEEE)),
        )
      ],
    );
  }
}
