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

        home: CalculusSc(),
      ),
    );
  }
}



class CalculusSc extends StatefulWidget {
  const CalculusSc({Key? key}) : super(key: key);

  @override
  State<CalculusSc> createState() => _CalculusScState();
}

class _CalculusScState extends State<CalculusSc> {

  final TextEditingController phoneController = new TextEditingController();


  @override
  Widget build(BuildContext context) {

    final phoneField = TextFormField(
      autofocus: false,
      decoration: InputDecoration(

          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),

          hintText: 'Выберите из предложенного',
          suffixIcon: IconButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Calculus2()));
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
    final selectField = TextFormField(
      autofocus: false,
      decoration: InputDecoration(

          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),

          hintText: 'Выберите из предложенного',
          suffixIcon: IconButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Calculus2()));
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


    final widthField = TextFormField(
      autofocus: false,
      decoration: InputDecoration(

          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),

          hintText: 'Ширина, см',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          filled: true,
          fillColor: Color(0xffEDEDEF)
      ),



    );
    final longField = TextFormField(
      autofocus: false,
      decoration: InputDecoration(

          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),

          hintText: 'Дилина, см',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          filled: true,
          fillColor: Color(0xffEDEDEF)
      ),
    );
    final heightField = TextFormField(
      autofocus: false,
      decoration: InputDecoration(

          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),

          hintText: 'Высота, см',

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          filled: true,
          fillColor: Color(0xffEDEDEF)
      ),
    );

    final weightField = TextFormField(
      autofocus: false,
      decoration: InputDecoration(

          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),

          hintText: 'Вес, кг',

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          filled: true,
          fillColor: Color(0xffEDEDEF)
      ),
    );

    final packageField = TextFormField(
        autofocus: false,
        decoration: InputDecoration(

            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),

            hintText: 'Мне не нужна упаковка',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15),
            ),
            filled: true,
            fillColor: Color(0xffEDEDEF)
        ),
    );


    final loginButton = Material(
      elevation: 5,

      color: Color(0xffFFB951),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Send()));
        },
        child: Text('Рассчитать',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
      ),

    );


    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(' Калькулятор',
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
       child: Padding(
         padding: const EdgeInsets.only(left: 15, top: 20, right: 20),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Text('Адрес', style: TextStyle( fontSize: 16),),
             SizedBox(height: 15),
             TextField(
                   autofocus: false,
                   keyboardType: TextInputType.emailAddress,

                   textInputAction: TextInputAction.next,
                   decoration: InputDecoration(
                       contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                       hintText: 'От куда',
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.white),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       filled: true,
                       fillColor: Color(0xffEDEDEF)
                   ),
             ),
             SizedBox(height: 15),
             TextField(
               autofocus: false,
               keyboardType: TextInputType.emailAddress,

               textInputAction: TextInputAction.next,
               decoration: InputDecoration(
                   contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                   hintText: 'Куда',
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.white),
                     borderRadius: BorderRadius.circular(15),
                   ),
                   filled: true,
                   fillColor: Color(0xffEDEDEF)
               ),
             ),
             Divider(color: Colors.black45,
             indent: 5,
             endIndent: 5,
             height: 40,
             thickness: 1,),

             Text('Тип доставки', style: TextStyle( fontSize: 16),),
             SizedBox(height: 15),

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
             ),
             Divider(color: Colors.black45,
               indent: 5,
               endIndent: 5,
               height: 40,
               thickness: 1,),

             Text('Примерно', style: TextStyle( fontSize: 16),),
             SizedBox(height: 15),
             phoneField,
             SizedBox(height: 15),
             Text('Точный размер', style: TextStyle( fontSize: 16),),
             SizedBox(height: 15),
             widthField,
             SizedBox(height: 15),
             longField,
             SizedBox(height: 15),
             heightField,
             SizedBox(height: 15),
             weightField,
             SizedBox(height: 15),

             Divider(color: Colors.black45,
               indent: 5,
               endIndent: 5,
               height: 40,
               thickness: 1,),

             Text('Выберите упаклвку для груза', style: TextStyle( fontSize: 16),),
             SizedBox(height: 15),
             selectField,
             SizedBox(height: 15),
             packageField,
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















