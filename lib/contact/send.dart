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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white ,
        title: Padding(
          padding: const EdgeInsets.only(left: 64),
          child: Text('Отправить посылку',
            style: new TextStyle(color: Color(0xff444444)), ),
        ),
      ),
       body: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(15),
             child: Text('Выберите способ оплаты', style:
             TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
           ),

           Padding(
             padding: const EdgeInsets.all(10),
             child: passwordField,
           )
         ],
       ),
    );
  }
}
