import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/main_screen.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
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

        home: ChooseScreen1(),
      ),
    );
  }
}



class ChooseScreen1 extends StatefulWidget {




  @override
  State<ChooseScreen1> createState() => _ChooseScreen1State();
}

class _ChooseScreen1State extends State<ChooseScreen1> {

  bool _checked = false;
  bool _checked1 = false;
  bool _checked2 = false;
  bool _checked3 = false;
  bool _checked4 = false;
  bool _checked5 = false;
  bool _checked6 = false;
  bool _checked7 = false;
  bool _checked8 = false;
  bool _checked9 = false;
  bool _checked10 = false;
  bool _checked11 = false;
  bool _checked12 = false;
  bool _checked13 = false;
  bool _checked14 = false;
  bool _checked15 = false;
  bool _checked16 = false;
  bool _checked17 = false;
  bool _checked18 = false;
  bool _checked19 = false;
  bool _checked20 = false;
  bool _checked21 = false;
  bool _checked22 = false;
  bool _checked23 = false;
  bool _checked24 = false;
  bool _checked25 = false;
  bool _checked26 = false;
  bool _checked27 = false;
  bool _checked28 = false;
  bool _checked29 = false;
  bool _checked30 = false;
  bool _checked31 = false;
  bool _checked32 = false;
  bool _checked33 = false;
  bool _checked34 = false;
  bool _checked35 = false;


          @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
body: SingleChildScrollView (
  child:   Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
  
      Padding(
        padding: const EdgeInsets.all(15),
        child: Text('Выберите регион доставки',
          style: TextStyle(
              fontSize: 18, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),
        ),
      ),

  
  
  
          Padding(
  
            padding: const EdgeInsets.all(15),
  
            child: Column(
  
              children: [
  
                ExpansionTile(
  
  
  
                        title: Text('г.Бишкек'),
  
                        backgroundColor: Color(0xffEDEDEF),
  
                        children: [
  
                          CheckboxListTile(
  
                            title: Text('Октябрьский район'),
  
  
  
                            controlAffinity:
  
                            ListTileControlAffinity.platform,
  
                            value: _checked,
  
                            onChanged: (val) {
  
                              setState(() {
  
                                _checked = val!;
  
                              });
  
                            },
  
                            activeColor: Colors.blue,
  
                            checkColor: Colors.green,
  
                          ),
  
                          CheckboxListTile(
  
                            title: Text('Первомайский район'),
  
  
  
                            controlAffinity:
  
                            ListTileControlAffinity.platform,
  
                            value: _checked1,
  
                            onChanged: (val) {
  
                              setState(() {
  
                                _checked1 = val!;
  
                              });
  
                            },
  
                            activeColor: Colors.blue,
  
                            checkColor: Colors.green,
  
                          ),
  
  
  
                          CheckboxListTile(
  
                            title: Text('Ленинский район'),
  
  
  
                            controlAffinity:
  
                            ListTileControlAffinity.platform,
  
                            value: _checked2,
  
                            onChanged: (val) {
  
                              setState(() {
  
                                _checked2 = val!;
  
                              });
  
                            },
  
                            activeColor: Colors.blue,
  
                            checkColor: Colors.green,
  
                          ),
  
                          CheckboxListTile(
  
                            title: Text('Свердловский район'),
  
  
  
                            controlAffinity:
  
                            ListTileControlAffinity.platform,
  
                            value: _checked3,
  
                            onChanged: (val) {
  
                              setState(() {
  
                                _checked3 = val!;
  
                              });
  
                            },
  
                            activeColor: Colors.blue,
  
                            checkColor: Colors.green,
  
                          ),
  
                        ],
  
                        ),
                SizedBox(height: 16,),
  
                ExpansionTile(
  
  
  
                  title: Text('г.Ош'),
  
                  backgroundColor: Color(0xffEDEDEF),
  
                  children: [
  
                    CheckboxListTile(
  
                      title: Text('Алайский район'),
  
  
  
                      controlAffinity:
  
                      ListTileControlAffinity.platform,
  
                      value: _checked4,
  
                      onChanged: (val) {
  
                        setState(() {
  
                          _checked4 = val!;
  
                        });
  
                      },
  
                      activeColor: Colors.blue,
  
                      checkColor: Colors.green,
  
                    ),
  
                    CheckboxListTile(
  
                      title: Text('Араванский район'),
  
  
  
                      controlAffinity:
  
                      ListTileControlAffinity.platform,
  
                      value: _checked5,
  
                      onChanged: (val) {
  
                        setState(() {
  
                          _checked5 = val!;
  
                        });
  
                      },
  
                      activeColor: Colors.blue,
  
                      checkColor: Colors.green,
  
                    ),
  
  
  
                    CheckboxListTile(
  
                      title: Text('Кара-Кульджинский район'),
  
  
  
                      controlAffinity:
  
                      ListTileControlAffinity.platform,
  
                      value: _checked6,
  
                      onChanged: (val) {
  
                        setState(() {
  
                          _checked6 = val!;
  
                        });
  
                      },
  
                      activeColor: Colors.blue,
  
                      checkColor: Colors.green,
  
                    ),
  
                    CheckboxListTile(
  
                      title: Text('Кара-Суйский район,'),
  
  
  
                      controlAffinity:
  
                      ListTileControlAffinity.platform,
  
                      value: _checked7,
  
                      onChanged: (val) {
  
                        setState(() {
  
                          _checked7 = val!;
  
                        });
  
                      },
  
                      activeColor: Colors.blue,
  
                      checkColor: Colors.green,
  
                    ),
  
                    CheckboxListTile(
  
                      title: Text('Ноокатский район,'),
  
  
  
                      controlAffinity:
  
                      ListTileControlAffinity.platform,
  
                      value: _checked8,
  
                      onChanged: (val) {
  
                        setState(() {
  
                          _checked8 = val!;
  
                        });
  
                      },
  
                      activeColor: Colors.blue,
  
                      checkColor: Colors.green,
  
                    ),
  
                    CheckboxListTile(
  
                      title: Text('Узгенский район'),
  
  
  
                      controlAffinity:
  
                      ListTileControlAffinity.platform,
  
                      value: _checked9,
  
                      onChanged: (val) {
  
                        setState(() {
  
                          _checked9 = val!;
  
                        });
  
                      },
  
                      activeColor: Colors.blue,
  
                      checkColor: Colors.green,
  
                    ),
  
                    CheckboxListTile(
  
                      title: Text('Чон-Алайский'),
  
  
  
                      controlAffinity:
  
                      ListTileControlAffinity.platform,
  
                      value: _checked10,
  
                      onChanged: (val) {
  
                        setState(() {
  
                          _checked10 = val!;
  
                        });
  
                      },
  
                      activeColor: Colors.blue,
  
                      checkColor: Colors.green,
  
                    ),
  
                  ],
  
                ),
                SizedBox(height: 16,),

                ExpansionTile(

                  title: Text('г.Баткен'),

                  backgroundColor: Color(0xffEDEDEF),

                  children: [

                    CheckboxListTile(

                      title: Text('Айдаркен'),

                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked11,

                      onChanged: (val) {

                        setState(() {

                          _checked11 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                    CheckboxListTile(

                      title: Text('Баткен'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked12,

                      onChanged: (val) {

                        setState(() {

                          _checked12 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),



                    CheckboxListTile(

                      title: Text('Исфана'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked13,

                      onChanged: (val) {

                        setState(() {

                          _checked13 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                    CheckboxListTile(

                      title: Text('Кадамжай'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked14,

                      onChanged: (val) {

                        setState(() {

                          _checked14 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),
                    CheckboxListTile(

                      title: Text('Кызыл-Кия'),

                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked15,

                      onChanged: (val) {

                        setState(() {

                          _checked15 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                  ],

                ),
                SizedBox(height: 16,),

                ExpansionTile(



                  title: Text('г.Жалал Абад'),

                  backgroundColor: Color(0xffEDEDEF),

                  children: [

                    CheckboxListTile(

                      title: Text('Аксыйский район'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked16,

                      onChanged: (val) {

                        setState(() {

                          _checked16 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                    CheckboxListTile(

                      title: Text('Ала-Букинский район,'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked17,

                      onChanged: (val) {

                        setState(() {

                          _checked17 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),



                    CheckboxListTile(

                      title: Text('Базар-Коргонский район'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked18,

                      onChanged: (val) {

                        setState(() {

                          _checked18 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                    CheckboxListTile(

                      title: Text('Ноокенский район,'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked19,

                      onChanged: (val) {

                        setState(() {

                          _checked19 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                    CheckboxListTile(

                      title: Text('Сузакский район,'),
                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked20,

                      onChanged: (val) {

                        setState(() {

                          _checked20 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),
                    CheckboxListTile(

                      title: Text('Тогуз-Тороуский район'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked21,

                      onChanged: (val) {

                        setState(() {

                          _checked21 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),
                    CheckboxListTile(

                      title: Text('Чаткальский район,'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked22,

                      onChanged: (val) {

                        setState(() {

                          _checked22 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                  ],

                ),
                SizedBox(height: 16,),


                ExpansionTile(
                  title: Text('г.Нарын'),

                  backgroundColor: Color(0xffEDEDEF),
                  children: [
                    CheckboxListTile(
                      title: Text('Ак-Талаа району'),
                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked23,

                      onChanged: (val) {

                        setState(() {

                          _checked23 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                    CheckboxListTile(

                      title: Text('Ат-Башы району'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked24,

                      onChanged: (val) {

                        setState(() {

                          _checked24 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),



                    CheckboxListTile(

                      title: Text('Жумгал району'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked25,

                      onChanged: (val) {

                        setState(() {

                          _checked25 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                    CheckboxListTile(

                      title: Text('Кочкор району'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked26,

                      onChanged: (val) {

                        setState(() {

                          _checked26 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                    CheckboxListTile(

                      title: Text('Нарын району'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked27,

                      onChanged: (val) {

                        setState(() {

                          _checked27 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                  ],

                ),
                SizedBox(height: 16,),
                ExpansionTile(



                  title: Text('г.Алай'),

                  backgroundColor: Color(0xffEDEDEF),

                  children: [

                    CheckboxListTile(

                      title: Text('Октябрьский район'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked28,

                      onChanged: (val) {

                        setState(() {

                          _checked28 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                    CheckboxListTile(
                      title: Text('Первомайский район'),
                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked29,

                      onChanged: (val) {

                        setState(() {

                          _checked29 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),



                    CheckboxListTile(

                      title: Text('Ленинский район'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked30,

                      onChanged: (val) {

                        setState(() {

                          _checked30 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                    CheckboxListTile(

                      title: Text('Свердловский район'),
                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked31,

                      onChanged: (val) {

                        setState(() {

                          _checked31 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                  ],

                ),
                SizedBox(height: 16,),

                SizedBox(height: 16,),
                ExpansionTile(



                  title: Text('г.Бакай Ата'),

                  backgroundColor: Color(0xffEDEDEF),

                  children: [

                    CheckboxListTile(

                      title: Text('Мин Булак'),
                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked32,

                      onChanged: (val) {

                        setState(() {

                          _checked32 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                    CheckboxListTile(

                      title: Text('Озгоруш'),
                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked33,

                      onChanged: (val) {

                        setState(() {

                          _checked33 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),



                    CheckboxListTile(

                      title: Text('Ак Добо'),
                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked34,

                      onChanged: (val) {

                        setState(() {

                          _checked34 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                    CheckboxListTile(

                      title: Text('Кызыл Сай'),



                      controlAffinity:

                      ListTileControlAffinity.platform,

                      value: _checked35,

                      onChanged: (val) {

                        setState(() {

                          _checked35 = val!;

                        });

                      },

                      activeColor: Colors.blue,

                      checkColor: Colors.green,

                    ),

                  ],

                ),
              ],
  
            ),
  
          ),
  
  
  
    ],
  
  ),
),
    );
          }
}









