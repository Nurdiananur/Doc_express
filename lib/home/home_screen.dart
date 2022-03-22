import 'package:doc_express/send/send_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/home/calculus2.dart';
import 'package:doc_express/home/choose.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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

        home: Home1(),
      ),
    );
  }
}


class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  static const _initialCamersPosition =
  CameraPosition(target: LatLng(37.773972, -122 / 431297), zoom: 11.5);

  final TextEditingController whereController = new TextEditingController();
  final TextEditingController selectController = new TextEditingController();
  int select = 0;

  @override
  Widget build(BuildContext context) {
    final phoneField = TextFormField(
      autofocus: false,
      controller: whereController,
      onSaved: (value) {
        whereController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Куда',
        suffixIcon: IconButton(
          onPressed: () {
          //   Navigator.push(
          //       context, MaterialPageRoute(builder: (context) => Calculus2()));
          //
        },
          icon: Icon(Icons.search, color: Colors.black),
        ),
      ),
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: selectController,
      onSaved: (value) {
        selectController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Выберите регион',
          suffixIcon: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChooseScreen()));
            },
            icon: Icon(FontAwesomeIcons.angleRight),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          filled: true,
          fillColor: Color(0xffEDEDEF)),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cоветская 123',
          style: new TextStyle(color: Color(0xff444444), fontSize: 16),
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 65,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFB951),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/linearGradient.png')),
                    ),
                    child: Center(
                        child: Text('25 781 сом',
                            style:
                            TextStyle(color: Colors.black, fontSize: 10)))),
              ],
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Image.asset(
            'assets/doc.png',
            width: 55,
            height: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Column(
            children: <Widget>[
              // GoogleMap(
              //   initialCameraPosition:
              //
              //          _initialCamersPosition,
              //
              // ),

              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 410,

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFEDEDEF),
                              ),
                              child: phoneField,
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: <Widget>[
                                Text('Бишкек'),
                                SizedBox(width: 19),
                                Text('Ош'),
                                SizedBox(width: 19),
                                Text('Нарын'),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChooseScreen()));
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
                                      'Выберите регион',
                                      style:
                                      TextStyle(color: Color(0xFF444444)),
                                    ),
                                    Icon(FontAwesomeIcons.angleRight),
                                  ],
                                ),
                              ),
                            ),
                            // passwordField,
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (select == 1)
                                        select = 0;
                                      else
                                        select = 1;
                                    });
                                  },
                                  child: Container(
                                      width: 105,
                                      height: 71,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: select == 1
                                            ? Color(0xFFFFB951)
                                            : Color(0xffEDEDEF),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(FontAwesomeIcons.shoePrints,
                                              size: 18,
                                              color: select == 1
                                                  ? Colors.white
                                                  : Colors.black),
                                          Text('Стандарт',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: select == 1
                                                      ? Colors.white
                                                      : Color(0xFF444444)))
                                        ],
                                      )),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (select == 2)
                                        select = 0;
                                      else
                                        select = 2;
                                    });
                                  },
                                  child: Container(
                                      width: 105,
                                      height: 71,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: select == 2
                                            ? Color(0xFFFFB951)
                                            : Color(0xffEDEDEF),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.truck,
                                            size: 18,
                                            color: select == 2
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                          Text(
                                            'Экспресс',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: select == 2
                                                    ? Colors.white
                                                    : Color(0xFF444444)),
                                          )
                                        ],
                                      )),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (select == 3)
                                        select = 0;
                                      else
                                        select = 3;
                                    });
                                  },
                                  child: Container(
                                      width: 105,
                                      height: 71,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: select == 3
                                            ? Color(0xFFFFB951)
                                            : Color(0xffEDEDEF),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(FontAwesomeIcons.planeDeparture,
                                              size: 18,
                                              color: select == 3
                                                  ? Colors.white
                                                  : Colors.black),
                                          Text('Авиа',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: select == 3
                                                      ? Colors.white
                                                      : Color(0xFF444444)))
                                        ],
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            if (select > 0)
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SendPackage()));
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFB951),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Далее',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
