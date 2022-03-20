import 'package:doc_express/home/send.dart';
import 'package:doc_express/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Calculus2 extends StatefulWidget {
  const Calculus2({Key? key}) : super(key: key);

  @override
  State<Calculus2> createState() => _Calculus2State();
}

class _Calculus2State extends State<Calculus2> {
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

        home: Calculus3(),
      ),
    );
  }
}

class Calculus3 extends StatefulWidget {
  const Calculus3({Key? key}) : super(key: key);

  @override
  State<Calculus3> createState() => _Calculus3State();
}

class _Calculus3State extends State<Calculus3> {
  bool value = true;
  late int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val){
    setState(() {
      selectedRadio = val;
    });
  }

  final boxChek = Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    // width: 345,
    height: 116,

    color: Color(0xffEDEDEF),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Text(
            '''Коробка
35х35х5 см, до 2кг
Маленькие предметы, документы,
бижутерия, аксессуары'''
        ),
        ButtonBar(
          buttonPadding: EdgeInsets.all(0),
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: 0,
              activeColor: Colors.blue,
              onChanged: (val){
                print('Radio$val');

              },
            ),
          ],
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        title: Text(' Калькулятор',
          style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MainScreen())
        );
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, ),

            child: Column(
              children: [
                boxChek,
                SizedBox(height: 10,),
                boxChek,
                SizedBox(height: 10,),
                boxChek,
                SizedBox(height: 10,),
                boxChek,
                SizedBox(height: 10,),
                boxChek,
                SizedBox(height: 10,),
                boxChek,
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffFFB951),
                    child: MaterialButton(
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Send()));
                      },
                      child: Text('Далее',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );

  }

}