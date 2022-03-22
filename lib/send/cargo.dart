import 'package:doc_express/home/home_screen.dart';
import 'package:doc_express/send/box_package.dart';
import 'package:doc_express/send/choose.dart';
import 'package:doc_express/send/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Cargo extends StatefulWidget {
  const Cargo({Key? key}) : super(key: key);

  @override
  State<Cargo> createState() => _CargoState();
}

class _CargoState extends State<Cargo> {


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

        home: Cargo1(),
      ),
    );
  }
}
class Cargo1 extends StatefulWidget {
  const Cargo1({Key? key}) : super(key: key);

  @override
  State<Cargo1> createState() => _Cargo1State();
}

class _Cargo1State extends State<Cargo1> {

   int select = 0;
  bool package=false;
  @override
  Widget build(BuildContext context) {

    final loginButton = Material(
      elevation: 5,
      color: Color(0xffFFB951),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Data()));
        },
        child: Text(
          'Рассчитать',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Контакты',
          style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Box()));
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),

body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(vertical:20, horizontal: 20),
          child: Text(
            'Выберите упаковку для груза',
            style: TextStyle(fontSize: 16,color: Color(0xFF444444),fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 15),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Choose()));
          },
          child: Container(
            padding: EdgeInsets.only(
                left: 20, top: 12, bottom: 12, right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFFEDEDEF),
            ),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Выберите из предложенного',
                  style:
                  TextStyle(color: Color(0xFF444444),fontSize: 16),
                ),
                Icon(FontAwesomeIcons.angleRight),
              ],
            ),
          ),
        ),
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xFFEDEDEF),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Мне не нужна упаковка',
                style: TextStyle(color: Color(0xFF444444),fontSize: 16),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    package=!package;
                  });
                },
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: package?Color(0xFFFFB951):null,
                      shape: BoxShape.circle,
                      border: Border.all(width: 2,color: Color(0xFF444444))
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        loginButton,
        SizedBox(height: 50),
      ],
    ),
  ),
),
    );
  }
}
