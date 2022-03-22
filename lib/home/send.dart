import 'package:doc_express/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
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

  bool check1 = false;
  bool check2 = false;




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
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 15,),
              Container(
                width: 345,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffEDEDEF),
                ),

                child: Padding(
                    padding: const  EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text(
                            ''' Сейф пакет стандарт
438 * 575 * 50'''
                        ),
                        SizedBox(width: 15,),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              check1 = !check1;
                            });
                          },
                          child: Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: check1 ? Colors.blue : Colors.white,
                            ),
                            child: check1
                                ? Center(
                                child: Icon(Icons.check,
                                    color: Colors.white, size: 15))
                                : Center(),
                          ),
                        ),

                      ],
                    ),
                ),
              ),
                        SizedBox(height: 15,),
                        Container(
                          width: 345,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffEDEDEF),
                          ),

                          child: Padding(
                            padding: const  EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text(
                                    ''' Сейф пакет стандарт
438 * 575 * 50'''
                                ),
                                SizedBox(width: 15,),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      check1 = !check1;
                                    });
                                  },
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: check1 ? Colors.blue : Colors.white,
                                    ),
                                    child: check1
                                        ? Center(
                                        child: Icon(Icons.check,
                                            color: Colors.white, size: 15))
                                        : Center(),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          width: 345,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffEDEDEF),
                          ),

                          child: Padding(
                            padding: const  EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text(
                                    ''' Сейф пакет стандарт
162 * 245 * 30K (A5)'''
                                ),
                                SizedBox(width: 15,),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      check1 = !check1;
                                    });
                                  },
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: check1 ? Colors.blue : Colors.white,
                                    ),
                                    child: check1
                                        ? Center(
                                        child: Icon(Icons.check,
                                            color: Colors.white, size: 15))
                                        : Center(),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          width: 345,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffEDEDEF),
                          ),

                          child: Padding(
                            padding: const  EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text(
                                    ''' Сейф пакет стандарт
243 * 320 * 40K (A4)'''
                                ),
                                SizedBox(width: 15,),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      check1 = !check1;
                                    });
                                  },
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: check1 ? Colors.blue : Colors.white,
                                    ),
                                    child: check1
                                        ? Center(
                                        child: Icon(Icons.check,
                                            color: Colors.white, size: 15))
                                        : Center(),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          width: 345,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffEDEDEF),
                          ),

                          child: Padding(
                            padding: const  EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text(
                                    ''' Сейф пакет стандарт
296 * 400 * 45K (A4+)'''
                                ),
                                SizedBox(width: 15,),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      check1 = !check1;
                                    });
                                  },
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: check1 ? Colors.blue : Colors.white,
                                    ),
                                    child: check1
                                        ? Center(
                                        child: Icon(Icons.check,
                                            color: Colors.white, size: 15))
                                        : Center(),
                                  ),
                                ),



    ]
)
    )
    )
          ]
                                  )
    )
    )
    );
  }
}
