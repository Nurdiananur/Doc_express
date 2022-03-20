import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/profile/profile.dart';


class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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

        home: Contact1(),
      ),
    );
  }
}



class Contact1 extends StatefulWidget {
  const Contact1({Key? key}) : super(key: key);

  @override
  State<Contact1> createState() => _Contact1State();
}

class _Contact1State extends State<Contact1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Контакты',
          style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Profile()));
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
'''Позвоните нам! Специлисты вас
проконультируют и помогут с отправкой вашего
груза'''
                ),
   SizedBox(height: 25,),
   Text(
'НОМЕРА ДЛЯ СВЯЗИ', style: TextStyle(fontSize: 20),),
              SizedBox(height: 20,),
Text(
'+996(559) 18 00 33' ,style: TextStyle(fontSize: 26),),
Text('+996(700) 18 00 33',style: TextStyle(fontSize: 26),),
Text('+996(777) 18 00 33',style: TextStyle(fontSize: 26),),

              SizedBox(height: 20,),

              Row(

                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Адрес'),
                      Text('г.Бишкек, ул.',style: TextStyle(fontSize: 16)),
                      Text('Советская 152а',style: TextStyle(fontSize: 16)),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Почта'),
                        Text('info@doc.kg',style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28,),
              Text('Пишите нам в соц.сетях'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 IconButton(onPressed:(){},
                 icon: Icon(FontAwesomeIcons.instagramSquare,color: Colors.pink,
                 ),
                  iconSize: 40,
                 ),
                  IconButton(onPressed:(){}, icon:  Icon(FontAwesomeIcons.whatsapp,
                    color: Colors.green,),
        iconSize: 40,
      ),
                  IconButton(onPressed:(){}, icon:   Icon(FontAwesomeIcons.youtube,
                    color: Colors.pink,),iconSize: 40,
                  ),

                  IconButton(onPressed:(){},
                    icon: Icon(FontAwesomeIcons.telegram,color: Colors.blue,
                    ),
                    iconSize: 40,
                  ),
                  IconButton(onPressed:(){},
                    icon: Icon(FontAwesomeIcons.facebook,color: Colors.blue,
                    ),
                    iconSize: 40,
                  ),
                ],
              ),
              SizedBox(height: 40,),
             Container(
               width: 345,
               height: 385,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: Colors.black12,
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(20),
                     child: Text('Филиал в Москве', style:
                     TextStyle(fontSize: 26, fontFamily: 'Gilroy'),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: Row(
                       children: [
                         Icon(Icons.location_on,color: Color(0xffFFB951),),
                         SizedBox(width: 12,),
                         Text(
 '''105066, Россия, Москва,
ул. Нижняя Красносельская,
40/12, к. 3, оф. 15	''')
                       ],
                     ),
                   ),
SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: Row(
                       children: [
                         Icon(Icons.phone,color: Color(0xffFFB951),),
                         SizedBox(width: 12,),
                         Text('+8 (800) 123 45 67', style: TextStyle(fontSize: 20),),
                       ],
                     ),
                   ),
                   SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: Row(
                       children: [
                         Icon(Icons.email,color: Color(0xffFFB951),),
                         SizedBox(width: 12,),
                         Text('moscow@doce.kg', style: TextStyle(fontSize: 20),),
                       ],
                     ),
                   ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Image(image: AssetImage('assets/image.png')),
                 )
                 ],
               ),

),
              SizedBox(height: 20,),
              Container(
                width: 345,
                height: 385,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text('Филиал в Нарыне', style:
                      TextStyle(fontSize: 26, fontFamily: 'Gilroy'),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,color: Color(0xffFFB951),),
                          SizedBox(width: 12,),
                          Text(
                              '''105066, Россия, Москва,
ул. Нижняя Красносельская,
40/12, к. 3, оф. 15	''')
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.phone,color: Color(0xffFFB951),),
                          SizedBox(width: 12,),
                          Text('+8 (800) 123 45 67', style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.email,color: Color(0xffFFB951),),
                          SizedBox(width: 12,),
                          Text('moscow@doce.kg', style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('assets/image.png')),
                    )
                  ],
                ),

              ),
              SizedBox(height: 20,),
              Container(
                width: 345,
                height: 385,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text('Филиал в Оше', style:
                      TextStyle(fontSize: 26, fontFamily: 'Gilroy'),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,color: Color(0xffFFB951),),
                          SizedBox(width: 12,),
                          Text(
                              '''105066, Россия, Москва,
ул. Нижняя Красносельская,
40/12, к. 3, оф. 15	''')
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.phone,color: Color(0xffFFB951),),
                          SizedBox(width: 12,),
                          Text('+8 (800) 123 45 67', style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.email,color: Color(0xffFFB951),),
                          SizedBox(width: 12,),
                          Text('moscow@doce.kg', style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('assets/image.png')),
                    )
                  ],
                ),

              ),
              SizedBox(height: 20,),
              Container(
                width: 345,
                height: 385,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text('Филиал в Таласе', style:
                      TextStyle(fontSize: 26, fontFamily: 'Gilroy'),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,color: Color(0xffFFB951),),
                          SizedBox(width: 12,),
                          Text(
                              '''105066, Россия, Москва,
ул. Нижняя Красносельская,
40/12, к. 3, оф. 15	''')
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.phone,color: Color(0xffFFB951),),
                          SizedBox(width: 12,),
                          Text('+8 (800) 123 45 67', style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.email,color: Color(0xffFFB951),),
                          SizedBox(width: 12,),
                          Text('moscow@doce.kg', style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('assets/image.png')),
                    )
                  ],
                ),

              ),
              SizedBox(height: 20,),
              Container(
                width: 345,
                height: 420,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text('Представительство в Новосибирске', style:
                      TextStyle(fontSize: 26, fontFamily: 'Gilroy'),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,color: Color(0xffFFB951),),
                          SizedBox(width: 12,),
                          Text(
                              '''105066, Россия, Москва,
ул. Нижняя Красносельская,
40/12, к. 3, оф. 15	''')
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.phone,color: Color(0xffFFB951),),
                          SizedBox(width: 12,),
                          Text('+8 (800) 123 45 67', style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.email,color: Color(0xffFFB951),),
                          SizedBox(width: 12,),
                          Text('moscow@doce.kg', style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('assets/image.png')),
                    )
                  ],
                ),

              ),
              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
