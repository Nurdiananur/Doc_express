import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/profile/profile.dart';



class AboutApp extends StatefulWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
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

        home: AboutApp1() ,
      ),
    );

  }
}






class AboutApp1 extends StatefulWidget {
  const AboutApp1({Key? key}) : super(key: key);

  @override
  State<AboutApp1> createState() => _AboutApp1State();
}

class _AboutApp1State extends State<AboutApp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text('О приложении ',
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
      body: Container(

        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('''Lorem ipsum dolor sit amet, sectetur 
adipiscing elit. 
''', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
''' Sed ut perspiciatis unde omnis iste natus error sit
voluptatem accusantium doloremque laudantium,
totam rem aperiam, eaque ipsa quae ab illo
inventore veritatis et quasi architecto beatae vitae 
dicta sunt explicabo. Nemo enim ipsam voluptatem 
quia voluptas sit aspernatur aut odit aut fugit, sed
quia consequuntur magni dolores eos qui ratione
voluptatem sequi nesciunt.

Neque porro quisquam est, qui dolorem ipsum quia
 dolor sit amet, consectetur, adipisci velit, sed quia 
 non numquam eius modi tempora incidunt ut labore 
 et dolore magnam aliquam quaerat voluptatem. Ut 
 enim ad minima veniam, quis nostrum exercitationem
  ullam corporis suscipit laboriosam, nisi ut aliquid ex 
  ea commodi consequatur? '''),
              SizedBox(height: 40,),

              Center(
                child: Text('Версия приложения 1.0.0', style: TextStyle(fontSize: 16),),
              ),
              SizedBox(height: 30,),
              Center(
                child: Text('Разработано командой', style: TextStyle(fontSize: 14),),
              ),
              SizedBox(height: 5),
              Center(
                child: Image(image: AssetImage('assets/image 12.png'),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
