import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/contact/contact.dart';

import 'package:doc_express/news/news.dart';
import 'package:doc_express/profile/bonus.dart';
import 'package:doc_express/profile/history.dart';
import 'package:doc_express/profile/logOut.dart';
import 'package:doc_express/profile/my_profile.dart';
import 'package:doc_express/tarif/aboutapp.dart';
import 'package:doc_express/tarif/guestion.dart';
import 'package:doc_express/tarif/tarif.dart';



class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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

        home: Profile1(),
      ),
    );
  }
}





class Profile1 extends StatefulWidget {
  const Profile1({Key? key}) : super(key: key);

  @override
  State<Profile1> createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Мой профиль',
            style: new TextStyle(color: Color(0xff444444),fontSize: 16)),
        backgroundColor: Colors.white,
        leading: Container(
          width: 55,
          height: 22,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.asset('assets/doc.png'),
          ),),),

      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffFFB951),
                      borderRadius:  BorderRadius.circular(20),
                    ),
                    child:Icon(Icons.person, color: Colors.white,),

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Дженалиев Азим',style: TextStyle(fontSize: 18,color: Color(0xFF444444),fontWeight: FontWeight.w600),),
                      SizedBox(height: 5),
                      Text('+99655910033'),
                      SizedBox(height: 5),
                      Text('Кыргызстан, г.Бишкек'),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyProfile()));
                    },
                    child: Container(
                      width: 71,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(37),
                        color: Color(0xffbacEDEDEF,),
                      ),
                      child: Center(child: Text('Изменить',style: TextStyle(fontSize: 12),)),

                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    title: Text('Бонусная карта'),
                    leading: Icon(Icons.credit_card,color: Color(0xffFFB951)),
                    trailing: Icon(FontAwesomeIcons.angleRight ),
                    onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Bonus())),
                  ),
                  ListTile(
                    title: Text('Новости'),
                    leading: Icon(Icons.newspaper,color: Color(0xffFFB951),),
                    trailing: Icon(FontAwesomeIcons.angleRight ),
                    onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>News())),
                  ),
                  ListTile(
                    title: Text('История отправок'),
                    leading: Icon(Icons.list_alt_rounded,color: Color(0xffFFB951),),
                    trailing: Icon(FontAwesomeIcons.angleRight ),
                    onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>History())),
                  ),
                  ListTile(
                    title: Text('Тарифы'),
                    leading: Icon(Icons.fact_check_sharp,color: Color(0xffFFB951),),
                    trailing: Icon(FontAwesomeIcons.angleRight ),
                    onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Tarif())),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
              child: Column(
                children:<Widget> [
                  ListTile(
                    title: Text('О приложении'),
                    leading: Icon(Icons.arrow_circle_down,color: Color(0xffFFB951),),
                    trailing: Icon(FontAwesomeIcons.angleRight ),
                    onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>AboutApp())),
                  ),
                  ListTile(
                    title: Text('Контакты'),
                    leading: Icon(Icons.phone,color: Color(0xffFFB951),),
                    trailing: Icon(FontAwesomeIcons.angleRight ),
                    onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Contact())),
                  ),
                  ListTile(
                    title: Text('Вопросы и ответы'),
                    leading: Icon(Icons.question_mark_rounded,color: Color(0xffFFB951),),
                    trailing: Icon(FontAwesomeIcons.angleRight ),
                    onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Question())),
                  ),
                  ListTile(
                    title: Text('Политика возврата денег'),
                    leading: Icon(Icons.shield,color: Color(0xffFFB951),),
                    trailing: Icon(FontAwesomeIcons.angleRight ),
                    onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Question())),
                  ),
                  ListTile(
                      title: Text('Политика конфиденциальности'),
                      leading: Icon(FontAwesomeIcons.userShield,color: Color(0xffFFB951),),
                      trailing: Icon(FontAwesomeIcons.angleRight )
                  ),
                  ListTile(
                    title: Text('Выйти с аккаунта'),
                    leading: Icon(FontAwesomeIcons.personBooth,color: Color(0xffFFB951),),
                    trailing: Icon(FontAwesomeIcons.angleRight ),
                    onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>LogOut())),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
