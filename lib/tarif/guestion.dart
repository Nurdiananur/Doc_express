import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/profile/profile.dart';






class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
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

        home: Question1() ,
      ),
    );

  }
}






class Question1 extends StatefulWidget {
 
  @override
  State<Question1> createState() => _Question1State();
}

class _Question1State extends State<Question1> {

  Widget buildText(BuildContext context) => ExpansionTile(
      title: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit?',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, top: 10),
            child: Text(
'''Neque vel, platea maecenas duis nunc.
Suspendisse vitae donec est varius. 
Sodales nibh id velit volutpat egestas.
Mi malesuada felis, et viverra nibh 
imperdiet. Velit ut sed sit'''
            ),
          ),
        ],
      )
    ],
  );
  Widget buildText2(BuildContext context) => ExpansionTile(
    title: Text('Facilisis sed elit fermentum varius gravida suspendisse?',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
    ),
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, top: 10),
            child: Text(
                '''Neque vel, platea maecenas duis nunc.
Suspendisse vitae donec est varius. 
Sodales nibh id velit volutpat egestas.
Mi malesuada felis, et viverra nibh 
imperdiet. Velit ut sed sit'''
            ),
          ),
        ],
      )
    ],
  );
  Widget buildText3(BuildContext context) => ExpansionTile(
    title: Text('Lobortis dui, facilisis eu, ac morbi scelerisque augue arcu urna?',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
    ),
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, top: 10),
            child: Text(
                '''Neque vel, platea maecenas duis nunc.
Suspendisse vitae donec est varius. 
Sodales nibh id velit volutpat egestas.
Mi malesuada felis, et viverra nibh 
imperdiet. Velit ut sed sit'''
            ),
          ),
        ],
      )
    ],
  );

  Widget buildText4(BuildContext context) => ExpansionTile(
    title: Text('Nunc egestas?',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
    ),
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, top: 10),
            child: Text(
                '''Neque vel, platea maecenas duis nunc.
Suspendisse vitae donec est varius. 
Sodales nibh id velit volutpat egestas.
Mi malesuada felis, et viverra nibh 
imperdiet. Velit ut sed sit'''
            ),
          ),
        ],
      )
    ],
  );
  Widget buildText5(BuildContext context) => ExpansionTile(
    title: Text('Nunc egestas?',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
    ),
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, top: 10),
            child: Text(
                '''Neque vel, platea maecenas duis nunc.
Suspendisse vitae donec est varius. 
Sodales nibh id velit volutpat egestas.
Mi malesuada felis, et viverra nibh 
imperdiet. Velit ut sed sit'''
            ),
          ),
        ],
      )
    ],
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text('Вопросы и ответы ',
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

      body: Center(
        child: Container(

          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    width: 375,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: Column(
                      children: [
                        buildText(context),

                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 375,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Column(
                      children: [
                        buildText2(context),

                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 375,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Column(
                      children: [
                        buildText3(context),

                      ],
                    ),
                  ),

                  SizedBox(height: 15,),
                  Container(
                    width: 375,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Column(
                      children: [
                        buildText4(context),

                      ],
                    ),
                  ),

                  SizedBox(height: 15,),
                  Container(
                    width: 375,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Column(
                      children: [
                        buildText5(context),

                      ],
                    ),
                  ),
                  SizedBox(height: 180,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
