import 'package:doc_express/home/calculus2.dart';
import 'package:doc_express/home/home_screen.dart';
import 'package:doc_express/send/box_package.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/screens/main_screen.dart';

class SendPackage extends StatefulWidget {
  const SendPackage({Key? key}) : super(key: key);

  @override
  State<SendPackage> createState() => _SendPackageState();
}

class _SendPackageState extends State<SendPackage> {
  final TextEditingController phoneController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  bool passwordObscured = true;
  int select = 0;
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
  bool check3 = false;
  bool check4 = false;



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Отправить посылку',
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 40,right: 20, bottom: 10),
                  child: Container(
                    width: 345,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffEDEDEF)
                    ),
                    child: Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 21, right: 21),
                          child: GestureDetector(
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
                                color: check1 ? Colors.pink : Colors.white,
                              ),
                              child: check1
                                  ? Center(
                                  child: Icon(Icons.check,
                                      color: Colors.white, size: 15))
                                  : Center(),
                            ),
                          ),
                        ),
                        Text('Советская 123')
                      ],
                    ),
                  ),
          ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 40,right: 20, bottom: 10),
                  child: Container(
                    width: 345,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffEDEDEF)
                    ),
                    child: Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 21, right: 21),
                          child: GestureDetector(
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
                                color: check1 ? Colors.pink : Colors.white,
                              ),
                              child: check1
                                  ? Center(
                                  child: Icon(Icons.check,
                                      color: Colors.white, size: 15))
                                  : Center(),
                            ),
                          ),
                        ),
                        Text('Чохона Валиханова 2')
                      ],
                    ),
                  ),
                ),

                Divider(
                  color: Color(0xFFDADADA),
                  indent: 5,
                  endIndent: 5,
                  height: 40,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 60,right: 60, bottom: 10),
                  child: Row(
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
      'Соглашаюсь с политикой доставки',
      style: TextStyle(
          color: Color(0xFF444444),
          fontWeight: FontWeight.w500,
          fontSize: 14),
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
                  'Отправленная посылка хрупкая',
                  style: TextStyle(
                      color: Color(0xFF444444),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ],
            ),
                SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          check3 = !check3;
                        });
                      },
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: check3 ? Color(0xFF3D8BFF) : Color(0xFFE0E0E0),
                        ),
                        child: check3
                            ? Center(
                            child: Icon(Icons.check,
                                color: Colors.white, size: 15))
                            : Center(),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Отправленную посылку легко можно повредить',
                      style: TextStyle(
                          color: Color(0xFF444444),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          check4 = !check4;
                        });
                      },
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: check4 ? Color(0xFF3D8BFF) : Color(0xFFE0E0E0),
                        ),
                        child: check4
                            ? Center(
                            child: Icon(Icons.check,
                                color: Colors.white, size: 15))
                            : Center(),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Отправленная посылка взрывоопасная',
                      style: TextStyle(
                          color: Color(0xFF444444),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 41),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Box()));
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
                SizedBox(height: 40),
              ],
          ),

            ),
          ),
        ),

    );
  }
}
