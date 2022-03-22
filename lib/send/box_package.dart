import 'package:doc_express/home/home_screen.dart';
import 'package:doc_express/send/cargo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Box extends StatefulWidget {
  const Box({Key? key}) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
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

        home: BoxPackage(),
      ),
    );
  }
}
class BoxPackage extends StatefulWidget {
  const BoxPackage({Key? key}) : super(key: key);

  @override
  State<BoxPackage> createState() => _BoxPackageState();
}

class _BoxPackageState extends State<BoxPackage> {
  bool value = false;
  late int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  final boxChek = Container(
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    decoration: BoxDecoration(
        color: Color(0xffEDEDEF),
        borderRadius: BorderRadius.circular(8)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 270,
          child: Text(
              '''Коробка 35х35х5 см, до 2кг Маленькие предметы, документы, бижутерия, аксессуары'''),
        ),
        ButtonBar(
          buttonPadding: EdgeInsets.all(0),
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: 0,
              activeColor: Colors.blue,
              onChanged: (val) {
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Контакты',
          style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Home()));
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Column(
          children: [
            boxChek,
            SizedBox(
              height: 10,
            ),
            boxChek,
            SizedBox(
              height: 10,
            ),
            boxChek,
            SizedBox(
              height: 10,
            ),
            boxChek,
            SizedBox(
              height: 10,
            ),
            boxChek,
            SizedBox(
              height: 10,
            ),
            boxChek,
            SizedBox(
              height: 20,
            ),
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
                        MaterialPageRoute(builder: (context) => Cargo()));
                  },
                  child: Text(
                    'Далее',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
