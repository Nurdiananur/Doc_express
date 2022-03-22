import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/contact/send.dart';
import 'package:doc_express/home/calculus2.dart';
import 'package:doc_express/screens/main_screen.dart';

class Calculus extends StatefulWidget {
  const Calculus({Key? key}) : super(key: key);

  @override
  State<Calculus> createState() => _CalculusState();
}

class _CalculusState extends State<Calculus> {
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

        home: Calculus1(),
      ),
    );
  }
}

class Calculus1 extends StatefulWidget {
  const Calculus1({Key? key}) : super(key: key);

  @override
  State<Calculus1> createState() => _Calculus1State();
}

class _Calculus1State extends State<Calculus1> {
  final TextEditingController phoneController = new TextEditingController();
  int select = 0;
  bool package=false;

  @override
  Widget build(BuildContext context) {



    Widget razmerField(String hintText){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFFEDEDEF),
        ),
        child: TextFormField(
          autofocus: false,
          decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none
          ),
        ),
      );}

    final loginButton = Material(
      elevation: 5,
      color: Color(0xffFFB951),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Send()));
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
        title: Text(
          'Калькулятор',
          style: new TextStyle(color: Color(0xff444444),fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  'Адрес',
                  style: TextStyle(fontSize: 16,color: Color(0xFF444444),fontWeight: FontWeight.w600)
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFEDEDEF),
                ),
                child: TextField(
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: 'От куда',
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFEDEDEF),
                ),
                child: TextField(
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Куда',),
                ),
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
              SizedBox(height: 15),
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
                                    : Color(0xFF444444)),
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
                                  : Color(0xFF444444),
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
                                    : Color(0xFF444444)),
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
              Divider(
                color: Color(0xFFDADADA),
                indent: 5,
                endIndent: 5,
                height: 40,
                thickness: 1,
              ),
              Text(
                'Примерно',
                style: TextStyle(fontSize: 16,color: Color(0xFF444444),fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {},
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
              Text(
                'Точный размер',
                style: TextStyle(fontSize: 16,color: Color(0xFF444444),fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              razmerField('Ширина, см'),
              SizedBox(height: 15),
              razmerField('Длина, см'),
              SizedBox(height: 15),
              razmerField('Высота, см'),
              SizedBox(height: 15),
              razmerField('Вес, кг'),
              SizedBox(height: 15),
              Divider(
                color: Color(0xFFDADADA),
                indent: 5,
                endIndent: 5,
                height: 40,
                thickness: 1,
              ),
              Text(
                'Выберите упаковку для груза',
                style: TextStyle(fontSize: 16,color: Color(0xFF444444),fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Calculus2()));
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


