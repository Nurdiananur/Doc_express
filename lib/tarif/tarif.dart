import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/profile/profile.dart';






class Tarif extends StatefulWidget {
  const Tarif({Key? key}) : super(key: key);

  @override
  State<Tarif> createState() => _TarifState();
}

class _TarifState extends State<Tarif> {
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

        home: Tarif1() ,
      ),
    );

  }
}




class Tarif1 extends StatefulWidget {
  const Tarif1({Key? key}) : super(key: key);

  @override
  State<Tarif1> createState() => _Tarif1State();
}

class _Tarif1State extends State<Tarif1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text('Тарифы',
            style: TextStyle(
                fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
            ),

          ),
        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Profile()));
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 20, right: 15,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
''''Lorem ipsum dolor sit amet, consectetur adipiscing
elit. Dolor, amet in interdum leo. Tortor dui sit viverra
fames turpis semper est, tortor. Habitant interdum interdum
tortor, et lectus sollicitudin sit lectus nunc.
Vel ornare netus donec at id quam nulla. '''),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: 180,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffFFB951)
                      ),
                      child: Center(
                        child: Text('Все тарифы'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: 180,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffEFEFEF)
                      ),
                      child: Center(
                        child: Text('Быстрая доставка'),
                      ),
                    ),
                  ),


                ],
              ),
              Container(
                width: 400,
                height: 1150,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
''' Название и география 
доставка '''),
                          Text(
                              ''' Вес груза и срок
доставка ''')
                        ],
                      ),
                    ),
                    Divider(color: Colors.black,
                      indent: 5,
                      endIndent: 5,
                      height: 40,
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,left: 20),
                              child: Text('Посылочка', style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Text(
'''Экономичная наземная
доставка для частных лиц'''),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Text(
 '''Кыргызстан, Казахстан,
 Россия, Беларусь '''),
                            )
                          ],
                        ),

                      ],
                    ),
                    Divider(color: Colors.black12,
                      indent: 5,
                      endIndent: 5,
                      height: 40,
                      thickness: 1,
                    ),

                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,left: 20),
                              child: Text('Экспресс-лайт', style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Text(
                                  '''Экономичная наземная
доставка для частных лиц'''),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Text(
                                  '''Кыргызстан, Казахстан,
 Россия, Беларусь '''),
                            )
                          ],
                        ),

                      ],
                    ),
                    Divider(color: Colors.black12,
                      indent: 5,
                      endIndent: 5,
                      height: 40,
                      thickness: 1,
                    ),

                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,left: 20),
                              child: Text('Супер экспресс', style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Text(
                                  '''Экономичная наземная
доставка для частных лиц'''),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Text(
                                  '''Кыргызстан, Казахстан,
 Россия, Беларусь '''),
                            )
                          ],
                        ),

                      ],
                    ),
                    Divider(color: Colors.black12,
                      indent: 5,
                      endIndent: 5,
                      height: 40,
                      thickness: 1,
                    ),

                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,left: 20),
                              child: Text('Экспресс-тяжеловес', style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Text(
                                  '''Экономичная наземная
доставка для частных лиц'''),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Text(
                                  '''Кыргызстан, Казахстан,
 Россия, Беларусь '''),
                            )
                          ],
                        ),

                      ],
                    ),
                    Divider(color: Colors.black12,
                      indent: 5,
                      endIndent: 5,
                      height: 40,
                      thickness: 1,
                    ),

                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,left: 20),
                              child: Text('Магистральный экспресс', style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Text(
                                  '''Экономичная наземная
доставка для частных лиц'''),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Text(
                                  '''Кыргызстан, Казахстан,
 Россия, Беларусь '''),
                            )
                          ],
                        ),

                      ],
                    ),
                    Divider(color: Colors.black12,
                      indent: 5,
                      endIndent: 5,
                      height: 40,
                      thickness: 1,
                    ),

                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,left: 20),
                              child: Text('Международный экспресс документы', style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Text(
                                  '''Экономичная наземная
доставка для частных лиц'''),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Text(
                                  '''Кыргызстан, Казахстан,
 Россия, Беларусь '''),
                            )
                          ],
                        ),

                      ],
                    ),
                    Divider(color: Colors.black12,
                      indent: 5,
                      endIndent: 5,
                      height: 40,
                      thickness: 1,
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
