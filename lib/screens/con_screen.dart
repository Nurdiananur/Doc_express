import 'package:flutter/material.dart';
import 'package:doc_express/screens/main_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConScreen extends StatefulWidget {
  const ConScreen({Key? key}) : super(key: key);

  @override
  State<ConScreen> createState() => _ConScreenState();
}

class _ConScreenState extends State<ConScreen> {
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

        home: ConScreen1(),
      ),
    );

}
}








class ConScreen1 extends StatefulWidget {
  const ConScreen1({Key? key}) : super(key: key);

  @override
  State<ConScreen1> createState() => _ConScreen1State();
}

class _ConScreen1State extends State<ConScreen1> {
  @override
  Widget build(BuildContext context) {
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffFFB951),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MainScreen()));
        },
        child: Text('Отправить первую посылку',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
      ),

    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 100),
                  SizedBox(height: 100,
                    child: Image.asset('assets/doc.jpg',
                      fit: BoxFit.contain,),),
                  SizedBox(height: 97),
                  Icon(Icons.where_to_vote_rounded,
                  size: 42,
                    color: Color(0xffFFB951),
                  ),

                  SizedBox(height: 22),
              Text('''Поздравляем!
Регистрация завершена'''),
                  SizedBox(height: 45),

                  loginButton

                ],
              ),
            ),
          ),


      ),
    );

  }
}
