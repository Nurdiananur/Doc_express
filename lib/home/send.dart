import 'package:doc_express/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Send extends StatefulWidget {
  const Send({Key? key}) : super(key: key);

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
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

        home: Send1(),
      ),
    );
  }
}

class Send1 extends StatefulWidget {
  const Send1({Key? key}) : super(key: key);

  @override
  State<Send1> createState() => _Send1State();
}

class _Send1State extends State<Send1> {

  bool value = false;
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
    width: 345,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffEDEDEF),
    ),

    child: Padding(
      padding: const  EdgeInsets.all(20),
      child: Row(
        children: [

          Text(
''' Сейф пакет стандарт
438 * 575 * 50'''
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: ButtonBar(
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
          ),
        ],
      ),
    ),
  );

  final boxCheked = Container(
    width: 345,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffEDEDEF),
    ),

    child: Padding(
      padding: const  EdgeInsets.all(20),
      child: Row(
        children: [

          Text(
              ''' Пакет СД'''
          ),
          Padding(
            padding: const EdgeInsets.only(left: 140),
            child: ButtonBar(
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
          ),
        ],
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Colors.white,
        title: Text(' Выберите регион',
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
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Column(
              children: [
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxCheked,
                SizedBox(height: 15,),
                boxCheked,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxChek,
                SizedBox(height: 15,),
                boxCheked,
                SizedBox(height: 15,),
                boxCheked,
                SizedBox(height: 15,),

              ],
            ),
        ),
      ),
    ),
    );
  }
}
