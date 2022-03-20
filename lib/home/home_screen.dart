import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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


  final TextEditingController whereController = new TextEditingController();
  final TextEditingController selectController = new TextEditingController();
  @override
  Widget build(BuildContext context) {

    final phoneField = TextFormField(
      autofocus: false,

      controller: whereController,

      onSaved: (value)
      {
        whereController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(

          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),

          hintText: 'Куда',
          suffixIcon: IconButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Calculus2()));
          }, icon: Icon(Icons.search ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          filled: true,
          fillColor: Color(0xffEDEDEF)
      ),


      );

    final passwordField = TextFormField(

      autofocus: false,
      controller: selectController,
      onSaved: (value)
      {
        selectController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(

        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Выберите регион',
        suffixIcon: IconButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChooseScreen()));
            }, icon: Icon(FontAwesomeIcons.angleRight ),
        ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),

          filled: true,
          fillColor: Color(0xffEDEDEF)
      ),
    );








    return ScreenUtilInit(
      designSize: const Size(360, 690),
   builder: () => Scaffold(
        appBar: AppBar(

          title: Padding(
            padding: const EdgeInsets.only(left: 64),
            child: Text('Cоветская 123',
              style: new TextStyle(color: Color(0xff444444)), ),
          ),
          backgroundColor: Colors.white,
          leading: Container(
            width: 55,
            height: 22,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset('assets/doc.jpg'),
            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Column(
                 children:<Widget> [
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
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children:<Widget>
                            [
                              SizedBox(height: 15,),
                              phoneField,
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

                              SizedBox(height: 16,),
                              passwordField,
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 105,
                                    height: 71,
                                    color: Color(0xffEDEDEF) ,
                                    child:Icon(FontAwesomeIcons.shoePrints,)
                                  ),
                                  Container(
                                    width: 105,
                                    height: 71,
                                    color: Color(0xffEDEDEF) ,
                                      child:Icon(FontAwesomeIcons.truck,)
                                  ),
                                  Container(
                                    width: 105,
                                    height: 71,
                                    color: Color(0xffEDEDEF) ,
                                      child:Icon(FontAwesomeIcons.planeDeparture,)
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                        color:
                        Colors.white, borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12)

                ),

                ),
                      ],
                    ),

                ),

              ],
            ),

          ),
        ),
      ),
    );
  }
}

