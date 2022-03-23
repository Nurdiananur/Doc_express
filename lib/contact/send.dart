import 'package:doc_express/home/calculus.dart';
import 'package:doc_express/home/home_screen.dart';
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
  final TextEditingController whereController = new TextEditingController();
  final TextEditingController selectController = new TextEditingController();
  int select = 0;
  final passwordField = TextFormField(

    autofocus: false,
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(

label: Image (image:AssetImage('assets/image 34.png'),
),
      // contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),


      prefixIcon: IconButton(
        onPressed: () {},
        icon: Icon(FontAwesomeIcons.angleRight
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(15),
      ),
      filled: true,
      fillColor: Color(0xffEDEDEF),

    ),
  );

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Отправить посылку',
          style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  Calculus()));
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),

      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Цена доставки посылки: ',
                    style: TextStyle(fontSize: 16,color: Color(0xFF444444),fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '2500 coм',
                    style: TextStyle(fontSize: 16,color: Color(0xffFFB951),fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Divider(
                color: Color(0xFFDADADA),
                indent: 5,
                endIndent: 5,
                height: 40,
                thickness: 1,
              ),
              Text(
                'Адрес',
                style: TextStyle(fontSize: 16,color: Color(0xFF444444),fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 30),
              Row(
                children: [

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
                        color: check1 ? Color(0xFF3D8BFF) : Color(0xFFE0E0E0),
                      ),
                      child: check1
                          ? Center(
                          child: Icon(Icons.check,
                              color: Colors.white, size: 15))
                          : Center(),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Кыргызстан, г.Бишкек, ул. Советская 123',
                    style: TextStyle(
                        color: Color(0xFF444444),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        check2 = !check2;
                      });
                    },
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: check2 ? Color(0xFF3D8BFF) : Color(0xFFE0E0E0),
                      ),
                      child: check2
                          ? Center(
                          child: Icon(Icons.check,
                              color: Colors.white, size: 15))
                          : Center(),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Кыргызстан, г.Ош, ул. Чохона Валиханова 2',
                    style: TextStyle(
                        color: Color(0xFF444444),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ],
              ),

              Divider(
                color: Color(0xFFDADADA),
                indent: 5,
                endIndent: 5,
                height: 40,
                thickness: 1,
              ),
              Text(
                'Тип доставки',
                style: TextStyle(fontSize: 16,color: Color(0xFF444444),fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10,),

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
                    width: 345,
                    height: 51,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: select == 1
                          ? Color(0xFFFFB951)
                          : Color(0xffEDEDEF),
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 17,),
                        Icon(FontAwesomeIcons.shoePrints,
                            size: 18,
                            color: select == 1
                                ? Colors.white
                                : Colors.black),
                        SizedBox(width: 24,),
                        Text('Стандарт',
                            style: TextStyle(
                                fontSize: 14,
                                color: select == 1
                                    ? Colors.white
                                    : Color(0xFF444444)))
                      ],
                    )),
              ),
              Divider(
                color: Color(0xFFDADADA),
                indent: 5,
                endIndent: 5,
                height: 40,
                thickness: 1,
              ),

              Text(
                'Размеры посылки',
                style: TextStyle(fontSize: 16,color: Color(0xFF444444),fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10,),
              Text(
                '''Коробка 35х35х5 см, до 2кг
Маленькие предметы, документы, бижутерия, 
аксессуары''',
                style: TextStyle(fontSize: 14,),
              ),
              Divider(
                color: Color(0xFFDADADA),
                indent: 5,
                endIndent: 5,
                height: 40,
                thickness: 1,
              ),

              Text(
                'Упаковка',
                style: TextStyle(fontSize: 16,color: Color(0xFF444444),fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10,),
              Text(
                'Сейф пакет стандарт 438 х 575 * 50',
                style: TextStyle(fontSize: 14,),
              ),
              SizedBox(height: 25,),
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffFFB951),
          child: MaterialButton(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Text(
              'Оформить заказ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        )



            ],
          ),
        ),
      )
    );
  }
}
