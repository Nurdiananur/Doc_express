import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/home/search.dart';

class Search2 extends StatefulWidget {
  const Search2({Key? key}) : super(key: key);

  @override
  State<Search2> createState() => _Search2State();
}

class _Search2State extends State<Search2> {
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

        home: Search3(),
      ),
    );
  }
}



class Search3 extends StatefulWidget {
  const Search3({Key? key}) : super(key: key);

  @override
  State<Search3> createState() => _Search3State();
}

class _Search3State extends State<Search3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text('Отследить посылку',
            style: TextStyle(
                fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
            ),

          ),
        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Search()));
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only( top: 20,  ),

              child: Container(
                width: 345,
                height: 239,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(20)
                 ),
                 border: Border.all(color: Colors.black38, width: 1)
               ),
                child: Column(
                  children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(top: 22, bottom: 22,left: 5, right: 5),
                     child: Center(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('#HX561871351'),
                           Container(
                             color: Color(0xffFFB951),
                             child: Text('+500'),
                           ),

                         ],
                       ),
                     ),
                   ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('01.01.2022'),
                        Text('03.01.2022'),

                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Кыргызстан, Бишкек'),
                        Text('Россия, Москва'),

                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(color: Color(0xffFFB951),
                      indent: 5,
                      endIndent: 5,
                      height: 40,
                      thickness: 1,
                    ),
                 Text('Посылка доставлена', style: TextStyle(fontSize: 16),),
                    Divider(color: Colors.black26,
                      indent: 5,
                      endIndent: 5,
                      height: 30,
                      thickness: 1,
                    ),

                     Icon(FontAwesomeIcons.angleDown ),
                  ],
                ),
              )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
